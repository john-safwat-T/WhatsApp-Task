import 'package:flutter/material.dart';

class ChatScreenMessagesTextFormField extends StatelessWidget {
  const ChatScreenMessagesTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              style: const TextStyle(color: Colors.white, fontSize: 18),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2000),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.white)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2000),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2000),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.white)),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tag_faces_outlined,
                      color: Colors.white,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.attach_file_outlined,
                      color: Colors.white,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                  hintText: "Type a Message",
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ),
          const SizedBox(width: 12,),
          Container(
            padding:const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(width: 2 , color: Colors.white)
            ),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.mic , color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
