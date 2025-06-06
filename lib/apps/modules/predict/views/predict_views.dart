import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_hydromelon/apps/modules/singIn/views/widget/butonLogin.dart';
import '../controllers/predict_controller.dart';

class MediaUploadPage extends StatelessWidget {
  final MediaUploadController controller = Get.put(MediaUploadController());
  MediaUploadPage({super.key});

  void _showImageSourceDialog(BuildContext context) {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Camera Capture'),
              onTap: () {
                Get.back();
                controller.pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Upload from Gallery'),
              onTap: () {
                Get.back();
                controller.pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUploadBox() {
    return Obx(() {
      final file = controller.imageFile.value;
      return Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(12),
        ),
        child: file != null
            ? Stack(
                children: [
                  Image.file(file, width: double.infinity, fit: BoxFit.cover),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.red),
                      onPressed: controller.clearImage,
                    ),
                  ),
                ],
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.folder_open,
                        size: 40, color: Colors.green),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      onPressed: () => _showImageSourceDialog(Get.context!),
                      icon: const Icon(Icons.upload_file),
                      label: const Text("Upload Image"),
                    ),
                    const SizedBox(height: 10),
                    const Text("Max 10 MB files are allowed"),
                    const Text("Only support .jpg, .jpeg, and .png files"),
                  ],
                ),
              ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Media Upload')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildUploadBox(),
            const Spacer(),
            ButtonLogin(
              title: 'predict',
              onPressed: () async {
                controller.uploadImage();
              },
            ),
          ],
        ),
      ),
    );
  }
}
