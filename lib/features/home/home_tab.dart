import 'package:flutter/material.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/widgets/section_card.dart';
import '../../shared/widgets/gradient_container.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        gradient: AppColors.lightGradient,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Namaste 🙏', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.royalPurple)),
                        Text('Welcome to your spiritual journey', style: TextStyle(color: Colors.grey[600])),
                      ],
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.royalPurple,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                _buildQuickActions(context),
                SizedBox(height: 30),
                Text('Daily Practice', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.royalPurple)),
                SizedBox(height: 16),
                SectionCard(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          gradient: AppColors.spiritualGradient,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.self_improvement, color: Colors.white, size: 30),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Morning Meditation', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            Text('15 minutes • Beginner', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                          ],
                        ),
                      ),
                      Icon(Icons.play_circle_filled, color: AppColors.deepSaffron, size: 40),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text('Explore', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.royalPurple)),
                SizedBox(height: 16),
                _buildExploreGrid(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SectionCard(
            child: Column(
              children: [
                Icon(Icons.local_fire_department, color: AppColors.deepSaffron, size: 40),
                SizedBox(height: 8),
                Text('7', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text('Day Streak', style: TextStyle(fontSize: 12, color: Colors.grey[600])),
              ],
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: SectionCard(
            child: Column(
              children: [
                Icon(Icons.timer, color: AppColors.royalPurple, size: 40),
                SizedBox(height: 8),
                Text('45', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text('Minutes', style: TextStyle(fontSize: 12, color: Colors.grey[600])),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExploreGrid() {
    final items = [
      {'icon': Icons.book, 'title': 'Teachings', 'color': AppColors.royalPurple},
      {'icon': Icons.music_note, 'title': 'Mantras', 'color': AppColors.deepSaffron},
      {'icon': Icons.video_library, 'title': 'Videos', 'color': AppColors.deepViolet},
      {'icon': Icons.groups, 'title': 'Community', 'color': AppColors.goldenYellow},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.3,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return SectionCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(item['icon'] as IconData, color: item['color'] as Color, size: 40),
              SizedBox(height: 8),
              Text(item['title'] as String, style: TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        );
      },
    );
  }
}
