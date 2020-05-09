import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TimelineVideoOne extends StatefulWidget {
  TimelineVideoOne({Key key}) : super(key: key);

  @override
  _TimelineVideoOneState createState() => _TimelineVideoOneState();
}

class _TimelineVideoOneState extends State<TimelineVideoOne> {
  // TODO 4: Create a VideoPlayerController object.
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    _initializeVideoPlayerFuture = _controller.initialize();

    _controller.setLooping(true);

    super.initState();
    // // Pointing the video controller to our local asset.
    // _controller = VideoPlayerController.asset("assets/video/sf.mp4")
    //   ..initialize().then((_) {
    //     // Once the video has been loaded we play the video and set looping to true.
    //     _controller.play();
    //     _controller.setLooping(true);
    //     // Ensure the first frame is shown after the video is initialized.
    //     setState(() {});
    //   });
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Complete the code in the next step.
    return Scaffold(
      appBar: AppBar(
        title: Text('Butterfly Video'),
      ),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       backgroundColor: Colors.white,
  //       appBar: PreferredSize(
  //         child: AppBar(
  //           leading: new Container(),
  //           backgroundColor: Colors.white,
  //           title: Text('Test'),
  //           // status bar color
  //           brightness: Brightness.light,
  //           elevation: 0.0,
  //         ),
  //         preferredSize: Size.fromHeight(10.0),
  //       ),
  //       body: Stack(
  //         children: <Widget>[
  //           SizedBox.expand(
  //             child: FittedBox(
  //               fit: BoxFit.fill,
  //               child: SizedBox(
  //                 width: _controller.value.size?.width ?? 0,
  //                 height: _controller.value.size?.height ?? 0,
  //                 child: VideoPlayer(_controller),
  //               ),
  //             ),
  //           )
  //         ],
  //       ));
  // }
}
