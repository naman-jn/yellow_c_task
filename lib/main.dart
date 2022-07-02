import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:yellow_c_task/helper/json_helper.dart';
import 'package:yellow_c_task/models/video_data/video_data.dart';
import 'package:yellow_c_task/providers/video_controller.dart';
import 'package:yellow_c_task/views/landing_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yellow Class',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<List<VideoData>>(
          future: JsonService.getData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Container();
            List<VideoData> videosDataList = snapshot.data!;
            return ChangeNotifierProvider<VideoController>(
                create: (_) => VideoController(videosDataList),
                builder: (context, snapshot) {
                  return const LandingPage();
                });
          }),
    );
  }
}
