Pod::Spec.new do |s|
  s.name             = 'OpenSSL-Apple'
  s.version          = '1.1.1'
  s.summary          = 'OpenSSL static libraries for Apple platforms'
  s.homepage         = 'https://github.com/andreasagmplast/openssl-apple'
  s.license          = { :type => 'MIT' }
  s.author           = { 'OpenSSL' => 'openssl@openssl.org' }

  s.platform         = :ios, '15.0'
  s.requires_arc     = false
  s.static_framework = true

  s.source = {
    :git => 'https://github.com/andreasagmplast/openssl-apple.git',
    :branch => 'static-only'
  }

  # ✅ HEADERS — THIS IS THE KEY
  s.public_header_files = 'include/openssl/**/*.h'
  s.header_mappings_dir = 'include'

  # ✅ STATIC LIBS
  s.vendored_libraries = 'lib/*.a'

  # ✅ MAKE HEADERS VISIBLE TO C COMPILER
  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/include"',
    'DEFINES_MODULE' => 'YES'
  }
end
