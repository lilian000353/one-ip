# iOS 版（One IP）

本目录提供 iOS 的 WKWebView 壳工程源码（`OneIPApp.swift` + `ContentView.swift`），
默认加载本仓库的 GitHub Pages 版：https://lilian000353.github.io/one-ip/

## 为什么没有现成的 .ipa 文件

iOS 应用必须用 Apple 的工具链（macOS + Xcode）编译，并用 Apple ID 证书签名后
才能装到 iPhone 上。构建环境（Linux 服务器）没有 Xcode，无法直接产出可安装的
IPA。以下两种方式任选其一：

## 方式一：Xcode 构建并签名（需要一台 Mac）

1. 打开 Xcode → Create New Project → App，Product Name 填 `OneIP`，
   Interface 选 SwiftUI，Language 选 Swift，Bundle Identifier 建议 `com.muse.oneip`。
2. 把本目录的 `OneIPApp.swift`、`ContentView.swift` 拖进工程，替换模板同名文件。
3. Signing & Capabilities 里选你的个人 Apple ID 团队（免费账号即可）。
4. 连接 iPhone，点运行即可安装到手机（免费签名有效期 7 天，到期重新运行一次）。
   如需导出 IPA：Product → Archive → Distribute App → Development → Export。

## 方式二：不用 IPA，直接“装”到主屏幕

iPhone Safari 打开 https://lilian000353.github.io/one-ip/ → 分享按钮 →
「添加到主屏幕」。图标和全屏体验与 App 基本一致，且无需签名、永不过期。

## 关于 AltStore

用方式一导出的 IPA 可以通过 AltStore / SideStore 安装和续签；
未签名的 IPA 无法直接安装，必须先经 Xcode 或 AltServer 签名。
