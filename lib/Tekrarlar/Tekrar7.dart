import 'package:flutter/material.dart';

class StateLife extends StatefulWidget {
  const StateLife({super.key, required this.message});
  final String message;
  @override
  State<StateLife> createState() => _StateLifeState();
}

class _StateLifeState extends State<StateLife> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didUpdateWidget(covariant StateLife oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message = widget.message;
    _isOdd = _message.length.isOdd;
    _computeName();
  }

  void _computeName() {
    if (_isOdd) {
      _message += ' Çift';
    } else {
      _message += ' Tek';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_message),
        ),
        body: _isOdd
            ? Container(
                height: 100,
                color: Colors.green,
              )
            : Container(
                height: 100,
                color: Colors.red,
              ));
  }
}
