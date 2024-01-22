import 'package:flutter/material.dart';
import 'package:project_v1/constants.dart';

import '../models/model_colors.dart';

class ColorModel {
  String name, imagePath;
  ColorModel({
    required this.name,
    required this.imagePath,
  });
}

class ColorsScreen extends StatefulWidget {
  @override
  _ColorsScreenState createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColors.backGround),
        ),
        title: Image.asset('assets/images/Logo_color.png', width: 120, height: 120),
      ),
      backgroundColor: AppColors.black,
      body: Center(
        child: buildColors(),
      ),
    );
  }

  Widget buildColors() {
    return ListView.builder(
      itemCount: colorsList.length,
      itemBuilder: (context, index) {
        return ColorModelWidget(
          colorModel: ColorModel(
            name: colorsList[index]['name'].toString(),
            imagePath: colorsList[index]['imagePath'].toString(),
          ),
        );
      },
    );
  }
}
