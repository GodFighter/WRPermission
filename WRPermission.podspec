#
# Be sure to run `pod lib lint WRPermission.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WRPermission'
  s.version          = '1.0.0'
  s.summary          = 'Permission,常用权限申请.'
  s.description      = 'Permission,常用权限的状态查询和申请'
  s.homepage         = 'https://github.com/Godfighter/WRPermission'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Godfighter' => 'xianghui_ios@163.com' }
  s.source           = { :git => 'https://github.com/Godfighter/WRPermission.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'

  s.default_subspec = 'Base'
  s.subspec 'Base' do |base|
    base.source_files = 'WRPermission/Classes/*.swift'
  end
  
  s.subspec 'Bluetooth' do |bluetooth|
    bluetooth.dependency 'WRPermission/Base'
    bluetooth.source_files = 'WRPermission/Classes/Types/WRBluetooth.swift'
    bluetooth.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_BLUETOOTH' }
  end
  
  s.subspec 'Camera' do |camera|
    camera.dependency 'WRPermission/Base'
    camera.source_files = 'WRPermission/Classes/Types/WRCamera.swift'
    camera.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_CAMERA' }
  end

  s.subspec 'Contacts' do |contacts|
    contacts.dependency 'WRPermission/Base'
    contacts.source_files = 'WRPermission/Classes/Types/WRContacts.swift'
    contacts.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_CONTACTS' }
  end

  s.subspec 'Events' do |events|
    events.dependency 'WRPermission/Base'
    events.source_files = 'WRPermission/Classes/Types/WREvents.swift'
    events.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_EVENTS' }
  end
  
  s.subspec 'Location' do |location|
    location.dependency 'WRPermission/Base'
    location.source_files = 'WRPermission/Classes/Types/WRLocation.swift'
    location.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_LOCATION' }
  end

  s.subspec 'MediaLibrary' do |mediaLibrary|
    mediaLibrary.dependency 'WRPermission/Base'
    mediaLibrary.source_files = 'WRPermission/Classes/Types/WRMediaLibrary.swift'
    mediaLibrary.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_MEDIA_LIBRARY' }
  end

  s.subspec 'Microphone' do |microphone|
    microphone.dependency 'WRPermission/Base'
    microphone.source_files = 'WRPermission/Classes/Types/WRMicrophone.swift'
    microphone.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_MICROPHONE' }
  end

  s.subspec 'Motion' do |motion|
    motion.dependency 'WRPermission/Base'
    motion.source_files = 'WRPermission/Classes/Types/WRMotion.swift'
    motion.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_MOTION' }
  end

  s.subspec 'Notifications' do |notifications|
    notifications.dependency 'WRPermission/Base'
    notifications.source_files = 'WRPermission/Classes/Types/WRNotifications.swift'
    notifications.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_NOTIFICATIONS' }
  end

  s.subspec 'Photos' do |photo|
    photo.dependency 'WRPermission/Base'
    photo.source_files = 'WRPermission/Classes/Types/WRPhoto.swift'
    photo.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_PHOTOS' }
  end

  s.subspec 'Reminders' do |reminders|
    reminders.dependency 'WRPermission/Base'
    reminders.source_files = 'WRPermission/Classes/Types/WRReminders.swift'
    reminders.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_REMINDERS' }
  end

  s.subspec 'Siri' do |siri|
    siri.dependency 'WRPermission/Base'
    siri.source_files = 'WRPermission/Classes/Types/WRSiri.swift'
    siri.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_SIRI' }
  end

  s.subspec 'Speech' do |speech|
    speech.dependency 'WRPermission/Base'
    speech.source_files = 'WRPermission/Classes/Types/WRSpeech.swift'
    speech.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS'  => 'PERMISSION_SPEECH_RECOGNIZER' }
  end


end
