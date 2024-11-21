---
title: C# でのドキュメントの挿入と追加
second_title: .NET用Aspose.Words
articleTitle: ドキュメントの挿入と追加
linktitle: ドキュメントの挿入と追加
description: "ドキュメントを 1 つに結合します。検索と置換、差し込みフィールド、ブックマークを使用して、または単に C# のドキュメントの末尾にドキュメントを挿入または追加します。"
type: docs
weight: 80
url: /ja/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

場合によっては、複数の文書を 1 つに結合することが必要になることがあります。これは手動で行うことも、Aspose.Words の挿入または追加機能を使用することもできます。

挿入操作を使用すると、以前に作成したドキュメントのコンテンツを新規または既存のドキュメントに挿入できます。

さらに、追加機能を使用すると、別のドキュメントの末尾にのみドキュメントを追加できます。

この記事では、さまざまな方法でドキュメントを別のドキュメントに挿入または追加する方法について説明し、ドキュメントの挿入または追加中に適用できる共通のプロパティについて説明します。

## ドキュメントの挿入 {#insert-a-document}

前述したように、Aspose.Words ではドキュメントはノードのツリーとして表現され、あるドキュメントを別のドキュメントに挿入する操作は、最初のドキュメント ツリーから 2 番目のドキュメント ツリーにノードをコピーすることです。

ドキュメントをさまざまな場所にさまざまな方法で挿入できます。たとえば、置換操作、差し込み操作中の差し込みフィールド、またはブックマークを通じてドキュメントを挿入できます。

Microsoft Word にドキュメントを挿入するのと似た [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) または [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) メソッドを使用して、事前にインポートを行わずにドキュメント全体を現在のカーソル位置に挿入することもできます。

次のコード例は、**InsertDocument** メソッドを使用してドキュメントを挿入する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

次のコード例は、**InsertDocumentInline** メソッドを使用してドキュメントを挿入する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

次のサブセクションでは、あるドキュメントを別のドキュメントに挿入できるオプションについて説明します。

### 検索と置換操作中にドキュメントを挿入する {#insert-a-document-during-find-and-replace-operation}

検索および置換操作を実行中にドキュメントを挿入できます。たとえば、文書には [はじめに] と [結論] というテキストを含む段落を含めることができます。ただし、最終的な文書では、これらの段落を別の外部文書から取得したコンテンツに置き換える必要があります。これを実現するには、replace イベントのハンドラーを作成する必要があります。

次のコード例は、後の挿入プロセスで使用する置換イベントのハンドラーを作成する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

次のコード例は、検索と置換操作中に、あるドキュメントのコンテンツを別のドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Mail Merge 操作中にドキュメントを挿入する {#insert-a-document-during-mail-merge-operation}

mail merge 操作中に文書を差し込みフィールドに挿入できます。たとえば、mail merge テンプレートには、[概要] などの差し込みフィールドを含めることができます。ただし、最終的な文書では、別の外部文書から取得したコンテンツをこの差し込みフィールドに挿入する必要があります。これを実現するには、マージ イベントのハンドラーを作成する必要があります。

次のコード例は、マージ イベントのハンドラーを作成して、後の挿入プロセスで使用する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

次のコード例は、作成されたハンドラーを使用して差し込みフィールドにドキュメントを挿入する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### ブックマーク {#insert-a-document-at-bookmark} にドキュメントを挿入する

テキスト ファイルをドキュメントにインポートし、ドキュメント内で定義したブックマークの直後に挿入できます。これを行うには、ドキュメントを挿入する場所にブックマーク付きの段落を作成します。

次のコーディング例は、あるドキュメントのコンテンツを別のドキュメントのブックマークに挿入する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

ブックマークは、最終的に作成されるドキュメントに表示する複数の段落やテキストを囲まないように注意してください。

{{% /alert %}}

## ドキュメントの追加 {#append-a-document}

ドキュメントから既存のドキュメントの最後まで追加のページを含める必要があるユースケースがあるかもしれません。これを行うには、[AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) メソッドを呼び出してドキュメントを別のドキュメントの末尾に追加するだけです。

{{% alert color="primary" %}}

[AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) はドキュメント内のノード レベルのメソッドであることに注意してください。たとえば、段落を作成し、書式設定プロパティを設定し、**AppendChild** メソッドを使用してそれを子として本文に追加できます。

{{% /alert %}}

次のコード例は、ドキュメントを別のドキュメントの末尾に追加する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## ノードを手動でインポートおよび挿入する {#import-and-insert-nodes-manually}

Aspose.Words を使用すると、事前のインポート要件がなくても、ドキュメントを自動的に挿入および追加できます。ただし、ドキュメントの特定のノード (セクションや段落など) を挿入または追加する必要がある場合は、最初にこのノードを手動でインポートする必要があります。

あるセクションまたは段落を別のセクションまたは段落に挿入または追加する必要がある場合は、基本的に、[ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) メソッドを使用して、最初のドキュメント ノード ツリーのノードを 2 番目のドキュメント ノード ツリーにインポートする必要があります。ノードをインポートした後、[InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) メソッドを使用して、参照ノードの前後に新しいノードを挿入する必要があります。これにより、ドキュメントからノードをインポートし、指定された位置に挿入することで、挿入プロセスをカスタマイズできます。

たとえば、セクション レベルではなく段落レベルでコンテンツを追加する場合など、[AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) メソッドを使用して、新しい指定したノードを子ノードのリストの末尾に追加することもできます。

次のコード例は、**InsertAfter** メソッドを使用してノードを手動でインポートし、特定のノードの後に挿入する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

インポートにより、元のノードのコピーであり、宛先ドキュメントへの挿入に適した新しいノードが作成されます。

{{% /alert %}}

コンテンツはセクションごとに宛先ドキュメントにインポートされます。つまり、ページ設定やヘッダーまたはフッターなどの設定はインポート中に保持されます。また、ドキュメントを挿入または追加するときに書式設定を定義して、2 つのドキュメントを結合する方法を指定できることにも注意してください。

## ドキュメントの挿入および追加の共通プロパティ {#common-properties-for-insert-and-append-documents}

[InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) メソッドと [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) メソッドはどちらも、入力パラメータとして [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) と [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) を受け入れます。 **ImportFormatMode** を使用すると、[UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/)、[KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/)、[KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/) などのさまざまな形式モードを選択することで、あるドキュメントから別のドキュメントにコンテンツをインポートするときにドキュメントの書式設定をどのようにマージするかを制御できます。 **ImportFormatOptions** では、[IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/)、[IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/)、[KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/)、[MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/)、[SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/) などのさまざまなインポート オプションを選択できます。

Aspose.Words を使用すると、[Section](https://reference.aspose.com/words/net/aspose.words/section/) プロパティと [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) プロパティを使用して、挿入または追加操作で 2 つのドキュメントを一緒に追加するときに、結果として得られるドキュメントの視覚化を調整できます。 **PageSetup** プロパティには、[SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/)、[RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/)、[PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/)、[Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) などのセクションのすべての属性が含まれます。最も一般的な使用例は、**SectionStart** プロパティを設定して、追加されたコンテンツを同じページに表示するか、新しいページに分割して表示するかを定義することです。

{{% alert color="primary" %}}

**Section** プロパティと **PageSetup** プロパティは、2 つのドキュメントを一緒に挿入/追加する方法を制御しないことに注意してください。結果ドキュメントの外観のみを変更できます。

{{% /alert %}}

次のコード例は、コンテンツが 2 ページに分割されないようにしながら、あるドキュメントを別のドキュメントに追加する方法を示しています。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
