# Siva Kundalini Sadhana App - Complete Setup Guide

## 🚀 Quick Start

This Flutter application is ready to run on Web, Android, and iOS platforms.

## 📋 Prerequisites

Before running the app, ensure you have:

1. **Flutter SDK** (3.0 or higher)
   - Download from: https://flutter.dev/docs/get-started/install
   - Add Flutter to your PATH

2. **Verify Installation**
   ```bash
   flutter doctor
   ```

## 🌐 Running as Web App (Recommended for Quick Preview)

Since you don't have Android Studio or emulators installed, the easiest way to preview the app is through Flutter Web:

### Step 1: Install Dependencies
```bash
cd "c:\Users\spuppala\OneDrive - Altimetrik Corp\Desktop\SKS-Mobile-App"
flutter pub get
```

### Step 2: Enable Flutter Web
```bash
flutter config --enable-web
```

### Step 3: Run on Chrome
```bash
flutter run -d chrome
```

### Step 4: Build for Production Web
```bash
flutter build web
```

The built files will be in `build/web/` directory. You can deploy these to any web hosting service.

## 📱 Running on Mobile Devices

### Android
```bash
flutter run -d android
```

### iOS (macOS only)
```bash
flutter run -d ios
```

## 🎨 App Features

### ✅ Implemented (MVP)
- ✨ Spiritual onboarding with 4 screens
- 🔐 OTP-based authentication (demo: use OTP 1234)
- 🏠 Home dashboard with spiritual cards
- 📚 Learning module with courses
- 💬 Chatbot interface (placeholder responses)
- 📅 Events listing and details
- 🎨 Beautiful spiritual gradient theme

### 🔮 Future Ready Architecture
The app is built with modular architecture to easily add:
- Audio/Video classes
- Meditation timer
- Community features
- Points/Badges system
- Push notifications
- Premium subscriptions
- Live streaming events

## 🎯 Demo Credentials

**Login:**
- Mobile: Any 10-digit number
- OTP: `1234`

**Signup:**
- Fill any details (stored locally for demo)

## 📂 Project Structure

```
lib/
├── core/
│   ├── router/          # GoRouter navigation
│   ├── services/        # Auth & Storage services
│   └── utils/
├── features/
│   ├── onboarding/      # 4 spiritual onboarding screens
│   ├── auth/            # Login & Signup
│   ├── home/            # Dashboard with tabs
│   ├── learning/        # Courses list & details
│   ├── chatbot/         # AI chat interface
│   ├── events/          # Events list & details
│   └── profile/         # (Future)
├── shared/
│   ├── theme/           # Spiritual color palette
│   └── widgets/         # Reusable components
└── main.dart
```

## 🎨 Design Theme

**Color Palette:**
- Deep Saffron: `#FF9933`
- Royal Purple: `#6A0DAD`
- Golden Yellow: `#FFD700`
- Deep Violet: `#4B0082`
- Soft White: `#FAF9F6`

**Design Elements:**
- Gradient backgrounds
- Glowing buttons with shadows
- Rounded corners
- Spiritual icons
- Smooth animations

## 🔧 Troubleshooting

### Issue: Flutter command not found
**Solution:** Add Flutter to your system PATH

### Issue: Web not enabled
**Solution:** Run `flutter config --enable-web`

### Issue: Dependencies error
**Solution:** Run `flutter pub get` and `flutter clean`

### Issue: Chrome not detected
**Solution:** Install Google Chrome or use `flutter run -d web-server`

## 🌐 Deploying Web App

### Option 1: Firebase Hosting
```bash
flutter build web
firebase deploy
```

### Option 2: Netlify
1. Build: `flutter build web`
2. Drag `build/web` folder to Netlify

### Option 3: GitHub Pages
1. Build: `flutter build web --base-href "/repo-name/"`
2. Push `build/web` to gh-pages branch

## 📦 Dependencies Used

- `flutter_riverpod`: State management
- `go_router`: Navigation
- `shared_preferences`: Local storage
- `google_fonts`: Typography
- `lottie`: Animations (placeholder)

## 🚀 Next Steps

1. **Backend Integration**: Replace dummy auth with real API
2. **Content Management**: Add CMS for courses/events
3. **AI Chatbot**: Integrate OpenAI or custom model
4. **Media Library**: Add audio/video streaming
5. **Payment Gateway**: For premium features
6. **Analytics**: Firebase Analytics integration
7. **Push Notifications**: FCM setup

## 📞 Support

For issues or questions, refer to:
- Flutter Documentation: https://flutter.dev/docs
- Project README: README.md

---

**Built with ❤️ for spiritual seekers**
