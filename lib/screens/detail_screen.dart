import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/silla.dart';

class DetailScreen extends StatelessWidget {
  final Silla silla;

  const DetailScreen({Key? key, required this.silla}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(silla.nombre),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('From: ${silla.material}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text(silla.precio, style: subjectTextStyle),
              const SizedBox(height: 5.0),
              Text(silla.descripcion, style: dateTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),

            ],
          ),
        ));
  }
}
