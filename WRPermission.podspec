#
# Be sure to run `pod lib lint WRPermission.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WRPermission'
  s.version          = '0.9.0'
  s.summary          = '常用权限申请.'
  s.description      = '常用权限的状态查询和申请'
  s.homepage         = 'https://github.com/Godfighter/WRPermission'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Godfighter' => 'xianghui_ios@163.com' }
  s.source           = { :git => 'https://github.com/Godfighter/WRPermission.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'

  s.default_subspec = 'Source'
  s.source_files = 'WRPermission/Classes/*.swift'
  
  s.subspec 'Bluetooth' do |bluetooth|
    bluetooth.dependency 'WRPermission/Source'
    bluetooth.source_files = 'WRPermission/Classes/Types/WRPermissionBluetooth.swift'
    bluetooth.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_BLUETOOTH' }
  end

end
