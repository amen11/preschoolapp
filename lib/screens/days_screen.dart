import 'package:flutter/material.dart';
import 'package:project_v1/constants.dart';

import '../models/weekday_model.dart';

class WeekdayModel {
  String name, imagePath;
  WeekdayModel({
    required this.name,
    required this.imagePath,
  });
}

class WeekdaysScreen extends StatefulWidget {
  @override
  _WeekdaysScreenState createState() => _WeekdaysScreenState();
}

class _WeekdaysScreenState extends State<WeekdaysScreen> {
  @override
  Widget build(BuildContext context) {
    print(weekdaysList.length);
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
        title: Image.asset('assets/images/Logo_color.png',
            width: 120, height: 120),
      ),
      backgroundColor: AppColors.black,
      body: Center(
        child: buildWeekdays(),
      ),
    );
  }

  Widget buildWeekdays() {
    return ListView.builder(
      itemCount: weekdaysList.length,
      itemBuilder: (context, index) {
        return WeekdayModelWidget(
          weekdayModel: WeekdayModel(
            name: weekdaysList[index]['name'].toString(),
            imagePath: weekdaysList[index]['imagePath'].toString(),
          ),
        );
      },
    );
  }
}
