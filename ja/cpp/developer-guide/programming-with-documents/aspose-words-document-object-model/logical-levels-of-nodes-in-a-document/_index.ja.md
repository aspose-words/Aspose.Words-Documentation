---
title: C++でのドキュメント内のノードの論理レベル
second_title: C++の場合Aspose.Words
articleTitle: ドキュメント内のノードの論理レベル
linktitle: ドキュメント内のノードの論理レベル
type: docs
description: "で C++の場合Aspose.Words ドキュメントには、ノードの論理レベル（ブロックレベル、インラインレベル、または行レベル）が記載されています。 ノードレベルは、ノードが通常発生するドキュメントツリー内の場所を記述するために使用されます。"
weight: 10
url: /ja/cpp/logical-levels-of-nodes-in-a-document/
---

このドキュメントでは、「ブロックレベル」、「インラインレベル」（「インライン」とも呼ばれます）、「行レベル」ノードなど、ドキュメント内の「レベル」に属するノードクラスのグループを参照することがあります。 文書内のこれらのレベルは純粋に論理的に区別され、継承や他のAspose.WordsDOM手段によって明示的に表現されません。 ノードレベルは、ドキュメントツリー内でノードが通常発生する場所を記述するために使用されます。

前の記事では、ノード間の関係と、すべてのノードがノードの子になることが許可されているわけではないという事実についてすでに説明しました。 たとえば、Cellは行の子のみにすることができ、Rowはテーブルの子のみにすることができます。 これらの関係は、ドキュメント内のノードをレベルに論理的に分割する場合にも適用されます。

次のセクションでは、Aspose.Words内のノードの論理レベルと各レベルに属するクラスについて説明します。

## 文書およびセクションの論理レベル

Word文書は、[Section](https://reference.aspose.com/words/cpp/aspose.words/section)クラスで表され、セクション区切りで区切られた一つ以上のセクションで構成されています。 セクションは、独自のページサイズ、余白、向き、テキスト列の数、およびヘッダーとフッターを定義できます。

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)と [セクション](https://www.aspose.com/api/words/cpp/aspose.words/section/) レベルノードは、次の図に示すような構造を持っています。

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

セクションには、最初のページ、偶数ページ、奇数ページのヘッダーとフッターだけでなく、メインテキストが含まれます。 これらの異なるテキストの「フロー」は*stories*と呼ばれます。

Aspose.Wordsでは、**Section**ノードには[Body](https://reference.aspose.com/words/cpp/aspose.words/body/)と[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)ストーリーノードが含まれています。 **Body**オブジェクトには、メインテキストが格納されます。 **HeaderFooter**オブジェクトは、各ヘッダーとフッターのテキストを格納します。 ストーリーのテキストは、それぞれブロックレベルの**Paragraph**オブジェクトと**Table**オブジェクトで表される段落と表で構成されています。

さらに、各Word文書には、Aspose.Wordsの[GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/)ノードで表される用語集を含めることができます。 用語集ドキュメントには、[BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/)、[AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/)、および[AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/)エントリが含まれています。

**GlossaryDocument**

## ブロック論理レベル

ブロックレベルのノードは、コンテンツおよびコンテンツコントロールのコンテナを表し、次のノードのドキュメントツリーの子ノードに配置できます:

- ボディ
- ヘッダー
- フッタ
- 脚注
- コメント
- 形
- GroupShape
- セル
- StructuredDocumentTag

ブロックレベルのノードは、次のクラスで表されます:

- 最も重要なブロックレベルのノードである[Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)と[Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)
- ブロックレベルとインラインレベルの両方で発生するブックマーク
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/)はカスタムマークアップを表し、コンテンツコントロールとコンテンツコントロールの両方を含めることができます

次の図は、ブロックレベルの要素を示しています。

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## インライン論理レベル

インラインレベルのノードは、ドキュメントの実際のコンテンツを表し、次のコンテナーに含めることができます:

- 段落-最も一般的なコンテナ
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

インラインレベルの要素は、次のクラスで表されます:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/)-異なる書式のテキストの実行
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/)と[BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend)はブックマークを表します
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) そして[Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/)は注釈を表します
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) そして[FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/)はフィールド文字を表し、[FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/)は単語フィールドを表します
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/)は文書内の特殊文字を表します
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)と[GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/)は、図形、図面、画像などを表します。
- SmartTagとStructuredDocumentTagはカスタムマークアップを表します

次の図は、インラインレベルのノード構造を示しています。

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Wordの図形には、OfficeアートAutoShapes、テキストボックス、イメージ、OLEオブジェクト、ActiveXコントロールが含まれ、これらはすべて`Shape`クラスを使用して表されます。 一部の図形にはテキストを含めることもできるため、Aspose.Wordsの図形ノードにはブロックレベルのノードを含めることができます。

図形はGroupShapeノードを使用して互いにグループ化できます。

{{% /alert %}}

{{% alert color="primary" %}}

脚注とコメントにはテキストを含めることができるため、Aspose.Wordsの脚注とコメントノードにはブロックレベルのノードを含めることができます。

{{% /alert %}}

## 表、行、およびセルのノード・レベル

テーブルは、行とセルのノードで構成されています。 テーブル要素は、次のクラスで表されます:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)はテーブルの行を表します
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/)は表のセルを表します
- StructuredDocumentTagはカスタムマークアップを表します

次の図は、テーブル、行、およびセルレベルのノード構造を示しています。

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
