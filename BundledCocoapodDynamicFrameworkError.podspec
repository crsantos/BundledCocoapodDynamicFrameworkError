Pod::Spec.new do |s|
  s.name             = 'BundledCocoapodDynamicFrameworkError'
  s.version          = '0.1.0'
  s.summary          = 'Integrates a dynamic framework (privately) inside a private pod'

  s.description      = <<-DESC
This is an attempt to integrate a dynamic framework (privately) inside a private pod
                       DESC

  s.homepage         = 'https://github.com/crsantos/BundledCocoapodDynamicFrameworkError'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Carlos Santos' => 'carlosricardosantos@gmail.com' }
  s.source           = { :git => 'https://github.com/crsantos/BundledCocoapodDynamicFrameworkError.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'BundledCocoapodDynamicFrameworkError/Classes/**/*'
  s.vendored_frameworks = 'BundledCocoapodDynamicFrameworkError/Frameworks/SampleDynamicLib.framework'

end
