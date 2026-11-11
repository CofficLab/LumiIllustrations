# LumiIllustrations

📖 [中文版](README_zh.md) | [English](README.md)

Coffic Swift 与 JavaScript 项目共享的 PNG 插画资源。本精简版本包含 34 张精选 `-v4` 插画，以及包首次提交时的六张图片（保留为原始参考）。应用在存在某主题的 `-v4` 图片时应优先使用它；`incident-log-illustration.png` 仍是首选的人物风格参考。

## Swift Package Manager

```swift
.package(url: "https://github.com/lumi-softworks/LumiIllustrations.git", from: "2.0.0")
```

将 `LumiIllustrationsKit` product 加入你的 target，然后解析资源 URL：

```swift
import LumiIllustrationsKit

let aboutURL = LumiIllustrationAsset.url(for: "about-illustration-v4.png")
```

将返回的 URL 配合 `UIImage(contentsOfFile:)`、`NSImage(contentsOf:)` 或适合你应用的其他图片加载器使用。

## JavaScript

本包将每个资源暴露为一个子路径，保留打包器原生的静态资源导入方式：

```ts
import AboutIllustration from "@coffic/lumi-illustrations/about-illustration-v4.png";
import ValuesIllustration from "@coffic/lumi-illustrations/values-illustration-v4.png";
import AnalyticsIllustration from "@coffic/lumi-illustrations/analytics-v4.png";
```

在 Astro/Vite 中，照常使用返回的资源 URL：

```astro
<img src={AboutIllustration.src} alt="About" />
```

JavaScript 项目可以从 GitHub 安装已打标签的发布版本：

```json
{
  "dependencies": {
    "@coffic/lumi-illustrations": "github:CofficLab/LumiIllustrations#v2.0.0"
  }
}
```

## 资源许可

插画的署名与许可条款见 [ASSET-LICENSES.md](ASSET-LICENSES.md)。包源码采用 MIT License。
