library delayed_progress_indicator;

import 'package:flutter/material.dart';

class DelayedProgressIndicator extends StatefulWidget {
  final Widget? child;
  final Duration delay;

  const DelayedProgressIndicator(
      {Key? key, this.child, this.delay = const Duration(seconds: 2)})
      : super(key: key);

  static State<DelayedProgressIndicator>? of(BuildContext context) =>
      context.findAncestorStateOfType<State<DelayedProgressIndicator>>()
          as _DelayedProgressIndicatorState?;

  @override
  State<DelayedProgressIndicator> createState() =>
      _DelayedProgressIndicatorState();
}

class _DelayedProgressIndicatorState extends State<DelayedProgressIndicator> {
  late bool active;
  late bool visible;

  @override
  void initState() {
    active = false;
    visible = true;
    Future.delayed(widget.delay, () {
      if (visible) {
        setState(() => active = true);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    visible = false;
    active = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => active && visible
      ? widget.child ?? const CircularProgressIndicator()
      : Container();
}
