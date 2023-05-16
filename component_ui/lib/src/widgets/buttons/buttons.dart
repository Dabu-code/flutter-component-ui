import 'package:component_ui/constants/constant.dart';
import 'package:component_ui/src/widgets/buttons/button_primary.dart';
import 'package:component_ui/src/widgets/buttons/button_secondary.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botones')),
      body: Column(
        children: [
          PrimaryButton(
            onPressed: () {},
            text: 'Botón Principal',
            color: kPrimaryColor,
          ),
          SecondaryButton(
            onPressed: () {},
            text: 'Botón Secundario',
            color: kSecondaryColor,
          ),
          PrimaryButton(
            onPressed: () {},
            text: 'Botón Principal',
            color: kJetColor,
            borderRadius: 30,
          ),
        ],
      ),
    );
  }
}
