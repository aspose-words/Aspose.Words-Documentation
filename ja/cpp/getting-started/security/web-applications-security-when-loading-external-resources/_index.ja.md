---
title: リソースの読み込み時のWebアプリのセキュリティ
second_title: C++の場合Aspose.Words
articleTitle: 外部リソースのロード時のWebアプリケーションのセキュリティ
linktitle: 外部リソースのロード時のWebアプリケーションのセキュリティ
type: docs
description: "リモートリソースをロードすると、セキュリティ上のリスクが発生する可能性があります。 C++での一般的なセキュリティ問題とその解決策を見てみましょう。"
weight: 50
url: /ja/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

デフォルトでは, C++の場合Aspose.Words DocumentBuilderを使用して文書をインポートしたり画像を挿入したりするときに、画像、CSSスタイル、外部HTML文書などのリモートリソースを読み込むことができます。 この動作により、ドキュメントを詳細に処理できますが、ライブラリがwebアプリケーションの一部である場合、セキュリティ上のリスクが発生する可

この記事では、外部リソースをロードするときに発生する可能性のある一般的なセキュリティ問題を見て、そのような問題を回避する方法に関する推奨事項を提供します。

{{% alert color="primary" %}}

Aspose.Wordsはウイルス対策ソフトウェアとして機能しません。 したがって、文書内の悪意のあるコンポーネントの存在に関する情報は提供されません。 データのセキュリティを確保するには、外部ソースから取得した文書を自分で確認してください。 次に、Aspose.Wordsは、外部リソースをロードするときに発生する可能性のある問題に対処する方法に関する推奨事項を提供します。

{{% /alert %}}

## セキュリティの問題

外部リソースをロードするときには、多くの一般的なセキュリティ上の問題があります。

### リンクされた画像を介した資格情報の開示

Windowsベースのホストでは、*'\\example.com\a\b*’のようなUNCパスを使用するリソースへの参照を含むドキュメントがデフォルトで処理されます。 ドメイン環境では、これにより、ホストはドメイン資格情報をハッシュ形式で指定されたサーバーに送信します。

攻撃者がユーザーまたはサーバーに、制御するホストを指すようなリソースリンクを持つドキュメントを処理するように説得できる場合、攻撃者はNTLMハッシュ形式のユーザーまたはサービスアカウントの資格情報を受け取ります。 このようなデータは、従来のハッシュパス攻撃で再利用され、攻撃者は被害者のユーザーまたはサービスアカウントとして任意のリソースにアクセスできます。

問題のアカウントが弱いまたは推測可能なパスワードを使用している場合、攻撃者はさらにパスワードクラッキング攻撃を実行して、さらに悪意のある使用のためにアカウントのパスワードを回復する可能性があります。

### リンクされた画像を介したローカル画像開示

前のケースと同様に、ローカルイメージファイルを参照してドキュメントを処理すると、そのファイルが最終ドキュメントに含まれます。 これは、機密情報の開示につながる可能性があります。

### サービス拒否

攻撃者は、非常に大きな画像を参照しているか、または含まれている文書、いわゆる"減圧爆弾"をアップロードする可能性があります。 これらの画像を処理するとき、ライブラリは膨大な量のメモリとCPU時間を消費します。

### リンクされたコンテンツを介したサーバー側の要求偽造

攻撃者は、内部IPアドレスとポートの一般的な組み合わせへの埋め込みリンクを含む一連の文書を作成し、Aspose.Wordsライブラリを使用してwebサービスに送信し、文書を処理する可能性があります。

サービスが文書の処理に使用する時間の長さに基づいて、攻撃者は特定のIP/ポートの組み合わせがファイアウォールによってフィルタリングされているかどうかを判断する可能性があります:

- 処理時間が長い場合は、サーバーから送信されたTCP SYNパケットがファイアウォールによって削除されたことを示します
- クイック処理時間は、接続が成功したことを示します

## セキュリティ上の問題の解決策

上記の問題を解決し、webアプリケーションのセキュリティを向上させるために、[IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/)を使用して外部リソースのロードを制御または無効にできます。

外部イメージの読み込みを無効にする方法を次のコード例に示します:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

次のコード例は、リモートリソースを無効にする方法を示しています:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

この記事は、コンサルティング会社の独立したセキュリティ評価者に基づいています [レポート](ise-aspose-report.pdf).

{{% /alert %}}
