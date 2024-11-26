---
title: ドキュメントの挿入と追加
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントの挿入と追加
linktitle: ドキュメントの挿入と追加
description: "ドキュメントを 1 つに結合します。検索と置換、差し込みフィールド、ブックマークを使用して、または単に Python のドキュメントの末尾にドキュメントを挿入または追加します。"
type: docs
weight: 80
url: /ja/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

場合によっては、複数の文書を 1 つに結合することが必要になることがあります。これは手動で行うことも、Aspose.Words の挿入または追加機能を使用することもできます。

挿入操作を使用すると、以前に作成したドキュメントのコンテンツを新規または既存のドキュメントに挿入できます。

さらに、追加機能を使用すると、別のドキュメントの末尾にのみドキュメントを追加できます。

この記事では、さまざまな方法でドキュメントを別のドキュメントに挿入または追加する方法について説明し、ドキュメントの挿入または追加中に適用できる共通のプロパティについて説明します。

## ドキュメントを挿入する

前述したように、Aspose.Words ではドキュメントはノードのツリーとして表現され、あるドキュメントを別のドキュメントに挿入する操作は、最初のドキュメント ツリーから 2 番目のドキュメント ツリーにノードをコピーすることです。

ドキュメントをさまざまな場所にさまざまな方法で挿入できます。たとえば、置換操作、差し込み操作中の差し込みフィールド、またはブックマークを通じてドキュメントを挿入できます。

Microsoft Word にドキュメントを挿入するのと似た [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) または [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) メソッドを使用して、事前にインポートを行わずにドキュメント全体を現在のカーソル位置に挿入することもできます。

次のコード例は、**文書の挿入** メソッドを使用してドキュメントを挿入する方法を示しています。

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

次のコード例は、**挿入_ドキュメント_インライン** メソッドを使用してドキュメントを挿入する方法を示しています。

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

次のサブセクションでは、あるドキュメントを別のドキュメントに挿入できるオプションについて説明します。

### ブックマークにドキュメントを挿入

テキスト ファイルをドキュメントにインポートし、ドキュメント内で定義したブックマークの直後に挿入できます。これを行うには、ドキュメントを挿入する場所にブックマーク付きの段落を作成します。

次のコーディング例は、あるドキュメントのコンテンツを別のドキュメントのブックマークに挿入する方法を示しています。

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

ブックマークは、最終的に作成されるドキュメントに表示する複数の段落やテキストを囲まないように注意してください。

{{% /alert %}}

## ドキュメントを追加する

ドキュメントから既存のドキュメントの最後まで追加のページを含める必要があるユースケースがあるかもしれません。これを行うには、[append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) メソッドを呼び出してドキュメントを別のドキュメントの末尾に追加するだけです。

{{% alert color="primary" %}}

[append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) はドキュメント内のノード レベルのメソッドであることに注意してください。たとえば、段落を作成し、書式設定プロパティを設定し、[append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) メソッドを使用してそれを子として本文に追加できます。

{{% /alert %}}

次のコード例は、ドキュメントを別のドキュメントの末尾に追加する方法を示しています。

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## ノードを手動でインポートおよび挿入する

Aspose.Words を使用すると、事前のインポート要件がなくても、ドキュメントを自動的に挿入および追加できます。ただし、ドキュメントの特定のノード (セクションや段落など) を挿入または追加する必要がある場合は、最初にこのノードを手動でインポートする必要があります。

あるセクションまたは段落を別のセクションまたは段落に挿入または追加する必要がある場合は、基本的に、[import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) メソッドを使用して、最初のドキュメント ノード ツリーのノードを 2 番目のドキュメント ノード ツリーにインポートする必要があります。ノードをインポートした後、[insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) メソッドを使用して、参照ノードの前後に新しいノードを挿入する必要があります。これにより、ドキュメントからノードをインポートし、指定された位置に挿入することで、挿入プロセスをカスタマイズできます。

たとえば、セクション レベルではなく段落レベルでコンテンツを追加する場合など、[append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) メソッドを使用して、新しい指定したノードを子ノードのリストの末尾に追加することもできます。

次のコード例は、[insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) メソッドを使用してノードを手動でインポートし、特定のノードの後に挿入する方法を示しています。

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

インポートにより、元のノードのコピーであり、宛先ドキュメントへの挿入に適した新しいノードが作成されます。

{{% /alert %}}

コンテンツはセクションごとに宛先ドキュメントにインポートされます。つまり、ページ設定やヘッダーまたはフッターなどの設定はインポート中に保持されます。また、ドキュメントを挿入または追加するときに書式設定を定義して、2 つのドキュメントを結合する方法を指定できることにも注意してください。

## 挿入ドキュメントと追加ドキュメントの共通プロパティ

[insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) メソッドと [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) メソッドはどちらも、入力パラメータとして [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) と [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) を受け入れます。 [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) を使用すると、[USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles)、[KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting)、[KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles) などのさまざまな形式モードを選択することで、あるドキュメントから別のドキュメントにコンテンツをインポートするときに、ドキュメントの書式設定をどのようにマージするかを制御できます。 [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) では、[ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/)、[ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/)、[keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/)、[merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/)、[smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/) などのさまざまなインポート オプションを選択できます。

Aspose.Words を使用すると、[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) と [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) を使用して挿入または追加操作で 2 つのドキュメントを一緒に追加するときに、結果として得られるドキュメントの視覚化を調整できます。 [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) プロパティには、[section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/)、[restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/)、[page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/)、[orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) などのセクションのすべての属性が含まれます。最も一般的な使用例は、追加されたコンテンツが同じページに表示されるか、新しいページに分割されるかを定義するために [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) プロパティを設定することです。

{{% alert color="primary" %}}

[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) と [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) は、2 つのドキュメントを一緒に挿入/追加する方法を制御しないことに注意してください。結果ドキュメントの外観のみを変更できます。

{{% /alert %}}

次のコード例は、コンテンツが 2 ページに分割されないようにしながら、あるドキュメントを別のドキュメントに追加する方法を示しています。

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
