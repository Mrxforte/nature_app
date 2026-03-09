# Nature App

A clean and scalable Flutter application for exploring nature categories such as forests, mountains, rivers, beaches, and more.

The app demonstrates a simple yet production-friendly architecture using `Provider` for state management and a model-driven data layer.

## Overview

Nature App provides:

- A scrollable nature feed with image, title, and summary
- A details page with a large hero-style image and full description
- Favorite toggling at item level
- Multi-tab shell via bottom navigation (`Home`, `Favorites`, `Settings`, `Profile`)

## Current Status

- `Home` and `Details` are implemented and connected
- Favorite state toggle is implemented in provider state
- `Favorites`, `Settings`, and `Profile` tabs are scaffold placeholders

## Tech Stack

- Flutter (Dart SDK `^3.10.8`)
- `provider` for app state
- `cached_network_image` included as dependency

## Project Structure

```text
lib/
	constants/
		app_strings.dart
	data/
		nature_data.dart
	models/
		nature_model.dart
	screens/
		details/
			nature_details_screen.dart
		favorite/
			favorite_screen.dart
		home/
			home_screen.dart
		main/
			main_screen.dart
		profile/
			profile_screen.dart
		settings/
			settings_screen.dart
	widgets/
		nature_list_tile_widget.dart
	main.dart
```

## Architecture Notes

- `NatureModel` is an immutable data model with JSON support and `copyWith`
- `NatureData` is a `ChangeNotifier` that owns:
	- the list of nature items
	- selected item state
	- favorite toggle updates
- UI screens read/write state through `context.watch`, `context.read`, and `context.select`

## Getting Started

### 1. Install dependencies

```bash
flutter pub get
```

### 2. Run the app

```bash
flutter run
```

### 3. Analyze code

```bash
flutter analyze
```

## Roadmap

- Implement real `Favorites` screen using `isFavorite` filter
- Complete `Settings` and `Profile` screens
- Add offline-friendly image caching in all image widgets
- Add unit and widget tests for provider logic and navigation flow

## Development Guidelines

- Keep UI widgets lean and move business logic to providers
- Prefer immutable model updates (`copyWith`) over mutation
- Keep strings centralized in `constants/app_strings.dart` when reused

## License

This project is currently not licensed for public distribution.
