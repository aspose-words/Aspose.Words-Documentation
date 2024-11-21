---
title: Python での段落の操作
second_title: Python via .NET用Aspose.Words
articleTitle: 段落の操作
linktitle: 段落の操作
description: "Python を使用して文書内に段落を挿入し、その書式設定を指定します。"
type: docs
weight: 210
url: /ja/python-net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

段落は、論理ブロックに結合された一連の文字であり、特殊文字 (*段落区切り*) で終わります。 Aspose.Words では、段落は [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) クラスによって表されます。

## 段落を挿入する

実際、文書に新しい段落を挿入するには、段落区切り文字を挿入する必要があります。 [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) はテキスト文字列も文書に挿入しますが、さらに段落区切りも追加します。

現在のフォントの書式設定は [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) プロパティによっても指定され、現在の段落の書式設定は [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) プロパティによって決定されます。

次のコード例は、ドキュメントに段落を挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## 段落の書式設定

現在の段落書式設定は、[paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) プロパティによって返される [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) オブジェクトによって表されます。このオブジェクトは、Microsoft Word で使用できるさまざまな段落書式設定プロパティをカプセル化します。 [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/) を呼び出すことで、段落の書式設定をデフォルトの標準スタイル、左揃え、インデントなし、スペースなし、境界線なし、シェーディングなしに簡単にリセットできます。

次のコード例は、段落の書式設定を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## 段落スタイルを適用する

[Font](https://reference.aspose.com/words/python-net/aspose.words/font/) や [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) などの一部の書式設定オブジェクトはスタイルをサポートしています。単一の組み込みスタイルまたはユーザー定義スタイルは、名前、基本スタイル、スタイルのフォントおよび段落書式設定などの対応するスタイル プロパティを含む [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) オブジェクトによって表されます。

さらに、[Style](https://reference.aspose.com/words/python-net/aspose.words/style/) オブジェクトは、[StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) 列挙値で表されるロケールに依存しないスタイル識別子を返す [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) プロパティを提供します。重要なのは、Microsoft Word の組み込みスタイルの名前がさまざまな言語にローカライズされていることです。スタイル識別子を使用すると、ドキュメントの言語に関係なく正しいスタイルを見つけることができます。列挙値は、 Normal 、 Heading 1 、 Heading 2 などの Microsoft Word 組み込みスタイルに対応します。すべてのユーザー定義スタイルには、[StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) 値が割り当てられます。

次のコード例は、段落スタイルを適用する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## スタイル区切り文字を挿入して異なる段落スタイルを配置する

MS Word の Ctrl + Alt + Enter キーボード ショートカットを使用して、段落の末尾にスタイル区切り文字を追加できます。この機能により、1 つの論理印刷段落で 2 つの異なる段落スタイルを使用できるようになります。特定の見出しの先頭の一部のテキストを目次に表示したいが、見出し全体を目次に表示したくない場合は、この機能を使用できます。

次のコード例は、さまざまな段落スタイルに対応するためにスタイル区切り文字を挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## 段落スタイル区切り文字の識別

Aspose.Words は、以下の例に示すように、スタイル区切り段落を識別できるパブリック プロパティ [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) を [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) クラスに提供します。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## 段落に枠線と網掛けを適用する

境界線は [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) によって表されます。これは、インデックスまたはボーダー タイプによってアクセスされる [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) オブジェクトのコレクションです。境界線の種類は [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) 列挙によって表されます。列挙の一部の値は、複数または 1 つの文書要素にのみ適用できます。たとえば、[BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) は段落または表のセルに適用できますが、[BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) は表のセルの対角線の境界線のみを指定します。

境界線コレクションと個別の境界線はどちらも、色、線のスタイル、線の幅、テキストからの距離、オプションの影などの同様の属性を持っています。それらは同じ名前のプロパティによって表されます。プロパティ値を組み合わせることで、さまざまな境界線タイプを実現できます。さらに、[BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) オブジェクトと [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) オブジェクトの両方で、[Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) メソッドを呼び出すことでこれらの値をデフォルトにリセットできます。

{{% alert color="primary" %}}

境界線のプロパティをデフォルト値にリセットすると、境界線が非表示になることに注意してください。

{{% /alert %}}

Aspose.Words には、ドキュメント要素のシェーディング属性を含む [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) クラスもあります。希望のシェーディング テクスチャと、要素の背景と前景に適用される色を設定できます。

シェーディング テクスチャは、[Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) オブジェクトにさまざまなパターンを適用できるようにする [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) 列挙値で設定されます。たとえば、ドキュメント要素の背景色を設定するには、[TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) 値を使用し、前景色のシェーディング色を適切に設定します。以下の例は、段落に境界線と網掛けを適用する方法を示しています。

次のコード例は、段落に境界線と網掛けを適用する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
