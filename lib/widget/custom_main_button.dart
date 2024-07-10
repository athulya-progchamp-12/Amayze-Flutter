import 'package:flutter/material.dart';
import 'package:amayze/utils/utils.dart';

class CustomMainButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool isLoading;
  final VoidCallback onPressed;
  const CustomMainButton({
    required this.child,
    required this.color,
    required this.isLoading,
    required this.onPressed,
    Key? key, // Fix the super key parameter
  }) : super(key: key); // Fix the super key assignment

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
          MediaQuery.of(context).size.width * 0.5, // Use MediaQuery for width
      height: 40, // Set a fixed height for the button
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: !isLoading
            ? child
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
