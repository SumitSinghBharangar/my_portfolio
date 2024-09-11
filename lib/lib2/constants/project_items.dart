class MyProjectItem {
  String? imageName;
  String? imageAddress;
  String? projectLink;

  MyProjectItem({
    required this.imageName,
    required this.imageAddress,
    required this.projectLink,
  });
}

List<MyProjectItem> projectItems = [
  MyProjectItem(
    imageAddress: "assets/images/shot-01.jpg",
    imageName: "Face Detector App",
    projectLink: "https://github.com/SumitSinghBharangar/Face-detector",
  ),
  MyProjectItem(
    imageName: "Covid tracker App",
    imageAddress: "assets/images/shot-02.jpg",
    projectLink: "https://github.com/SumitSinghBharangar/covid_tracker",
  ),
  MyProjectItem(
    imageName: "Chat-GPT Clone",
    imageAddress: "assets/images/shot-03.jpg",
    projectLink: "https://github.com/SumitSinghBharangar/ChatGPT-Clone",
  ),
  MyProjectItem(
    imageName: "BMI Calculator",
    imageAddress: "assets/images/shot-04.jpg",
    projectLink: "https://github.com/SumitSinghBharangar/bmi",
  ),
  MyProjectItem(
    imageName: "ShoeSavvy App",
    imageAddress: "assets/images/shot-05.jpg",
    projectLink: "https://github.com/SumitSinghBharangar/Shoe-Savvy",
  ),
];
