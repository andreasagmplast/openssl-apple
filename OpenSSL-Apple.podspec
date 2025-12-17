Pod::Spec.new do |s|
  s.name             = 'OpenSSL-Apple'
  s.version          = '0.0.1'
  s.summary          = 'Static OpenSSL for Apple platforms'
  s.homepage         = 'https://github.com/andreasagmplast/openssl-apple'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andreas' => 'andreas@example.com' }

  s.platform         = :ios, '15.0'
  s.source           = { :git => 'https://github.com/andreasagmplast/openssl-apple.git', :branch => 'static-only' }

  s.source_files     = 'include/**/*.h'
  s.public_header_files = 'include/**/*.h'

  s.requires_arc     = false
  s.static_framework = true
end
