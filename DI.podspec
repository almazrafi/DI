Pod::Spec.new do |spec|
  spec.name = "DI"
  spec.version = "1.0.1"
  spec.summary = "Compile-time safe Swift dependency injection framework."

  spec.homepage = "https://github.com/almazrafi/DI"
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { "Almaz Ibragimov" => "almazrafi@gmail.com" }
  spec.source = { :git => "https://github.com/almazrafi/DI.git", :tag => "#{spec.version}" }

  spec.swift_version = '5.5'
  spec.requires_arc = true
  spec.source_files = 'Sources/**/*.swift'

  spec.ios.frameworks = 'Foundation'
  spec.ios.deployment_target = "12.0"

  spec.tvos.frameworks = 'Foundation'
  spec.tvos.deployment_target = "12.0"
end
