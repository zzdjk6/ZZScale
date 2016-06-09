# ZZScale

[![CI Status](http://img.shields.io/travis/Chen Shenghan/ZZScale.svg?style=flat)](https://travis-ci.org/Chen Shenghan/ZZScale)
[![Version](https://img.shields.io/cocoapods/v/ZZScale.svg?style=flat)](http://cocoapods.org/pods/ZZScale)
[![License](https://img.shields.io/cocoapods/l/ZZScale.svg?style=flat)](http://cocoapods.org/pods/ZZScale)
[![Platform](https://img.shields.io/cocoapods/p/ZZScale.svg?style=flat)](http://cocoapods.org/pods/ZZScale)

## Introduce

Have you face the problem that you only got 1 set of design from your designer, but you have to adapt multiple screens?

Yes, you can do everything by auto-layout or manually code layout, but you have to define a lot of strategies for all places that need to be care when adapt for differnt screen size.

Is there a much simpler way to do that? Yes, I provide a solution: ZZScale.

This is how it works:

1. Scale your container view by ratio, either by width or height, when `viewDidLoad`
2. You treat the layout just like in your designed screen size, if the runtime screen size is the same ratio as your designed screen size.
3. When runtime screen size is not the same ratio as your designed screen size, it scales by the priority side (width or height), and leave the other side for further layout method.
4. And yes, it works with auto-layout!

Here is an example:

You have a scrollable screen that you want all users to see it in just same horizontal layout of iPhone6 in every devices, you can just insert the code `self.view.zz_scaleInFactorRelativeByWidth(375)` in `viewDidLoad` of your `UIViewController`.

Here is another example:

You have a non-scrollable screen that you want all users to see it in just same vertical layout of iPhone6 in every devices, you can just insert the code ` self.view.zz_scaleInFactorRelativeByHeight(667)` in `viewDidLoad` of your `UIViewController`.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ZZScale is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ZZScale"
```

## Author

Chen Shenghan, zzdjk6@gmail.com

## License

ZZScale is available under the MIT license. See the LICENSE file for more info.
