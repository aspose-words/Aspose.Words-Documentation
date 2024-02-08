---
title: リソース読み込み時の Web アプリのセキュリティ
second_title: .NET用Aspose.Words
articleTitle: 外部リソースロード時の Web アプリケーションのセキュリティ
linktitle: 外部リソースロード時の Web アプリケーションのセキュリティ
type: docs
description: "リモート リソースをロードします。これはセキュリティ リスクの原因となる可能性があります。一般的なセキュリティ問題と、C# を使用したその解決策を見てみましょう。"
weight: 100
url: /ja/net/web-applications-security-when-loading-external-resources/
---

デフォルトでは、Aspose.Words for .NET は、DocumentBuilder を使用してドキュメントをインポートしたり画像を挿入したりするときに、画像、CSS スタイル、外部 HTML ドキュメントなどのリモート リソースをロードできます。この動作により、ドキュメントを詳細に処理できますが、ライブラリが Web アプリケーションの一部である場合、セキュリティ リスクが生じる原因となる可能性があります。

この記事では、外部リソースを読み込むときに発生する可能性のある一般的なセキュリティ問題を取り上げ、そのような問題を回避する方法についての推奨事項を示します。

{{% alert color="primary" %}}

Aspose.Words はウイルス対策ソフトウェアとして機能しません。したがって、ドキュメント内の悪意のあるコンポーネントの存在に関する情報は提供されません。データのセキュリティを確保するには、外部ソースから取得したドキュメントをご自身で確認してください。さらに、Aspose.Words は、外部リソースをロードするときに発生する可能性のある問題に対処する方法に関する推奨事項を提供します。

{{% /alert %}}

## セキュリティ上の問題

外部リソースをロードする際には、典型的なセキュリティ問題が多数発生します。

### リンクされた画像による資格情報の開示

Windows ベースのホストでは、*'\\example.com\a\b*' などの UNC パスを使用するリソースへの参照を含むドキュメントがデフォルトで処理されます。ドメイン環境では、これにより、ホストはそのドメイン資格情報をハッシュ形式で指定されたサーバーに送信します。

攻撃者が、制御するホストを指すリソース リンクを使用してドキュメントを処理するようにユーザーまたはサーバーを誘導できる場合、攻撃者はユーザーまたはサービス アカウントの資格情報を NTLM ハッシュ形式で受け取ります。このようなデータは、古典的な pass-the-hash 攻撃で再利用でき、攻撃者が被害者のユーザーまたはサービス アカウントとして任意のリソースにアクセスできるようになります。

問題のアカウントが弱いパスワードまたは推測可能なパスワードを使用している場合、攻撃者はさらにパスワード クラッキング攻撃を実行して、アカウントのパスワードを回復し、さらなる悪意のある使用に備える可能性があります。

### リンクされた画像によるローカル画像の開示

前のケースと同様に、ローカル画像ファイルを参照してドキュメントを処理すると、そのファイルは最終ドキュメントに含まれます。これは機密情報の漏洩につながる可能性があります。

### サービス拒否

攻撃者は、非常に大きな画像を参照または含むドキュメント、いわゆる「解凍爆弾」をアップロードする可能性があります。これらの画像を処理するとき、ライブラリは大量のメモリと CPU 時間を消費します。

### リンクされたコンテンツを介した Server 側のリクエスト偽造

攻撃者は、内部 IP アドレスとポートの一般的な組み合わせへのリンクが埋め込まれた一連のドキュメントを作成し、Aspose.Words ライブラリを使用して Web サービスに送信してドキュメントを処理する可能性があります。

攻撃者は、サービスがドキュメントを処理するのにかかる時間の長さに基づいて、特定の IP/ポートの組み合わせがファイアウォールによってフィルタリングされているかどうかを判断する可能性があります。

- 処理時間が長い場合は、サーバーから送信された TCP SYN パケットがファイアウォールによってドロップされたことを示します。
- 処理時間が短い場合は、接続が成功したことを示します。

## セキュリティ問題の解決策

上記の問題を解決し、Web アプリケーションのセキュリティを向上させるために、[IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) を使用して外部リソースのロードを制御または無効にすることができます。

次のコード例は、外部イメージの読み込みを無効にする方法を示しています。

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

次のコード例は、リモート リソースを無効にする方法を示しています。

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

この記事はコンサルティング会社 Independent Security Evaluators [報告](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf) に基づいています。

{{% /alert %}}
