import 'package:flutter/material.dart';

class XatoPage extends StatelessWidget {
  const XatoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xato ketti"),
      ),
      body: const Center(
        child: Text(
          "O'xshamadi",
        ),
      ),
    );
  }
}
