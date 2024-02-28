Pod::Spec.new do |s|
    s.name         = 'StreamDeckView'
    s.version      = '0.0.1'
    s.swift_version = '5.9'

    s.summary      = 'A Macro for the Stream Deck Kit library. Not meant for standalone usage.'
    s.author       = { 'Elgato' => 'info@elgato.com' }
    s.homepage     = 'https://docs.elgato.com/ipad'
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.source       = { :git => 'https://github.com/elgatosf/streamdeck-kit-macros.git', :tag => "#{s.version}" }

    s.requires_arc = true
    s.frameworks = 'SwiftUI'
    s.source_files = "Sources/StreamDeckView/StreamDeckView.swift"
    s.preserve_path = "bin/StreamDeckViewMacro"

    s.pod_target_xcconfig = {
        'OTHER_SWIFT_FLAGS' => '-load-plugin-executable ${PODS_TARGET_SRCROOT}/bin/StreamDeckViewMacro#StreamDeckKitMacros'
    }
    s.user_target_xcconfig = {
        'OTHER_SWIFT_FLAGS' => "-load-plugin-executable ${PODS_ROOT}/#{s.name}/bin/StreamDeckViewMacro#StreamDeckKitMacros"
    }

    s.platform     = :ios, '16.0'
    s.ios.deployment_target = '16'
end
