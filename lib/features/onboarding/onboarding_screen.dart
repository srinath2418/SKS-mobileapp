import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/widgets/gradient_container.dart';
import '../../shared/widgets/primary_button.dart';
import '../../core/services/storage_service.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final _storageService = StorageService();

  final List<OnboardingData> _pages = [
    OnboardingData(
      title: 'Welcome to Siva Kundalini Sadhana',
      description: 'Begin your spiritual journey with ancient wisdom and modern guidance',
      icon: Icons.self_improvement,
    ),
    OnboardingData(
      title: 'Learn & Grow',
      description: 'Access courses, teachings, and practices to deepen your spiritual understanding',
      icon: Icons.menu_book,
    ),
    OnboardingData(
      title: 'AI Spiritual Guide',
      description: 'Get personalized guidance from our AI-powered spiritual assistant',
      icon: Icons.psychology,
    ),
    OnboardingData(
      title: 'Join Events & Community',
      description: 'Connect with fellow seekers and participate in spiritual events',
      icon: Icons.groups,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        gradient: AppColors.spiritualGradient,
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) => setState(() => _currentPage = index),
                  itemCount: _pages.length,
                  itemBuilder: (context, index) => _buildPage(_pages[index]),
                ),
              ),
              _buildIndicators(),
              Padding(
                padding: EdgeInsets.all(24),
                child: _currentPage == _pages.length - 1
                    ? PrimaryButton(
                        text: 'Get Started',
                        onPressed: () async {
                          await _storageService.setOnboardingComplete();
                          if (context.mounted) context.go('/login');
                        },
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () => _pageController.jumpToPage(_pages.length - 1),
                            child: Text('Skip', style: TextStyle(color: Colors.white70)),
                          ),
                          TextButton(
                            onPressed: () => _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            ),
                            child: Text('Next', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPage(OnboardingData data) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.2),
              boxShadow: [
                BoxShadow(
                  color: AppColors.goldenYellow.withOpacity(0.3),
                  blurRadius: 30,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Icon(data.icon, size: 100, color: Colors.white),
          ),
          SizedBox(height: 60),
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [Shadow(color: Colors.black26, blurRadius: 10)],
            ),
          ),
          SizedBox(height: 20),
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white70, height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        _pages.length,
        (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: _currentPage == index ? 24 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: _currentPage == index ? AppColors.goldenYellow : Colors.white30,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}

class OnboardingData {
  final String title;
  final String description;
  final IconData icon;

  OnboardingData({required this.title, required this.description, required this.icon});
}
