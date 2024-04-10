import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiktok/presentation/widgets/video/video_backgrounnd.dart';
import 'package:video_player/video_player.dart';

class FullScreenPlayer extends StatefulWidget {

  final String videoUrl;
  final String caption;

  const FullScreenPlayer({
    super.key, 
    required this.videoUrl, 
    required this.caption});

  @override
  State<FullScreenPlayer> createState() => _FullScreenPlayerState();
}

class _FullScreenPlayerState extends State<FullScreenPlayer> {

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.videoUrl)
    ..setVolume(10)
    ..setLooping(true)
    ..play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.initialize(), 
      builder: (context, snapshot) {
        if(snapshot.connectionState != ConnectionState.done){
        return const Center(child: CircularProgressIndicator(strokeWidth: 2,),);
        }
        return GestureDetector(
          onTap: (){
            if (controller.value.isPlaying){
              controller.pause();
              return;
            }
            controller.play();
          },
          child: AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child:Stack( 
             children: [
             MediaQuery.of(context).orientation == Orientation.landscape  
             ? VideoPlayer(controller)
             : Transform.scale(scaleY: .5, child: VideoPlayer(controller)),
             
             VideoBackground(
              stops: const [0.8,1.0],
             ),
             Positioned(
              bottom:20,
              left:5,
              child: _VideoCaption(caption:  //'${MediaQuery.of(context).orientation == Orientation.portrait}'
              widget.caption,
              ))]
            )),
        );
    },);
  }
}

class _VideoCaption extends StatelessWidget {

  final String caption;

  const _VideoCaption({required this.caption});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return SizedBox(
      width: size.width * 0.6,
      child: Text(caption, maxLines: 2,style: titleStyle,),
    );
  }
}