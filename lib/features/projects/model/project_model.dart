import 'dart:convert';

class ProjectModel {
  String id;
  String name;
  String desc;
  String link;
  String apkLink;
  String imgUrl;
  ProjectModel({
    required this.id,
    required this.name,
    required this.desc,
    required this.link,
    required this.apkLink,
    required this.imgUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "name": name,
      "desc": desc,
      "apkLink": apkLink,
      "link": link,
    };
  }

  factory ProjectModel.fromMap(Map<String, dynamic> map) {
    return ProjectModel(
      id: map["id"] as String,
      name: map["name"] as String,
      desc: map["desc"] as String,
      link: map['link'] as String,
      apkLink: map["apkLink"] as String,
      imgUrl: map["imgUrl"] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectModel.fromJson(String source) =>
      ProjectModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
