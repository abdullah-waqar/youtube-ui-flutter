import 'package:flutter/material.dart';

class AppBarYoutube extends StatelessWidget {
  const AppBarYoutube({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            child: Image.asset(
          'assets/youtube_logo.png',
          fit: BoxFit.contain,
        )),
        const Text(
          'YouTube',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
        ),
        SizedBox(width: MediaQuery.of(context).size.width - 300),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Icon(Icons.notifications),
            SizedBox(width: 18),
            Icon(Icons.search),
            SizedBox(width: 18),
            CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
          ],
        ),
      ],
    );
  }
}
