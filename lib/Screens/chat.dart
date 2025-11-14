import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/chat_conversation.dart';
class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatConversation()));
        },
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                // backgroundImage: AssetImage("assets/images/img_4.png",)
                backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=is&k=20&c=SRtmXotZfERsp4_0tTn24AXdCTWyssWO8r6dj5ehI98=",
                ),
              ),
              title: Text("Erfan Hasnat Shawon"),
              subtitle: Text("How are you"),
              trailing: Text("12:40 AM"),
              textColor: Colors.black,
            );
          },
        ),
      ),

    );
  }
}
