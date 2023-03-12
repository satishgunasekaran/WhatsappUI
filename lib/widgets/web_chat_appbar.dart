import 'package:flutter/material.dart';
import 'package:mind_punk_ui/colors.dart';
import 'package:mind_punk_ui/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200"),
                radius: 30,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Text(
                info[0]['name'].toString(),
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
