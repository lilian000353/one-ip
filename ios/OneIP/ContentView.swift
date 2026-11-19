import SwiftUI
import WebKit

/// One IP 的 iOS 壳：全屏 WKWebView。
/// 优先加载工程内嵌的 index.html（即 GitHub Pages 版页面，离线可打开，
/// 检测功能仍需联网）；内嵌文件缺失时回退到线上 Pages 地址。
struct ContentView: View {
    var body: some View {
        WebView()
            .ignoresSafeArea()
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        configuration.allowsInlineMediaPlayback = true
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.scrollView.bounces = false
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") {
            webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
        } else if let url = URL(string: "https://lilian000353.github.io/one-ip/") {
            webView.load(URLRequest(url: url))
        }
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
