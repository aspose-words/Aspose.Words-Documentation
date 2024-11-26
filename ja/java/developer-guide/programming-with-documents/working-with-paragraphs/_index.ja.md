---
title: Javaの段落の操作
second_title: Aspose.WordsのためのJava
articleTitle: 段落の操作
linktitle: 段落の操作
description: "段落ノードの操作はJavaを使用して行われます。"
type: docs
weight: 210
url: /ja/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

段落は、論理ブロックに結合され、特殊文字で終わる文字のセットです–a*paragraph break*。 Aspose.Wordsでは、段落は[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)クラスで表されます。

## 段落の挿入

文書に新しい段落を挿入するには、実際には段落区切り文字を挿入する必要があります。 [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln)テキストの文字列をドキュメントに挿入するだけでなく、段落区切りも追加します。

現在のフォントの書式設定は[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)プロパティでも指定され、現在の段落の書式設定は[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat)プロパティで決定されます。 次のセクションでは、段落の書式設定について詳しく説明します。

次のコード例は、文書に段落を挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## 段落の書式設定

現在の段落の書式設定は、[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat)プロパティによって返される[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)オブジェクトによって表されます。 このオブジェクトはMicrosoft Wordで利用可能な様々な段落書式設定プロパティをカプセル化します。 [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting)を呼び出すことで、段落の書式をデフォルト（通常のスタイル、左揃え、インデントなし、間隔なし、境界線なし、陰影なし）に簡単にリセットできます。

次のコード例は、段落の書式設定を設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## 段落スタイルの適用

フォントやParagraphFormatのような一部の書式設定オブジェクトはスタイルをサポートしています。 単一の組み込みまたはユーザー定義のスタイルは、名前、基本スタイル、フォント、スタイルの段落書式などの対応するスタイルプロパティを含む[Style](https://reference.aspose.com/words/java/com.aspose.words/style/)オブジ

さらに、**Style**オブジェクトは、**StyleIdentifier**列挙値によって表されるロケールに依存しないスタイル識別子を返す[StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier)プロパティを提供します。 重要なのは、Microsoft Wordの組み込みスタイルの名前が異なる言語にローカライズされていることです。 スタイル識別子を使用すると、文書の言語に関係なく正しいスタイルを見つけることができます。 列挙値は、次のようなMicrosoft Word組み込みスタイルに対応します*Normal*, *Heading 1*, *Heading 2*, など。 すべてのユーザー定義スタイルには**StyleIdentifier.User value**が割り当てられます。

次のコード例は、段落スタイルを適用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## 別の段落スタイルを配置するには、スタイル区切り文字を挿入します

スタイルセパレータは、Ctrl+Alt+EnterキーボードショートカットをMSWordに使用して段落の最後に追加できます。 この機能を使用すると、1つの論理的に印刷された段落で使用される2つの異なる段落スタイルを使用できます。 特定の見出しの先頭からのテキストを目次に表示したいが、見出し全体を目次に表示したくない場合は、この機能を使用できます。

次のコード例は、さまざまな段落スタイルに対応するためにスタイル区切り文字を挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## 段落に罫線と陰影を適用する

Aspose.Wordsの境界線は[BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/)クラスによって表されます–これはインデックスまたは境界線の種類によってアクセスされる[Border](https://reference.aspose.com/words/java/com.aspose.words/border/)オブジェクトのコレクションです。 `Border`型は[BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/)列挙型で表されます。 列挙体の一部の値は、複数または1つのドキュメント要素にのみ適用できます。 たとえば、**BorderType.Bottom**は段落または表のセルに適用できますが、**BorderType.DiagonalDown**は表のセル内の対角線の境界線のみを指定します。

Borderコレクションとそれぞれの境界線の両方には、色、線のスタイル、線の幅、テキストからの距離、オプションの影などの同様の属性があります。 それらは同じ名前のプロパティによって表されます。 プロパティ値を組み合わせることで、さまざまな境界線の種類を実現できます。 さらに、**BorderCollection**オブジェクトと**Border**オブジェクトの両方で、[ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting)メソッドを呼び出すことでこれらの値を既定値にリセットできます。

{{% alert color="primary" %}}

境界線のプロパティがデフォルト値にリセットされると、境界線は非表示になります。

{{% /alert %}}

Aspose.Wordsには、文書要素のシェーディング属性が含まれている[Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/)クラスもあります。 必要なシェーディングテクスチャと、要素の背景と前景に適用される色を設定できます。

シェーディングテクスチャは[TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/)列挙値で設定され、**Shading**オブジェクトにさまざまなパターンを適用できます。 たとえば、ドキュメント要素の背景色を設定するには、`TextureIndex.TextureSolid`の値を使用し、必要に応じて前景の陰影の色を設定します。 次のコード例は、段落に境界線と陰影を適用する方法を示しています。

次のコード例は、段落に罫線と陰影を適用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
