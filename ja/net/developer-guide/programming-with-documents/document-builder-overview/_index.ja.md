---
title: C# のドキュメント ビルダーの概要
second_title: .NET用Aspose.Words
articleTitle: ドキュメントビルダーの概要
linktitle: ドキュメントビルダーの概要
type: docs
description: "DocumentBuilder を使用すると、動的なドキュメントを最初から作成したり、C# を使用して既存のドキュメントに新しい要素を追加したりできます。 DocumentBuilder は、テキスト、チェックボックス、表、画像、およびその他のコンテンツ要素を .NET に挿入するメソッドを提供します。"
weight: 30
url: /ja/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) は [Document](https://reference.aspose.com/words/net/aspose.words/document/) に関連付けられた強力なクラスで、動的ドキュメントを最初から作成したり、既存のドキュメントに新しい要素を追加したりできるようにします。

**DocumentBuilder** は、テキスト、チェックボックス、OLE オブジェクト、段落、リスト、表、画像、およびその他のコンテンツ要素を挿入するメソッドを提供します。これにより、フォント、段落またはセクションの書式設定を指定したり、その他の操作を実行したりできます。

## ドキュメントビルダーまたはAspose.Words DOM

**DocumentBuilder** は、Aspose.Words Document Object Model (DOM) で使用可能なクラスとメソッドを補完し、最も一般的なドキュメント構築タスクを簡素化します。つまり、ツリー構造をよく理解する必要がある Aspose.Words DOM と DocumentBuilder の両方を使用して、ドキュメントのコンテンツを作成および変更できます。 `DocumentBuilder` は複雑な **Document** 構造の「ファサード」であり、コンテンツと書式設定を迅速かつ簡単に挿入できるようになります。

**DocumentBuilder** で可能な操作は、Aspose.Words DOM のクラスを直接使用する場合にも可能です。ただし、Aspose.Words DOM クラスを直接使用すると、通常、**DocumentBuilder** を使用する場合よりも多くのコード行が必要になります。

## ドキュメントナビゲーション

ドキュメント ナビゲーションは仮想カーソルの概念に基づいており、[MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) や [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) などのさまざまな **DocumentBuilder.MoveToXXX** メソッドを使用してドキュメント内の別の場所に移動できます。この仮想カーソルは、[Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/)、[Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index)、[InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) などのメソッドを呼び出すときにテキストが挿入される場所を示します。仮想カーソルの詳細については、次の記事「カーソルを使用したナビゲーション」を参照してください。

次のコード例は、ブックマークに移動する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## ドキュメントの構築と変更

Aspose.Words API は、ドキュメントのさまざまな要素のフォーマットを担当するいくつかのクラスを提供します。各クラスは、テキスト、段落、セクションなどの特定の文書要素に関連する書式設定プロパティをカプセル化します。たとえば、[Font](https://reference.aspose.com/words/net/aspose.words/font/) クラスは文字書式設定プロパティを表し、[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) クラスは段落書式設定プロパティを表します。これらのクラスのオブジェクトは、クラスと同じ名前を持つ、対応する **DocumentBuilder** プロパティによって返されます。したがって、ドキュメントの作成中にこれらにアクセスして必要な書式を設定できます。

また、`Write` メソッドや、[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/)、[InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/)、類似のメソッドなどの **DocumentBuilder.InsertXXX** メソッドを使用して、テキスト、チェックボックス、OLE オブジェクト、画像、ブックマーク、フォーム フィールド、その他のドキュメント要素をカーソル位置に挿入することもできます。

**DocumentBuilder** を使用して簡単なドキュメントを作成する方法を見てみましょう。

### DocumentBuilder を使用してドキュメントを作成する

まず、**DocumentBuilder** を作成し、それを **Document** オブジェクトに関連付ける必要があります。コンストラクターを呼び出して **DocumentBuilder** の新しいインスタンスを作成し、それをビルダーに接続するための **Document** オブジェクトに渡します。

テキストを挿入するには、ドキュメントに挿入する必要があるテキストの文字列を **Write** メソッドに渡します。

次のコード例は、ドキュメント ビルダーを使用して単純なドキュメントを作成する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### ドキュメントの書式設定を指定する

[Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) プロパティはテキストの書式設定を定義します。このオブジェクトには、さまざまなフォント属性 (フォント名、フォント サイズ、色など) が含まれています。いくつかの重要なフォント属性は **DocumentBuilder** プロパティでも表され、直接アクセスできるようになります。これらは、[Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/)、[Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/)、および [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/) のブール型プロパティです。

次のコード例は、**DocumentBuilder** を使用して書式設定されたテキストを挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) は、文書内の現在位置以降に挿入されるすべてのテキストに適用される文字書式を指定します。
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) は、挿入される現在の段落およびすべての段落の段落書式設定を指定します。
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) は、現在のセクションと挿入されるセクション全体のページとセクションのプロパティを指定します。
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) と [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) は、ドキュメント内の現在位置以降の表のセルと行に適用される書式設定プロパティを指定します。

この場合、「現在」とは、カーソルが置かれている位置、段落、セクション、セル、または行を意味します。

{{% /alert %}}

{{% alert color="primary" %}}

**Font**、**ParagraphFormat**、および **PageSetup** プロパティは、ドキュメント内の別の場所に移動するたびに更新され、その場所の書式設定プロパティが反映されることに注意してください。

{{% /alert %}}
