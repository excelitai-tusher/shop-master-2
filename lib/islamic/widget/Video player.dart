import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class Player extends StatefulWidget {
  //const VideoPlayer({Key? key}) : super(key: key);

  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool autoplay;


  Player({
    required this.videoPlayerController,
    required this.looping, required this.autoplay,
    Key? key,
  }) : super(key: key);


  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  ChewieController ?_chewieController;


  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio:2/2,

      autoInitialize: true,
      autoPlay: widget.autoplay,
      looping: widget.looping,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.red),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController!,
      ),
    );
  }
}

