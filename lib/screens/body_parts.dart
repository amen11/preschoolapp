import 'package:flutter/material.dart';
import 'package:project_v1/constants.dart';
import '../models/model_bodyparts.dart'; 

class BodyPartsScreen extends StatefulWidget {
  @override
  _BodyPartsScreenState createState() => _BodyPartsScreenState();
}

class _BodyPartsScreenState extends State<BodyPartsScreen> {
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
        child: buildBodyParts(),
      ),
    );
  }

  Widget buildBodyParts() {
    return ListView.builder(
      itemCount: bodyPartsList.length,
      itemBuilder: (context, index) {
        return BodyPartModelWidget(
          bodyPartModel: BodyPartModel(
            name: bodyPartsList[index]['name'].toString(),
            image: bodyPartsList[index]['image'].toString(),
          ),
        );
      },
    );
  }
}
