import 'package:flutter/material.dart';
import '../../shared/theme/app_colors.dart';
import 'home_tab.dart';
import '../learning/learning_tab.dart';
import '../chatbot/chatbot_tab.dart';
import '../events/events_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomeTab(),
    LearningTab(),
    ChatbotTab(),
    EventsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, -2)),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.royalPurple,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Learning'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chatbot'),
            BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Events'),
          ],
        ),
      ),
    );
  }
}
