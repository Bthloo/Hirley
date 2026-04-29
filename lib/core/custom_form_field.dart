
import 'package:flutter/material.dart';

typedef MyValidator = String? Function(String?);
typedef OnChange = void Function(String?);
typedef OnTap = void Function();

class CustomFormField extends StatelessWidget {
 final String? hintText;
 final MyValidator validator;
 final OnChange? onChange;
 final bool focus;
 final OnTap? onTab;
 final TextEditingController controller;
 final TextInputType keyboardType;
 final IconButton? suffix;
 final Widget? prefix;
 final bool isPassword;
 final FocusNode? passwordFocusNode;
  const CustomFormField(
      {super.key,
       this.hintText,
      required this.validator,
      required this.controller,
      this.prefix,
      this.keyboardType = TextInputType.text,
      this.suffix,
      this.isPassword = false,
      this.passwordFocusNode,
        this.onChange,
        this.onTab,
        this.focus = false
      });
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: TextFormField(
        textDirection: TextDirection.ltr,
        autofocus: focus,
        controller: controller,
        onTap: onTab,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: isPassword,
        focusNode: passwordFocusNode,
        onChanged: onChange,
        //textDirection: TextDirection,
        style: const TextStyle(color: Color(0xff434653)),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric( vertical: 0, horizontal: 10),
            suffixIcon: suffix,
            prefixIcon: prefix,
            hintText: hintText,
           hintStyle: const TextStyle(color: Color(0xffC3C6D5)),
           // labelText: hintText,
            labelStyle:  const TextStyle(color: Color(0xff434653)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:  BorderSide(color: Color(0xffC3C6D5),width: 1)
            ),
          filled: true,
          fillColor: Colors.white
        ),

      ),
    );
  }
}
