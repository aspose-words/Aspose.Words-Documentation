---
title: パラグラフでの作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: パラグラフでの作業
linktitle: パラグラフでの作業
description: "パラグラフノード操作の練習 Javaお問い合わせ"
type: docs
weight: 210
url: /ja/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

段落は、論理ブロックに結合し、特別な文字で終わる文字のセットです。*paragraph break*。 インスタグラム Aspose.Words, 段落は、 [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) クラス。

## パラグラフをインサートする

新しい段落を文書に差し込むには、実際には段落の休憩文字をそれに差し込む必要があります。 [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) テキストの文字列だけを文書に差し込むだけでなく、段落のブレイクも加える。

現在のフォントのフォーマットも指定します [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) プロパティ、および現在の段落の書式は、 [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) 宿泊施設 次のセクションでは、段落のフォーマットについて詳しく説明します。

次のコードの例では、段落を文書に差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## フォーマット パラグラフ

現在の段落の書式は、 [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) 返されたオブジェクト [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) プロパティ. このオブジェクトは、利用可能なさまざまな段落の書式特性をカプセル化します Microsoft Wordお問い合わせ 段落のフォーマットをデフォルトに簡単にリセットできます。通常スタイル、左揃え、インデントなし、間隔なし、境界線なし、シェーディングなし - 呼び出し [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting)お問い合わせ

次のコードの例では、段落の書式を設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## パラグラフスタイルを適用

Font や ParagraphFormat サポートスタイルなどのフォーマットオブジェクト。 単一の組み込みまたはユーザー定義のスタイルは、 [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) スタイルの名前、ベーススタイル、フォント、段落フォーマットなどの対応するスタイルプロパティを含むオブジェクト。

さらに、 **Style** オブジェクトは、 [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) locale 独立したスタイル ID を返すプロパティ **StyleIdentifier** 列挙値。 点は、組み込みスタイルの名前が組み込まれていることです。 Microsoft Word 異なる言語のためにローカライズされます。 スタイル識別子を使用して、ドキュメント言語に関係なく正しいスタイルを見つけることができます。 列挙値が対応する Microsoft Word 作り付け様式のような *Normal*, ※見出し1*、*見出し2*など すべてのユーザー定義のスタイルが割り当てられます **スタイル識別子。 ユーザー価値**お問い合わせ

次のコードの例では、段落スタイルを適用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## 異なるパラグラフスタイルを置くインサートスタイルの分離器

スタイルセパレータは、Ctrl + Alt + キーボードショートカットをMS Wordに入力することで、段落の最後に追加できます。 この機能は、1つの論理的な印刷された段落で使用される2つの異なる段落のスタイルを可能にします。 特定の見出しの先頭からテキストを表示したい場合は、コンテンツの表に表示しますが、コンテンツの表に見出し全体が望まない場合は、この機能を使うことができます。

次のコードの例では、異なる段落スタイルに対応するスタイルセパレータをインサートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## ボーダーを適用し、パラグラフにシェーディング

ボーダーズ Aspose.Words は、 [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) クラス – これはコレクションです [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) インデックスまたはボーダータイプでアクセスするオブジェクト。 ザ・オブ・ザ・ `Border` 型は、 [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) パンフレット 列挙のいくつかの値が複数または1つの文書要素にのみ適用されます。 例えば、 **BorderType.Bottom** 段落またはテーブルセルに適用される **BorderType.DiagonalDown** 対角線をテーブルセルのみで指定します。

境界コレクションと各境界線は、色、線スタイル、線幅、テキストからの距離、オプションの影のような類似の属性を持っています。 同じ名前のプロパティで表されます。 プロパティの値を組み合わせることで、異なる境界タイプを実現できます。 その他、両方 **BorderCollection** そして、 **Border** オブジェクトを使用すると、これらの値をデフォルトにリセットできます。 [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) メソッド。

{{% alert color="primary" %}}

境界プロパティがデフォルト値にリセットされる場合、境界は見えないことに注意してください。

{{% /alert %}}

Aspose.Words また持っています [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) クラスには、ドキュメント要素のシェーディング属性が含まれています。 目的のシェーディングテクスチャと要素の背景と背景に適用される色を設定できます。

シェーディングテクスチャは、 [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) 様々なパターンのアプリケーションを様々なパターンに適用できる列挙値 **Shading** オブジェクト。 例えば、ドキュメント要素の背景色を設定するには、 `TextureIndex.TextureSolid` 値を設定し、フォアグラウンドシェーディングカラーを適切に設定します。 下のコード例では、境界線を適用する方法と段落にシェーディングする方法を示します。

次のコードの例では、境界線と段落にシェーディングを適用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
