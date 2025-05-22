import 'dart:async';

import 'package:flutter/material.dart';
import '../../widget/background_pic.dart';
import '../../widget/list_of_maps.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Timer? timer;

  late List<Map<String, Widget>> pages = <Map<String, Widget>>[];
  late List<Map<String, String>> images = <Map<String, String>>[];
  late String currentUrl = '';
  int currentIndex = 0;
  late List<String> imageUrls = <String>[];

  @override
  void initState() {
    super.initState();
    pages = List<Map<String, Widget>>.of(listOfWidget);
    images = List<Map<String, String>>.of(imagine);
    for (int i = 0; i < images.length; i++) {
      for (String value in images[i].values) {
        //add urls to container imageUrls
        imageUrls.add(value);
      }
    }
    //sort urls in container imageUrls
    imageUrls.sort();
    if (imageUrls.isNotEmpty) {
      //current Url is at index 0
      currentUrl = imageUrls.first;
      //after every 3 seconds change image
      timer = Timer.periodic(Duration(seconds: 10), (timer) {
        setState(() {
          //make sure current index matches with the latest index
          currentIndex = (currentIndex + 1) % imageUrls.length;
          //make sure current url matches with the latest url
          currentUrl = imageUrls[currentIndex];
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundPic(
      image: networkImage(context),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            spacing: 1.2,
            textBaseline: TextBaseline.ideographic,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              pages[0]['title'] as Widget,
              SizedBox(height: 20),
              (pages[1]['text']) as Widget,
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: (pages[2]['search field']) as Widget,
              ),
              SizedBox.fromSize(size: const Size(0, 50)),
              (pages[3]['button']) as Widget,
            ],
          ),
        ),
      ),
    );
  }

  NetworkImage networkImage(BuildContext context) {
    return NetworkImage(currentUrl);
  }
}
