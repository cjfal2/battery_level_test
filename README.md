# 🔋 battery_level_plus

[![pub.dev](https://img.shields.io/pub/v/battery_level_plus)](https://pub.dev/packages/battery_level_plus)
[![platform](https://img.shields.io/badge/platform-Android%20%7C%20iOS-blue)](#)

Flutter 플러그인으로 **Android와 iOS에서 배터리 잔량(%)**을 가져올 수 있게 해주는 패키지입니다.

---

## ✨ 기능

- ✅ Android 배터리 잔량 확인
- ✅ iOS 배터리 잔량 확인
- ✅ 간단한 API (`BatteryLevelPlus.getBatteryLevel()`)

---

## 🚀 설치

```bash
flutter pub add battery_level_plus
```

또는 `pubspec.yaml`에 직접 추가:

```yaml
dependencies:
  battery_level_plus: ^0.0.1
```

---

## 💻 사용 예제

```dart
import 'package:battery_level_plus/battery_level_plus.dart';

void main() async {
  final batteryLevel = await BatteryLevelPlus.getBatteryLevel();
  print('🔋 배터리 잔량: $batteryLevel%');
}
```

> 자세한 예제는 [example/lib/main.dart](example/lib/main.dart) 참고

---

## 🛠️ 지원 플랫폼

| 플랫폼 | 지원 여부 |
|--------|-----------|
| ✅ Android | ✔️ |
| ✅ iOS     | ✔️ |
| 🔜 Web     | ❌ (미지원) |
| 🔜 macOS   | ❌ (미지원) |

---

## 📦 개발 환경

- Flutter SDK ≥ 3.10.0
- Dart SDK ≥ 3.0.0
- Kotlin ≥ 1.7
- Swift ≥ 5.0

---

## 📄 라이선스

이 프로젝트는 [MIT License](LICENSE)를 따릅니다.

---

## 🙌 기여하기

PR 또는 이슈 언제든 환영합니다!  
오타 수정부터 기능 개선까지 편하게 열어주세요.

---

## 🔗 링크

- 🔗 [패키지 페이지 (pub.dev)](https://pub.dev/packages/battery_level_plus)
- 🔗 [GitHub Repository]([https://github.com/사용자명/battery_level_plus](https://github.com/cjfal2/battery_level_test))
