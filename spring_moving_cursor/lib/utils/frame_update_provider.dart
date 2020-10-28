import 'package:flutter/material.dart';
import 'package:spring_moving_cursor/utils/utils.dart';

class FrameUpdateProvider extends StatefulWidget {
  const FrameUpdateProvider({
    @required this.child,
    @required this.onUpdate,
    Key key,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onUpdate;

  @override
  _FrameUpdateProviderState createState() => _FrameUpdateProviderState();
}

class _FrameUpdateProviderState extends State<FrameUpdateProvider>
    with SingleTickerProviderStateMixin {
  LoopAnimationController _loopAnimationController;
  @override
  void initState() {
    _loopAnimationController = LoopAnimationController(this)
      ..addListener(widget.onUpdate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    _loopAnimationController?.dispose();
    _loopAnimationController = null;
    super.dispose();
  }
}
