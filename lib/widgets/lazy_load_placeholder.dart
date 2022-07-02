import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LazyLoadPlaceholder extends StatelessWidget {
  const LazyLoadPlaceholder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 16.0 / 9.0,
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade400,
          highlightColor: Colors.grey.shade300,
          child: Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(9)),
          ),
        ),
      ),
    );
  }
}
