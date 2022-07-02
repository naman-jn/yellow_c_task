import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';
import 'package:yellow_c_task/models/video_data/video_data.dart';

class VideoController with ChangeNotifier {
  late final List<VideoData> _allVideosDataList;
  late final List<VideoData> loadedVideosDataList;
  final List<int> _videosInViewPort = [0];
  VideoPlayerController? _videoPlayerController;
  int _playingVideoIndex = -1;
  bool _isMuted = true;

  //getters
  VideoPlayerController? get videoPlayerController => _videoPlayerController;
  int get playingVideoIndex => _playingVideoIndex;
  bool get isMuted => _isMuted;

  VideoController(this._allVideosDataList) {
    loadedVideosDataList = _allVideosDataList.sublist(0, 6);
    play();
  }

  void initializeAndPlay(int index) async {
    final controller =
        VideoPlayerController.network(loadedVideosDataList[index].videoUrl);

    final old = _videoPlayerController;
    _videoPlayerController = controller;
    if (old != null) {
      old.pause();
    }

    _playingVideoIndex = index;
    notifyListeners();

    controller.initialize().then((_) {
      old?.dispose();
      controller.play();
      controller.setVolume(_isMuted ? 0 : 1);
      notifyListeners();
    });
  }

  play() {
    if (_videosInViewPort.isEmpty) return;
    _videosInViewPort.sort();
    int currentIndex = _videosInViewPort.first;
    // video not already playing
    if (_playingVideoIndex != currentIndex) {
      initializeAndPlay(currentIndex);
    }
  }

  updateViewportArray({required int index, required bool isVisible}) {
    if (isVisible && !_videosInViewPort.contains(index)) {
      _videosInViewPort.add(index);
    } else if (!isVisible && _videosInViewPort.contains(index)) {
      _videosInViewPort.remove(index);
      if (_playingVideoIndex == index) {
        _videoPlayerController!.pause();
        _playingVideoIndex = -1;
        notifyListeners();
      }
    }
  }

  loadMore() {
    if (loadedVideosDataList.length < _allVideosDataList.length) {
      int start = loadedVideosDataList.length;
      int end = start + 6;
      if (end > _allVideosDataList.length) end = _allVideosDataList.length;
      var newData = _allVideosDataList.sublist(start, end);
      loadedVideosDataList.addAll(newData);
      notifyListeners();
    }
  }

  handleVolumeTap() {
    _isMuted = !_isMuted;
    _videoPlayerController!.setVolume(_isMuted ? 0 : 1);
    notifyListeners();
  }
}
