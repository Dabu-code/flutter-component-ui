import 'package:component_ui/constants/constant.dart';
import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {
  const NameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        keyboardType: TextInputType.name,
        textCapitalization: TextCapitalization.words,
        decoration: const InputDecoration(
          icon: Icon(Icons.nest_cam_wired_stand_outlined, color: kPrimaryColor),
          hintText: "Ingrese el nombre",
          border: InputBorder.none,
        ),
        
        onSaved: (value) => {},
        validator: (value) {},
      ),
    );
  }
}
