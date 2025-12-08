@echo off
echo ========================================
echo Siva Kundalini Sadhana App - Web Runner
echo ========================================
echo.

echo Step 1: Installing dependencies...
call flutter pub get
echo.

echo Step 2: Enabling Flutter Web...
call flutter config --enable-web
echo.

echo Step 3: Starting app in Chrome...
echo.
echo The app will open in your default browser.
echo Use demo OTP: 1234 for login
echo.
call flutter run -d chrome

pause
