import 'package:flutter/material.dart';
import 'package:my_portfolio/features/projects/data/project_data.dart';
import 'package:my_portfolio/features/projects/model/project_model.dart';

class ProjectProvider extends ChangeNotifier {
  List<ProjectModel> get projects => AppStore.projects;
}
