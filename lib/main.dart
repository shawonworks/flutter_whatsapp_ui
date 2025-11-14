import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt, color: Colors.white)),
              Tab(
                child: Text("Chat", style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text("Status", style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text("Call", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (context) => [
                PopupMenuItem(value: 1, child: Text("New Group")),
                PopupMenuItem(value: 2, child: Text("New Broadcast")),
                PopupMenuItem(value: 3, child: Text("Stared")),
                PopupMenuItem(value: 4, child: Text("Read all")),
                PopupMenuItem(value: 5, child: Text("Setting")),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ColoredBox(color: Colors.black),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
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
            Text("Status"),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=is&k=20&c=SRtmXotZfERsp4_0tTn24AXdCTWyssWO8r6dj5ehI98=",
                    ),
                  ),
                  title: Text("Arfan Hasnat Shawon"),
                  subtitle: Text(
                    index / 5 == 0
                        ? "you missed audio call"
                        : "you missed video call",
                  ),
                  trailing: Icon(
                    index / 5 == 0 ? Icons.phone : Icons.video_call,
                  ),
                  textColor: Colors.black,
                );
              },
            ),
            Text("Call"),
          ],
        ),
      ),
    );
  }
}
