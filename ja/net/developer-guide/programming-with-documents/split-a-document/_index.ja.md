---
title: C# でドキュメントを分割する
second_title: .NET用Aspose.Words
articleTitle: ドキュメントを分割する
linktitle: ドキュメントを分割する
description: "C# を使用してドキュメントを複数のファイルに分割します。分割機能を使用すると、ページまたはページ範囲だけでなく、見出しやセクションごとに文書を効果的に分割できます。"
type: docs
weight: 90
url: /ja/net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* または *ドキュメントの分割* は、大きなドキュメントを多数の小さなファイルに分割するプロセスです。ファイルを分割する理由はさまざまです。たとえば、特定のドキュメントの一部のページのみが必要であり、ドキュメント全体ではありません。または、プライバシー上の理由から、ドキュメントの一部のみを他の人と共有したい場合があります。分割機能を使用すると、ドキュメントの必要な部分のみを取得し、マークアップ、保存、送信などの必要なアクションを実行できます。

Aspose.Words は、見出しまたはセクションごとに 1 つのドキュメントを複数のドキュメントに分割する効率的な方法を提供します。ドキュメントをページまたはページ範囲ごとに分割することもできます。この記事では両方の分割オプションについて説明します。

Aspose.Words を使用してドキュメントを小さなファイルに分割するには、次の手順に従う必要があります。

1. サポートされている形式でドキュメントをロードします。
1. 文書を分割します。
1. 出力ドキュメントを保存します。

ドキュメントを分割すると、必要なページやテキストなどで始まるすべての出力ドキュメントを開くことができるようになります。

{{% alert color="primary" %}}

**オンラインで試す**

この機能は [無料のオンラインドキュメントスプリッター](https://products.aspose.app/words/splitter) で試すことができます。

{{% /alert %}}

## 異なる基準を使用してドキュメントを分割する {#split-a-document-using-different-criteria}

Aspose.Words を使用すると、EPUB または HTML ドキュメントをさまざまな基準に従って章に分割できます。このプロセスでは、ソース ドキュメントのスタイルとレイアウトが出力ドキュメントでも保持されます。

[DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/documentsplitcriteria/) 列挙を使用して基準を指定できます。したがって、次の基準のいずれかを使用してドキュメントを章に分割するか、複数の基準を組み合わせて使用できます。

- 見出し段落、
- セクション区切り、
- 列の区切り、
- ページ区切り。

出力を HTML に保存する場合、Aspose.Words は個々の章を個別の HTML ファイルとして保存します。その結果、ドキュメントは複数の HTML ファイルに分割されます。出力を EPUB に保存する場合、Aspose.Words は、使用した `DocumentSplitCriteria` 値に関係なく、結果を単一の EPUB ファイルに保存します。したがって、EPUB ドキュメントに DocumentSplitCriteria を使用すると、リーダー アプリケーションでのコンテンツの外観にのみ影響します。コンテンツは章に分割され、ドキュメントは連続して表示されなくなります。

{{% alert color="primary" %}}

MHTML 形式で保存する場合、[DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) プロパティを使用してドキュメントを分割することはできません。

{{% /alert %}}

このセクションでは、考えられる分割基準の一部のみを検討します。

### 文書を見出しごとに分割する {#split-a-document-by-headings}

ドキュメントを見出しごとに章に分割するには、**DocumentSplitCriteria** プロパティの **HeadingParagraph** 値を使用します。

見出し 1、2、3 など、見出し段落の特定のレベルで文書を分割する必要がある場合は、[DocumentSplitHeadingLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/) プロパティも使用します。出力は、指定された見出しレベルで書式設定された段落ごとに分割されます。

次のコード例は、見出しごとにドキュメントを小さな部分に分割する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

この基準では、Aspose.Words は分割時に HTML 形式での保存のみをサポートしていることに注意してください。

EPUB に保存する場合、ドキュメントは複数のファイルに分割されず、出力ファイルは 1 つだけになります。

### ドキュメントをセクションごとに分割する {#split-a-document-by-sections}

Aspose.Words では、セクション区切りを使用してドキュメントを分割し、HTML に保存することもできます。この目的のために、**SectionBreak** を **DocumentSplitCriteria** として使用します。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

ソース ドキュメントを複数の出力ドキュメントに分割する別の方法もあり、Aspose.Words でサポートされている任意の出力形式を選択できます。

次のコード例は、(`DocumentSplitCriteria` プロパティを使用せずに) セクション区切りによってドキュメントを小さな部分に分割する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## ページごとに分割 {#splitting-by-pages}

ドキュメントをページごと、ページ範囲ごと、または指定したページ番号から開始して分割することもできます。このような場合には、[ExtractPages](https://reference.aspose.com/words/net/aspose.words/document/extractpages/) メソッドが機能します。

このセクションでは、[Document](https://reference.aspose.com/words/net/aspose.words/document/) クラスと **ExtractPages** メソッドを使用してページ単位でドキュメントを分割するいくつかの使用例について説明します。

{{% alert color="primary" %}}

任意の [サポートされているドキュメント形式](/words/ja/net/supported-document-formats/) を使用できます。

{{% /alert %}}

{{% alert color="primary" %}}

ページ数を減らす一方でさまざまなニュアンスが現れるため、Microsoft Word レイアウトと完全に一致させるのは非常に複雑な作業です。したがって、ドキュメントの複雑さによっては、結果として得られるドキュメントのレイアウトが元のドキュメントと若干異なる場合があります。

{{% /alert %}}

### ドキュメントをページごとに分割する {#split-a-document-page-by-page}

Aspose.Words を使用すると、複数ページのドキュメントをページごとに分割できます。

次のコード例は、ドキュメントを分割し、各ページを個別のドキュメントとして保存する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### ページ範囲ごとにドキュメントを分割する {#split-a-document-by-page-ranges}

Aspose.Words を使用すると、複数ページのドキュメントをページ範囲ごとに分割できます。 1 つのファイルをさまざまなページ範囲を持つ複数のファイルに分割したり、1 つの範囲だけを選択してソース文書のこの部分のみを保存したりできます。ドキュメントの最大ページ番号と最小ページ番号に従ってページ範囲を選択できることに注意してください。

次のコード例は、特定の開始インデックスと終了インデックスを使用して、ページ範囲ごとにドキュメントを小さな部分に分割する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## ドキュメントを保存するためのコールバック オプション {#callback-option-for-saving-a-document}

[DocumentPartSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) プロパティを使用すると、このドキュメントを HTML 形式にエクスポートするときに Aspose.Words がドキュメント パーツを保存する方法を制御できます。このプロパティを使用すると、出力ファイルの名前を変更したり、出力ファイルをカスタム ストリームにリダイレクトしたりすることができます。

すべての出力部分は 1 つのコンテナ (.epub ファイル) に保存する必要があるため、EPUB に保存する場合、このコールバックは役に立たないことに注意してください。したがって、ストリームのリダイレクトはサポートされておらず、ファイルの名前はコンテナ内で変更されるため、名前変更の効果は見えません。

## 分割ドキュメントを別のドキュメントと結合する {#merge-the-split-document-with-another-file}

Aspose.Words を使用すると、出力された分割ドキュメントを別のドキュメントと結合して、新しいドキュメントを形成できます。これを文書の結合と呼ぶことができます。

次のコード例は、分割ドキュメントを別のドキュメントと結合する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
