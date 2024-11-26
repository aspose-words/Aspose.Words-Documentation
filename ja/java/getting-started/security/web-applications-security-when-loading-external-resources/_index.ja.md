---
title: リソースの読み込み時のWebアプリのセキュリティ
second_title: Aspose.WordsのためのJava
articleTitle: 外部リソースのロード時のWebアプリケーションのセキュリティ
linktitle: 外部リソースのロード時のWebアプリケーションのセキュリティ
type: docs
description: "リモートリソースをロードすると、セキュリティ上のリスクが発生する可能性があります。 Javaの一般的なセキュリティ問題とその解決策を見てください。"
weight: 120
url: /ja/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

デフォルトでは、JavaのAspose.Wordsは、DocumentBuilderを使用して文書をインポートしたり画像を挿入したりするときに、画像、CSSスタイル、外部HTML文書などのリモートリソースをロードで この動作により、ドキュメントを詳細に処理できますが、ライブラリがwebアプリケーションの一部である場合、セキュリティ上のリスクが発生する可

この記事では、外部リソースをロードするときに発生する可能性のある一般的なセキュリティ問題を見て、そのような問題を回避する方法に関する推奨事項を提供します。

{{% alert color="primary" %}}

Aspose.Wordsはウイルス対策ソフトウェアとして機能しません。 したがって、文書内の悪意のあるコンポーネントの存在に関する情報は提供されません。 データのセキュリティを確保するには、外部ソースから取得した文書を自分で確認してください。 次に、Aspose.Wordsは、外部リソースをロードするときに発生する可能性のある問題に対処する方法に関する推奨事項を提供します。

{{% /alert %}}

## セキュリティの問題

外部リソースをロードするときには、多くの一般的なセキュリティ上の問題があります。

### リンクされた画像を介した資格情報の開示

Windowsベースのホストでは、*'\\example.com\a\b*'のようなUNCパスを使用するリソースへの参照を含むドキュメントがデフォルトで処理されます。 ドメイン環境では、これにより、ホストはドメイン資格情報をハッシュ形式で指定されたサーバーに送信します。

攻撃者がユーザーまたはサーバーに、自分が制御するホストを指すようなリソースリンクを持つドキュメントを処理するように説得できる場合、攻撃者はNTLMハ このようなデータは、従来のハッシュパス攻撃で再利用され、攻撃者は被害者のユーザーまたはサービスアカウントとして任意のリソースにアクセスできます。

問題のアカウントが弱いまたは推測可能なパスワードを使用している場合、攻撃者はさらにパスワードクラッキング攻撃を実行して、さらに悪意のある使用のためにアカウントのパスワードを回復する可能性があります。

### リンクされた画像を介したローカル画像開示

前のケースと同様に、ローカルイメージファイルを参照してドキュメントを処理すると、そのファイルが最終ドキュメントに含まれます。 これは、機密情報の開示につながる可能性があります。

### サービス拒否

攻撃者は、非常に大きな画像を参照しているか、または含まれている文書、いわゆる"減圧爆弾"をアップロードする可能性があります。 これらの画像を処理するとき、ライブラリは膨大な量のメモリとCPU時間を消費します。

### リンクされたコンテンツを介したサーバー側の要求偽造

攻撃者は、内部のIPアドレスとポートの一般的な組み合わせへの埋め込みリンクを含む一連のドキュメントを作成し、Aspose.Wordsライブラリを使用してwebサービスに送信してドキュメントを処理する可能性があります。

サービスが文書の処理に使用する時間の長さに基づいて、攻撃者は特定のIP/ポートの組み合わせがファイアウォールによってフィルタリングされているか:

- 処理時間が長い場合は、サーバーから送信されたTCPSYNパケットがファイアウォールによって削除されたことを示します
- クイック処理時間は、接続が成功したことを示します

## セキュリティ上の問題の解決策

上記の問題を解決し、webアプリケーションのセキュリティを向上させるために、[IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)を使用して外部リソースのロードを制御または無効にできます。

外部イメージの読み込みを無効にする方法を次のコード例に示します:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

次のコード例は、リモートリソースを無効にする方法を示しています:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

この記事は、コンサルティング会社の独立したセキュリティ評価者に基づいています [レポート](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

