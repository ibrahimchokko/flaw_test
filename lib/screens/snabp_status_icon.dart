import 'package:flutter/material.dart';

class AppColors {
  final Color textPrimary;
  AppColors({required this.textPrimary});
}

extension BuildContextExtensions on BuildContext {
  AppColors get colors => AppColors(textPrimary: Colors.blueGrey.shade800);
}

class SnabpStatusIcon extends StatelessWidget {
  const SnabpStatusIcon({
    super.key,
    this.color,
    required this.icon,
  });

  final Color? color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? context.colors.textPrimary;
    final backgroundColor = effectiveColor.withValues(alpha: 0.25);

    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: effectiveColor,
          ),
        ),
      ),
    );
  }
}
class SnapStatusIcon extends StatelessWidget {
  const SnapStatusIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SnabpStatusIcon(
                icon: Icons.warning,
                color: Colors.orange.shade800,
              ),
              
              const SizedBox(height: 20),

              SnabpStatusIcon(
                icon: Icons.check,
                color: Colors.green.shade800,
              ),

              const SizedBox(height: 20),

              SnabpStatusIcon(
                icon: Icons.info,
                color: Colors.blue.shade800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
