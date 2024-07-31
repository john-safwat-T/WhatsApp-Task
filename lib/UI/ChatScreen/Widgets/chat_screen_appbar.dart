import 'package:flutter/material.dart';

class ChatScreenAppbar extends StatelessWidget implements PreferredSizeWidget {

  final String imagePath;
  const ChatScreenAppbar(this.imagePath , {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      title: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(
            width: 16,
          ),
          const Text(
            "Ahmed",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
              color: Colors.white,
            )),
        IconButton(
          onPressed: () {  },
          icon: const Icon(
            Icons.call,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size(100, 60);
}
