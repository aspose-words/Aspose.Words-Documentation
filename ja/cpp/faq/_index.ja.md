---
title: よくある質問
second_title: C++の場合Aspose.Words
articleTitle: よくある質問
linktitle: よくある質問
type: docs
description: "C++の場合Aspose.Words 最もよくある質問に答えます。 一般的な質問や特定のトピックに関する問題をすばやく解決するには、このページをご覧ください。"
weight: 75
url: /ja/cpp/faq/
---

このページには、最もよく寄せられる質問への回答が含まれています。 現在のページを学んでください–おそらくこれはあなたがあなたの問題をすぐに解決することを可能にするでしょう。

あなたの質問に対する答えが見つからない場合は、サポートフォーラムで尋ねることができます。 質問や問題を適切に報告する方法については、以下を参照してください。 [技術サポート](/words/cpp/technical-support/) ページ。

{{% alert color="primary" %}}

よくある質問は、あなたの便宜のためにトピック別にグループ化されています。

{{% /alert %}}

## 一般

**Q:Aspose.Wordsとは何ですか?**

C++の場合Aspose.Words アプリケーションがさまざまなドキュメント処理タスクを実行できるようにするクラスライブラリです。 と C++の場合Aspose.Words、サードパーティ製アプリケーションを使用せずにドキュメントを生成、変更、変換、レンダリング、および印刷できます。

詳細は当社のドキュメントに記載されています。

------

**Q:"Aspose.Wordsはサードパーティのアプリケーションを必要としません"とはどういう意味ですか?**

C++の場合Aspose.Words 動作するように任意のサードパーティ製のアプリケーションや追加のソフトウェアパッケージをインストールする必要はありません。 に記載されているようにAspose.Wordsをダウンロードしてインストールするだけです [「インストール」](/words/cpp/installation/) 記事と始めましょう。

------

**Q:Aspose.Wordsはどのプラットフォームをサポートしていますか?**

C++の場合Aspose.Words 一般的な開発環境とデプロイメントプラットフォームのほとんどをカバーしています。 このAPIは、Windows、Linux、Mac OSなどの幅広いオペレーティングシステムや様々なプラットフォーム用のアプリケーションを開発するために使用できます。

詳細については、以下を参照してください [製品概要](/words/cpp/product-overview/) ページ。

------

**Q:Aspose.Wordsはどのような文書形式をサポートしていますか?**

C++の場合Aspose.Words このようなDOC、DOCX、HTML、Markdown、PDF、XML、および他のような一般的な文書形式のほとんどをサポートしています。

サポートされている形式の完全なリストを見ることができます [サポートされているドキュメント形式](/words/cpp/supported-document-formats/) ページ。

------

**Q:Aspose.Wordsを無料で試すにはどうすればよいですか?**

試用版または30日間の一時的なライセンスを使用して–あなたは2つの方法でこれを行うことができます。 試用版は購入したものと同じですが、完全な製品機能を提供しますが、ロードと保存時に文書の上部に評価透かしを追加し、最大文書サイズを数百段落に制限します。 一時的なライセンスを使用すると、30日間試用制限なしでAspose.Wordsをテストすることができます。

を参照してください [ライセンスとサブスクリプション](/words/cpp/licensing/) より多くの情報のためのページ。

{{% alert color="primary" %}}

また、最も人気のあるAspose.Words機能のいくつかを試すこともできます [Aspose.Words無料オンラインアプリ](https://products.aspose.app/words).

{{% /alert %}}

------

**Q：Aspose.Wordsはどうやって購入できますか？**

Aspose.Wordsライセンスを購入するには、次の場所に移動する必要があります [購入](https://purchase.aspose.com/buy) ページでは、"Aspose.Words"製品と自分に合ったライセンスの種類を選択します。 次に、ライセンスをカートに追加し、ショッピングカートの指示に従います。

購入後、以下に記載されているライセンスを申請してください [購入したライセンス](/words/cpp/licensing/#purchased-license) セクション。

Aspose.Wordsをインストールする方法の詳細は、Aspose.Wordsをインストールする方法で読むことができます。 [インストール](/words/cpp/installation/) ページ。

------

**Q:私はいかにサポートを得てもいいですか。**

無料のテクニカルサポートフォーラムを使用してください。 問題を適切に報告する方法と、フォーラムに連絡する前に何をする必要があるかの詳細については、以下を参照してください [技術サポート](/words/cpp/technical-support/) ページ。

## ドキュメントのレンダリング

{{% alert color="primary" %}}

レンダリングに関するより詳細な情報は、次のページで見つけることができます。 [レンダリング](/words/cpp/rendering/) ドキュメントセクション。

{{% /alert %}}

**Q:出力ドキュメントのレイアウトとフォントが元のものと異なるのはなぜですか?**

フォントが使用できないか、フォント形式がMicrosoft WordでサポートされているがAspose.Wordsではサポートされていない可能性があります。 Aspose.Wordsが実行されます [フォント置換](/words/cpp/manipulate-and-substitute-truetype-fonts/).

フォントが欠落しているかどうかを確認するには:

- Aspose.Wordsでは、フォント置換の警告を使用します(詳細については、"フォントが置換されたことを認識する方法"のセクションを参照してください [TrueTypeフォントの操作と置換](/words/cpp/manipulate-and-substitute-truetype-fonts/) 記事）。
- Microsoft Wordで"フォント置換"ダイアログボックスを開きます(ファイル→オプション→詳細→フォント置換)。

------

**Q:フォントフォールバックがWindows以外のプラットフォームで機能せず、Unicode文字がWindowsに置き換えられるのはなぜですか。でなくてもいいんじゃないかな？**

多くの場合、Unicode文字の代わりに`.notdef`グリフを見ることができます。 これは通常、ボックスまたは質問グリフです。

これは、既定でMicrosoft Officeフォールバック設定が選択されており、Microsoft Officeフォントが使用できないためです。 ユーザーはMicrosoft Officeフォントをインストールするか、フォールバック設定を変更する必要があります。

------

**Q:タイ語やヘブライ語などの複雑なスクリプトテキストが、発音区別符号の間違った位置や不正確な合字など、何らかの理由で不正確に表示されるのはなぜですか?**

複雑なスクリプトフォントの中には、正しく表示するために高度なタイポグラフィ機能を処理する必要があるものがあります。 高度なタイポグラフィは、デフォルトでAspose.Wordsでは無効になっています。 ユーザーは[TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/)で高度なタイポグラフィを有効にする必要があります。

------

**Q:使用するフォントのライセンスファイルは必要ですか?**

はい、あなたがします。 したがって、フォントをコピーするときは、ほとんどのフォントが著作権で保護されていることに注意してください。 フォントライセンスを事前に検索し、それらが自由に別のマシンに転送できることを確認します。

## 文書の追加または挿入

{{% alert color="primary" %}}

ドキュメントを使用したプログラミングに関するより詳細な情報は、次の場所で確認できます。 [ドキュメントを使ったプログラミング](/words/cpp/programming-with-documents/) ドキュメントセクション。

{{% /alert %}}

**Q:ドキュメントに追加されたコンテンツが同じページに表示されないのはなぜですか?**

ドキュメントが一緒に追加されるセクションの[PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/)設定が異なるため、追加結果は別のページに表示されます。 ドキュメントが一緒に追加されるセクションに対して同じ**PageSetup**設定を行います。

## 文書を変換する

{{% alert color="primary" %}}

ドキュメントの変換に関する詳細な情報は、次のページで確認できます。 [文書を変換する](/words/cpp/convert-a-document/) ドキュメントセクション。

{{% /alert %}}

**Q:DOCXをPDFに変換する方法は?**

ドキュメントをモデルにロードして、サポートされている任意の形式で保存するだけです。

次のコード例は、DOCXファイルをPDFに変換するプロセスを示しています:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## 文書で操作する

{{% alert color="primary" %}}

ドキュメントを使用したプログラミングに関するより詳細な情報は、次の場所で確認できます。 [ドキュメントを使ったプログラミング](/words/cpp/programming-with-documents/) ドキュメントセクション。

{{% /alert %}}

**Q:ドキュメントページをページごとに分割する方法は?**

Aspose.Words複数ページのドキュメントをページごとに分割できます。

次のコード例は、ドキュメントを分割し、各ページを個別のドキュメントとして保存する方法を示しています:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**Q:暗号化されたファイルを開く方法**

パスワードなしで暗号化された文書を開こうとすると、例外が発生するはずです。

次のコード例は、パスワードを使用して暗号化されたドキュメントを開く方法を示しています:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
