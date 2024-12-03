import 'package:toktik_210542/config/helpers/human_formats.dart';
import 'package:toktik_210542/domains/entities/video_post.dart';
import 'package:flutter/material.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIcomButton(value: video.likes, iconColor: Colors.red, iconData: Icons.favorite),
        _CustomIcomButton(value: video.views, iconData: Icons.remove_red_eye_outlined),
      ],
    );
  }
}

class _CustomIcomButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIcomButton(
      {required this.value, required this.iconData, iconColor}): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
        IconButton(
            onPressed: () {}, icon: Icon(iconData, color: color, size: 30)),
            Text(HumanFormats.humanReadbleNumber(value.toDouble())),
       ],
       
    );
  }
}
