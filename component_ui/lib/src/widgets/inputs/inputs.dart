import 'package:component_ui/src/widgets/inputs/name_input.dart';
import 'package:component_ui/src/widgets/inputs/phone_input.dart';
import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  const Inputs({Key? key}) : super(key: key);

  @override
  _InputsState createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs')),
      body: Column(
        children: const [
          NameInput(),
          PhoneInput(),
        ],
      ),
    );
  }
}
