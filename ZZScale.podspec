#
# Be sure to run `pod lib lint ZZScale.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZZScale'
  s.version          = '0.1.0'
  s.summary          = 'ZZScale is a handy tool for those who need really simple multi-screen adapt solutions'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Have you face the problem that you only got 1 set of design from your designer, but you have to adapt multiple screens?

Yes, you can do everything by auto-layout or manually code layout, but you have to define a lot of strategies for all places that need to be care when adapt for differnt screen size.

Is there a much simpler way to do that? Yes, I provide a solution: ZZScale.

This is how it works:

1. Scale your container view by ratio, either by width or height, when `viewDidLoad`
2. You treat the layout just like in your designed screen size, if the runtime screen size is the same ratio as your designed screen size.
3. When runtime screen size is not the same ratio as your designed screen size, it scales by the priority side (width or height), and leave the other side for further layout method.
4. And yes, it works with auto-layout!

Here is an example:

You have a scrollable screen that you want all users to see it in just same layout in every devices, you can just insert the code `self.view.zz_scaleByWidth(375)` in `viewDidLoad` of your `UIViewController`.

Here is another example:

You have a non-scrollable screen that you want all users to see it in just same layout in every devices, you can just insert the code `self.view.zz_scaleByHeight(667)` in `viewDidLoad` of your `UIViewController`.


                       DESC

  s.homepage         = 'https://github.com/zzdjk6/ZZScale'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chen Shenghan' => 'zzdjk6@gmail.com' }
  s.source           = { :git => 'https://github.com/zzdjk6/ZZScale.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/zzdjk6'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ZZScale/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ZZScale' => ['ZZScale/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
