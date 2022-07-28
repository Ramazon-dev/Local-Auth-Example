import 'dart:io';
import 'package:flutter/material.dart';
import 'package:local_auth_example/local_auth_api.dart';
import 'package:local_auth_example/oxshadi.dart';
import 'package:local_auth_example/xato.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  String platform = Platform.operatingSystem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final authenticated = await LocalAuthApi.authenticate();
            if (authenticated) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OxshadiPage(),
                ),
              );
              final snackBar = SnackBar(
                content: Text('royxatdan otdik $platform'),
                backgroundColor: (Colors.white),
                action: SnackBarAction(
                  label: 'dismiss',
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const XatoPage(),
              ),
            );

            final snackBar = SnackBar(
              content: Text('code xato kiritildi $platform'),
              backgroundColor: (Colors.red),
              action: SnackBarAction(
                label: 'Error',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text(
            "Local Auth",
          ),
        ),
      ),
    );
  }
}
