import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'music.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const MusicPlayer(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                assetsAudioPlayer.open(
                  Audio("assets/demo.mp3"),
                  showNotification: true,
                );
              },
              child: const Text("Play"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              assetsAudioPlayer.stop();
            },
            child: const Text("Stop"),
          ),
          ElevatedButton(
            onPressed: () {
              assetsAudioPlayer.open(
                Audio("assets/demo.mp3"),
                showNotification: true,
              );
            },
            child: const Text("play"),
          )
        ],
      ),
    );
  }
}
