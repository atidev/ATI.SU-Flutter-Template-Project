import 'dart:async';

import 'package:flutter/widgets.dart';

/// Виджет для менеджмента жизненного цикла Stream [stream], поставляемого в виджет дерево.
class StreamListener<T> extends StatefulWidget {
  final Stream<T> stream;

  final Widget child;
  final void Function(T event) onData;
  final Function? onError;
  final Function()? onDone;
  final bool? cancelOnError;

  const StreamListener({
    required this.stream,
    required this.child,
    required this.onData,
    this.onError,
    this.onDone,
    this.cancelOnError,
    Key? key,
  }) : super(key: key);

  @override
  _StreamListenerState createState() => _StreamListenerState<T>();
}

class _StreamListenerState<T> extends State<StreamListener<T>> {
  StreamSubscription<T>? _streamSubs;

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void didUpdateWidget(covariant StreamListener<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _streamSubs?.cancel();
    listen();
  }

  @override
  void dispose() {
    _streamSubs?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    listen();
  }

  void listen() {
    _streamSubs = widget.stream.listen(
      widget.onData,
      onDone: widget.onDone,
      onError: widget.onError,
      cancelOnError: widget.cancelOnError,
    );
  }
}
