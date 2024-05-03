---
title: ドキュメントを分割する Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントを分割する
linktitle: ドキュメントを分割する
description: "Aspose.Words お問い合わせ Java 見出しやセクション、ページやページ範囲で複数の文書に1つの文書を分割する効率的な方法を提供します。"
type: docs
weight: 90
url: /ja/java/split-a-document/
---

*Splitting* または *split ドキュメント* は、大きなドキュメントをより小さなファイル数に分割するプロセスです。 ファイルの分割には様々な理由があります。 たとえば、特定のドキュメントから特定のページしか必要ありません。 またはプライバシーの理由から、他の人と文書の一部だけを共有したいです。 スプリット機能を使用すると、ドキュメントの必要な部分だけを取得し、マークアップ、保存、または送信するために必要なアクションを行うことができます。

Aspose.Words 見出しやセクションで複数の文書に1つの文書を分割するための効率的な方法を提供します。 ページやページ範囲でドキュメントを分割することもできます。 この記事では、両方の分割オプションについて説明します。

ドキュメントを小さなファイルへ分割する Aspose.Words, これらの手順に従う必要があります。

1。 サポートされている形式で文書をロードします。
1。 ドキュメントを分割します。
1。 出力文書を保存します。

ドキュメントを分割した後、必要なページ、テキストなどから始まるすべての出力文書を開くことができます。

{{% alert color="primary" %}}

**オンラインで試す**

この機能を試してみる [無料のオンライン文書スプリッタ](https://products.aspose.app/words/splitter)お問い合わせ

{{% /alert %}}

## 異なる基準を使用して文書を分割する {#split-a-document-using-different-criteria}

Aspose.Words EPUBやHTML文書を様々な条件に応じて分割することができます。 プロセスでは、ソース文書のスタイルとレイアウトは、出力文書に保存されます。

条件を指定して指定できます。 [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) パンフレット そのため、次の基準のいずれかを使用して、文書を章に分割するか、複数の基準を組み合わせることができます。

- 見出し段落,
-セクション壊れ目、
- コラムの壊れ目,
- ページ分割。

出力をHTMLに保存するとき、 Aspose.Words 個々の章を別のHTMLファイルとして保存します。 その結果、ドキュメントは複数のHTMLファイルに分割されます。 出力をEPUBに保存するとき、 Aspose.Words 結果を単一のEPUBファイルに保存します。 `DocumentSplitCriteria` 使用する値。 そのため、EPUB ドキュメントの DocumentSplitCriteria を使用して、読者アプリケーション内のコンテンツの外観にのみ影響します。コンテンツは章に分割され、ドキュメントは連続表示されません。

{{% alert color="primary" %}}

ドキュメントを分割することはできません。 [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) MHTMLフォーマットに保存する際のプロパティ。

{{% /alert %}}

このセクションでは、可能な分割条件の一部だけを検討しています。

### 見出しで文書を分割 {#split-a-document-by-headings}

見出しで文書をチャプターに分割するには、 **HeadingParagraph** 値の **DocumentSplitCriteria** プロパティ.

見出し1、2、3などの特定のレベルの見出し段落で文書を分割する必要がある場合は、また使用してください [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) 宿泊施設 出力は、指定された見出しレベルでフォーマットされた段落によって分割されます。

次のコードの例では、見出しでドキュメントを小さく分割する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

この基準については、 Aspose.Words 分割時に HTML 形式への保存のみをサポートしています。

EPUBに保存すると、ドキュメントは複数のファイルに分割されず、1つの出力ファイルしかありません。

### セクションで文書を分割する {#split-a-document-by-sections}

Aspose.Words セクションを分割して文書を分割してHTMLに保存することもできます。 この目的のために、使用 **SectionBreak** として、 **DocumentSplitCriteria**:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

ソース文書を複数の出力文書に分割する別の方法があり、サポートされている出力フォーマットを選択できます。 Aspose.Wordsお問い合わせ

次のコードの例では、セクションブレイクでドキュメントを小さく分割する方法を示します(使用せずに) `DocumentSplitCriteria` プロパティ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## ページ分割 {#splitting-by-pages}

ドキュメントページをページ単位で分割したり、指定したページ番号から始まることもできます。 そのような場合 [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) メソッドはジョブを実行できます。

このセクションでは、ページ単位でドキュメントを分割するいくつかのユースケースについて説明します。 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) クラスとクラス **ExtractPages** メソッド。

{{% alert color="primary" %}}

どんな用途でも使えます [サポートされているドキュメントフォーマット](/words/ja/java/supported-document-formats/)お問い合わせ

{{% /alert %}}

{{% alert color="primary" %}}

ページの数を減らしながら、多くのニュアンスが現れているため、 Microsoft Word レイアウトはかなり複雑な作業です。 そのため、文書の複雑性に応じて、元の文書から得られた文書レイアウトに若干の違いがあります。

{{% /alert %}}

### ページごとにドキュメントページを分割 {#split-a-document-page-by-page}

Aspose.Words 複数ページのドキュメントページをページごとに分割できます。

次のコードの例では、ドキュメントを分割し、各ページを別のドキュメントとして保存する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### ページ範囲でドキュメントを分割 {#split-a-document-by-page-ranges}

Aspose.Words ページ範囲で複数ページのドキュメントを分割できます。 さまざまなページ範囲で複数のファイルに1つのファイルを分割したり、1つの範囲を選択してソース文書のこの部分だけを保存することができます。 ドキュメントの最大ページ数と最小ページ数に応じてページ範囲を選択できます。

次のコードの例では、特定のスタートとエンドインデックスを使用して、ページ範囲でドキュメントを小さく分割する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## ドキュメントを保存するためのコールバックオプション {#callback-option-for-saving-a-document}

使うことができます。 [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) プロパティはどのように制御するか Aspose.Words このドキュメントが HTML 形式にエクスポートされると、ドキュメント部分を保存します。 このプロパティを使用すると、出力ファイルの名前を変更したり、カスタムストリームにリダイレクトすることもできます。

全ての出力部分が単一のコンテナに保存される必要があるため、EPUBに保存する際には、このコールバックは役に立ちません。.epubファイル。 そのため、リダイレクトのストリームはサポートされていないため、コンテナ内のファイルの名前を変更しているため、リダイレクトの効果は表示されません。

## 別の文書で分割文書をマージ {#merge-the-split-document-with-another-file}

Aspose.Words 出力された分割された文書を別の文書と結合して新しい文書を形成することができます。 これは、ドキュメントのマージと呼ぶことができます。

次のコードの例では、分割された文書を別の文書と統合する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
