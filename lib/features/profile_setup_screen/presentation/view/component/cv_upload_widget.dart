import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/component/analysis_section.dart';
import '../../../../onboarding_screen/view/components/dashed_border_container.dart';

class CvUploadWidget extends StatefulWidget {
  const CvUploadWidget({super.key});

  @override
  State<CvUploadWidget> createState() => _CvUploadWidgetState();
}

class _CvUploadWidgetState extends State<CvUploadWidget> {
  PlatformFile? selectedFile;
  bool uploaded = false;
  bool analyzing = false;
  bool analysisFinished = false;

  List<String> analysisSteps = [];
  List<String> extractedSkills = [];

  Future<void> startAnalysis() async {
    setState(() {
      analyzing = true;
      analysisFinished = false;
      analysisSteps.clear();
      extractedSkills.clear();
    });

    final steps = [
      "CV uploaded successfully",
      "Analyzing work experience",
      "Extracting technical skills",
      "Mapping to market benchmarks",
      "Generating rank & insights",
      "CV analysis completed"
    ];
    for (var step in steps) {
      await Future.delayed(const Duration(seconds: 1));

      if (!mounted) return;

      setState(() {
        analysisSteps.add(step);
        if (step.contains("technical skills")) {
          extractedSkills = ["Flutter", "Firebase", "REST APIs", "Dart"];
        }
      });
    }

    if (!mounted) return;
    setState(() {
      analyzing = false;
      analysisFinished = true;
    });
  }
  void _resetAnalysis() {
    setState(() {
      uploaded = false;
      analyzing = false;
      analysisFinished = false;
      analysisSteps.clear();
      extractedSkills.clear();
    });
  }
  Future<void> pickCV() async {
    if (analyzing) {
      _showErrorSnackBar("Analysis is in progress. Please wait.");
      return;
    }

    FilePickerResult? result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null && mounted) {
      _resetAnalysis();
      setState(() {
        selectedFile = result.files.first;
      });
    }
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), behavior: SnackBarBehavior.floating),
    );
  }

  String formatFileSize(int bytes) {
    double kb = bytes / 1024;
    return kb < 1024 ? "${kb.toStringAsFixed(1)} KB" : "${(kb / 1024).toStringAsFixed(1)} MB";
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        spacing: 10.h,
        children: [
          _buildUploadArea(),
          if (selectedFile != null && !uploaded) Row(
      children: [
        Icon(Icons.info_outline, size: 16.sp, color: Colors.grey),
        SizedBox(width: 8.w),
        Text(
          "Tap to change, long press to remove.",
          style: TextStyle(color: Colors.grey, fontSize: 11.sp),
        ),
      ],
    ),
          if (analysisSteps.isNotEmpty) AnalysisSection(
              analysisSteps: analysisSteps,
              extractedSkills: extractedSkills,
              analyzing: analyzing,
              analysisFinished: analysisFinished
          ),
        ],
      ),
    );
  }


  Widget _buildUploadArea() {
    return GestureDetector(
      onLongPress: () {
        if (analyzing) {
          _showErrorSnackBar("Cannot remove file while analyzing.");
        } else {
          _resetAnalysis();
          setState(() => selectedFile = null);
        }
      },
      onTap: pickCV,
      child: CustomPaint(
        painter: DashedBorderPainter(
          radius: 12.r,
          strokeWidth: 2,
          color: const Color(0xFFC3C6D5),
        ),
        child: Container(
          padding: EdgeInsets.all(16.w),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFF5F7FA),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: selectedFile == null ? _buildPlaceholder() : _buildFileDetails(),
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Center(
        child: Text(
          "Click to upload your CV here",
          style: TextStyle(fontSize: 14.sp, color: const Color(0xFF434653)),
        ),
      ),
    );
  }

  Widget _buildFileDetails() {
    bool isPdf = selectedFile!.extension == "pdf";
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: (isPdf ? Colors.red : Colors.blue).withOpacity(.1),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Icon(
            isPdf ? Icons.picture_as_pdf : Icons.description,
            color: isPdf ? Colors.red : Colors.blue,
            size: 30.sp,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                selectedFile!.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
              ),
              Text(
                "${formatFileSize(selectedFile!.size)} • ${selectedFile!.extension!.toUpperCase()}",
                style: TextStyle(color: Colors.grey, fontSize: 12.sp),
              ),
            ],
          ),
        ),
        _buildUploadButton(),
      ],
    );
  }

  Widget _buildUploadButton() {
    return GestureDetector(
      onLongPress: () {},
      child: TextButton(
        onPressed: (uploaded || analyzing) ? null : () async {
          setState(() => uploaded = true);
          await startAnalysis();
        },
        style: TextButton.styleFrom(
          backgroundColor: uploaded ? Colors.green.shade50 : Colors.amber.shade50,
        ),
        child: Text(
          uploaded ? "Uploaded" : "Upload",
          style: TextStyle(
            color: uploaded ? Colors.green : Colors.amber.shade800,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }

}