import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common/style/colors.dart';
import 'package:weather_app/common/style/sizebox.dart';
import 'package:weather_app/controller/home_controller/home_controller.dart';
import 'package:weather_app/widgets/common_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeController>(context, listen: false).getWeather(context);
    });
    return Consumer<HomeController>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(
            title: TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              label: Text(
                value.model?.location.country ?? '',
                style: TextStyle(fontSize: 25, color: AppColors.kBlack),
              ),
            ),
            actions: const [
              Icon(
                Icons.refresh,
                size: 30,
                color: AppColors.kBlack,
              ),
              AppSize.kWidth10,
            ],
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    '23°C',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kBlack),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CommonCard(text: "hello", text1: "hello"),
                      CommonCard(text: "hello", text1: "hello"),
                      CommonCard(text: "hello", text1: "hello"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
