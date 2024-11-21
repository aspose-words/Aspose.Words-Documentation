---
title: C# での段落の操作
second_title: .NET用Aspose.Words
articleTitle: 段落の操作
linktitle: 段落の操作
description: "ドキュメント C# に段落を挿入します。 C# で段落スタイルを設定します。段落スタイル区切り文字 C# を使用します。 C# を使用して段落ノードを操作します。"
type: docs
weight: 210
url: /ja/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

段落は、論理ブロックに結合された一連の文字であり、特殊文字 (*段落区切り*) で終わります。 Aspose.Words では、段落は [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) クラスによって表されます。

## 段落を挿入する

実際、文書に新しい段落を挿入するには、段落区切り文字を挿入する必要があります。 [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) は、文書にテキスト文字列を挿入するだけでなく、段落区切りも追加します。

現在のフォントの書式設定は [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) プロパティによっても指定され、現在の段落の書式設定は [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) プロパティによって決定されます。次のセクションでは、段落の書式設定について詳しく説明します。

次のコード例は、ドキュメントに段落を挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## 段落の書式設定

現在の段落書式設定は、[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) プロパティによって返される [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) オブジェクトによって表されます。このオブジェクトは、Microsoft Word で使用できるさまざまな段落書式設定プロパティをカプセル化します。 [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/) を呼び出すことで、段落の書式設定をデフォルト (通常のスタイル、左揃え、インデントなし、間隔なし、境界線なし、網かけなし) に簡単にリセットできます。

次のコード例は、段落の書式設定を設定する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## 段落スタイルを適用する

**Font** や **ParagraphFormat** などの一部の書式設定オブジェクトはスタイルをサポートしています。 1 つの組み込みスタイルまたはユーザー定義スタイルは、名前、基本スタイル、フォント、スタイル段落書式設定などの適切なスタイル プロパティを含む [Style](https://reference.aspose.com/words/net/aspose.words/style/) オブジェクトによって表されます。

さらに、**Style** オブジェクトは、[StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) 列挙値で表されるロケールに依存しないスタイル識別子を返す [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) プロパティを公開します。実際、Microsoft Word の組み込みスタイルの名前はさまざまな言語にローカライズされています。スタイル識別子を使用すると、ドキュメントの言語に関係なく正しいスタイルを見つけることができます。列挙値は、*Normal*、*Heading 1*、*Heading 2* などの組み込み Microsoft Word スタイルに対応します。すべてのユーザー定義スタイルは、**StyleIdentifier.User** 列挙値に設定されます。

次のコード例は、段落スタイルを適用する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### スタイル区切り文字を挿入して異なる段落スタイルを配置する

Microsoft Word のキーボード ショートカット Ctrl+Alt+Enter を使用して、スタイル区切り文字を段落の末尾に追加できます。この機能を使用すると、同じ論理印刷段落内で 2 つの異なる段落スタイルを使用できます。特定の見出しの先頭の一部のテキストを目次に表示したいが、見出し全体を目次に表示したくない場合は、この機能を使用できます。

次のコード例は、さまざまな段落スタイルに対応するためにスタイル区切り文字を挿入する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### 段落スタイル区切り文字の識別

Aspose.Words は、次の例に示すように、`Paragraph` クラスの [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) パブリック プロパティを公開して、スタイル区切り記号を使用して段落を識別します。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## 段落に枠線と網掛けを適用する

Aspose.Words のボーダーは [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) クラスによって表されます。これは、インデックスまたはボーダー タイプによってアクセスされる [Border](https://reference.aspose.com/words/net/aspose.words/border/) オブジェクトのコレクションです。境界線の種類は、[BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) 列挙によって表されます。一部の列挙値は、複数または 1 つの文書要素にのみ適用されます。たとえば、**BorderType.Bottom** は段落または表のセルに適用されますが、**BorderType.DiagonalDown** は表のセルにのみ対角線の境界線を指定します。

境界線コレクションと個別の境界線はどちらも、色、線のスタイル、線の幅、テキストからの距離、オプションの影などの同様の属性を持っています。それらは同じ名前のプロパティによって表されます。プロパティ値を組み合わせることで、さまざまな境界線のタイプを取得できます。さらに、**BorderCollection** オブジェクトと **Border** オブジェクトを使用すると、[ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) メソッドを呼び出してこれらの値をデフォルト値にリセットできます。

{{% alert color="primary" %}}

境界線のプロパティをデフォルト値にリセットすると、境界線が非表示になることに注意してください。

{{% /alert %}}

Aspose.Words には、ドキュメント要素のシェーディング属性を含む [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) クラスもあります。 [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) 列挙値を使用して、要素の背景と前景に適用される希望のシェーディング テクスチャと色を設定できます。 **TextureIndex** では、**Shading** オブジェクトにさまざまなパターンを適用することもできます。たとえば、ドキュメント要素の背景色を設定するには、**TextureIndex.TextureSolid** 値を使用し、前景色のシェーディング色を適切に設定します。

次のコード例は、段落に境界線と網掛けを適用する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## 段落の行数を数える

Word 文書の段落内の行数をカウントする場合は、次のコード サンプルを使用できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
