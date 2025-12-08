# Siva Kundalini Sadhana App

A spiritual mobile application built with Flutter for Android, iOS, and Web platforms.

## Features

- **Onboarding**: Beautiful spiritual onboarding screens
- **Authentication**: OTP-based login and signup
- **Home**: Spiritual dashboard with quick actions
- **Learning**: Browse and access spiritual courses
- **Chatbot**: AI spiritual guide (placeholder)
- **Events**: Upcoming spiritual events and workshops

## Architecture

- Clean Architecture with feature-first folder structure
- State Management: Riverpod
- Navigation: GoRouter
- Theme: Custom spiritual design with gradient backgrounds

## Setup Instructions

### Prerequisites
- Flutter SDK 3.0 or higher
- Dart SDK

### Installation

1. Clone the repository
2. Navigate to project directory:
   ```
   cd SKS-Mobile-App
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

4. Run the app:

   **For Web:**
   ```
   flutter run -d chrome
   ```

   **For Android:**
   ```
   flutter run -d android
   ```

   **For iOS:**
   ```
   flutter run -d ios
   ```

## Project Structure

```
lib/
├── core/
│   ├── router/          # Navigation routing
│   ├── services/        # Business logic services
│   └── utils/           # Utility functions
├── features/
│   ├── onboarding/      # Onboarding screens
│   ├── auth/            # Authentication (login/signup)
│   ├── home/            # Home dashboard
│   ├── learning/        # Learning courses
│   ├── chatbot/         # AI chatbot
│   ├── events/          # Events listing
│   └── profile/         # User profile (future)
├── shared/
│   ├── theme/           # App theme and colors
│   └── widgets/         # Reusable widgets
└── main.dart            # App entry point
```

## Color Palette

- Deep Saffron: #FF9933
- Royal Purple: #6A0DAD
- Golden Yellow: #FFD700
- Deep Violet: #4B0082
- Soft White: #FAF9F6

## Future Features (Roadmap)

- Audio classes
- Video library
- User community
- Points/badges system
- Meditation timer
- Live events
- Push notifications
- Premium subscription

## Demo Credentials

**Login:**
- Mobile: Any number
- OTP: 1234

## License

Proprietary - All rights reserved
