import 'package:flutter/material.dart';
import 'package:spring_moving_cursor/utils/utils.dart';

class FrameUpdater extends StatefulWidget {
  const FrameUpdater({
    @required this.child,
    @required this.onUpdate,
    Key key,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onUpdate;

  @override
  _FrameUpdaterState createState() => _FrameUpdaterState();
}

class _FrameUpdaterState extends State<FrameUpdater>
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
