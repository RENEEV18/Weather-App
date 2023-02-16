import 'package:flutter/material.dart';
import 'package:weather_app/common/style/colors.dart';
import 'package:weather_app/common/style/sizebox.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({super.key, required this.text, required this.text1});
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
            )
          ],
          border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.0),
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.2)
            ],
            stops: const [0.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: AppColors.kWhite,
              ),
            ),
            AppSize.kHeight10,
            const Icon(
              Icons.cloud_outlined,
              color: AppColors.kWhite,
            ),
            AppSize.kHeight10,
            Text(
              text1,
              style: const TextStyle(
                fontSize: 20,
                color: AppColors.kWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
