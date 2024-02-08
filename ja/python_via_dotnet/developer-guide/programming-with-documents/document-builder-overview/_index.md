---
title: Python のドキュメント ビルダーの概要
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントビルダーの概要
linktitle: ドキュメントビルダーの概要
type: docs
description: "DocumentBuilder を使用すると、動的なドキュメントを最初から作成したり、Python を使用して既存のドキュメントに新しい要素を追加したりできます。 DocumentBuilder は、テキスト、チェックボックス、表、画像、およびその他のコンテンツ要素を Python に挿入するメソッドを提供します。"
weight: 30
url: /ja/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) は [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) に関連付けられた強力なクラスで、動的ドキュメントを最初から作成したり、既存のドキュメントに新しい要素を追加したりできます。

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) は、テキスト、チェックボックス、OLE オブジェクト、段落、リスト、表、画像、およびその他のコンテンツ要素を挿入するメソッドを提供します。これにより、フォント、段落またはセクションの書式設定を指定したり、その他の操作を実行したりできます。

## ドキュメントビルダーまたはAspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) は、Aspose.Words Document Object Model (DOM) で使用可能なクラスとメソッドを補完し、最も一般的なドキュメント構築タスクを簡素化します。つまり、ツリー構造をよく理解する必要がある Aspose.Words DOM と DocumentBuilder の両方を使用して、ドキュメントのコンテンツを作成および変更できます。 `DocumentBuilder` は複雑な **Document** 構造の「ファサード」であり、コンテンツと書式設定を迅速かつ簡単に挿入できるようになります。

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) で可能な操作は、Aspose.Words DOM のクラスを直接使用する場合にも可能です。ただし、Aspose.Words DOM クラスを直接使用すると、通常、[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) を使用する場合よりも多くのコード行が必要になります。

## ドキュメントナビゲーション

ドキュメント ナビゲーションは仮想カーソルの概念に基づいており、[move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) や [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) などのさまざまな **DocumentBuilder.move_to_XXX** メソッドを使用してドキュメント内の別の場所に移動できます。この仮想カーソルは、[write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/)、[writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/)、[insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) などのメソッドを呼び出すときにテキストが挿入される場所を示します。仮想カーソルの詳細については、次の記事「カーソルを使用したナビゲーション」を参照してください。

次のコード例は、ブックマークに移動する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## ドキュメントの構築と変更

Aspose.Words API は、ドキュメントのさまざまな要素のフォーマットを担当するいくつかのクラスを提供します。各クラスは、テキスト、段落、セクションなどの特定のドキュメント要素に関連する書式設定プロパティをカプセル化します。たとえば、[Font](https://reference.aspose.com/words/python-net/aspose.words/font/) クラスは文字書式設定プロパティを表し、[ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) クラスは段落書式設定プロパティを表します。これらのクラスのオブジェクトは、クラスと同じ名前を持つ、対応する [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) プロパティによって返されます。したがって、ドキュメントの作成中にこれらにアクセスして、希望の書式設定を設定できます。

また、`Write` メソッドや、[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/)、[insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/)、類似のメソッドなどの **DocumentBuilder.insert_XXX** メソッドを使用して、テキスト、チェックボックス、OLE オブジェクト、画像、ブックマーク、フォーム フィールド、その他のドキュメント要素をカーソル位置に挿入することもできます。

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) を使用して簡単なドキュメントを作成する方法を見てみましょう。

### DocumentBuilder を使用してドキュメントを作成する

まず、[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) を作成し、それを [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) オブジェクトに関連付ける必要があります。コンストラクターを呼び出して [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) の新しいインスタンスを作成し、それをビルダーに接続するための [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) オブジェクトに渡します。

テキストを挿入するには、ドキュメントに挿入する必要があるテキストの文字列を [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) メソッドに渡します。

次のコード例は、ドキュメント ビルダーを使用して単純なドキュメントを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### ドキュメントの書式設定を指定する

[font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) プロパティはテキストの書式設定を定義します。このオブジェクトには、さまざまなフォント属性 (フォント名、フォント サイズ、色など) が含まれています。いくつかの重要なフォント属性は [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) プロパティでも表され、直接アクセスできるようになります。これらは、[Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/)、[Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/)、および [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) のブール型プロパティです。

次のコード例は、[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) を使用して書式設定されたテキストを挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) は、文書内の現在位置以降に挿入されるすべてのテキストに適用される文字書式を指定します。
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) は、挿入される現在の段落およびすべての段落の段落書式設定を指定します。
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) は、現在のセクションと挿入されるセクション全体のページとセクションのプロパティを指定します。
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) と [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) は、ドキュメント内の現在位置以降の表のセルと行に適用される書式設定プロパティを指定します。

この場合、「現在」とは、カーソルが置かれている位置、段落、セクション、セル、または行を意味します。

{{% /alert %}}

{{% alert color="primary" %}}

[font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/)、[paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/)、および [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) プロパティは、ドキュメント内の別の場所に移動するたびに更新され、その場所の書式設定プロパティが反映されることに注意してください。

{{% /alert %}}
