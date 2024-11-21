---
title: ドキュメントのインサートと添付 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 文書のインサートと添付
linktitle: 文書のインサートと添付
description: "ドキュメントを 1 つにまとめる: フィールド、ブックマークをマージしたり、ドキュメントの最後に単に置換したり、新しいものや既存のものにドキュメントを追加したり、 Javaお問い合わせ"
type: docs
weight: 80
url: /ja/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

複数の文書を1つにまとめる必要があります。 手動でこれを行うことができます。 Aspose.Words インサートまたは追加機能。

インサート操作により、以前に作成した文書の内容を新規または既存のものに差し込むことができます。

順番に、追加機能を使用すると、別のドキュメントの最後にのみドキュメントを追加できます。

この記事では、文書を別の方法で別のものに差し込むか、追加するか、または文書を承認するときに適用することができる一般的なプロパティについて説明します。

## ドキュメントの入力

上記のように、 Aspose.Words ドキュメントはノードのツリーとして表され、一つのドキュメントを別のドキュメントに差し込む操作は、最初のドキュメントツリーから2番目のドキュメントへノードをコピーします。

さまざまな場所で文書を差し込むことができます。 たとえば、置換操作、マージ操作中のマージフィールド、またはブックマークを介してドキュメントを入力できます。

また、 [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) または [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) ドキュメントの読み込みに似ているメソッド Microsoft Word, 以前のインポートなしで現在のカーソル位置で文書全体をインサートします。

次のコードの例では、ドキュメントをドキュメントを使ってインサートする方法を示します。 **InsertDocument** メソッド:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

次のコードの例では、ドキュメントをドキュメントを使ってインサートする方法を示します。 **InsertDocumentInline** メソッド:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

次のサブセクションでは、ドキュメントを別のドキュメントに差し込むことができます。

### 業務の検索と置換中にドキュメントをインサートする {#insert-a-document-during-find-and-replace-operation}

業務を探し出し、交換しながら文書を差し込むことができます。 たとえば、文書はテキスト[INTRODUCTION]と[CONCLUSION]で段落を含むことができます。 しかし、最終的な文書では、これらの段落を別の外部文書から得られるコンテンツに置き換える必要があります。 そのためには、置換イベントのハンドラを作成する必要があります。

次のコードの例では、置換イベントのハンドラを作成して、インサートプロセスで後で使用する方法を示します。

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

次のコードの例では、あるドキュメントの内容を別のドキュメントに表示し、操作を置き換えます。

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### ドキュメントの入力 Mail Merge オペレーション {#insert-a-document-during-mail-merge-operation}

ドキュメントをマージフィールドに差し込むことができます。 mail merge 操作。 例えば、 mail merge [Summary] のような merge フィールドを含むことができます。 しかし、最終文書では、別の外部文書から得られるコンテンツをこのマージフィールドに差し込む必要があります。 そのためには、マージイベントのハンドラを作成する必要があります。

次のコードの例では、インサートプロセスで後で使用するために、マージイベントのハンドラを作成する方法を示します。

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

次のコードの例では、作成したハンドラを使用してマージフィールドにドキュメントをインサートする方法を示します。

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### ブックマークでドキュメントを発行する

テキストファイルをドキュメントにインポートし、ドキュメントで定義したブックマークの直後に入力できます。 これを行うには、文書を挿したいブックマークされた段落を作成します。

次のコード例では、別のドキュメントのブックマークに 1 つのドキュメントの内容を渡す方法を示します。

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

ブックマークは、最終結果の文書に表示したい複数の段落やテキストを閉じてはいけません。

{{% /alert %}}

## 書類を提出する

ドキュメントから既存のドキュメントの最後に追加のページを含める必要があるユースケースがあります。 これを行うには、単に電話する必要があります [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) 別のものの最後にドキュメントを追加する方法。

{{% alert color="primary" %}}

注意: [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) ドキュメント内のノードレベルのメソッドです。 たとえば、段落を作成したり、プロパティを書式設定したり、子供を身体に与えたりすることができます。 **AppendChild** メソッド。

{{% /alert %}}

次のコードの例では、ドキュメントを別のドキュメントの末尾に追加する方法を示します。

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## インポートとインサートノーズ手動で {#import-and-insert-nodes-manually}

Aspose.Words 以前のインポート要件なしで自動的に文書を差し込み、追加することができます。 しかし、セクションや段落など、ドキュメントの特定のノードをインサートまたは追加する必要がある場合は、最初にこのノードを手動でインポートする必要があります。

1つのセクションまたは段落を別のセクションに差し込むか、または追加する必要がある場合は、基本的に最初のドキュメントノードツリーのノードを2番目のセクションにインポートする必要があります。 [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) メソッド。 ノードをインポートした後、ノードを使用する必要があります。 [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) リファレンスノードの後に/before ノードを新規ノードに差し込む方法。 これにより、ノードをドキュメントからインポートし、指定した位置でインサートすることで、インサートプロセスをカスタマイズできます。

また、 [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) セクションレベルではなく段落レベルでコンテンツを追加したい場合など、子ノードのリストの最後に、指定したノードを新規に追加する方法。

次のコードの例では、ノードを手動でインポートし、特定のノードを特定のノードを使用してインサートする方法を示します。 **InsertAfter** メソッド:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

インポートは、元のノードのコピーであり、宛先文書へのインサートに適した新しいノードを作成します。

{{% /alert %}}

コンテンツはセクションによって宛先文書セクションにインポートされます。つまり、ページの設定やヘッダーやフッターなどの設定は、インポート中に保存されます。 2つの文書が一緒に結合する方法を指定するために文書をインサートまたは追加するときにフォーマット設定を定義することもできます。

## インサートおよび添付文書の一般的なプロパティ {#common-properties-for-insert-and-append-documents}

両方とも [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) そして、 [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) 方法 受け入れて下さい [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) そして、 [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) 入力パラメータとして。 ザ・オブ・ザ・ **ImportFormatMode** さまざまなフォーマットモードを選択することで、複数のドキュメントから別のドキュメントにコンテンツをインポートするときに、ドキュメントのフォーマットが統合される方法を制御することができます。 [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), そして、 [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES)お問い合わせ ザ・オブ・ザ・ **ImportFormatOptions** 次のような異なるインポートオプションを選択することができます [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), そして、 [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior)お問い合わせ

Aspose.Words 2つの文書がインサートで一緒に追加されるか、操作を追加したときに結果の文書の視覚化を調整することができます [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) そして、 [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) プロパティ。 ザ・オブ・ザ・ **PageSetup** プロパティには、次のようなセクションのすべての属性が含まれています。 [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), その他。 最も一般的なユースケースは、 **SectionStart** 追加したコンテンツが同じページに表示されるか、新しいコンテンツに分割するかを定義するプロパティ。

{{% alert color="primary" %}}

注意: **Section** そして、 **PageSetup** プロパティは2つの文書を一緒に入/追加する方法を制御しません。 結果文書の外観を変更するだけを許可します。

{{% /alert %}}

次のコードの例では、コンテンツを2つのページ間で分割しないように、別のドキュメントを1つのドキュメントに追加する方法を示します。

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
