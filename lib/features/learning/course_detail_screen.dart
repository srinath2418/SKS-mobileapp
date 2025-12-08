import 'package:flutter/material.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/widgets/gradient_container.dart';
import '../../shared/widgets/primary_button.dart';

class CourseDetailScreen extends StatelessWidget {
  final String courseId;

  const CourseDetailScreen({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        gradient: AppColors.spiritualGradient,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Course Details', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.royalPurple)),
                        SizedBox(height: 20),
                        Text('This course will guide you through the spiritual practices and teachings.', style: TextStyle(fontSize: 16, height: 1.6)),
                        SizedBox(height: 30),
                        Text('What You\'ll Learn', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 16),
                        _buildLearnItem('Understanding spiritual energy'),
                        _buildLearnItem('Meditation techniques'),
                        _buildLearnItem('Breathing exercises'),
                        _buildLearnItem('Daily practice routines'),
                        SizedBox(height: 30),
                        PrimaryButton(text: 'Start Course', onPressed: () {}),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLearnItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: AppColors.deepSaffron, size: 24),
          SizedBox(width: 12),
          Expanded(child: Text(text, style: TextStyle(fontSize: 15))),
        ],
      ),
    );
  }
}
