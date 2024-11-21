---
title: C++での段落の操作
second_title: C++の場合Aspose.Words
articleTitle: 段落の操作
linktitle: 段落の操作
description: "段落ノードの操作は、C++を使用して実践しています。"
type: docs
weight: 210
url: /ja/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

段落は、論理ブロックに結合され、特殊文字で終わる文字のセットです–a*paragraph break*。 Aspose.Wordsでは、段落は[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)クラスで表されます。

## 段落を挿入する

文書に新しい段落を挿入するには、実際には段落区切り文字を挿入する必要があります。 [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/)テキストの文字列をドキュメントに挿入するだけでなく、段落区切りも追加します。

現在のフォントの書式設定は[Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/)プロパティでも指定され、現在の段落の書式設定は[ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/)プロパティで決定されます。 次のセクションでは、段落の書式設定について詳しく説明します。

次のコード例は、文書に段落を挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## 段落の書式設定

現在の段落の書式設定は、**ParagraphFormat**プロパティによって返される**ParagraphFormat**オブジェクトによって表されます。 このオブジェクトはMicrosoft Wordで利用可能な様々な段落書式設定プロパティをカプセル化します。 [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/)を呼び出すことで、段落の書式をデフォルトの通常のスタイル、左揃えのインデントなし、間隔なし、境界線なし、陰影なしに簡単にリセットできます。

次のコード例は、段落の書式設定を設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## 段落スタイルの適用

フォントやParagraphFormatのような一部の書式設定オブジェクトはスタイルをサポートしています。 単一の組み込みまたはユーザー定義のスタイルは、名前、基本スタイル、フォント、スタイルの段落書式などの対応するスタイルプロパティを含む`Style`オブジ

さらに、**Style**オブジェクトは、**StyleIdentifier**列挙値によって表されるロケールに依存しないスタイル識別子を返す[StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/)プロパティを提供します。 重要なのは、Microsoft Wordの組み込みスタイルの名前が異なる言語にローカライズされていることです。 スタイル識別子を使用すると、文書の言語に関係なく正しいスタイルを見つけることができます。 列挙値は、次のようなMicrosoft Word組み込みスタイルに対応します*Normal*, *Heading 1*, *Heading 2* など。 すべてのユーザー定義スタイルには**StyleIdentifier.User**値が割り当てられます。

次のコード例は、段落スタイルを適用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## 別の段落スタイルを配置するには、スタイル区切り文字を挿入します

スタイルセパレータは、Ctrl+Alt+EnterキーボードショートカットをMS Wordに使用して段落の最後に追加することができます。 この機能を使用すると、1つの論理的に印刷された段落で使用される2つの異なる段落スタイルを使用できます。 特定の見出しの先頭からのテキストを目次に表示したいが、見出し全体を目次に表示したくない場合は、この機能を使用できます。

次のコード例は、さまざまな段落スタイルに対応するためにスタイル区切り文字を挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## 段落スタイルの区切り文字を識別する

` `Aspose.Wordsはパブリックプロパティ[BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/)を`Paragraph`クラスに提供し、以下の例に示すようにスタイル区切り段落を識別できます:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## 段落に罫線と陰影を適用する

Aspose.Wordsの境界線は[BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/)クラスによって表されます–これはインデックスまたは境界線の種類によってアクセスされる[Border](https://reference.aspose.com/words/cpp/aspose.words/border/)オブジェクトのコレクションです。 境界線の型は`BorderType`列挙体で表されます。 列挙体の一部の値は、複数または1つのドキュメント要素にのみ適用できます。 たとえば、**BorderType.Bottom**は段落または表のセルに適用できますが、**BorderType.DiagonalDown**は表のセル内の対角線の境界線のみを指定します。

Borderコレクションとそれぞれの境界線の両方には、色、線のスタイル、線の幅、テキストからの距離、オプションの影などの同様の属性があります。 それらは同じ名前のプロパティによって表されます。 プロパティ値を組み合わせることで、さまざまな境界線の種類を実現できます。 さらに、**BorderCollection**オブジェクトと**Border**オブジェクトの両方で、[ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/)メソッドを呼び出すことでこれらの値をデフォルトにリセットできます。

{{% alert color="primary" %}}

境界線のプロパティがデフォルト値にリセットされると、境界線は非表示になります。

{{% /alert %}}

Aspose.Wordsには、文書要素のシェーディング属性が含まれている[Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/)クラスもあります。 必要なシェーディングテクスチャと、要素の背景と前景に適用される色を設定できます。

シェーディングテクスチャは、**Shading**オブジェクトにさまざまなパターンを適用できる[TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/)列挙値で設定されます。 たとえば、ドキュメント要素の背景色を設定するには、[TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/)の値を使用し、必要に応じて前景の陰影の色を設定します。

次のコード例は、段落に罫線と陰影を適用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
