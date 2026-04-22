import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedButtonIcon extends StatelessWidget {
  final GestureTapCallback onTap;
  final double width;
  final Color color;
  final IconData icon;
  final String label;

  const RoundedButtonIcon({
    super.key,
    required this.onTap,
    required this.width,
    required this.color,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),

        child: Container(
          width: width,
          height: 45.h,
          padding: EdgeInsets.symmetric(horizontal: 10),

          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Icon(icon, color: Colors.white, size: 20.w),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: VerticalDivider(color: Colors.white, thickness: 1),
              ),

              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
