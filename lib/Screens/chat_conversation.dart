import 'package:flutter/material.dart';

class ChatConversation extends StatefulWidget {
  const ChatConversation({super.key});

  @override
  State<ChatConversation> createState() => _ChatConversationState();
}

class _ChatConversationState extends State<ChatConversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        elevation: 0,
        leading: Row(
          children: [
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            const CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage("https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=is&k=20&c=SRtmXotZfERsp4_0tTn24AXdCTWyssWO8r6dj5ehI98="),
            ),
          ],
        ),
        leadingWidth: 90,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shanto",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "online",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call, color: Colors.white),
            onPressed: () {},
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            color: const Color(0xFF1F2C34),
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text("View contact", style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                child: Text("Media, links, and docs", style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                child: Text("Search", style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                child: Text("Mute notifications", style: TextStyle(color: Colors.white)),
              ),
              const PopupMenuItem(
                child: Text("Wallpaper", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/whatsapp_bg.png"), // ← তোমার প্রোজেক্টে রাখো
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(12),
                children: [
                  _buildReceivedMessage("Hi Shawon!"),
                  _buildSentMessage("Hello! How are you?"),
                  _buildReceivedMessage("I'm good, thanks! Working on a new project."),
                  _buildSentMessage("That's great! Need any help?"),
                  _buildReceivedMessage("Maybe later. Thanks!"),
                  _buildSentMessage("Sure, anytime!"),
                  _buildReceivedMessage("Seen 2:30 PM"),
                ],
              ),
            ),
            _buildMessageInput(),
          ],
        ),
      ),
    );
  }


  Widget _buildReceivedMessage(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  Widget _buildSentMessage(String text) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFE1FFC7),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }


  Widget _buildMessageInput() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
            onPressed: () {},
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Message",
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.attach_file, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.grey),
            onPressed: () {},
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFF075E54),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.mic, color: Colors.white),
          ),
        ],
      ),
    );
  }
}