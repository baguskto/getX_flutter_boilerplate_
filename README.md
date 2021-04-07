# isee

Flutter aplication for PT.Biro Klasifikasi Indonesia by Qtasnim
developer: baguskto@gmail.com

## Requirements
- Flutter version: 1.17.3
- Dart version: 2.8.4

## Run Project
This app have 2 flavors `staging` and `production`
To run `staging` version:
```
flutter run --flavor staging -t lib/main_staging.dart
```

for `production` version:
```
flutter run --flavor production -t lib/main_production.dart
```

if you using android studio, you must setting environment for run app staging or production version.
[SETTING ENVIRONMENT](https://medium.com/@vo9312/flutter-series-part-1-flutter-flavors-setup-bb6aba1586ac)

## Build Project
- Build project: `Flutter build apk --flavor staging -t lib/main_staging.dart` for android and `flutter build ios --flavor staging -t lib/main_staging.dart` for iOS
- To reduce apk size in android can using ``flutter build appbundle --flavor staging -t lib/main_staging.dart`` (app bundle format) or ``flutter build apk --split-per-abi--flavor staging -t lib/main_staging.dart`` (split per application binary interface (ABI))
