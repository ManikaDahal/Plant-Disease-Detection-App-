import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? child;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const CustomElevatedButton({
    super.key,
    this.onPressed,
    this.child,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.98,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: backgroundColor ?? const Color.fromARGB(255, 2, 35, 52),
            foregroundColor: foregroundColor, // Fixed here
          ),
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class CustomElevtaedbutton extends StatelessWidget{
//   Function()? onPressed;
//   Widget? child;
//   CustomElevtaedbutton({super.key,this.onPressed,this.child});
  


//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//        child: child);
//   }}

