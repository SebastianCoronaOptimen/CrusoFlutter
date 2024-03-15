import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:tiktok/presentation/widgets/shared/video_buttons.dart';
import 'package:tiktok/presentation/widgets/video/full_screen_player.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;
  const VideoScrollableView({
    super.key,
    required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            //video player + gradiente
            SizedBox.expand(
              child: FullScreenPlayer(caption: videoPost.caption,videoUrl: videoPost.videoUrl,)
            ),
            //botones
            Positioned(
              bottom: 40,
              right: 5,
              child: VideoButtons(video: videoPost))
          ],
        );
      },
    );
  }
}