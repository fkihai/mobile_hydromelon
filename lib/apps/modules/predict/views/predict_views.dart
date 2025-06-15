import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_hydromelon/apps/gen/assets.gen.dart';
import 'package:mobile_hydromelon/apps/shared/widget/custom_text.dart';
import 'package:mobile_hydromelon/apps/shared/widget/customButton.dart';
import '../controllers/predict_controller.dart';

class PredictPage extends StatelessWidget {
  final PredictController controller = Get.put(PredictController());
  PredictPage({super.key});

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
          height: 250.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Stack(
            children: [
              file != null
                  ? Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.r),
                          child: Image.file(
                            file,
                            width: double.infinity,
                            height: 250.h,
                            fit: BoxFit.fill,
                          ),
                        ),
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              Assets.img.uploadIcon.path,
                              width: 40.w,
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 40.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Colors.green.shade500,
                                  ),
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: TextButton(
                                onPressed: () =>
                                    _showImageSourceDialog(Get.context!),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.upload_file,
                                      color: Colors.green.shade500,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      "Upload Image",
                                      style: TextStyle(
                                          color: Colors.green.shade500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text("Max 10 MB files are allowed"),
                            const Text(
                                "Only support .jpg, .jpeg, and .png files"),
                          ],
                        ),
                      ),
                    ),
              // Loading overlay
              Obx(
                () => controller.isLoading.value
                    ? Positioned.fill(
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Padding(
          padding: EdgeInsets.all(16.0.dm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: 'Predict',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                title: 'Melon ripeness prediction',
                fontSize: 14,
                color: Colors.grey.shade800,
              ),
              SizedBox(height: 40.h),
              _buildUploadBox(),
              SizedBox(height: 20.h),
              controller.imageFile.value != null
                  ? Row(
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                        CustomText(
                          title: ' Load Image Successfully',
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    )
                  : Container(),
              const Spacer(),
              CustomButton(
                title: 'predict',
                onPressed: () async {
                  controller.uploadImage();
                },
                color: Colors.green.shade500,
                enabled: controller.imageFile.value != null ? true : false,
              ),
              SizedBox(height: 10.h)
            ],
          ),
        ),
      ),
    );
  }
}
