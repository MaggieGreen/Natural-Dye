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
    // _controller = VideoPlayerController.network(
    //   'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    // );

    // _initializeVideoPlayerFuture = _controller.initialize();

    // _controller.setLooping(true);

    super.initState();

    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    )..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });

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
        body: Container(
          child: Column(
            children: <Widget>[
              FutureBuilder(
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
              //Play video button
              FloatingActionButton(
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
              //Did you know part
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FloatingActionButton.extended(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                      label: Text("Like"),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(24, 30, 24, 20),
                        height: 200.0,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Did you know?',
                                style: TextStyle(
                                    fontFamily: 'CantataOne',
                                    fontSize: 28,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Indigo is one of the most valued and most globally widespread dyes of antiquity and of the present era.',
                                style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        )
        // FutureBuilder(
        //   future: _initializeVideoPlayerFuture,
        //   builder: (context, snapshot) {
        //     if (snapshot.connectionState == ConnectionState.done) {
        //       // If the VideoPlayerController has finished initialization, use
        //       // the data it provides to limit the aspect ratio of the video.
        //       return AspectRatio(
        //         aspectRatio: _controller.value.aspectRatio,
        //         // Use the VideoPlayer widget to display the video.
        //         child: VideoPlayer(_controller),
        //       );
        //     } else {
        //       // If the VideoPlayerController is still initializing, show a
        //       // loading spinner.
        //       return Center(child: CircularProgressIndicator());
        //     }
        //   },
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // Wrap the play or pause in a call to `setState`. This ensures the
        //     // correct icon is shown.
        //     setState(() {
        //       // If the video is playing, pause it.
        //       if (_controller.value.isPlaying) {
        //         _controller.pause();
        //       } else {
        //         // If the video is paused, play it.
        //         _controller.play();
        //       }
        //     });
        //   },
        //   // Display the correct icon depending on the state of the player.
        //   child: Icon(
        //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        //   ),
        // ), // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
