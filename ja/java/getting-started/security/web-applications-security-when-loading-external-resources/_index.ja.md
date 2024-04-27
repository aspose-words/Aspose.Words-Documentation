---
title: ウェブアプリセキュリティ リソースをロードするとき
second_title: Aspose.Words お問い合わせ Java
articleTitle: 外部リソースをロードするWebアプリケーションセキュリティ
linktitle: 外部リソースをロードするWebアプリケーションセキュリティ
type: docs
description: "リモートリソースをロードし、セキュリティリスクの理由になることができます。 一般的なセキュリティ問題とソリューションをよく見てみましょう Javaお問い合わせ"
weight: 120
url: /ja/java/web-applications-security-when-loading-external-resources/
---

デフォルトでは、 Aspose.Words お問い合わせ Java ドキュメントをインポートしたり、 DocumentBuilder を使用して画像や CSS スタイル、外部 HTML ドキュメントなどのリモートリソースを読み込みます。 この動作により、文書を詳細に処理することができますが、ライブラリがWebアプリケーションの一部である場合、いくつかのセキュリティリスクの理由になる可能性があります。

この記事では、外部リソースをロードし、そのような問題を回避する方法に関する推奨事項を提供するときに発生する可能性のある一般的なセキュリティの問題を見てみましょう。

{{% alert color="primary" %}}

Aspose.Words アンチウィルス ソフトウェアとして機能しません。 そのため、文書に悪意のあるコンポーネントの存在について情報を提供していません。 データのセキュリティを確保するために、外部のソースから得られるドキュメントを確認してください。 順番で、 Aspose.Words 外部リソースをロードするときに発生する可能性のある問題に対処する方法に関する推奨事項を提供します。

{{% /alert %}}

## セキュリティの問題

外部リソースをロードする際には、一般的なセキュリティの問題がいくつかあります。

### 認証開示 リンクされたイメージによる

お問い合わせ Windows- ベースホスト、*\\example.com\a\b*のようなUNCパスを使用するリソースへの参照を含むドキュメントはデフォルトで処理されます。 ドメイン環境では、ホストが指定されたサーバーにハッシュされた形式でドメイン認証情報を送信します。

攻撃者がユーザーまたはサーバーを説得して、管理するホストを指すようなリソースリンクでドキュメントを処理することができれば、攻撃者はNTLMハッシュ形式でユーザーまたはサービスアカウントの認証情報を受け取ります。 そのようなデータは、古典的なパスザハッシュ攻撃で再利用することができ、攻撃者は、犠牲者ユーザーまたはサービスアカウントとして任意のリソースへのアクセスを得ることができます。

問題のアカウントが弱いか推測できるパスワードを使用している場合、攻撃者はさらに悪意のある使用のためにアカウントパスワードを回復するためにパスワードのクラック攻撃を実行できます。

### ローカルイメージ開示 リンクされたイメージによる

前のケースと同様に、ローカルイメージファイルを参照してドキュメントを処理すると、そのファイルが最終文書に含まれていることになります。 機密情報開示につながる可能性があります。

### サービスの拒否

攻撃者は、参照または非常に大きな画像を含む文書をアップロードすることができます - いわゆる「圧縮爆弾」。 これらの画像を処理すると、ライブラリは膨大な量のメモリとCPU時間を消費します。

### Server-リンクされた内容による優先要求のforgery

攻撃者は、内部IPアドレスとポートの共通の組み合わせに埋め込まれたリンクを含む一連の文書を作成することができ、その後、それらをWebサービスに提出することができます Aspose.Words ドキュメントを処理するライブラリ。

サービスがドキュメントを処理する時間の長さに基づいて、攻撃者は、特定のIP /ポートの組み合わせがファイアウォールによってフィルタリングされるかどうかを判断できます。

- 処理時間が長いため、サーバーが送信したTCP SYNパケットがファイアウォールによって削除されたことを示します。
- 速い処理時間は巧妙な関係がなされたことを示します

## セキュリティの問題の解決

上記の問題を解決し、Webアプリケーションのセキュリティを向上させるために、外部リソースの負荷を制御または無効にすることができます [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)お問い合わせ

次のコードの例では、外部画像の読み込みを無効にする方法を示します。

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

次のコードの例では、リモートリソースを無効にする方法を示します。

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

この記事では、コンサルティング会社独立したセキュリティ評価に基づいています [レポート](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)お問い合わせ

{{% /alert %}}

