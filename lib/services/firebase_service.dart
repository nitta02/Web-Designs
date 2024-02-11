import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

FirebaseAuth auth = FirebaseAuth.instance;
ImagePicker picker = ImagePicker();

Uuid uuid = const Uuid();

FirebaseStorage firebaseStorage = FirebaseStorage.instance;

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

DatabaseReference databaseReference =
    FirebaseDatabase.instance.ref().child('Users');

DatabaseReference fetchDatabaseReference =
    FirebaseDatabase.instance.ref('Users');
