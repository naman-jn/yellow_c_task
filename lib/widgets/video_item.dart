import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:yellow_c_task/models/video_data/video_data.dart';
import 'package:yellow_c_task/providers/video_controller.dart';
import 'package:yellow_c_task/widgets/custom_image_widget.dart';
import 'package:yellow_c_task/widgets/video_player_widget.dart';

class VideoItem extends StatelessWidget {
  final int index;
  final VideoController videoController;
  const VideoItem(
      {Key? key, required this.index, required this.videoController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    _buildVideoTitle(VideoData videoData) {
      return Align(
        alignment: const Alignment(-0.9, 0.9),
        child: Container(
            height: 28,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(9)),
            padding: const EdgeInsets.all(5),
            child: Text(
              videoData.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            )),
      );
    }

    _buildVolumeButton(VideoController videoController) {
      return Align(
        alignment: const Alignment(0.95, -0.9),
        child: InkWell(
          onTap: () => videoController.handleVolumeTap(),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              videoController.isMuted
                  ? Icons.volume_off_outlined
                  : Icons.volume_up_outlined,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    final List<VideoData> videosDataList = videoController.loadedVideosDataList;
    VideoData videoData = videosDataList[index];
    return VisibilityDetector(
      key: Key(index.toString()),
      onVisibilityChanged: (VisibilityInfo info) {
        //add video when completely in frame
        if (info.visibleFraction == 1) {
          videoController.updateViewportArray(index: index, isVisible: true);
        }
        //remove video when out of frame
        if (info.visibleFraction < 0.6) {
          videoController.updateViewportArray(index: index, isVisible: false);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 16.0 / 9.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                //Video Player
                if (videoController.playingVideoIndex == index)
                  VideoPlayerWidget(),
                //Video Thumbnail
                videoController.playingVideoIndex == index
                    ? const SizedBox()
                    : CustomImageWidget(
                        videoData: videoData,
                        cacheKey: '$index',
                      ),
                _buildVideoTitle(videoData),
                if (videoController.playingVideoIndex == index)
                  _buildVolumeButton(videoController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
