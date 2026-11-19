import SwiftUI
import WebKit

/// One IP 的 iOS 壳：全屏 WKWebView 加载 GitHub Pages 版。
/// 如需离线使用，可把仓库 offline/one-ip-offline.html 拖进 Xcode 工程并改用本地文件加载：
/// let url = Bundle.main.url(forResource: "one-ip-offline", withExtension: "html")!
struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://lilian000353.github.io/one-ip/")!)
            .ignoresSafeArea()
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
