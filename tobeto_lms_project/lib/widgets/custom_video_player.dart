// TODO Video Player ı baştan tasarla çok kontrolsüz
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CustomVideoPlayer extends StatefulWidget {
  CustomVideoPlayer({Key? key, required this.videoLink}) : super(key: key);

  final String videoLink;
  final Color _playedColor = Colors.red.shade900;
  final Color _backgroudColor = Colors.grey.shade700;
  final _handleDotColor = Colors.white;

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse(widget.videoLink),
      ),
      autoPlay: false,
    );
    widget.videoLink;
  }

  void updateVideoUrl() {
    setState(() {
      flickManager.dispose();
      flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
          Uri.parse(widget.videoLink),
        ),
        autoPlay: false,
      );
    });
  }

  @override
  void dispose() {
    widget.videoLink;
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ObjectKey(flickManager),
      onVisibilityChanged: (visibility) {
        if (visibility.visibleFraction == 0 && mounted) {
          flickManager.flickControlManager?.autoPause();
        } else if (visibility.visibleFraction == 1) {
          flickManager.flickControlManager?.autoResume();
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.black)],
          image: DecorationImage(
              image: AssetImage(widget.videoLink), fit: BoxFit.cover),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        //color: Colors.grey,
        child: FlickVideoPlayer(
          flickManager: flickManager,
          flickVideoWithControls: FlickVideoWithControls(
            closedCaptionTextStyle: const TextStyle(fontSize: 8),
            controls: FlickPortraitControls(
                iconSize: 30,
                progressBarSettings: FlickProgressBarSettings(
                  playedColor: widget._playedColor,
                  handleColor: widget._handleDotColor,
                  backgroundColor: widget._backgroudColor,
                  handleRadius: 10,
                  height: 10,
                  bufferedColor: Colors.transparent,
                )),
            iconThemeData: const IconThemeData(color: Colors.red),
          ),
          flickVideoWithControlsFullscreen: FlickVideoWithControls(
            controls: FlickPortraitControls(
                iconSize: 30,
                progressBarSettings: FlickProgressBarSettings(
                  playedColor: widget._playedColor,
                  handleColor: widget._handleDotColor,
                  backgroundColor: widget._backgroudColor,
                  handleRadius: 10,
                  height: 10,
                  bufferedColor: Colors.transparent,
                )),
            iconThemeData: IconThemeData(color: Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}
