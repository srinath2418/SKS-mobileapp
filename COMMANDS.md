# 📝 Essential Flutter Commands

## 🚀 Quick Start Commands

### First Time Setup
```bash
# Navigate to project
cd "c:\Users\spuppala\OneDrive - Altimetrik Corp\Desktop\SKS-Mobile-App"

# Install dependencies
flutter pub get

# Enable web support
flutter config --enable-web

# Run on Chrome
flutter run -d chrome
```

### Or Simply Run
```bash
# Double-click this file in Windows Explorer
run_web.bat
```

## 🔧 Development Commands

### Check Flutter Installation
```bash
flutter doctor
flutter doctor -v
```

### Get Dependencies
```bash
flutter pub get
flutter pub upgrade
```

### Clean Build
```bash
flutter clean
flutter pub get
```

### Run App
```bash
# Web (Chrome)
flutter run -d chrome

# Web (Edge)
flutter run -d edge

# Web (Custom Port)
flutter run -d chrome --web-port=8080

# Android
flutter run -d android

# iOS
flutter run -d ios

# All connected devices
flutter run -d all
```

### List Devices
```bash
flutter devices
flutter emulators
```

### Hot Reload
```
Press 'r' in terminal while app is running
```

### Hot Restart
```
Press 'R' in terminal while app is running
```

## 🏗️ Build Commands

### Web
```bash
# Development build
flutter build web

# Production build with optimizations
flutter build web --release

# With specific renderer
flutter build web --web-renderer canvaskit

# With base href (for subdirectory hosting)
flutter build web --base-href "/app/"
```

### Android
```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# Split APKs by ABI (smaller size)
flutter build apk --split-per-abi

# App Bundle (for Play Store)
flutter build appbundle --release

# With specific flavor
flutter build apk --flavor production
```

### iOS
```bash
# Debug build
flutter build ios --debug

# Release build
flutter build ios --release

# With specific configuration
flutter build ios --release --no-codesign
```

## 🧪 Testing Commands

### Run Tests
```bash
# All tests
flutter test

# Specific test file
flutter test test/auth_test.dart

# With coverage
flutter test --coverage

# Widget tests
flutter test test/widget_test.dart

# Integration tests
flutter test integration_test/app_test.dart
```

### Analyze Code
```bash
# Check for issues
flutter analyze

# Fix formatting
flutter format .

# Fix formatting (specific file)
flutter format lib/main.dart
```

## 📦 Package Management

### Add Package
```bash
flutter pub add package_name
flutter pub add package_name --dev  # Dev dependency
```

### Remove Package
```bash
flutter pub remove package_name
```

### Update Packages
```bash
flutter pub upgrade
flutter pub upgrade --major-versions
```

### Get Outdated Packages
```bash
flutter pub outdated
```

## 🌐 Web-Specific Commands

### Enable Web
```bash
flutter config --enable-web
```

### Create Web Files
```bash
flutter create --platforms=web .
```

### Run Web Server
```bash
flutter run -d web-server --web-port=8080
```

### Build for Web
```bash
# Standard build
flutter build web

# With tree shaking
flutter build web --tree-shake-icons

# With source maps
flutter build web --source-maps

# Profile mode
flutter build web --profile
```

## 📱 Platform-Specific Commands

### Android
```bash
# List Android devices
adb devices

# Install APK
adb install build/app/outputs/flutter-apk/app-release.apk

# View logs
adb logcat

# Clear app data
adb shell pm clear com.sks.app
```

### iOS
```bash
# List iOS devices
xcrun simctl list devices

# Open iOS simulator
open -a Simulator

# View logs
xcrun simctl spawn booted log stream --predicate 'processImagePath endswith "Runner"'
```

## 🔍 Debugging Commands

### Debug Mode
```bash
# Run in debug mode
flutter run --debug

# Run in profile mode
flutter run --profile

# Run in release mode
flutter run --release
```

### Performance
```bash
# Performance overlay
flutter run --profile --trace-skia

# Check performance
flutter run --profile --trace-startup
```

### Logs
```bash
# View logs
flutter logs

# Clear logs
flutter logs --clear
```

## 🛠️ Maintenance Commands

### Update Flutter
```bash
flutter upgrade
flutter upgrade --force
```

### Channel Management
```bash
# Check current channel
flutter channel

# Switch to stable
flutter channel stable

# Switch to beta
flutter channel beta
```

### Cache Management
```bash
# Clear cache
flutter pub cache clean

# Repair cache
flutter pub cache repair
```

## 🎨 Code Generation

### Generate Icons
```bash
flutter pub run flutter_launcher_icons:main
```

### Generate Splash Screen
```bash
flutter pub run flutter_native_splash:create
```

### Generate Code (if using build_runner)
```bash
flutter pub run build_runner build
flutter pub run build_runner watch
flutter pub run build_runner build --delete-conflicting-outputs
```

## 📊 Analysis Commands

### Performance
```bash
# Measure build time
flutter build apk --release --verbose

# Analyze bundle size
flutter build apk --analyze-size
flutter build appbundle --analyze-size
```

### Dependencies
```bash
# Show dependency tree
flutter pub deps

# Show outdated packages
flutter pub outdated
```

## 🚀 Deployment Commands

### Web Deployment

#### Netlify
```bash
# Install Netlify CLI
npm install -g netlify-cli

# Build
flutter build web --release

# Deploy
cd build/web
netlify deploy --prod
```

#### Firebase
```bash
# Install Firebase CLI
npm install -g firebase-tools

# Login
firebase login

# Initialize
firebase init hosting

# Build
flutter build web --release

# Deploy
firebase deploy --only hosting
```

#### GitHub Pages
```bash
# Build with base href
flutter build web --base-href "/repo-name/"

# Deploy to gh-pages branch
cd build/web
git init
git add .
git commit -m "Deploy"
git branch -M gh-pages
git remote add origin https://github.com/username/repo.git
git push -u origin gh-pages --force
```

### Android Deployment
```bash
# Build release APK
flutter build apk --release

# Build App Bundle
flutter build appbundle --release

# Sign APK (if not auto-signed)
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.jks app-release-unsigned.apk alias_name
```

### iOS Deployment
```bash
# Build for release
flutter build ios --release

# Archive (in Xcode)
# Product > Archive

# Upload to App Store Connect
# Window > Organizer > Upload
```

## 🔧 Troubleshooting Commands

### Common Issues
```bash
# Fix Gradle issues
cd android
./gradlew clean

# Fix iOS issues
cd ios
pod install
pod update

# Reset Flutter
flutter clean
flutter pub get
flutter doctor

# Clear derived data (iOS)
rm -rf ~/Library/Developer/Xcode/DerivedData

# Fix Android licenses
flutter doctor --android-licenses
```

### Reinstall Flutter
```bash
# Remove Flutter
rm -rf flutter

# Download and install again
git clone https://github.com/flutter/flutter.git
flutter doctor
```

## 📝 Useful Shortcuts

### While App is Running
- `r` - Hot reload
- `R` - Hot restart
- `h` - Help
- `q` - Quit
- `d` - Detach
- `c` - Clear console
- `p` - Toggle performance overlay
- `P` - Toggle platform (Android/iOS)
- `o` - Toggle platform brightness
- `z` - Toggle elevation
- `t` - Dump rendering tree
- `L` - Dump layer tree
- `S` - Dump accessibility tree
- `U` - Dump semantics tree
- `i` - Toggle widget inspector
- `w` - Dump widget hierarchy
- `v` - Open DevTools

## 🎯 Project-Specific Commands

### For This Project
```bash
# Quick start
flutter pub get && flutter run -d chrome

# Clean build
flutter clean && flutter pub get && flutter run -d chrome

# Build for production web
flutter build web --release --web-renderer canvaskit

# Run with specific port
flutter run -d chrome --web-port=3000

# Build and deploy to Netlify
flutter build web --release && cd build/web && netlify deploy --prod
```

## 📚 Help Commands

### Get Help
```bash
# General help
flutter help

# Command-specific help
flutter run --help
flutter build --help
flutter test --help

# Version info
flutter --version

# Check configuration
flutter config
```

---

## 🎉 Most Used Commands for This Project

```bash
# 1. First time setup
flutter pub get
flutter config --enable-web

# 2. Run development
flutter run -d chrome

# 3. Build for production
flutter build web --release

# 4. Deploy to Netlify
cd build/web
netlify deploy --prod

# 5. Clean and rebuild
flutter clean
flutter pub get
flutter run -d chrome
```

---

**Save this file for quick reference! 📌**
