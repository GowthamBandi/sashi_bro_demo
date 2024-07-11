import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextfield extends StatefulWidget {
  final String hint;
  final String label;
  final double borderRadius;
  final int? maxLength;
  final Color btnColor;
  final Color bgColor;
  final Color iconColor;
  final Color borderColor;
  final Color focusedBorderColor;
  final bool labelNeeded;
  final bool borderNeeded;
  final bool textButtonNeeded;
  final Widget? textButton;
  final Widget? leadingIcon;
  final bool iconNeeded;
  final Widget? suffixIcon;
  final TextEditingController textEditingController;
  final Function()? onPress;
  final Function()? onValidate;
  final TextInputType textInputType;
  final int minLines;
  final int maxLines;
  final bool expands;
  final bool obscureText;
  const MyTextfield({
    super.key,
    required this.hint,
    this.textButton,
    this.textButtonNeeded = false,
    required this.textEditingController,
    this.bgColor = Colors.transparent,
    this.label = "label",
    this.labelNeeded = true,
    this.borderNeeded = true,
    this.obscureText = false,
    this.borderRadius = 10,
    this.minLines = 1,
    this.maxLines = 5,
    this.maxLength,
    this.btnColor = Colors.black,
    this.iconColor = Colors.black,
    this.textInputType = TextInputType.text,
    this.borderColor = Colors.transparent,
    this.focusedBorderColor = Colors.transparent,
    this.onPress,
    this.onValidate,
    this.iconNeeded = false,
    this.leadingIcon,
    this.suffixIcon,
    this.expands = false,
  });

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(widget.borderRadius),
        ),
        //   border: Border.all(color: Colors.grey.shade300),
      ),
      child: TextFormField(
        obscureText: widget.obscureText,
        style: const TextStyle(fontSize: 16, color: Colors.white),
        onTap: () {},
        expands: widget.expands,
        minLines: widget.expands ? null : widget.minLines,
        maxLength: widget.maxLength,
        maxLines: widget.expands ? null : widget.maxLines,
        keyboardType: widget.textInputType,
        controller: widget.textEditingController,
        inputFormatters: widget.textInputType == TextInputType.number
            ? <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                FilteringTextInputFormatter.digitsOnly,
              ]
            : null,
        decoration: InputDecoration(
          counterStyle: const TextStyle(
            height: double.minPositive,
          ),
          counterText: "",
          focusColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: widget.hint,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(128, 132, 147, 0.6),
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
          fillColor: widget.bgColor,
          filled: true,
          prefixIcon: widget.leadingIcon,
          suffixIcon:
              widget.iconNeeded ? widget.suffixIcon : const SizedBox.shrink(),
          suffix: widget.textButtonNeeded ? widget.textButton : null,
          // border: InputBorder.none,
          border: OutlineInputBorder(
            borderSide: widget.borderNeeded
                ? BorderSide(color: widget.focusedBorderColor)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: widget.borderNeeded
                ? BorderSide(color: widget.focusedBorderColor)
                : BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: widget.borderNeeded
                ? BorderSide(color: widget.focusedBorderColor)
                : BorderSide.none,
          ),
        ),
      ),
    );
  }
}
