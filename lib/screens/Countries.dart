import 'package:flutter/material.dart';
import 'package:project_v1/constants.dart';

import '../models/model_country.dart';

class CountryModel {
  String name, imagePath;
  CountryModel({
    required this.name,
    required this.imagePath,
  });
}

class CountriesScreen extends StatefulWidget {
  @override
  _CountriesScreenState createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
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
        child: buildCountries(),
      ),
    );
  }

  Widget buildCountries() {
    return ListView.builder(
      itemCount: countriesList.length,
      itemBuilder: (context, index) {
        return CountryModelWidget(
          countryModel: CountryModel(
            name: countriesList[index]['name'].toString(),
            imagePath: countriesList[index]['imagePath'].toString(),
          ),
        );
      },
    );
  }
}
