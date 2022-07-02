import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yellow_c_task/models/video_data/video_data.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({Key? key, required this.videoData, this.cacheKey})
      : super(key: key);

  final VideoData videoData;
  final String? cacheKey;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: videoData.coverPicture,
        cacheKey: cacheKey,
        imageBuilder: (context, imageProvider) => Image(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
        errorWidget: (context, url, error) =>
            Container(decoration: const BoxDecoration(color: Colors.grey)),
        placeholder: (context, url) =>
            Container(decoration: const BoxDecoration(color: Colors.grey)));
  }
}
