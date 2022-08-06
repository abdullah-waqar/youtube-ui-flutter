import 'package:flutter/material.dart';
import 'package:youtube_ui/model/images_url.dart';

import '../model/content_model.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const AppBarYoutube(),
      ),
      body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Container(
                    child: Image(
                      width: MediaQuery.of(context).size.width,
                      image: NetworkImage(dataList[index][0]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, top: 10),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(dataList[index][2]),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(dataList[index][1]),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Text(dataList[index][5]),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(dataList[index][3]),
                                const SizedBox(width: 10),
                                Text(dataList[index][4]),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
      bottomNavigationBar: const BottomNavBarYoutube(),
    );
  }
}
