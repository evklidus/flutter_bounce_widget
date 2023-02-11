library flutter_bounce_widget;

import 'package:flutter/widgets.dart';

/// Adding bounce animation to press on your widget
class BounceWidget extends StatefulWidget {
  const BounceWidget({
    super.key,
    required this.child,
    required this.onPressed,
    this.duration = const Duration(milliseconds: 100),
  });

  /// Widget that will bouncing
  final Widget child;

  /// Func that will call when we tap on child
  final VoidCallback onPressed;

  /// Duration of animation
  final Duration duration;

  @override
  State<BounceWidget> createState() => _BounceWidgetState();
}

class _BounceWidgetState extends State<BounceWidget>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _animate;

  @override
  void initState() {
    _animate = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _animate.value;
    return GestureDetector(
      onTap: () {
        _animate.forward();
        Future.delayed(
          widget.duration,
          () {
            _animate.reverse();
            widget.onPressed;
          },
        );
      },
      onTapDown: (TapDownDetails details) {
        _animate.forward();
      },
      onTapUp: (TapUpDetails details) {
        _animate.reverse();
      },
      onTapCancel: () {
        _animate.reverse();
      },
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }
}
