---
title: C++で文書を分割する
second_title: C++の場合Aspose.Words
articleTitle: 文書を分割する
linktitle: 文書を分割する
description: "C++を使用してドキュメントを複数のファイルに分割します。 分割機能を使用すると、見出しやセクション、ページまたはページ範囲ごとに文書を効果的に分割できます。"
type: docs
weight: 90
url: /ja/cpp/split-a-document/
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

## 異なる条件{#split-a-document-using-different-criteria}を使用して文書を分割する

Aspose.Wordsを使用すると、さまざまな基準に従ってEPUBまたはHTML文書を章に分割できます。 このプロセスでは、ソース文書のスタイルとレイアウトが出力文書のために保持されます。

[DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/)列挙体を使用して条件を指定できます。 したがって、次のいずれかの基準を使用してドキュメントを章に分割したり、複数の基準を組み合わせたりすることができます:

- 見出し段落,
- セクションブレーク,
- コラムブレーク,
- 改ページ。

出力をHTMLに保存するときは、Aspose.Words個々の章を個別のHTMLファイルとして保存します。 その結果、文書は複数のHTMLファイルに分割されます。 出力をEPUBに保存する場合、Aspose.Wordsは、使用した`DocumentSplitCriteria`値に関係なく、結果を単一のEPUBファイルに保存します。 したがって、EPUBドキュメントにDocumentSplitCriteriaを使用すると、リーダーアプリケーションでのコンテンツの外観にのみ影響します。コンテンツはチャプターに分割され、ドキュメントは連続して表示されなくなります。

{{% alert color="primary" %}}

MHTML形式で保存する場合、[DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/)プロパティを使用してドキュメントを分割することはできません。

{{% /alert %}}

このセクションでは、可能な分割基準の一部のみを検討します。

### セクション{#split-a-document-by-sections}で文書を分割する

Aspose.Wordsでは、セクション区切りを使用して文書を分割し、HTMLに保存することもできます。 この目的のために、**SectionBreak**を**DocumentSplitCriteria**として使用します:

次のコード例は、(`DocumentSplitCriteria`プロパティを使用せずに)セクション区切りによってドキュメントを小さな部分に分割する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## ページで分割{#splitting-by-pages}

また、ドキュメントページをページごと、ページ範囲ごと、または指定したページ番号で開始することもできます。 このような場合、[ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/)メソッドはジョブを実行できます。

このセクションでは、[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)クラスと**ExtractPages**メソッドを使用して、ドキュメントをページ単位で分割するいくつかのユースケースについて説明します。

{{% alert color="primary" %}}

あなたは任意のものを使うことができます [Aspose.Wordsでサポートされている出力形式](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

ページ数を減らしている間に多くのニュアンスが現れるため、Microsoft Wordレイアウトとの完全な一致は非常に複雑な作業です。 そのため、ドキュメントの複雑さによっては、元のドキュメントと結果のドキュメントのレイアウトにわずかな違いがある場合があります。

{{% /alert %}}

### 文書ページをページ{#split-a-document-page-by-page}で分割する

Aspose.Words複数ページのドキュメントをページごとに分割できます。

次のコード例は、ドキュメントを分割し、各ページを個別のドキュメントとして保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### ページ範囲{#split-a-document-by-page-ranges}で文書を分割する

Aspose.Words複数ページのドキュメントをページ範囲で分割できます。 1つのファイルをさまざまなページ範囲で複数のファイルに分割することも、1つの範囲を選択してソースドキュメントのこの部分のみを保存することもできます。 ドキュメントの最大ページ番号と最小ページ番号に応じて、ページ範囲を選択できることに注意してください。

次のコード例は、特定の開始インデックスと終了インデックスを使用して、ページ範囲ごとに文書を小さな部分に分割する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## 分割された文書を別の文書{#merge-the-split-document-with-another-file}とマージする

Aspose.Wordsを使用すると、出力分割文書を別の文書とマージして新しい文書を作成できます。 これはドキュメントマージと呼ぶことができます。

次のコード例は、分割された文書を別の文書とマージする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
