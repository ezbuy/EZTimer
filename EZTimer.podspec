Pod::Spec.new do |s|
    s.name             = "EZTimer"
    s.version          = "1.0"
    s.summary          = "EZTimer is framework from ezbuy"

    s.description      = <<-DESC
    A ezbuy iOS basic develop framework.
                       DESC

    s.homepage         = "https://gitlab.ezbuy.me/teletubbies/ios/eztimer.git"
    s.license          = { :type => "MIT", :file => "LICENSE" }
    s.author           = { "xuyun" => "xuyun@ezbuy.com" }
    s.source           = { :git => "https://gitlab.ezbuy.me/teletubbies/ios/eztimer.git", :tag => s.version.to_s }

    s.ios.deployment_target = "9.0"
    s.swift_version = "5.0"

    s.frameworks = "UIKit", "Foundation"

    s.source_files = 'EZTimer/*.swift'

end
