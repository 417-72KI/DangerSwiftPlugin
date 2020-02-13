import Danger
import DangerFixtures

extension DangerDSL {
    static var fakeGitHub: Self {
        return parseDangerDSL(with: DSLGitHubJSON)
    }

    static var fakeGitHubEnterprise: Self {
        return parseDangerDSL(with: DSLGitHubEnterpriseJSON)
    }

    static var fakeGitLab: Self {
        return parseDangerDSL(with: DSLGitLabJSON)
    }

    static var fakeBitBucketServer: Self {
        return parseDangerDSL(with: DSLBitBucketServerJSON)
    }

    static var fakeBitBucketCloud: Self {
        return parseDangerDSL(with: DSLBitBucketCloudJSON)
    }
}
