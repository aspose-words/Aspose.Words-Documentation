---
title: 形の働き Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 形状を扱う
linktitle: 形状を扱う
type: docs
description: "マークアップ言語の形成、さまざまなタイプの形状の作図入門 Javaお問い合わせ"
weight: 280
url: /ja/java/working-with-shapes/
---

このトピックは、プログラム的に図形を使用して機能する方法について説明します Aspose.Wordsお問い合わせ

形状の形状 Aspose.Words AutoShape、テキストボックス、フリーフォーム、OLEオブジェクト、ActiveXコントロール、画像などの描画レイヤーのオブジェクトを表します。 単語の文書は1つ以上の異なる形状を含むことができます。 文書の形状は、 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) クラス。

## ドキュメントビルダーを使用したインサート形状

指定したタイプとサイズとフリーフローティング形状のインライン形状を指定した位置、サイズ、テキストラップタイプをドキュメントに入力できます。 [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) メソッド。 ザ・オブ・ザ・ **InsertShape** DML 形状をドキュメントモデルに差し込みます。 ドキュメントは DML 形状をサポートする形式で保存されなければなりません。それ以外の場合は、ドキュメント保存中に VML 形状に変換されます。

次のコードの例では、これらの型を文書に差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## セット アスペクト レシオロック

使用方法 Aspose.Words, 形状のアスペクト比がロックされているかどうかを指定できます。 [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) プロパティ.

次のコードの例では、どのように動作するかを示します。 **AspectRatioLocked** プロパティ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## セルの形状レイアウトを設定する

また、テーブル内や外側に形状が表示されているかを指定することもできます。 [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) プロパティ.

次のコードの例では、どのように動作するかを示します。 **IsLayoutInCell** プロパティ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## コーナーを追加 スナイテッド

スニップコーナー長方形を作成できます。 Aspose.Wordsお問い合わせ 形状タイプは、*SingleCornerSnipped、TopCornerSnipped、DiagonalCornerSnipped、TopCornerOneRoundedOneSnipped、SingleCornerRounded、TopCornersRounded、*および *DiagonalCornersRounded.*

DML形状は、 **InsertShape** これらの形状タイプでの方法。 これらのタイプはVML形状を作成するために使用できません。 「Shape」クラスのパブリックコンストラクタを使用して形状を作成する試みは、「NotSupportedException」例外を上げます。

以下のコードの例では、これらの形状を文書に差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## 実際の形状バウンドポイントを取得する

使用方法 Aspose.Words API, 一番上の形状のアンカーに相対的な点のブロックを含む形状の位置とサイズを得ることができます。 これを行うには、 [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) プロパティ.

次のコードの例では、どのように動作するかを示します。 **BoundsInPoints** プロパティ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 縦のアンカーを指定する

形状内のテキストの縦並びを形状内で指定できます。 [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) プロパティ.

次のコードの例では、どのように動作するかを示します。 **VerticalAnchor** プロパティ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## スマート検出 芸術の形

Aspose.Words また、形状がaを持っているかどうかを検出することができます `SmartArt` オブジェクト。 これを行うには、 [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) プロパティ.

次のコードの例では、どのように動作するかを示します。 **HasSmartArt** プロパティ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## 横のルールのフォーマット

水平ルールの形状をドキュメントに差し込むことができます。 [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) メソッド。

Aspose.Words API オファー [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) 水平ルール形状のプロパティにアクセスするプロパティ。 ザ・オブ・ザ・ [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) クラスは、水平ルールの書式のための高さ、色、NoShadeなどの基本的なプロパティを公開します。

次のコードの例では、設定方法を示します。 **HorizontalRuleFormat**:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
