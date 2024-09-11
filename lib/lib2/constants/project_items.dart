class MyProjectItem {
  String? imageName;
  String? imageAddress;

  MyProjectItem({
    required this.imageName,
    required this.imageAddress,
  });
}

List<MyProjectItem> projectItems = [
  MyProjectItem(
    imageAddress: "assets/images/shot-01.jpg",
    imageName: "Face Detector App",
  ),
  MyProjectItem(
    imageName: "Covid tracker App",
    imageAddress: "assets/images/shot-02.jpg",
  ),
  MyProjectItem(
    imageName: "Chat-GPT Clone",
    imageAddress: "assets/images/shot-03.jpg",
  ),
  MyProjectItem(
    imageName: "BMI Calculator",
    imageAddress: "assets/images/shot-04.jpg",
  ),
  MyProjectItem(
    imageName: "ShoeSavvy App",
    imageAddress: "assets/images/shot-05.jpg",
  ),
];
