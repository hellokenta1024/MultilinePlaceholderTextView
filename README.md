# MultilinePlaceholderTextView
MultilinePlaceholderTextView is TextView with multiline placeholder

## Usage
- You can use `placeholder`, `placeholderTextColor`
- You can use `attributedPlaceholder`
- You can use `textContainerInset`

```swift
let placeholderTextView = MultilinePlaceholderTextView()
placeholderTextView.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
placeholderTextView.placeholder = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
placeholderTextView.attributedPlaceholder = configureAttributedString()
```
![result](https://github.com/KEN-chan/MultilinePlaceholderTextView/blob/media/medias/multiline-placeholder-textview-ss.png)

## Installation

### CocoaPods
```sh
gem install cocoapods
```

**Add following to your Podfile**

```rb
platform :ios, '8.0'
use_frameworks!

target 'Your Target Name' do
  pod 'MultilinePlaceholderTextView'
end
```

**Run**
```sh
pod install
```

### Carthage
```sh
brew install carthage
```

**Add following to your Cartfile**
```rb
github "KEN-chan/MultilinePlaceholderTextView"
```

**Run**
```sh
carthage update --platform ios
```

## Requirements
- iOS 8.0+
- Swift 4.0+

## License
MIT license
