---
title: ドキュメント内のノードの論理レベル
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメント内のノードの論理レベル
linktitle: ドキュメント内のノードの論理レベル
type: docs
description: "Aspose.Words for Python via .NET のドキュメントでは、ノードの論理レベル (ブロック レベル、インライン レベル、または行レベル) について説明されています。ノード レベルは、ノードが通常発生するドキュメント ツリー内の位置を記述するために使用されます。"
weight: 10
url: /ja/python-net/logical-levels-of-nodes-in-a-document/
---

このドキュメントでは、ノード クラスのグループを、「ブロック レベル」ノード、「インライン レベル」(「インライン」とも呼ばれます)、または「行レベル」ノードなど、ドキュメント内の「レベル」に属するものとして参照することがあります。 。ドキュメント内のこれらのレベルは純粋に論理的に区別され、継承や他の Aspose.Words DOM 手段によって明示的に表現されるものではありません。ノード レベルは、ノードが通常発生するドキュメント ツリー内の場所を記述するために使用されます。

前の記事では、ノード間の関係と、すべてのノードがノードの子になることが許可されているわけではないという事実についてすでに説明しました。たとえば、[Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) は [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) の子のみにすることができ、[Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) は [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) の子のみにすることができます。などです。これらの関係は、ドキュメント内のノードをレベルに論理的に分割する場合にも適用できます。

次のセクションでは、Aspose.Words のノードの論理レベルと各レベルに属するクラスについて説明します。

## ドキュメントとセクションの論理レベル

Word 文書は、[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) クラスで表され、セクション区切りで区切られた 1 つ以上のセクションで構成されます。セクションでは、独自のページ サイズ、余白、方向、テキスト列の数、ヘッダーとフッターを定義できます。

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) および [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) レベルのノードは、次の図に示すような構造になっています。

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="ドキュメントおよびセクションレベルの単語の削除" style="width:700px"/>

セクションにはメイン テキストのほか、最初、偶数、奇数ページのヘッダーとフッターが含まれます。これらのテキストのさまざまな「フロー」は *stories* と呼ばれます。

Aspose.Words では、[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ノードには [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) および [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) ストーリー ノードが含まれます。 [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) オブジェクトにはメイン テキストが格納されます。 [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) オブジェクトには、各ヘッダーとフッターのテキストが保存されます。ストーリーのテキストは段落と表で構成され、それぞれブロック レベルの [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) オブジェクトと [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) オブジェクトで表されます。

さらに、各 Word 文書には、Aspose.Words の [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) ノードで表される用語集を含めることができます。用語集ドキュメントには、[building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) および [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) エントリが含まれています。

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) には、さまざまな種類の用語集ドキュメント エントリを表す [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) ノードが含まれています。各 [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) には、ドキュメントに挿入、削除、コピーできるセクションが含まれています。

## ブロック論理レベル

ブロックレベルのノードは、コンテンツおよびコンテンツ コントロールのコンテナを表し、次のノードのドキュメント ツリーの子ノードに出現する可能性があります。

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

ブロックレベルのノードは次のクラスで表されます。

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) および [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)。最も重要なブロックレベルのノードです。
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/)。ブロックレベルとインラインレベルの両方で発生します。
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)。カスタム マークアップを表し、コンテンツとコンテンツ コントロールの両方を含めることができます。

次の図は、ブロックレベルの要素を示しています。

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="ブロックレベル-aspose-words" style="width:550px"/>

## インライン論理レベル

インラインレベルのノードはドキュメントの実際のコンテンツを表し、次のコンテナに含めることができます。

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – 最も一般的なコンテナ
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

インラインレベルの要素は、次のクラスで表されます。

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – 異なる形式のテキストの連続
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) と [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) はブックマークを表します
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/)、[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)、[Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)、および [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) は注釈を表します
- フィールド文字を表す [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)、[FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/)、[FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/)、[FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)、および Word フィールドを表す [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/)
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) は文書内の特殊文字を表します
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) と [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) は、形状、図面、画像などを表します。
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) と [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) はカスタム マークアップを表します

次の図は、インライン レベルのノード構造を示しています。

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="インラインレベル-aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Word の図形には、Office Art オートシェイプ、テキスト ボックス、画像、OLE オブジェクト、ActiveX コントロールが含まれており、これらはすべて `Shape` クラスを使用して表現されます。一部のシェイプにはテキストを含めることもできるため、Aspose.Words のシェイプ ノードにはブロック レベルのノードを含めることができます。

[GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) ノードを使用して、シェイプを相互にグループ化できます。

{{% /alert %}}

{{% alert color="primary" %}}

脚注とコメントにはテキストを含めることができるため、Aspose.Words の [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) ノードと [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) ノードにはブロックレベルのノードを含めることができます。

{{% /alert %}}

## テーブル、行、セルのノードレベル

テーブルは行とセルのノードで構成されます。 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 要素は次のクラスで表されます。

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) はテーブルの行を表します
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) は表のセルを表します
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) はカスタム マークアップを表します

次の図は、[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)、[Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)、および [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) レベルのノード構造を示しています。

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="テーブル行セル非表示ワード" style="width:910px"/>