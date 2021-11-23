import 'package:flutter/material.dart';
import 'package:flutter_sreaming/better_player.dart';
import 'package:flutter_sreaming/chewie.dart';
import 'package:flutter_sreaming/video_player.dart';

void main() => runApp(const Streaming());

class Streaming extends StatelessWidget {
  const Streaming({Key? key}) : super(key: key);

  static const String _title = 'Streaming';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: StreamingStatefulWidget(),
    );
  }
}

class StreamingStatefulWidget extends StatefulWidget {
  const StreamingStatefulWidget({Key? key}) : super(key: key);

  @override
  State<StreamingStatefulWidget> createState() => _StreamingStatefulWidgetState();
}

class _StreamingStatefulWidgetState extends State<StreamingStatefulWidget> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const VideoPlayerApp(),
    const ChewieDemo(),
    BasicPlayerPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Streaming')),
      body: _widgetOptions.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.stream),
            label: 'mp4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stream),
            label: 'Chewie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stream),
            label: 'm3u8',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class NewPageScreen extends StatelessWidget {
  final String text;

  const NewPageScreen(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(text),
    );
  }
}
