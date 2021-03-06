#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint fluwx.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'fluwx'
  s.version          = '0.0.1'
 s.summary          = 'A new Flutter plugin for Wechat SDK.'
  s.description      = <<-DESC
A new Flutter plugin for Wechat SDK.
                       DESC
  s.homepage         = 'https://github.com/OpenFlutter/fluwx'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'JarvanMo' => 'jarvan.mo@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/public/*.h'
  s.static_framework = true
  s.dependency 'Flutter'
  s.dependency 'WechatOpenSDK_Fuck', '1.9.2'

# s.dependency 'OpenWeChatSDK','~> 1.8.3+10'
#  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/Headers/Public/#{s.name}" }
  s.frameworks = ["SystemConfiguration", "CoreTelephony","WebKit"]
  #资源导入
  s.vendored_frameworks = '**/*.framework'
  s.libraries = ["z", "sqlite3.0", "c++"]
  s.preserve_paths = 'Lib/*.a'
  s.vendored_libraries = "**/*.a"
  s.ios.deployment_target = '8.0'

  # resources
  s.resources = '*.framework/*.bundle'
  s.resources = 'Framework/*.bundle'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
