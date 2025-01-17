Pod::Spec.new do |s|
  s.name             = 'AnyFormatKit'
  s.version          = '2.0.0'
  s.summary          = 'Simple text formatting in Swift.'

  s.description      = <<-DESC
This framework provide to format text with format like "## ##-###", where # - replaceble symbol. Support format all string or character by character input.
                       DESC

  s.homepage         = 'https://github.com/luximetr/AnyFormatKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'luximetr' => 'alexandr.orlov@brander.ua' }
  s.source           = { :git => 'https://github.com/luximetr/AnyFormatKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = '11.0'
  s.swift_version = '5.0'

  s.source_files = 'Source/**/*'
end
