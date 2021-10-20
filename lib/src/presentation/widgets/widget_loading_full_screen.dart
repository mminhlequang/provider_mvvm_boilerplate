import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WidgetLoadingFullScreen extends StatelessWidget {
  final Widget child;
  final Stream<bool> loading;

  const WidgetLoadingFullScreen({Key? key, required this.child, required this.loading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: loading,
        builder: (_, snapshot) {
          bool status = snapshot.data ?? false;
          return Stack(
            children: <Widget>[
              child,
              status ? _LoadingWidget() : Container(),
            ],
          );
        });
  }
}

class _LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        constraints: BoxConstraints.expand(),
        alignment: Alignment.center,
        child: Center(
            child: SpinKitCircle(
          color: Colors.red,
          size: 55,
        )));
  }
}
