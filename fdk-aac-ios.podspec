libfdkaac = 'libfdk-aac'
name = "fdk-aac-ios"
version = "2.0.2"

Pod::Spec.new do |s|

  s.name         = "#{name}"
  s.version      = "#{version}"
  s.summary      = "A pod repo of 2.0.2 fdk-aac static libraries for ios."
  s.description  = "FFmpeg code base"

  s.homepage     = "https://github.com/limitLiu/fdk-aac-ios"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Limit" => "limitliu@qq.com" }
  s.requires_arc = false
  s.source       = { :git => "https://github.com/limitLiu/fdk-aac-ios", :tag => "#{s.version}" }

  s.ios.deployment_target = '10.0'

  s.ios.preserve_paths = "src/ios/#{s.version}/include"
  s.ios.header_mappings_dir = "src/ios/#{s.version}/include"

  s.ios.source_files        = "src/ios/#{s.version}/include/#{libfdkaac}/*.h"
  s.ios.vendored_libraries  = "src/ios/#{s.version}/lib/#{libfdkaac}.a"
  s.ios.public_header_files = "src/ios/stable/include/#{libfdkaac}/*.h"

end
