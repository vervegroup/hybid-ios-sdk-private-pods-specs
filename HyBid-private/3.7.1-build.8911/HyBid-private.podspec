Pod::Spec.new do |s|
  s.name             = 'HyBid-private'
  s.version          = '3.7.1-build.8911'
  s.summary          = 'Private HyBid SDK binary distribution'
  s.description      = 'Private binary SDK build with OMSDK support. Includes dependency on ATOM, which is licensed separately.'
  s.homepage         = 'https://github.com/vervegroup/hybid-ios-sdk-private-pods'
  s.license          = { :type => 'Commercial' }
  s.author           = { 'Verve Group' => 'support@verve.com' }
  s.platform         = :ios, '12.0'

  s.source = {
    :http => "https://github.com/vervegroup/hybid-ios-sdk-private-pods/releases/download/#{s.version}/HyBid.xcframework.zip"
  }

  s.vendored_frameworks = [
    'HyBid.xcframework',
    'OMSDK_Pubnativenet/OMSDK_Pubnativenet.xcframework'
  ]

  s.dependency 'ATOM-Standalone-Private', '3.9.0-beta.111'
end
