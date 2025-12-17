Pod::Spec.new do |s|
  s.name             = 'OpenSSL-Apple'
  s.version          = '1.1.180'   # Adjust to your OpenSSL version
  s.summary          = 'OpenSSL library for iOS/macOS - static build'
  s.description      = <<-DESC
OpenSSL compiled for Apple platforms as a static library. Compatible with iOS, macOS, and Catalyst.
  DESC
  s.homepage         = 'https://github.com/andreasagmplast/openssl-apple'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'you@example.com' }
  s.platform         = :ios, '15.0'
  
  # Use git source; CocoaPods will fetch your branch
  s.source           = { :git => 'https://github.com/andreasagmplast/openssl-apple.git', :branch => 'static-only' }

  # Headers and source files
  s.source_files     = 'include/**/*.h', 'lib/**/*.{c,cpp}'
  s.public_header_files = 'include/**/*.h'
  s.requires_arc     = false

  # Ensure static linking
  s.static_framework = true

  # Prevent warnings from OpenSSL C code
  s.compiler_flags   = '-Wno-everything'
end
