#
# Be sure to run `pod lib lint jieba.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'jieba'
  s.version          = '0.0.1'
  s.summary          = 'A short description of jieba.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/huipengo/jieba'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'huipengo' => 'penghui_only@163.com' }
  s.source           = { :git => 'https://github.com/huipengo/jieba.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Pod/Classes/**/*.{h,m,mm,cpp,hpp}'
  s.resource = 'Pod/Classes/iosjieba.bundle'
  #s.libraries = 'stdc++', 'z'

  s.pod_target_xcconfig = {
      'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
      #'CLANG_CXX_LIBRARY' => 'libc++',
      #'OTHER_LDFLAGS' => '$(inherited) -ObjC'
  }


  # s.resource_bundles = {
  #   'jieba' => ['jieba/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
