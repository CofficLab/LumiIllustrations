import Foundation
import Testing

@testable import LumiIllustrationsKit

@Suite("LumiIllustrationAsset")
struct LumiIllustrationAssetTests {

    @Test("Resolves a bundled illustration to a file URL")
    func resolvesBundledIllustration() throws {
        let url = try #require(LumiIllustrationAsset.url(for: "welcome-v4.png"))
        #expect(url.isFileURL)
        #expect(url.lastPathComponent == "welcome-v4.png")
        #expect(url.pathExtension == "png")
        #expect(FileManager.default.fileExists(atPath: url.path))
    }

    @Test("Resolves every bundled illustration resource")
    func resolvesEveryBundledResource() throws {
        let names = [
            "love-v4.png", "code-v4.png", "page-not-found-v4.png", "meeting-v4.png",
            "designer-v4.png", "terms-illustration-v4.png", "analytics-v4.png",
            "searching-v4.png", "values-illustration-v3.png", "landing-page-v4.png",
            "chatbot-v4.png", "data-report-v4.png", "success-v4.png",
            "accessibility-illustration-v4.png", "space-exploration-v4.png", "launch-v4.png",
            "incident-log-illustration.png", "values-illustration-v4.png",
            "match-not-found-v4.png", "notes-v4.png", "email-marketing-v4.png",
            "augmented-reality-v4.png", "about-illustration-v2.png", "cloud-storage-v4.png",
            "something-went-wrong-v4.png", "security-v4.png", "about-illustration-v4.png",
            "terms-illustration.png", "goal-setting-v4.png", "school-teacher-v4.png",
            "teacher-v4.png", "email-v4.png", "founding-story-illustration-v2.png",
            "construction-v4.png", "accessibility-illustration.png", "empty-folder-v4.png",
            "founding-story-illustration-v4.png", "stars-v4.png", "to-the-moon-v4.png",
            "welcome-v4.png",
        ]

        for name in names {
            let url = LumiIllustrationAsset.url(for: name)
            #expect(url != nil, "expected bundled resource \(name) to resolve")
            #expect(url?.lastPathComponent == name)
        }
    }

    @Test("Resolves every illustration shipped inside the resource bundle")
    func resolvesEveryIllustrationInTheBundle() throws {
        let bundled = try #require(
            Bundle.module.urls(forResourcesWithExtension: "png", subdirectory: "Illustrations")
        )
        #expect(!bundled.isEmpty)

        for fileURL in bundled {
            let name = fileURL.lastPathComponent
            let resolved = LumiIllustrationAsset.url(for: name)
            #expect(resolved != nil, "expected bundled resource \(name) to resolve")
            #expect(resolved?.lastPathComponent == name)
            #expect(FileManager.default.fileExists(atPath: resolved?.path ?? ""))
        }
    }

    @Test("Returns nil for a resource name that is not bundled")
    func returnsNilForMissingResource() {
        #expect(LumiIllustrationAsset.url(for: "definitely-not-bundled-v9.png") == nil)
    }

    @Test("Returns nil for an empty file name")
    func returnsNilForEmptyName() {
        #expect(LumiIllustrationAsset.url(for: "") == nil)
    }

    @Test("Returns nil when the file name has no extension")
    func returnsNilWhenExtensionIsMissing() {
        #expect(LumiIllustrationAsset.url(for: "welcome-v4") == nil)
    }

    @Test("Returns nil when the file name has no resource name")
    func returnsNilWhenResourceNameIsMissing() {
        #expect(LumiIllustrationAsset.url(for: ".png") == nil)
    }

    @Test("Does not resolve a resource that lives outside the illustrations folder")
    func doesNotResolveResourcesOutsideIllustrationsFolder() {
        #expect(LumiIllustrationAsset.url(for: "Package.swift") == nil)
        #expect(LumiIllustrationAsset.url(for: "Resources/Illustrations/welcome-v4.png") == nil)
    }
}
