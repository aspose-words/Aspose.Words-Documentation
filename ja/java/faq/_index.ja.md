---
title: FAQ
second_title: Aspose.WordsのためのJava
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.WordsforJavaは、最もよく寄せられる質問に答えます。 一般的な質問や特定のトピックに関する問題をすばやく解決するには、このページをご覧ください。"
weight: 75
url: /ja/java/faq/
timestamp: 2024-01-31-14-23-37
---

このページには、最もよく寄せられる質問への回答が含まれています。 現在のページを学んでください–おそらくこれはあなたがあなたの問題をすぐに解決することを可能にするでしょう。

あなたの質問に対する答えが見つからない場合は、サポートフォーラムで尋ねることができます。 質問や問題を適切に報告する方法については、以下を参照してください。 [技術サポート](/words/java/technical-support/) ページ。

{{% alert color="primary" %}}

よくある質問は、あなたの便宜のためにトピック別にグループ化されています。

{{% /alert %}}

## 一般

**Q:Aspose.Wordsとは何ですか?**

Aspose.WordsforJavaは、アプリケーションがさまざまなドキュメント処理タスクを実行できるようにするクラスライブラリです。 Aspose.WordsforJavaを使用すると、サードパーティのアプリケーションを使用せずにドキュメントを生成、変更、変換、レンダリング、および印刷できます。

詳細は当社のドキュメントに記載されています。

------

**Q:"Aspose.Wordsはサードパーティのアプリケーションを必要としません"とはどういう意味ですか?**

Aspose.WordsforJavaは、動作するためにサードパーティのアプリケーションや追加のソフトウェアパッケージをインストールする必要はありません。 で説明されているようにAspose.Wordsをダウンロードしてインストールするだけです。 [インストール](/words/java/installation/) 記事と始めましょう。

------

**Q:Aspose.Wordsはどのプラットフォームをサポートしていますか?**

Aspose.WordsforJavaは、一般的な開発環境とデプロイメントプラットフォームのほとんどをカバーしています。 ItsAPIはWindows、Linux、Mac OSなどの幅広いオペレーティングシステムや様々なプラットフォーム用のアプリケーションを開発するために使用できます。

詳細については、以下を参照してください [製品概要](/words/java/product-overview/) ページと [プラットフォームとInteroperability](/words/java/platforms-and-interoperability/) セクション。

------

**Q:Aspose.Wordsはどのような文書形式をサポートしていますか?**

Aspose.WordsforJavaは、次のような一般的な文書形式のほとんどをサポートしますDOC, DOCX, HTML, Markdown, PDF, XML, と他の人。

サポートされている形式の完全なリストを見ることができます [サポートされているドキュメント形式](/words/java/supported-document-formats/) ページ。

------

**Q:Aspose.Wordsを無料で試すにはどうすればよいですか?**

試用版または30日間の一時的なライセンスを使用して–あなたは2つの方法でこれを行うことができます。 試用版は購入したものと同じですが、完全な製品機能を提供しますが、ロードと保存時に文書の上部に評価透かしを追加し、最大文書サイズを数百段落に制限します。 一時的なライセンスを使用すると、30日間試用制限なしでAspose.Wordsをテストすることができます。

を参照してください [ライセンスとサブスクリプション](/words/java/licensing/) より多くの情報のためのページ。

{{% alert color="primary" %}}

また、最も人気のあるAspose.Words機能のいくつかを試すこともできます [Aspose.Words無料オンラインアプリ](https://products.aspose.app/words).

{{% /alert %}}

------

**Q：Aspose.Wordsはどうやって購入できますか？**

Aspose.Wordsライセンスを購入するには、次の場所に移動する必要があります [購入](https://purchase.aspose.com/buy) ページでは、"Aspose.Words"製品と自分に合ったライセンスの種類を選択します。 次に、ライセンスをカートに追加し、ショッピングカートの指示に従います。

購入後、以下に記載されているライセンスを申請してください [購入したライセンス](/words/java/licensing/#purchased-license) セクション。

Aspose.Wordsをインストールする方法の詳細は、Aspose.Wordsをインストールする方法で読むことができます。 [インストール](/words/java/installation/) ページ。

------

**Q:私はいかにサポートを得てもいいですか。**

無料のテクニカルサポートフォーラムを使用してください。 問題を適切に報告する方法と、フォーラムに連絡する前に何をする必要があるかの詳細については、以下を参照してください [技術サポート](/words/java/technical-support/) ページ。

## ドキュメントのレンダリング

{{% alert color="primary" %}}

レンダリングに関するより詳細な情報は、次のページで見つけることができます。 [レンダリング](/words/java/rendering/) ドキュメントセクション。

{{% /alert %}}

**Q:出力ドキュメントのレイアウトとフォントが元のものと異なるのはなぜですか?**

フォントが使用できないか、フォント形式がMicrosoft WordでサポートされているがAspose.Wordsではサポートされていない可能性があります。 Aspose.Wordsが実行されます [フォント置換](/words/java/manipulate-and-substitute-truetype-fonts/).

フォントが欠落しているかどうかを確認するには:

- Aspose.Wordsでは、フォント置換の警告を使用します(詳細については、"フォントが置換されたことを認識する方法"のセクションを参照してください [TrueTypeフォントの操作と置換](/words/java/manipulate-and-substitute-truetype-fonts/) 記事）。
- Microsoft Wordで"フォント置換"ダイアログボックスを開きます(ファイル→オプション→詳細→フォント置換)。

------

**Q:フォントフォールバックがWindows以外のプラットフォームで機能せず、Unicode文字がWindowsに置き換えられるのはなぜですか。でなくてもいいんじゃないかな？**

多くの場合、Unicode文字の代わりに`.notdef`グリフを見ることができます。 これは通常、ボックスまたは質問グリフです。

これは、MicrosoftOfficeフォールバック設定が既定で選択されており、MicrosoftOfficeフォントが使用できないためです。 ユーザーはMicrosoftOfficeフォントをインストールするか、フォールバック設定を変更する必要があります。

------

**Q:タイ語やヘブライ語などの複雑なスクリプトテキストが、発音区別符号の間違った位置や不正確な合字など、何らかの理由で不正確に表示されるのはなぜですか?**

複雑なスクリプトフォントの中には、正しく表示するために高度なタイポグラフィ機能を処理する必要があるものがあります。 高度なタイポグラフィは、デフォルトでAspose.Wordsでは無効になっています。 ユーザーは[TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory)で高度なタイポグラフィを有効にする必要があります。

------

**Q:使用するフォントのライセンスファイルは必要ですか?**

はい、あなたがします。 したがって、フォントをコピーするときは、ほとんどのフォントが著作権で保護されていることに注意してください。 フォントライセンスを事前に検索し、それらが自由に別のマシンに転送できることを確認します。

## ネストされたMail Merge

{{% alert color="primary" %}}

Mail Mergeについてのより詳細な情報は、Mail Mergeの中で見つけることができます。 [Mail Mergeと報告](/words/java/mail-merge-and-reporting/) ドキュメントセクション。

{{% /alert %}}

**Q:生成された出力にマージされたフィールドがないのはなぜですか?**

差し込み項目の元の名前は、データソースからの必要なデータに置き換えられずに同じままです。:

- データがテーブルに正しくロードされていることを確認してください：必要なすべての主キーと関係を使用して[TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName)を正しく設定します。
- 差し込み項目の名前が正しく指定されていることを確認します。 [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames)メソッドを使用して、すべての差し込み項目名を取得し、テンプレート内の差し込み項目の名前がデータソース内の差し込み項目の名前と一致するよう

------

**Q:ネストされたマージの出力は、親テーブルの最初のエントリの子テーブルからのデータを表示せず、実際にリンクされていないものも含めて、親テーブルの最**

これは、テンプレート内のマージ領域が正しく形成されていないため、ネストされたMail Merge領域すべてが何も表示されなくなる可能性があるためです。 [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)開始タグと[EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)終了タグは一致し、同じ行またはセル内にある必要があります。 たとえば、テーブルのセルにマージ領域のネストを開始する場合は、最初のセルと同じ行でマージ領域を終了する必要があります。

------

**Q：親テーブルの各エントリに、実際にリンクされていない項目も含めて、子テーブルのすべての項目が表示されるのはなぜですか？**

これは、親テーブルと子テーブルの間のリレーションシップが設定されていないか、正しく設定されていないためです。 それはする必要があります:

- **DataSet**内でデータの整合性を確保し、**DataRelation**オブジェクトを使用して、関連するデータテーブル間の親子関係を表します。
- 記事の"ネストされたMail Mergeでリージョンとのデータ関係を設定する方法"のセクションを確認してください [地域を持つネストされたMailマージ](/words/java/nested-mail-merge-with-regions/).

------

**Q：なぜ例外があるのですか：「システム。ArgumentException：ネストされたmail mergeの実行中に、すべての値に対応する親値があるわけではないため、この制約を有効にすることはできませんか？**

これは、すべての親レコードに子レコードがあるわけではないため、データソースが次の条件と一致しないために発生します。*every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*。

**DataRelation**を作成するときに外部キー制約を無効にします。

## 文書の追加または挿入

{{% alert color="primary" %}}

ドキュメントを使用したプログラミングに関するより詳細な情報は、次の場所で確認できます。 [ドキュメントを使ったプログラミング](/words/java/programming-with-documents/) ドキュメントセクション。

{{% /alert %}}

**Q:ドキュメントに追加されたコンテンツが同じページに表示されないのはなぜですか?**

ドキュメントが一緒に追加されるセクションの[PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/)設定が異なるため、追加結果は別のページに表示されます。 ドキュメントが一緒に追加されるセクションに対して同じ**PageSetup**設定を行います。

## 文書を変換する

{{% alert color="primary" %}}

ドキュメントの変換に関する詳細な情報は、次のページで確認できます。 [文書を変換する](/words/java/convert-a-document/) ドキュメントセクション。

{{% /alert %}}

**Q:DOCXをPDFに変換する方法は?**

ドキュメントをモデルにロードして、サポートされている任意の形式で保存するだけです。

次のコード例は、DOCXファイルをPDFに変換するプロセスを示しています:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## 文書で操作する

{{% alert color="primary" %}}

ドキュメントを使用したプログラミングに関するより詳細な情報は、次の場所で確認できます。 [ドキュメントを使ったプログラミング](/words/java/programming-with-documents/) ドキュメントセクション。

{{% /alert %}}

**Q:ドキュメントページをページごとに分割する方法は?**

Aspose.Words複数ページのドキュメントをページごとに分割できます。

次のコード例は、ドキュメントを分割し、各ページを個別のドキュメントとして保存する方法を示しています:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Q:暗号化されたファイルを開く方法**

パスワードなしで暗号化された文書を開こうとすると、例外が発生するはずです。

次のコード例は、パスワードを使用して暗号化されたドキュメントを開く方法を示しています:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**Q:文書を印刷する方法か。**

詳細な回答については、記事をご覧ください [プログラムで文書を印刷するか、ダイアログを使用して文書を印刷する](/words/java/print-a-document-programmatically-or-using-dialogs/).
