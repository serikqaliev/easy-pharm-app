import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.iconColor,
  });

  final VoidCallback? onPressed;
  final IconData icon;
  final String label;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? iconColor;

  factory CustomButton.primary({
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
  }) {
    return CustomButton(
      onPressed: onPressed,
      icon: icon,
      label: label,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      iconColor: Colors.white,
    );
  }

  factory CustomButton.secondary({
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
  }) {
    return CustomButton(
      onPressed: onPressed,
      icon: icon,
      label: label,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      iconColor: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.black.withOpacity(0.1),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, color: iconColor),
              const SizedBox(width: 8),
              Text(label, style: TextStyle(color: foregroundColor)),
            ],
          ),
        ),
      ),
    );
  }
}
