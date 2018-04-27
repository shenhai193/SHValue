#
#  Be sure to run `pod spec lint SHValue.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "SHValue"
  s.version      = "1.3.0"
  s.summary      = "The safe way to deal with JSON data in Objective-C."
  s.homepage     = "https://github.com/shenhai193/SHValue"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "Charles Zou" => "shenhai.cpp@icloud.com" }

  s.requires_arc = true
  s.osx.deployment_target = "10.9"
  s.ios.deployment_target = "8.0"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/shenhai193/SHValue.git", :tag => "#{s.version}" }
  s.source_files = "Source/*.{h,m}"

end
