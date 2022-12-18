# tca-alert-issue
**This issue is fixed.** (https://github.com/pointfreeco/swiftui-navigation/releases/tag/0.4.4)

## issue
- Button is disabled when we set like `secondaryButton: .cancel(.init("Cancel"))` in `AlertState.init`.
- This occurs on iOS 14.
  - No problem with iOS 15 and iOS 16.

## ScreenShot
![Simulator Screen Recording - iPhone SE (2nd generation) - 2022-12-13 at 13 51 47](https://user-images.githubusercontent.com/37182704/207340255-7ef1a58c-4db3-406b-9d60-b3af3c82cea1.gif)

## Environment
### The Composable Architecture version
- 0.47.2

### Xcode version
- Version 14.1 (14B47b)

### Swift Compiler version
```
swift-driver version: 1.62.15 Apple Swift version 5.7.1 (swiftlang-5.7.1.135.3 clang-1400.0.29.51)
Target: arm64-apple-macosx12.0
```
