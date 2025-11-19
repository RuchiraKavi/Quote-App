# Flutter Quotes App 📱

A beautiful Flutter application that displays inspirational quotes from the DummyJSON API.

## 🚀 How to Run the Project

### Prerequisites
- Flutter SDK: 3.32.5 or compatible version
- Dart SDK: 3.8.1
- IDE: Android Studio, VS Code, or any Flutter-compatible editor

### Installation Steps
1. Extract the project to your desired directory
2. Open terminal/command prompt in the project folder
3. Install dependencies:

   flutter pub get

4. Run the app:

   flutter run

### Quick Start

# Clone or download the project, then:
cd quotes_app
flutter pub get
flutter run


## 🛠 Flutter Version & Packages

### Flutter Environment
- Flutter: 3.32.5 (stable)
- Dart: 3.8.1
- Tools: DevTools 2.45.1

### Main Packages Used

dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0        # For API calls
  provider: ^6.1.1    # For state management


## ⚠️ Assumptions & Limitations

### Assumptions Made
1. API Reliability: DummyJSON API is always available and responsive
2. Network Connectivity: User has stable internet connection for API calls
3. Device Compatibility: App tested on standard Android/iOS screen sizes
4. Orientation: Designed for portrait mode only

### Known Limitations
1. Offline Functionality: No local caching - requires internet for quotes
2. Basic Features: No search, filtering, or favorite quotes functionality
3. Simple Pagination: Limited quote loading without infinite scroll
4. Error Handling: Basic retry mechanism for API failures

### Device Support
- ✅ Android (tested on API 21+)
- ✅ iOS (theoretically supported, may need Mac for building)
- ❌ Web/Desktop: Not optimized for larger screens

### Performance Notes
- Uses minimal dependencies for faster build times
- Basic state management suitable for interview demo
- No heavy animations that might affect performance

---

## 📱 App Features
- Random quote of the day
- Quotes list with author information  
- Quote detail screen
- Bottom navigation between screens
- Loading and error states handling

## 🔗 API Reference
- Base URL: https://dummyjson.com/quotes
- Random Quote: `/random`
- All Quotes: `/`
- Quote by ID: `/{id}`


Note: This is a demo app created for interview purposes. All quotes are provided by DummyJSON API.