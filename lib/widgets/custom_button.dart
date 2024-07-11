import 'package:flutter/material.dart';
import 'package:sashi_bro_demo/app_colors.dart';

class CustomButton extends StatefulWidget {
  final String buttonName;
  final double width;
  final double borderRadius;
  final Function()? onPress;
  final Color bgColor;
  final Icon prefixIcon;
  final bool isBoxShadow;
  final Color tColor;
  final bool enablePrefixIcon;
  final Gradient? gradient;
  final TextStyle textStyle;

  const CustomButton({
    super.key,
    this.buttonName = "",
    this.width = 350,
    this.gradient,
    this.onPress,
    this.bgColor = AppColors.primary,
    this.tColor = Colors.white,
    this.borderRadius = 6.0,
    this.enablePrefixIcon = false,
    this.prefixIcon = const Icon(Icons.abc),
    this.isBoxShadow = true,
    this.textStyle = const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Ensure Material has a transparent background
      borderRadius: BorderRadius.circular(widget.borderRadius),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: widget.onPress,
        child: Container(
          height: 50,
          width: widget.width,
          decoration: BoxDecoration(
            color: widget.bgColor,
            gradient: widget.gradient,
            boxShadow: widget.isBoxShadow
                ? [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 8,
                      blurStyle: BlurStyle.outer,
                      offset: const Offset(1, 2),
                    ),
                  ]
                : [],
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.enablePrefixIcon ? widget.prefixIcon : Container(),
                widget.enablePrefixIcon
                    ? const SizedBox(
                        width: 10,
                      )
                    : const SizedBox.shrink(),
                Text(widget.buttonName, style: widget.textStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
