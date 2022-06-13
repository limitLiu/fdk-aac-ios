libfdkaac = 'libfdk-aac'
NAME = "fdk-aac-ios"
VERSION = "2.0.2"

Pod::Spec.new do |s|

  s.name         = "#{NAME}"
  s.version      = "#{VERSION}"
  s.summary      = "A pod repo of 2.0.2 fdk-aac static libraries for ios."
  s.description  = "FFmpeg code base"

  s.homepage     = "https://github.com/limitLiu/fdk-aac-ios"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Limit" => "limitliu@qq.com" }
  s.requires_arc = false
  s.source       = { :git => "https://github.com/limitLiu/fdk-aac-ios", :tag => "#{s.version}" }

  s.ios.deployment_target = '10.0'
  s.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libfdkaac}.a"

end
