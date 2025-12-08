import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/widgets/section_card.dart';

class LearningTab extends StatelessWidget {
  const LearningTab({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = [
      {'id': '1', 'title': 'Introduction to Kundalini', 'desc': 'Understand the basics of Kundalini awakening', 'level': 'Beginner'},
      {'id': '2', 'title': 'Chakra Meditation', 'desc': 'Learn to balance your energy centers', 'level': 'Intermediate'},
      {'id': '3', 'title': 'Advanced Pranayama', 'desc': 'Master breathing techniques for spiritual growth', 'level': 'Advanced'},
      {'id': '4', 'title': 'Mantra Sadhana', 'desc': 'Harness the power of sacred sounds', 'level': 'Beginner'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Learning'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: SectionCard(
              onTap: () => context.push('/course/${course['id']}'),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: AppColors.spiritualGradient,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.school, color: Colors.white, size: 40),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(course['title']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        SizedBox(height: 4),
                        Text(course['desc']!, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
                        SizedBox(height: 8),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: AppColors.royalPurple.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(course['level']!, style: TextStyle(color: AppColors.royalPurple, fontSize: 11, fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey[400], size: 16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
