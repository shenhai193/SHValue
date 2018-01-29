# SHValue

[![Travis CI](https://travis-ci.org/SwiftyJSON/SwiftyJSON.svg?branch=master)](https://travis-ci.org/SwiftyJSON/SwiftyJSON) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) ![CocoaPods](https://img.shields.io/cocoapods/v/SwiftyJSON.svg) ![Platform](https://img.shields.io/badge/platforms-iOS%208.0+%20%7C%20macOS%2010.10+%20%7C%20tvOS%209.0+%20%7C%20watchOS%202.0+-333333.svg)

The safe way to deal with JSON data in Objective-C

## Why is the typical JSON handling in Objective-C necessary?

The code would look like this:
```Objective-C
NSDictionary *jsonDict = @{@"data": @[@{}, @{}, @{@"name": @"A"}]};
if ([jsonDict isKindOfClass:[NSDictionary class]]) {
    if ([jsonDict[@"data"] isKindOfClass:[NSArray class]]) {
        NSArray *array = jsonDict[@"data"];
        if (array.count > 2) {
            NSString *name = array[2];
            // Finally we got the name
        }
    }
}
```

It's not good.

With SHValue all you have to do is:

```Objective-C
NSDictionary *jsonDict = @{@"data": @[@{}, @{}, @{@"name": @"A"}]};
NSString *name = [SHValue value:jsonDict][@"data"][2].string;
// There's our name
```

And don't worry about the access to cross-border issues. It's done for you automatically and safely.


The string perproty is nullable (Optional), stringValue is Non-optional string.
Even if there is no value, the stringValue will return "".
It also supports array, dictionary and number, optional and non-optional.


## Requirements

- iOS 8.0+ | macOS 10.10+ | tvOS 9.0+ | watchOS 2.0+
- Xcode 8

## Integration

#### CocoaPods (iOS 8+, OS X 10.9+)

You can use [CocoaPods](http://cocoapods.org/) to install `SHValue` by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!

target 'MyApp' do
pod 'SHValue'
end
```

Note that this requires CocoaPods version 36, and your iOS deployment target to be at least 8.0:


