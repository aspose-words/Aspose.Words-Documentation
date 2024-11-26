---
title: Javaで文書を分割する
second_title: Aspose.WordsのためのJava
articleTitle: 文書を分割する
linktitle: 文書を分割する
description: "Aspose.WordsforJavaは、見出しやセクション、ページやページ範囲によって、一つの文書を複数の文書に分割する効率的な方法を提供します。"
type: docs
weight: 90
url: /ja/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting*または*split a document*は、大きな文書をより多くの小さなファイルに分割するプロセスです。 ファイルを分割するにはさまざまな理由があります。 たとえば、特定の文書の一部のページのみが必要であり、全体のページは必要ありません。 または、プライバシー上の理由から、ドキュメントの一部のみを他の人と共有したいと考えています。 分割機能を使用すると、ドキュメントの必要な部分のみを取得し、マークアップ、保存、送信などの必要なアクションを実行できます。

Aspose.Wordsは、見出しまたはセクションによって一つの文書を複数の文書に分割する効率的な方法を提供します。 文書をページまたはページ範囲で分割することもできます。 両方の分割オプションについては、この記事で説明します。

Aspose.Wordsを使用して文書を小さなファイルに分割するには、次の手順を実行する必要があります:

1. サポートされている任意の形式で文書をロードします。
1. 文書を分割します。
1. 出力文書を保存します。

文書を分割した後、必要なページ、テキストなどで始まるすべての出力文書を開くことができます。

{{% alert color="primary" %}}

**オンラインで試す**

あなたは私たちのこの機能を試すことができます [無料オンラインドキュメントスプリッタ](https://products.aspose.app/words/splitter).

{{% /alert %}}

## 異なる条件 {#split-a-document-using-different-criteria}を使用して文書を分割する

Aspose.Wordsを使用すると、さまざまな基準に従ってEPUBまたはHTML文書をチャプターに分割できます。 このプロセスでは、ソース文書のスタイルとレイアウトが出力文書のために保持されます。

[DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/)列挙体を使用して条件を指定できます。 したがって、次のいずれかの基準を使用してドキュメントを章に分割したり、複数の基準を組み合わせたりすることができます:

- 見出し段落,
- セクションブレーク,
- コラムブレーク,
- 改ページ。

出力をHTMLに保存する場合、Aspose.Wordsは個々のチャプターを個別のHTMLファイルとして保存します。 その結果、文書は複数のHTMLファイルに分割されます。 出力をEPUBに保存する場合、Aspose.Wordsは、使用した`DocumentSplitCriteria`値に関係なく、単一のEPUBファイルに結果を保存します。 したがって、EPUBドキュメントにDocumentSplitCriteriaを使用すると、リーダーアプリケーションでのコンテンツの外観にのみ影響します。

{{% alert color="primary" %}}

MHTML形式で保存する場合、[DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/)プロパティを使用して文書を分割することはできません。

{{% /alert %}}

このセクションでは、可能な分割基準の一部のみを検討します。

### 見出し {#split-a-document-by-headings}で文書を分割する

見出しで文書を章に分割するには、**DocumentSplitCriteria**プロパティの**HeadingParagraph**値を使用します。

見出し1、2、3など、特定のレベルの見出し段落でドキュメントを分割する必要がある場合は、[DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel)プロパティも使用します。 出力は、指定された見出しレベルで書式設定された段落で分割されます。

次のコード例は、見出しを使用してドキュメントを小さな部分に分割する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

この基準では、Aspose.Wordsは分割時にHTML形式への保存のみをサポートしていることに注意してください。

EPUBに保存すると、文書は複数のファイルに分割されず、出力ファイルは1つだけになります。

### セクション {#split-a-document-by-sections}で文書を分割する

Aspose.Wordsでは、セクション区切りを使用して文書を分割し、HTMLに保存することもできます。 この目的のために、**SectionBreak**を**DocumentSplitCriteria**として使用します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

ソース文書を複数の出力文書に分割する別の方法があり、Aspose.Wordsでサポートされている任意の出力形式を選択できます。

次のコード例は、(`DocumentSplitCriteria`プロパティを使用せずに)セクション区切りによってドキュメントを小さな部分に分割する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## ページで分割 {#splitting-by-pages}

また、ドキュメントページをページごと、ページ範囲ごと、または指定したページ番号で開始することもできます。 このような場合、[ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int)メソッドはジョブを実行できます。

このセクションでは、[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)クラスと**ExtractPages**メソッドを使用して、ドキュメントをページ単位で分割するいくつかのユースケースについて説明します。

{{% alert color="primary" %}}

あなたは任意のものを使うことができます [Aspose.Wordsでサポートされている出力形式](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

ページ数を減らしている間に多くのニュアンスが現れるため、Microsoft Wordレイアウトとの完全な一致は非常に複雑な作業です。 そのため、ドキュメントの複雑さによっては、元のドキュメントと結果のドキュメントのレイアウトにわずかな違いがある場合があります。

{{% /alert %}}

### 文書ページをページ {#split-a-document-page-by-page}で分割する

Aspose.Words複数ページのドキュメントをページごとに分割できます。

次のコード例は、ドキュメントを分割し、各ページを個別のドキュメントとして保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### ページ範囲 {#split-a-document-by-page-ranges}で文書を分割する

Aspose.Words複数ページのドキュメントをページ範囲で分割できます。 1つのファイルをさまざまなページ範囲で複数のファイルに分割することも、1つの範囲を選択してソースドキュメントのこの部分のみを保存することもできます。 ドキュメントの最大ページ番号と最小ページ番号に応じて、ページ範囲を選択できることに注意してください。

次のコード例は、特定の開始インデックスと終了インデックスを使用して、ページ範囲ごとに文書を小さな部分に分割する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## ドキュメント {#callback-option-for-saving-a-document}を保存するコールバックオプション

[DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback)プロパティを使用して、このドキュメントをHTML形式にエクスポートするときにAspose.Wordsがドキュメントパーツを保存する方法を制御できます。 このプロパティを使用すると、出力ファイルの名前を変更したり、カスタムストリームにリダイレク

このコールバックは、すべての出力部分を単一のコンテナに保存する必要があるため、EPUBに保存するときには有用ではないことに注意してください。epubファイル。 そのため、ストリームのリダイレクトはサポートされておらず、ファイルはコンテナ内で名前が変更されるため、名前の変更の効果は表示されません。

## 分割された文書を別の文書 {#merge-the-split-document-with-another-file}とマージする

Aspose.Wordsを使用すると、出力分割文書を別の文書とマージして新しい文書を作成できます。 これはドキュメントマージと呼ぶことができます。

次のコード例は、分割された文書を別の文書とマージする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
