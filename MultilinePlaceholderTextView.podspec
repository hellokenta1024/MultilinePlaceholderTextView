#
#  Be sure to run `pod spec lint PlaceholderTextView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "MultilinePlaceholderTextView"
  s.version      = "1.1.1"
  s.summary      = "TextView with multiline placeholder"
  s.description  = <<-DESC
                    UITextView doesn't have `placeholder`. it's very inconvenient.
                    TextView with multiline placeholder.
                   DESC
  s.homepage     = "https://github.com/KEN-chan/MultilinePlaceholderTextView"
  s.license      = "MIT"
  s.author             = { "Kenta Hara" => "hellokenta1024@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/KEN-chan/MultilinePlaceholderTextView.git", :tag => "#{s.version}" }
  s.source_files  = "MultilinePlaceholderTextView/*.{swift,h,m}"
  s.exclude_files = "Classes/Exclude"
end
