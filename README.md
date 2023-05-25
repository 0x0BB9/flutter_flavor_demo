# flutter_flavor_demo_bywill

A demo Flutter project for build flavor.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

#### Debug

Dev: `flutter run --flavor forDev --dart-define=host=dev`

Test: `flutter run --flavor forTest --dart-define=host=test`

Gray: `flutter run --flavor forGray --dart-define=host=gray`

Product： ``flutter run --flavor forRelease --dart-define=host=prod``
