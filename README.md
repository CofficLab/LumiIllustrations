# LumiIllustrations

📖 English | [中文版](README_zh.md)

Shared PNG illustration assets for Lumi Softworks Swift and JavaScript projects. This compact release contains 34 selected `-v4` illustrations and the six images from the package’s first commit, retained as original references. Applications should use the `-v4` image for a subject when one exists; `incident-log-illustration.png` remains the preferred character-style reference.

## Swift Package Manager

```swift
.package(url: "https://github.com/lumi-softworks/LumiIllustrations.git", from: "2.0.0")
```

Add the `LumiIllustrationsKit` product to your target, then resolve an asset URL:

```swift
import LumiIllustrationsKit

let aboutURL = LumiIllustrationAsset.url(for: "about-illustration-v4.png")
```

Use the returned URL with `UIImage(contentsOfFile:)`, `NSImage(contentsOf:)`, or another image loader appropriate to your app.

## JavaScript

The package exposes each asset as a subpath, preserving bundler-native static asset imports:

```ts
import AboutIllustration from "@coffic/lumi-illustrations/about-illustration-v4.png";
import ValuesIllustration from "@coffic/lumi-illustrations/values-illustration-v4.png";
import AnalyticsIllustration from "@coffic/lumi-illustrations/analytics-v4.png";
```

In Astro/Vite, use the returned asset URL as usual:

```astro
<img src={AboutIllustration.src} alt="About" />
```

JavaScript projects can install the tagged release from GitHub:

```json
{
  "dependencies": {
    "@coffic/lumi-illustrations": "github:lumi-softworks/LumiIllustrations#v2.0.0"
  }
}
```

## Asset terms

See [ASSET-LICENSES.md](ASSET-LICENSES.md) for artwork attribution and license terms. Package source code is licensed under the MIT License.
