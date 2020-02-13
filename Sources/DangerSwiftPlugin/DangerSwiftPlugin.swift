import Danger
import Foundation

class DangerSwiftPlugin {
    private(set) lazy var danger: DangerDSL = Danger()
}

// MARK: -
extension DangerSwiftPlugin {
    var git: Git {
        return danger.git
    }

    var github: GitHub! {
        return danger.github
    }

    var gitLab: GitLab! {
        return danger.gitLab
    }

    var bitbucketCloud: BitBucketCloud! {
        return danger.bitbucketCloud
    }

    var bitbucketServer: BitBucketServer! {
        return danger.bitbucketServer
    }

    var utils: DangerUtils {
        return danger.utils
    }
}

// MARK: -
#if DEBUG
extension DangerSwiftPlugin {
    func mockDanger(_ danger: DangerDSL) {
        guard processInfo.processName.hasSuffix("xctest") else {
            fatalError("Mocking DSL is enabled only on test.")
        }
        self.danger = danger
    }
}
#endif

let plugin: DangerSwiftPlugin = .init()
