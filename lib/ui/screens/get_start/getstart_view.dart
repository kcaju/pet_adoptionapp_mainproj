import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/get_start/getstart_viewmodel.dart';
import 'package:stacked/stacked.dart';

class GetstartView extends StatelessWidget {
  const GetstartView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GetstartViewmodel>.reactive(
      viewModelBuilder: () {
        return GetstartViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    fit: BoxFit.cover, image: Assets.images.dog.image().image)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Each Pets deserve a home",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
                Text(
                  "Too many cute pets are waiting for you.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
                  child: InkWell(
                    onTap: () {
                      viewModel.navigate();
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => LoginScreen(),
                      //     ));
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      height: 50,
                      width: 450,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
