import 'package:cloud_firestore/cloud_firestore.dart';

var _store = FirebaseFirestore.instance;

CollectionReference<Map<String, dynamic>> projectCollection =
    _store.collection('projects');  