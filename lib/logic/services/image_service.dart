import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class ImageService {
  final ImagePicker _picker = ImagePicker();

  /// Picks an image from the gallery
  Future<File?> pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  /// Uploads image to Firebase Storage and returns the URL
  Future<String?> uploadImageToFirebase(File imageFile) async {
    final fileName =
        'images/${DateTime.now().millisecondsSinceEpoch}_${imageFile.uri.pathSegments.last}';
    final storageRef = FirebaseStorage.instance.ref().child(fileName);

    final uploadTask = storageRef.putFile(imageFile);
    final taskSnapshot = await uploadTask;
    final downloadUrl = await taskSnapshot.ref.getDownloadURL();
    return downloadUrl;
  }
}
