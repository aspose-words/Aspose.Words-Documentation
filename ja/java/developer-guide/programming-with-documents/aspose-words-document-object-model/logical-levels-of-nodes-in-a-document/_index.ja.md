---
title: Java内の文書内のノードの論理レベル
second_title: Aspose.WordsのためのJava
articleTitle: ドキュメント内のノードの論理レベル
linktitle: ドキュメント内のノードの論理レベル
type: docs
description: "Aspose.WordsforJavaのドキュメントでは、ノードの論理レベル（ブロックレベル、インラインレベル、または行レベル）について説明しました。 ノードレベルは、ノードが通常発生するドキュメントツリー内の場所を記述するために使用されます。"
weight: 10
url: /ja/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

このドキュメントでは、「ブロックレベル」、「インラインレベル」（「インライン」とも呼ばれます）、「行レベル」ノードなど、ドキュメント内の「レベル」に属するノードクラスのグループを参照することがあります。 文書内のこれらのレベルは純粋に論理的に区別され、継承または他のAspose.WordsDOM手段によって明示的に表現されません。 ノードレベルは、ドキュメントツリー内でノードが通常発生する場所を記述するために使用されます。

前の記事では、ノード間の関係と、すべてのノードがノードの子になることが許可されているわけではないという事実についてすでに説明しました。 たとえば、Cellは行の子のみにすることができ、Rowはテーブルの子のみにすることができます。 これらの関係は、ドキュメント内のノードをレベルに論理的に分割する場合にも適用されます。

次のセクションでは、Aspose.Words内のノードの論理レベルと各レベルに属するクラスについて説明します。

## 文書およびセクションの論理レベル

Word文書は、[Section](https://reference.aspose.com/words/java/com.aspose.words/section/)クラスで表され、セクション区切りで区切られた一つ以上のセクションで構成されています。 セクションは、独自のページサイズ、余白、向き、テキスト列の数、およびヘッダーとフッターを定義できます。

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)と [セクション](https://www.aspose.com/api/words/java/com.aspose.words/section) レベルノードは、次の図に示すような構造を持っています。

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

セクションには、最初のページ、偶数ページ、奇数ページのヘッダーとフッターだけでなく、メインテキストが含まれます。 これらの異なるテキストの「フロー」は*stories*と呼ばれます。

Aspose.Wordsでは、**Section**ノードには[Body](https://reference.aspose.com/words/java/com.aspose.words/body/)と[HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/)ストーリーノードが含まれています。 **Body**オブジェクトには、メインテキストが格納されます。 **HeaderFooter**オブジェクトは、各ヘッダーとフッターのテキストを格納します。 ストーリーのテキストは、それぞれブロックレベルの**Paragraph**オブジェクトと**Table**オブジェクトで表される段落と表で構成されています。

さらに、各Word文書には、Aspose.Wordsの[GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/)ノードで表される用語集を含めることができます。 用語集ドキュメントには、[BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/)、[AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT)、および[AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT)のエントリが含まれています。

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

- 最も重要なブロックレベルのノードである[Tables](https://reference.aspose.com/words/java/com.aspose.words/table/)と[Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)
- ブロックレベルとインラインレベルの両方で発生するブックマーク
- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/)はカスタムマークアップを表し、コンテンツコントロールとコンテンツコントロールの両方を含めることができます

次の図は、ブロックレベルの要素を示しています。

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## インライン論理レベル

インラインレベルのノードは、ドキュメントの実際のコンテンツを表し、次のコンテナーに含めることができます:

- 段落-最も一般的なコンテナ
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

インラインレベルの要素は、次のクラスで表されます:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/)-異なる書式のテキストの実行
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/)と[BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/)はブックマークを表します
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)、[Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)、[Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/)は注釈を表します
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) そして[FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)はフィールド文字を表し、[FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/)は単語フィールドを表します
- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/)は文書内の特殊文字を表します
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)と[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)は、図形、図面、画像などを表します。
- SmartTagとStructuredDocumentTagはカスタムマークアップを表します

次の図は、インラインレベルのノード構造を示しています。

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Wordの図形には、OfficeアートAutoShapes、テキストボックス、画像、OLEオブジェクト、およびActiveXコントロールが含まれ、これらはすべて`Shape`クラスを使用して表されます。 一部の図形にはテキストを含めることもできるため、Aspose.Wordsの図形ノードにはブロックレベルのノードを含めることができます。

図形はGroupShapeノードを使用して互いにグループ化できます。

{{% /alert %}}

{{% alert color="primary" %}}

脚注とコメントにはテキストを含めることができるため、Aspose.Wordsの脚注とコメントノードにはブロックレベルのノードを含めることができます。

{{% /alert %}}

## 表、行、およびセルのノード・レベル

テーブルは、行とセルのノードで構成されています。 テーブル要素は、次のクラスで表されます:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/)はテーブルの行を表します
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)は表のセルを表します
- StructuredDocumentTagはカスタムマークアップを表します

次の図は、テーブル、行、およびセルレベルのノード構造を示しています。

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
