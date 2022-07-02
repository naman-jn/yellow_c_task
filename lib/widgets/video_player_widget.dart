import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:yellow_c_task/providers/video_controller.dart';

class VideoPlayerWidget extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  VideoPlayerWidget({Key? key}) : super(key: key);
  late final VideoController controller;

  @override
  Widget build(BuildContext context) {
    controller = Provider.of<VideoController>(context, listen: true);

    VideoPlayerController? videoPlayerController =
        controller.videoPlayerController;

    return Stack(
      children: [
        if (videoPlayerController != null &&
            videoPlayerController.value.isPlaying)
          VideoPlayer(videoPlayerController),
        if (!videoPlayerController!.value.isInitialized)
          Container(
            color: Colors.black,
            child: const Center(
              child: CircularProgressIndicator(
                color: Colors.grey,
              ),
            ),
          ),
      ],
    );
  }
}
