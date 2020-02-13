import XCTest
@testable import DangerSwiftPlugin

final class DangerSwiftPluginTests: XCTestCase {

    func testGitHub() throws {
        plugin.mockDanger(.fakeGitHub)

        XCTAssertEqual(git.createdFiles, [".ruby-version"])
        XCTAssertNotNil(github)
        XCTAssertNil(gitLab)
        XCTAssertNil(bitbucketCloud)
        XCTAssertNil(bitbucketServer)
    }

    func testGitLab() throws {
        plugin.mockDanger(.fakeGitLab)

        XCTAssertEqual(git.createdFiles, [])
        XCTAssertNil(github)
        XCTAssertNotNil(gitLab)
        XCTAssertNil(bitbucketCloud)
        XCTAssertNil(bitbucketServer)
    }

    func testBitBucketCloud() throws {
        plugin.mockDanger(.fakeBitBucketCloud)

        XCTAssertEqual(git.createdFiles, [])
        XCTAssertNil(github)
        XCTAssertNil(gitLab)
        XCTAssertNotNil(bitbucketCloud)
        XCTAssertNil(bitbucketServer)
    }

    func testBitBucketServer() throws {
        plugin.mockDanger(.fakeBitBucketServer)

        XCTAssertEqual(git.createdFiles, ["banana", ".babelrc"])
        XCTAssertNil(github)
        XCTAssertNil(gitLab)
        XCTAssertNil(bitbucketCloud)
        XCTAssertNotNil(bitbucketServer)
    }

    static var allTests = [
        ("testGitHub", testGitHub),
        ("testGitLab", testGitLab),
        ("testBitBucketCloud", testBitBucketCloud),
        ("testBitBucketServer", testBitBucketServer)
    ]
}
