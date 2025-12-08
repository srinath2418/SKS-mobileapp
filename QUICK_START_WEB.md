# 🚀 Quick Start - Run as Web App

## Prerequisites

You need Flutter SDK installed on your system. If not installed:

1. Download Flutter SDK: https://docs.flutter.dev/get-started/install/windows
2. Extract to `C:\flutter` (or any location)
3. Add to PATH: `C:\flutter\bin`
4. Verify: Open CMD and run `flutter --version`

## Option 1: Using Batch Script (Easiest)

Simply double-click: **`run_web.bat`**

This will:
- Install all dependencies
- Enable web support
- Launch the app in Chrome

## Option 2: Manual Commands

Open Command Prompt in this folder and run:

```bash
# Step 1: Install dependencies
flutter pub get

# Step 2: Enable web support
flutter config --enable-web

# Step 3: Run in Chrome
flutter run -d chrome
```

## Option 3: Build Static Web Files

To create deployable web files:

```bash
flutter build web
```

Files will be in `build/web/` folder. Upload to any web hosting.

## 🎯 Demo Login

- **Mobile:** Any number (e.g., 9876543210)
- **OTP:** `1234`

## 📱 App Flow

1. **Onboarding** → 4 spiritual screens → Get Started
2. **Login** → Enter mobile → Send OTP → Enter 1234 → Login
3. **Home** → Bottom tabs: Home, Learning, Chatbot, Events
4. **Explore** → Tap on courses, events, chat with bot

## 🎨 Features to Test

✅ Onboarding animation and navigation
✅ Login/Signup with validation
✅ Home dashboard with spiritual cards
✅ Learning courses list
✅ Course details page
✅ Chatbot interface
✅ Events listing
✅ Event details page
✅ Bottom navigation
✅ Spiritual gradient theme

## 🌐 Deploy to Web

### Netlify (Free)
1. Run: `flutter build web`
2. Go to: https://app.netlify.com/drop
3. Drag `build/web` folder

### Firebase Hosting
```bash
flutter build web
firebase init hosting
firebase deploy
```

### GitHub Pages
```bash
flutter build web --base-href "/SKS-Mobile-App/"
# Push build/web to gh-pages branch
```

## ⚠️ Note

This is a **demo/MVP version** with:
- Local dummy authentication
- Static course/event data
- Placeholder chatbot responses

Ready for backend integration and real features!

## 🆘 Troubleshooting

**Error: Flutter not found**
→ Install Flutter SDK and add to PATH

**Error: Chrome not found**
→ Install Google Chrome browser

**Error: Dependencies failed**
→ Run `flutter clean` then `flutter pub get`

**Port already in use**
→ Close other Flutter apps or use: `flutter run -d chrome --web-port=8080`

---

**Enjoy your spiritual journey! 🙏✨**
