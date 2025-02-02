﻿---
title: Javaに文書を挿入および追加する
second_title: Aspose.WordsのためのJava
articleTitle: 文書の挿入と追加
linktitle: 文書の挿入と追加
description: "ドキュメントを1つに結合する:検索と置換、差し込み項目、ブックマークを使用して、または単にJavaのドキュメントの末尾に、新規または既存のドキュメントにドキュメントを挿入または追加します。"
type: docs
weight: 80
url: /ja/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

複数のドキュメントを1つに結合する必要がある場合があります。 これは手動で行うことも、Aspose.Words挿入または追加機能を使用することもできます。

挿入操作を使用すると、以前に作成されたドキュメントの内容を新規または既存のドキュメントに挿入できます。

次に、追加機能を使用すると、別の文書の最後にのみ文書を追加できます。

この記事では、さまざまな方法でドキュメントを別のドキュメントに挿入または追加する方法と、ドキュメントの挿入または追加時に適用できる共通のプロパティについて説明します。

## 文書を挿入する

上述したように、Aspose.Wordsでは、文書はノードのツリーとして表され、ある文書を別の文書に挿入する操作は、第一の文書ツリーから第二の文書ツリーにノードをコピーす

ドキュメントは、さまざまな場所にさまざまな方法で挿入できます。 たとえば、置換操作、マージ操作中の差し込み項目、またはブックマークを使用してドキュメントを挿入できます。

また、[InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int)または[InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions)メソッドを使用して、Microsoft Wordに文書を挿入するのと同様に、以前のインポートなしで現在のカーソル位置に文書全体を挿入することもできます。

次のコード例は、**InsertDocument**メソッドを使用してドキュメントを挿入する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

次のコード例は、**InsertDocumentInline**メソッドを使用してドキュメントを挿入する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

次のサブセクションでは、あるドキュメントを別のドキュメントに挿入するためのオプションについて説明します。

### 検索および置換操作 {#insert-a-document-during-find-and-replace-operation}中に文書を挿入する

検索および置換操作の実行中にドキュメントを挿入できます。 たとえば、文書には[INTRODUCTION]と[CONCLUSION]というテキストを含む段落を含めることができます。 しかし、最終的な文書では、それらの段落を別の外部文書から取得した内容に置き換える必要があります。 これを実現するには、replaceイベントのハンドラーを作成する必要があります。

次のコード例は、replacingイベントのハンドラーを作成して、挿入プロセスの後半で使用する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

次のコード例は、検索および置換操作中にあるドキュメントのコンテンツを別のドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Mail Merge操作 {#insert-a-document-during-mail-merge-operation}中に文書を挿入する

Mail Merge操作中に差し込み項目に文書を挿入できます。 たとえば、Mail Mergeテンプレートには[Summary]などの差し込み項目を含めることができます。 ただし、最終文書では、別の外部文書から取得したコンテンツをこの差し込み項目に挿入する必要があります。 これを実現するには、mergeイベントのハンドラーを作成する必要があります。

次のコード例は、mergingイベントのハンドラーを作成して、挿入プロセスの後半で使用する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

次のコード例は、createdハンドラーを使用して差し込み項目にドキュメントを挿入する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### ブックマークに文書を挿入する

テキストファイルをドキュメントにインポートして、ドキュメントで定義したブックマークの直後に挿入することができます。 これを行うには、ドキュメントを挿入するブックマークされた段落を作成します。

次のコーディング例は、ある文書の内容を別の文書のブックマークに挿入する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

ブックマークは、最終的な結果の文書に表示する複数の段落またはテキストを囲むべきではないことに注意してください。

{{% /alert %}}

## 文書を追加する

ドキュメントから既存のドキュメントの最後まで追加のページを含める必要があるユースケースがある場合があります。 これを行うには、[AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int)メソッドを呼び出してドキュメントを別のドキュメントの最後に追加するだけです。

{{% alert color="primary" %}}

[AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node)はドキュメント内のノードレベルメソッドであることに注意してください。 たとえば、段落を作成し、書式設定プロパティを設定し、**AppendChild**メソッドを使用してそれを子として本文に追加できます。

{{% /alert %}}

次のコード例は、ドキュメントを別のドキュメントの末尾に追加する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## ノードの手動でのインポートと挿入 {#import-and-insert-nodes-manually}

Aspose.Words以前のインポート要件を使用せずに、ドキュメントを自動的に挿入および追加できます。 ただし、セクションや段落など、文書の特定のノードを挿入または追加する必要がある場合は、まずこのノードを手動でインポートする必要があります。

あるセクションや段落を別のセクションや段落に挿入または追加する必要がある場合は、基本的に[ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean)メソッドを使用して最初のドキュメントノードツリーノードツリーのノードを2番目のノードにインポートする必要があります。 ノードをインポートした後、[InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node)メソッドを使用して、参照ノードの前後に新しいノードを挿入する必要があります。 これにより、ドキュメントからノードをインポートし、指定された位置に挿入することで、挿入プロセスをカスタマイズできます。

また、セクションレベルではなく段落レベルでコンテンツを追加する場合など、[AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node)メソッドを使用して、子ノードのリストの最後に新しい指定されたノードを追加することもできます。

次のコード例は、ノードを手動でインポートし、**InsertAfter**メソッドを使用して特定のノードの後に挿入する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

インポートでは、元のノードのコピーであり、コピー先ドキュメントへの挿入に適した新しいノードが作成されます。

{{% /alert %}}

これは、ページ設定やヘッダーやフッターなどの設定がインポート中に保持されることを意味します。 また、文書を挿入または追加するときに書式設定を定義して、2つの文書を結合する方法を指定できることにも注意してください。

## 挿入文書と追加文書の共通プロパティ {#common-properties-for-insert-and-append-documents}

[InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int)と[AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int)の両方のメソッドは、入力パラメータとして[ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/)と[ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/)を受け入れます。 **ImportFormatMode**を使用すると、[UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES)、[KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING)、[KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES)などの異なる書式モードを選択して、ある文書から別の文書にコンテンツをインポートするときに文書の書式をマージする方法を制 **ImportFormatOptions**を使用すると、次のようなさまざまなインポートオプションを選択できます[IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), と[SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior)。

Aspose.Wordsでは、[Section](https://reference.aspose.com/words/java/com.aspose.words/section/)および[PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/)プロパティを使用して、挿入または追加操作で二つの文書が一緒に追加されたときに、結果の文書の視覚化を調整できます。Aspose.Wordsは、[Section](https://reference.aspose.com/words/java/com.aspose.words/section/)と[PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) **PageSetup**プロパティには、次のようなセクションのすべての属性が含まれています[SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), と他の人。 最も一般的な使用例は、**SectionStart**プロパティを設定して、追加されたコンテンツが同じページに表示されるか、新しいページに分割されるかを定義することです。

{{% alert color="primary" %}}

**Section**と**PageSetup**プロパティは、二つの文書を一緒に挿入/追加する方法を制御しないことに注意してください。 結果ドキュメントの外観のみを変更できます。

{{% /alert %}}

次のコード例は、コンテンツが2つのページに分割されないようにしながら、あるドキュメントを別のドキュメントに追加する方法を示しています:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
