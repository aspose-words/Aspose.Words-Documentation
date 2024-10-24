---
title: C++でのカーソルによるナビゲーション
second_title: C++の場合Aspose.Words
articleTitle: カーソルを使ったナビゲーション
linktitle: カーソルを使ったナビゲーション
description: "C++を使用して、段落、ブックマーク、特定の文字など、ドキュメント内の異なるノード間を移動します。"
type: docs
weight: 10
url: /ja/cpp/navigation-with-cursor/
---

文書を操作している間、それが短いものであっても長いものであっても、文書をナビゲートする必要があります。 仮想カーソルを使用したナビゲーションは、ドキュメント内の異なるノード間を移動する機能を表します。

短いドキュメント内では、キーボードの矢印キーを使用したり、マウスをクリックして任意の場所に挿入ポイントを移動したりすることで、ドキュメント内を移動するのは簡単です。 しかし、多くのページを持つ大規模な文書を作成すると、これらの基本的な手法は不十分になります。

この記事では、ドキュメント内を移動し、仮想カーソルを使用してドキュメントのさまざまな部分に移動する方法について説明します。

## 現在のカーソル位置の検出

ドキュメント内を移動するプロセスを開始する前に、現在選択されているノードを取得する必要があります。 [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/)プロパティを使用すると、選択したノードでのカーソルの正確な位置を取得できます。 さらに、現在のノードを取得する代わりに、[CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/)および[CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/)プロパティを使用して、現在選択されている段落または現在選択されているセクションを取得

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)を使用して実行する挿入操作は、[CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/)の前に挿入されます。 現在の段落が空の場合、またはカーソルが段落の終わりの直前に配置されている場合、**CurrentNode**はnullptrを返します。

## ドキュメント内のメソッドの移動

テキストを編集するときは、ドキュメントをナビゲートする方法と、ドキュメント内を正確に移動する場所を知っておくことが重要です。 これは、スクロールせずにWord文書内のページまたは見出しに移動するMicrosoft Wordのナビゲーションペインの機能に似ています。Aspose.Wordsは、ドキュメント内を移動して、その別のセクションやパーツに移動することができます。

主な方法は、カーソル位置をドキュメント内の特定のノードに移動できるようにすることです。[MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/)メソッドを使用してこれを実現できます。

次のコード例は、**DocumentBuilder**をドキュメント内の別のノードに移動する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

しかし、基本的な**MoveTo**メソッドのほかに、より具体的なものがあります。

### ドキュメントの先頭または末尾に移動する

[MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/)メソッドと[MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/)メソッドを使用して、文書の先頭または末尾に移動できます。

次のコード例は、カーソル位置をドキュメントの先頭または末尾に移動する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### ブックマークでナビゲート

見つけたい場所に印を付けて、簡単に移動することができます。 必要な数のブックマークをドキュメントに挿入し、一意の名前でブックマークを識別することでそれらをナビゲートできます。 ブックマークに移動するには、[MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/)メソッドを使用します。

次のコード例は、カーソル位置をブックマークに移動する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### テーブルセルに移動する

テーブルセルに移動するには、[MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/)メソッドを使用します。 このメソッドを使用すると、特定のテーブル内の任意のセルにカーソルを移動できます。 さらに、**MoveToCell**メソッド内のセル内の任意の位置または指定された文字にカーソルを移動するインデックスを指定することもできます。

次のコード例は、カーソル位置を指定したテーブルセルに移動する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### フィールドに移動する

ドキュメント内の特定のフィールドに移動するには、[MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/)メソッドを使用します。 また、[MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/)メソッドを使用して特定の差し込み項目に移動することもできます。

次のコード例は、document builderカーソルを特定のフィールドに移動する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### ヘッダーまたはフッターに移動する

ヘッダーまたはフッターの先頭に移動するには、[MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/)メソッドを使用します。

次のコード例は、ドキュメントビルダーのカーソルをドキュメントヘッダーまたはフッタに移動する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### セクションまたは段落に移動する

特定のセクションまたは段落に移動するには、[MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/)または[MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/)メソッドを使用します。 また、**MoveToParagraph**メソッド内の段落内の任意の位置または指定された文字にカーソルを移動するインデックスを指定することもできます。

次のコード例は、ドキュメント内の特定のセクションと特定の段落に移動する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
