# ⭐ Trending GitHub Repositories

This app lists the most starred GitHub repositories created in the last 30 days by fetching data from the GitHub API. The goal is to provide an intuitive and responsive interface for exploring trending repositories with useful information about each project.

---

## 🌟 Live Demo

![Demo](https://media.giphy.com/media/GgeZhEjctaL37C2ONP/giphy.gif)

---

## 🚀 Technology Used

This project is built using **Flutter**, Google's open-source UI toolkit for crafting high-performance, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter apps are written in the **Dart** programming language, making it ideal for building scalable and efficient applications.

---

## 🛠️ How to Run the App

1. **Install Flutter**: Follow the instructions at [Flutter Install Guide](https://flutter.dev/docs/get-started/install).
2. **Set Up Emulator/Device**:
   - Install an emulator/simulator.
   - Or connect a physical device with USB debugging enabled.
3. **Clone the Repository**:  
   Run `git clone <repository-url>` to clone the project locally.
4. **Open in Your IDE**:
   - Use any IDE that supports Flutter (e.g., **VS Code** or **Android Studio**).
   - Install the Flutter and Dart plugins in your IDE.
5. **Install Dependencies**:  
   Run `flutter packages get` in the project directory to install required dependencies.
6. **Accept Android SDK License**:  
   If using an Android emulator, ensure the licenses are accepted by running:  
   `flutter doctor --android-licenses`.
7. **Run the App**:  
   Use the `flutter run` command to launch the app on your device or emulator.

---

## 📦 Packages Used

### 1. [http](https://pub.dev/packages/http)
Used to make HTTP requests to the GitHub API and fetch repository data.

### 2. [provider](https://pub.dev/packages/provider)
State management for the app, reducing boilerplate code and ensuring efficient rebuilding of UI components.

### 3. [cached_network_image](https://pub.dev/packages/cached_network_image)
Optimizes image loading by caching images from the API response, reducing internet usage and improving performance.

### 4. [date_format](https://pub.dev/packages/date_format)
Converts date strings from the API to `DateTime` objects for better formatting and manipulation.

### 5. [hexcolor](https://pub.dev/packages/hexcolor)
Allows the use of hex color codes in Flutter projects for precise color customization.

### 6. [auto_size_text](https://pub.dev/packages/auto_size_text)
Automatically resizes text to fit within its bounds, ensuring the UI remains consistent across devices.

### 7. [flutter_spinkit](https://pub.dev/packages/flutter_spinkit)
Provides a variety of loading indicators to enhance the user experience.

### 8. [toggle_switch](https://pub.dev/packages/toggle_switch)
A customizable toggle switch widget used for interactive UI elements.

---

## ✨ Features

- **Trending Repositories**: View a list of the most starred GitHub repositories created in the last 30 days.
- **Optimized UI**: Smooth and responsive interface with placeholder loading indicators and cached images.
- **State Management**: Efficiently handles app state with `provider`.
- **Customizable**: Built with reusable components for future scalability and customization.

---

## 🧑‍💻 About Me

I am a **Senior Mobile Developer** with expertise in crafting efficient and scalable applications. With a strong foundation in **native iOS, Android, and cross-platform frameworks like Flutter**, I enjoy tackling challenging problems and building solutions that deliver great user experiences.

Feel free to connect and explore more about my work at [www.amineboularbah.com](https://www.amineboularbah.com).
