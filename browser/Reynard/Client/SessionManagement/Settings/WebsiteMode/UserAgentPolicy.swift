//
//  UserAgentPolicy.swift
//  Reynard
//

import Foundation
import GeckoView

struct UserAgentConfiguration {
    let override: String?
    let platformOverride: String?
    let appVersionOverride: String?
    let oscpuOverride: String?
    let buildIDOverride: String?
    let forcesMobileMode: Bool
}

struct UserAgentPolicy {
    private let safariUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5 Mobile/15E152 Safari/607.6"

    // Apply the same User-Agent to every website, without domain-specific
    // compatibility overrides or separate platform/version/build identifiers.
    func configuration(for url: String, prefersDesktopMode: Bool) -> UserAgentConfiguration {
        return UserAgentConfiguration(
            override: safariUserAgent,
            platformOverride: nil,
            appVersionOverride: nil,
            oscpuOverride: nil,
            buildIDOverride: nil,
            forcesMobileMode: false
        )
    }

    func defaultConfiguration(
        prefersDesktopMode: Bool,
        forcesMobileMode: Bool = false
    ) -> UserAgentConfiguration {
        return UserAgentConfiguration(
            override: safariUserAgent,
            platformOverride: nil,
            appVersionOverride: nil,
            oscpuOverride: nil,
            buildIDOverride: nil,
            forcesMobileMode: forcesMobileMode
        )
    }
}
