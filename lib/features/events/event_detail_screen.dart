import 'package:flutter/material.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/widgets/gradient_container.dart';
import '../../shared/widgets/primary_button.dart';

class EventDetailScreen extends StatelessWidget {
  final String eventId;

  const EventDetailScreen({super.key, required this.eventId});

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
                        Text('Event Details', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.royalPurple)),
                        SizedBox(height: 20),
                        _buildInfoRow(Icons.calendar_today, 'Date & Time', 'March 25, 2024 at 6:00 PM'),
                        _buildInfoRow(Icons.location_on, 'Location', 'Online via Zoom'),
                        _buildInfoRow(Icons.person, 'Host', 'Spiritual Master'),
                        SizedBox(height: 20),
                        Text('About', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 12),
                        Text('Join us for this transformative spiritual event. Experience deep meditation and connect with fellow seekers.', style: TextStyle(fontSize: 16, height: 1.6)),
                        SizedBox(height: 30),
                        PrimaryButton(text: 'Register Now', onPressed: () {}),
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

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Icon(icon, color: AppColors.deepSaffron, size: 24),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
              Text(value, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
            ],
          ),
        ],
      ),
    );
  }
}
