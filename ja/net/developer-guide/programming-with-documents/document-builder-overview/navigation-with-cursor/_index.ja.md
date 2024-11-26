---
title: C# でのカーソルによるナビゲーション
second_title: .NET用Aspose.Words
articleTitle: カーソルによるナビゲーション
linktitle: カーソルによるナビゲーション
description: "C# を使用して、段落、ブックマーク、特定の文字など、ドキュメント内の異なるノード間を移動します。"
type: docs
weight: 10
url: /ja/net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを操作するときは、ドキュメントが短くても長くても、ドキュメント内を移動する必要があります。仮想カーソルを使用したナビゲーションは、ドキュメント内の異なるノード間を移動する機能を表します。

短いドキュメント内では、キーボードの矢印キーを使用するか、マウスをクリックして挿入ポイントを任意の場所に配置することによっても挿入ポイントを移動できるため、ドキュメント内での移動は簡単です。しかし、多くのページがある大きな文書を作成した場合、これらの基本的なテクニックでは不十分になります。

この記事では、文書内を移動し、仮想カーソルを使用して文書の別の部分に移動する方法について説明します。

## 現在のカーソル位置の検出

ドキュメント内を移動するプロセスを開始する前に、現在選択されているノードを取得する必要があります。 [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) プロパティを使用すると、選択したノードのカーソルの正確な位置を取得できます。さらに、現在のノードを取得する代わりに、[CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) プロパティと [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/) プロパティを使用して、現在選択されている段落または現在選択されているセクションを取得できます。

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) を使用して実行する挿入操作はすべて、[CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) の前に挿入されます。現在の段落が空であるか、カーソルが段落の終わりの直前に位置している場合、**CurrentNode** は null を返します。

## ドキュメント内のメソッドの移動

テキストを編集するときは、文書内を移動する方法と文書内のどこに正確に移動するかを知っておくことが重要です。 Aspose.Words を使用すると、文書内を移動して、そのさまざまなセクションや部分に移動できます。これは、スクロールせずに Word 文書内のページまたは見出しに移動する Microsoft Word のナビゲーション ウィンドウの機能に似ています。

主な方法は、カーソル位置をドキュメント内の特定のノードに移動できるようにすることです。これは、[MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/) メソッドを使用して実現できます。

次のコード例は、**DocumentBuilder** をドキュメント内の別のノードに移動する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

ただし、基本的な **MoveTo** メソッド以外にも、より具体的なメソッドがあります。

### ドキュメントの先頭または末尾に移動する

[MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) および [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) メソッドを使用して、ドキュメントの先頭または末尾に移動できます。

次のコード例は、カーソル位置をドキュメントの先頭または末尾に移動する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### ブックマークを使用してナビゲートする

探したい場所にマークを付けて、再度簡単に移動できます。ドキュメントにブックマークを必要な数だけ挿入し、一意の名前でブックマークを識別してブックマーク内を移動できます。 [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/) メソッドを使用してブックマークに移動できます。

次のコード例は、カーソル位置をブックマークに移動する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### 表のセルに移動します

[MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) メソッドを使用して表のセルに移動できます。このメソッドを使用すると、特定のテーブル内の任意のセルにカーソルを移動できるようになります。さらに、**MoveToCell** メソッド内のセル内の任意の位置または指定した文字にカーソルを移動するためのインデックスを指定できます。

次のコード例は、カーソル位置を指定した表のセルに移動する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### フィールドに移動する

[MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) メソッドを使用すると、ドキュメント内の特定のフィールドに移動できます。さらに、[MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/) メソッドを使用して特定の差し込みフィールドに移動できます。

次のコード例は、ドキュメント ビルダーのカーソルを特定のフィールドに移動する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### ヘッダーまたはフッターに移動します

[MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) メソッドを使用して、ヘッダーまたはフッターの先頭に移動できます。

次のコード例は、ドキュメント ビルダーのカーソルをドキュメントのヘッダーまたはフッターに移動する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### セクションまたは段落に移動する

[MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) または [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) メソッドを使用して、特定のセクションまたは段落に移動できます。さらに、**MoveToParagraph** メソッド内の段落内の任意の位置または指定した文字にカーソルを移動するためのインデックスを指定できます。

次のコード例は、ドキュメント内の特定のセクションおよび特定の段落に移動する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
