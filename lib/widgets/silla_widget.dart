import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/silla.dart';

class SillaWidget extends StatelessWidget {
  final Silla silla;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const SillaWidget(
      {Key? key,
      required this.silla,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(silla.id);
      },
      onLongPress: () {
        onLongPress(silla.id);
      },
      onTap: () {
        onTap(silla);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                decoration: BoxDecoration(
                    color: silla.read ? Colors.transparent : primaryColor,
                    shape: BoxShape.circle),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(silla.nombre.toString().substring(0, 10),
                      style: dateTextStyle),
                  Text(silla.material, style: fromTextStyle),
                  Text(silla.descripcion, style: subjectTextStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
