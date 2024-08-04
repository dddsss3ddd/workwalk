import 'package:flutter/material.dart';

class ExploreIcon extends StatefulWidget {
  final Function(String) onDatachanged;
  final String viewCardId;

  const ExploreIcon({
    super.key,
    required this.displayIcon,
    required this.viewCardId,
    required this.onDatachanged,
  });

  final IconData displayIcon;

  @override
  State<ExploreIcon> createState() => _ExploreIconState();
}

class _ExploreIconState extends State<ExploreIcon> {
  static String activateIcon = '';
  bool isPressed = false;
  Color normalIconColor = const Color.fromRGBO(0x95, 0xD1, 0xE3, 1);
  Color pressedIconColor = const Color.fromRGBO(0xF3, 0x81, 0x81, 1);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: pressAction,
        onTapUp: releaseAction,
        onTap: _viewCardChage,
        child: Icon(
          widget.displayIcon,
          size: 40,
          color: activateIcon == widget.viewCardId
              ? pressedIconColor
              : isPressed
                  ? pressedIconColor
                  : normalIconColor,
        ));
  }

  void pressAction(TapDownDetails) {
    setState(() {
      isPressed = true;
    });
  }

  void releaseAction(TapUpDetails) {
    setState(() {
      isPressed = false;
    });
  }

  void _viewCardChage() {
    setState(() {
      if (activateIcon != widget.viewCardId) {
        activateIcon = widget.viewCardId;
      } else {
        activateIcon = 'empty';
      }
    });
    widget.onDatachanged(widget.viewCardId);
  }
}
