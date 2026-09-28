import Foundation

/// Resolves illustration files bundled with LumiIllustrationsKit.
public enum LumiIllustrationAsset {
    /// Returns the bundled URL for a file name such as `welcome.svg`.
    ///
    /// - Parameter fileName: The exact resource file name, including its extension.
    /// - Returns: The bundled file URL, or `nil` when the name is not present.
    public static func url(for fileName: String) -> URL? {
        let resourceName = (fileName as NSString).deletingPathExtension
        let fileExtension = (fileName as NSString).pathExtension
        guard !resourceName.isEmpty, !fileExtension.isEmpty else { return nil }

        return Bundle.module.url(
            forResource: resourceName,
            withExtension: fileExtension,
            subdirectory: "Resources/Illustrations"
        )
    }
}
