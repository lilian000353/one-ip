# iOS 版（One IP）

## 现成 IPA（未签名，用 AltServer 自签安装）

`ios/one-ip.ipa` 是由 GitHub Actions 在 macOS 上编译的**未签名** IPA
（WKWebView 壳 + 内嵌 GitHub Pages 版页面，离线可打开界面，检测需联网）。
由 `.github/workflows/build-ipa.yml` 自动构建并回推到本目录；
`ios/OneIP/` 与 `ios/OneIP.xcodeproj/` 是它的完整 Xcode 工程源码，
`ios/build-ipa.sh` 是构建脚本。

用 AltServer 安装（自签）：

1. iPhone 与电脑连同一 Wi-Fi，iPhone 上打开 AltStore（或用 AltServer 直接装）。
2. 把 `one-ip.ipa` 拖进 AltServer / 在 AltStore 里选「+」→ 选这个 IPA 文件。
3. 输入你的 Apple ID，AltServer 会用你的账号签名后装到手机
   （免费账号签名有效期 7 天，AltStore 会自动续签）。

## 自己用 Xcode 构建（备选）

1. Mac 上用 Xcode 打开 `ios/OneIP.xcodeproj`。
2. Signing & Capabilities 里选你的个人 Apple ID 团队（免费账号即可）。
3. 连接 iPhone，点运行即可安装；或 Product → Archive 导出 IPA。

## 不用 IPA 的方式

iPhone Safari 打开 https://lilian000353.github.io/one-ip/ → 分享 →
「添加到主屏幕」，无需签名、永不过期。
