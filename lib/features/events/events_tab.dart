import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/widgets/section_card.dart';

class EventsTab extends StatelessWidget {
  const EventsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final events = [
      {'id': '1', 'title': 'Full Moon Meditation', 'date': 'March 25, 2024', 'desc': 'Join us for a powerful group meditation'},
      {'id': '2', 'title': 'Kundalini Workshop', 'date': 'April 2, 2024', 'desc': 'Learn advanced techniques from masters'},
      {'id': '3', 'title': 'Spiritual Retreat', 'date': 'April 15-17, 2024', 'desc': '3-day immersive spiritual experience'},
      {'id': '4', 'title': 'Mantra Chanting Circle', 'date': 'April 20, 2024', 'desc': 'Experience the power of collective chanting'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: SectionCard(
              onTap: () => context.push('/event/${event['id']}'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          gradient: AppColors.spiritualGradient,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.event, color: Colors.white, size: 30),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(event['title']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.calendar_today, size: 14, color: Colors.grey[600]),
                                SizedBox(width: 4),
                                Text(event['date']!, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(event['desc']!, style: TextStyle(color: Colors.grey[700], fontSize: 14)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
