import Danger
import Foundation

var danger = Danger()

public var git: Git {
    return danger.git
}

public var github: GitHub! {
    return danger.github
}

public var gitLab: GitLab! {
    return danger.gitLab
}

public var bitbucketCloud: BitBucketCloud! {
    return danger.bitbucketCloud
}

public var bitbucketServer: BitBucketServer! {
    return danger.bitbucketServer
}

public var utils: DangerUtils {
    return danger.utils
}
