import 'package:flutter/material.dart';
import 'package:toktik_210542/domains/entities/video_post.dart';
import 'package:toktik_210542/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

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
              // Video

              Positioned(
                bottom: 40,
                right: 20,
                child: VideoButtons(video: videoPost))
            ],
          );
        });
  }
}