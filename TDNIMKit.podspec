#
# Be sure to run `pod lib lint TDNIMKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  #pod私有库名称
  s.name             = 'TDNIMKit'
  #pod私有库版本号
  s.version          = '0.1.0'
  #pod私有库概要
  s.summary          = 'striver custom NIMUIKit'
  #主要，最好能访问
  s.homepage         = 'https://github.com/458362366@qq.com/TDNIMKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  #开源协议
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  #开源作者
  s.author           = 'Striver'
  #源码地址，clone时候就需要使用这个地址跟版本拉取
  s.source           = { :git => 'https://github.com/458362366@qq.com/TDNIMKit.git', :tag =>'0.1.0' }
  #支持的系统版本
  s.ios.deployment_target = '8.0'
  #源码相对路径
  s.source_files = 'TDNIMKit/Classes/**/*'
  #资源文件加载
  s.resources = 'TDNIMKit/Resources/*.*'
  #framework文件加载
  s.vendored_frameworks = '**/NIMSDK.framework'
  #.a静态库加载
  s.vendored_libraries = 'TDNIMKit/NIMSDK/Libs/*.a'
  #依赖的系统library
  s.libraries = 'sqlite3.0', 'z', 'c++'
  
  #依赖的第三方库
  s.dependency 'M80AttributedLabel', '~> 1.9.9'
  s.dependency 'FLAnimatedImage', '~> 1.0.12'
  s.dependency 'SDWebImage', '~> 4.2.2'
  s.dependency 'Toast', '~> 3.0'
  s.dependency 'TZImagePickerController', '~> 3.2.1'
end
