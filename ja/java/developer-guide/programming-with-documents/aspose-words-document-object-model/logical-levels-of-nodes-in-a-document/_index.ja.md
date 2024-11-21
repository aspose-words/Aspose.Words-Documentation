---
title: ドキュメント内のノードの論理レベル Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメント内のノードの論理レベル
linktitle: ドキュメント内のノードの論理レベル
type: docs
description: "インスタグラム Aspose.Words お問い合わせ Java 記述された 論理レベル ノード – ブロックレベル、インラインレベル、または行レベル。 ノードレベルは、ノードが通常発生しているドキュメントツリーの場所を記述するために使用されます。"
weight: 10
url: /ja/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

このドキュメンテーションでは、「block-level」や「inline-level」、または「row-level」ノードなど、ドキュメント内の「level」に属するノードクラスのグループを参照する場合があります。 文書のこれらのレベルは純粋に論理的に区別され、継承または他の方法で明示的に表現されていない Aspose.Words DOM つまり。 ノードレベルは、ノードが通常発生するドキュメントツリーの場所を記述するために使われます。

前回の記事では、既にノードとすべてのノードがどのノードの子であることが許されていないという事実の関係について話しました。 たとえば、セルは列の子だけになり、列はテーブルの子だけになることができます。 これらの関係は、ドキュメントのレベルのノードの論理分割にも適用されます。

次のセクションでは、ノードの論理レベルを記述します。 Aspose.Words 各レベルに属するクラス

## 文書およびセクション論理レベル

ツイート ワード文書は、1つ以上のセクションで構成され、 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) セクションで区切られたクラス。 セクションでは、独自のページサイズ、マージン、オリエンテーション、テキスト列数、ヘッダーとフッターを定義できます。

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) そして、 [セクション](https://www.aspose.com/api/words/java/com.aspose.words/section) レベルノードには、次の図に示す構造があります。

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

セクションには、メインテキスト、ヘッダーとフッターが最初のページ、さらに、オッズページに表示されます。 テキストの「流れ」は *stories*お問い合わせ

インスタグラム Aspose.Words, お問い合わせ **Section** ノードには、 [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) そして、 [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) ストーリーノード。 ザ・オブ・ザ・ **Body** オブジェクトはメインテキストを保存します。 ザ・オブ・ザ・ **HeaderFooter** オブジェクトは各ヘッダーとフッターのテキストを保存します。 どの物語のテキストは、それぞれ、段落と表で構成され、 **Paragraph** そして、 **Table** ブロックレベルのオブジェクト。

その他、 単語文書は、用語集を含むことができます。これは、 [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) ノード Aspose.Wordsお問い合わせ 用語集文書には、 [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), そして、 [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) エントリー

**GlossaryDocument** 含まれるもの [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) 異なる種類の用語集文書エントリを表すノード。 詳しくはこちら **BuildingBlock** 文書にインサート、削除、コピーできるセクションが含まれています。

## 論理レベルをブロックする

Block-level ノードは、コンテンツとコンテンツコントロール用のコンテナを表し、次のノードでドキュメントツリーの子ノードで発生します。

- ボディ
- ヘッダー
- フッター
- フットノート
- コメント
- 形状
- - - Group形状:
- セル
- 構造文書タグ

Block-level ノードは、次のクラスで表されます。

- - - [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) そして、 [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 最も重要なブロックレベルのノードです。
- ブロックレベルとインラインレベルの両方で発生するブックマーク
- - - [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), これはカスタムマークアップを表し、コンテンツとコンテンツの両方のコントロールを含むことができます。

以下の図はブロックレベルの要素を示しています。

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## インライン論理レベル

インラインレベルのノードは、ドキュメントの実際のコンテンツを表し、次のコンテナに含めることができます。

- パラグラフ - 最も一般的な容器
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- 構造文書タグ

インラインレベルの要素は、次のクラスで表されます。

- - - [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – 異なる形式のテキストの実行
- - - [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) そして、 [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) ブックマークを表す
- - - [コメントRangeStart:https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart, [コメント]](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) そして、 [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) アノテーションを表す
- - - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) そして、 [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) フィールド文字を表し、 [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) プロフィール ワードフィールド
- - - [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) ドキュメントの特別な文字を表す
- - - [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) そして、 [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 形状、図面、画像などを表します。
- SmartTagと構造文書 タグはカスタムマークアップを表します

次の図は、インラインレベルのノード構造を示しています。

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

形状の Microsoft Word Office Art AutoShapes、テキストボックス、画像、OLEオブジェクト、およびActiveXコントロールが含まれます。 `Shape` クラス。 一部の図形はテキストも含まれているので、シェイプノードは Aspose.Words ブロックレベルのノードを含むことができます。

形状は、それぞれの用途でグループ化できます Groupノードを形づけます。

{{% /alert %}}

{{% alert color="primary" %}}

フットノートとコメントはテキストを含むことができます。したがって、フットノートとコメントノードは Aspose.Words ブロックレベルのノードを含むことができます。

{{% /alert %}}

## 表、列、およびセルノードレベル

テーブルは行とセルのノードで構成されます。 表要素は、次のクラスで表されます。

- - - [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) テーブル行を表す
- - - [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) テーブルセルを表す
- 構造文書 タグはカスタムマークアップを表します

次の図は、テーブル、列、およびセルレベルのノード構造を示しています。

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
