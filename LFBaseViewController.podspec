Pod::Spec.new do |s|
  s.name             = 'LFBaseViewController'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LFBaseViewController.'
  
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lf-sytc/LFBaseViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lf_sytc@hotmail.com' => 'lf_sytc@hotmail.com' }
  s.source           = { :git => 'https://github.com/lf-sytc/LFBaseViewController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  
  s.source_files = 'LFBaseViewController/Classes/*.{h,m}'
  
  s.subspec 'BaseViewController' do |s1|
      s1.source_files = 'LFBaseViewController/Classes/BaseViewController/*'
  end
  s.subspec 'BaseNavigationController' do |s2|
      s2.source_files = 'LFBaseViewController/Classes/BaseNavigationController/*'
  end
  
  s.subspec 'BaseTableViewController' do |s3|
      s3.source_files = 'LFBaseViewController/Classes/BaseTableViewController/*'
      s3.dependency 'LFBaseViewController/BaseViewController'
  end
  
  s.dependency 'LFUIKit'
end
