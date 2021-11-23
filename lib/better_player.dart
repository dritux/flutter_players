import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sreaming/constants.dart';
import 'package:flutter_sreaming/utils.dart';

class BasicPlayerPage extends StatefulWidget {
  @override
  _BasicPlayerPageState createState() => _BasicPlayerPageState();
}

class _BasicPlayerPageState extends State<BasicPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text("better_player com mux",
              style: TextStyle(fontSize: 16),
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer.network(
              Constants.muxUrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "https://stream.mux.com/qxb01i6T202018GFS02vp9RIe01icTcDCjVzQpmaB00CUisJ4.m3u8",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}