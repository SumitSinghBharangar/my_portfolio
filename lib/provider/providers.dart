import 'package:flutter/material.dart';

class PortfolioProvider with ChangeNotifier{
  bool isEnglish = true;


  void changeLanguage(){
    if(isEnglish){
      isEnglish = !isEnglish;
    }
    notifyListeners();
  }
}