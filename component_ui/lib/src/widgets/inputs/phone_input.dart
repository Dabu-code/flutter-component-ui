import 'package:component_ui/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class PhoneInput extends StatelessWidget {
  const PhoneInput( {
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.75),
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: IntlPhoneField(
        decoration: const InputDecoration(labelText: "Ingrese su numero de telefono"),
        initialCountryCode: kCountryCode,
     
        invalidNumberMessage: "S.of(context).eValidatoPhone",
        disableLengthCheck: true,
        validator: (value) {
          
        },
        onSaved: (phone) =>{},
      ),
    );
  }
}
