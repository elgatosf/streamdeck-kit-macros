# Stream Deck Kit - Macros

This package contains macros for the [Stream Deck Kit library](https://github.com/elgatosf/streamdeck-kit-ipad). Have a look at [the documentation](https://docs.elgato.com/ipad/) for info's how this is meant to be used.

## Installation

### Swift Package Manager 

```swift
dependencies: [
    .package(url: "https://github.com/elgatosf/streamdeck-kit-macros.git", upToNextMajor: "0.0.1")
]
```

### CocoaPods

Example Podfile

```Ruby
platform :ios, '16.0'

target 'YourAppTarget' do
    use_frameworks!
    pod 'StreamDeckKitMacros'
end
```