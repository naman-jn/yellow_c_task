import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:yellow_c_task/constants/constants.dart';
import 'package:yellow_c_task/models/video_data/video_data.dart';
import 'package:yellow_c_task/providers/video_controller.dart';
import 'package:yellow_c_task/widgets/lazy_load_placeholder.dart';
import 'package:yellow_c_task/widgets/video_item.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    VideoController controller =
        Provider.of<VideoController>(context, listen: false);
    _scrollController.addListener(() {
      //scrolled to bottom
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //create fake delay like api call
        Future.delayed(
            const Duration(milliseconds: 1500), () => controller.loadMore());
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final videoController = Provider.of<VideoController>(context, listen: true);
    final List<VideoData> videosDataList = videoController.loadedVideosDataList;

    void _onEndScroll(ScrollMetrics metrics) {}

    _buildAppBar() {
      return AppBar(
        title: Image.asset(
          AppConstants.logoPath,
          height: 30,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        elevation: 1,
        backgroundColor: Colors.white,
      );
    }

    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(
        // listen scroll notifications
        child: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification is ScrollEndNotification) {
              //on scroll end
              Future.delayed(const Duration(milliseconds: 500), () {
                videoController.play();
              });
              _onEndScroll(scrollNotification.metrics);
            }
            return true;
          },
          child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              itemCount: videosDataList.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == videosDataList.length) {
                  return const LazyLoadPlaceholder();
                }
                return VideoItem(
                  index: index,
                  videoController: videoController,
                );
              }),
        ),
      ),
    );
  }
}
