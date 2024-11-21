---
title: C# での目次の操作
second_title: .NET用Aspose.Words
articleTitle: 目次の操作
linktitle: 目次の操作
description: "詳細の「目次」フィールド。 C#を使用して`TOC`フィールドを作成および変更する方法。 `TOC` C#を挿入します。"
type: docs
weight: 170
url: /ja/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

多くの場合、目次 (TOC) を含むドキュメントを操作することがあります。 Aspose.Words を使用すると、わずか数行のコードを使用して、独自の目次を挿入したり、ドキュメント内の既存の目次を完全に再構築したりできます。この記事では、目次フィールドの操作方法の概要を説明し、次のことを示します。

- 新品の`TOC`を挿入する方法
- ドキュメント内の新規または既存の目次を更新します。
- スイッチを指定して、TOC のフォーマットと全体的な構造を制御します。
- 目次のスタイルと外観を変更する方法。
- ドキュメントからすべてのエントリとともに `TOC` フィールド全体を削除する方法。

## プログラムによる目次の挿入

[InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/) メソッドを呼び出すことで、ドキュメントの現在の位置に `TOC` (目次) フィールドを挿入できます。

Word 文書の目次は、さまざまな方法で作成し、さまざまなオプションを使用して書式設定できます。メソッドに渡すフィールド スイッチは、テーブルの構築方法とドキュメント内での表示方法を制御します。

Microsoft Word に挿入された `TOC` で使用されるデフォルトのスイッチは **「\o "1-3 \h \z \u"** です。これらのスイッチの説明とサポートされているスイッチのリストについては、この記事の後半で説明します。そのガイドを使用して正しいスイッチを取得することも、必要な同様の `TOC` を含むドキュメントがすでにある場合は、フィールド コード (*ALT+F9*) を表示してフィールドからスイッチを直接コピーすることもできます。

次のコード例は、目次フィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

次のコード例は、見出しスタイルをエントリとして使用して文書に目次 (TOC) を挿入する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

この例で使用されているメソッドを使用しないと、出力ドキュメントを開いたときに `TOC` フィールドが表示されますが、内容は表示されません。これは、`TOC` フィールドが挿入されていますが、ドキュメント内で更新されるまでデータがまだ設定されていないためです。これに関する詳細については、次のセクションで説明します。

{{% /alert %}}

## 目次を更新

Aspose.Words を使用すると、わずか数行のコードで `TOC` を完全に更新できます。これは、新しく挿入された `TOC` を設定するか、ドキュメントに変更が加えられた後に既存の `TOC` を更新するために実行できます。ドキュメント内の `TOC` フィールドを更新するには、次の 2 つの方法を使用する必要があります。

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

これら 2 つの更新メソッドはこの順序で呼び出す必要があることに注意してください。逆にすると、目次が表示されますが、ページ番号は表示されません。さまざまな目次をいくつでも更新できます。これらのメソッドは、ドキュメント内にあるすべての目次を自動的に更新します。

次のコード例は、フィールド更新を呼び出してドキュメント内の `TOC` フィールドを完全に再構築する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

**UpdateFields** への最初の呼び出しで `TOC` が構築され、すべてのテキスト エントリが設定され、`TOC` はほぼ完成したように見えます。唯一欠けているのはページ番号であり、今のところ「?」で表示されています。 **UpdatePageLayout** への 2 回目の呼び出しでは、メモリ内にドキュメントのレイアウトが構築されます。これは、エントリのページ番号を収集するために行う必要があります。この呼び出しから計算された正しいページ番号が目次に挿入されます。

## スイッチを使用して目次の動作を制御する

他のフィールドと同様に、`TOC` フィールドは、目次の作成方法を制御するフィールド コード内で定義されたスイッチを受け入れることができます。特定のスイッチはどのエントリをどのレベルに含めるかを制御するために使用され、他のスイッチは目次の外観を制御するために使用されます。スイッチを組み合わせて、複雑な目次を作成できます。

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


デフォルトでは、ドキュメントにデフォルトの `TOC` を挿入するときに、上記のスイッチが含まれます。スイッチのない `TOC` には、組み込みの見出しスタイルのコンテンツが含まれます (\O スイッチが設定されているかのように)。 Aspose.Words でサポートされている利用可能な `TOC` スイッチを以下にリストし、その使用法について詳しく説明します。タイプに基づいて個別のセクションに分割できます。最初のセクションのスイッチは `TOC` に含めるコンテンツを定義し、2 番目のセクションのスイッチは TOC の外観を制御します。スイッチがここにリストされていない場合、そのスイッチは現在サポートされていません。すべてのスイッチは将来のバージョンでサポートされる予定です。リリースごとにさらなるサポートを追加していきます。

### エントリーマーキングスイッチ

|  スイッチ | 説明 |
|  :-  |  :-  |
| **Heading Styles**<br>*(\Oスイッチ)* | <p>このスイッチは、`TOC` が組み込みの見出しスタイルから構築される必要があることを定義します。 Microsoft Word では、これらは見出し 1 ～ 見出し 9 によって定義されます。Aspose.Words では、これらのスタイルは、対応する StyleIdentifier 列挙によって表されます。この列挙は、ロケールに依存しないスタイルの識別子を表します。たとえば、`StyleIdentifier.Heading1` は見出し 1 スタイルを表します。これを使用すると、スタイルの書式設定とプロパティをドキュメントの Style コレクションから取得できます。対応する Style クラスは、StyleIdentifier 型のインデックス付きプロパティを使用して、`Document.Styles` コレクションから取得できます。</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>これらのスタイルでフォーマットされたコンテンツはすべて、目次に含まれます。見出しのレベルによって、目次内のエントリの対応する階層レベルが定義されます。たとえば、見出し 1 スタイルを持つ段落は `TOC` の最初のレベルとして扱われ、見出し 2 を持つ段落は階層内の次のレベルとして扱われます。</p> |
| **Outline Levels**<br>*(\Uスイッチ)* | <p>各段落は、「段落オプション」でアウトライン レベルを定義できます。</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>この設定は、この段落がドキュメント階層のどのレベルで扱われるかを決定します。これは、ドキュメントのレイアウトを簡単に構成するためによく使用される手法です。この階層は、Microsoft Word でアウトライン ビューに変更することで表示できます。見出しスタイルと同様に、「本文」レベルに加えて、1 ～ 9 のアウトライン レベルが存在します。アウトライン レベル 1 ～ 9 は、階層の対応するレベルの `TOC` に表示されます。<br>段落スタイルで設定されているか、段落自体に直接設定されているアウトライン レベルを持つコンテンツはすべて、目次に含まれます。 Aspose.Words では、アウトライン レベルは、Paragraph ノードの `ParagraphFormat.OutlineLevel` プロパティによって表されます。段落スタイルのアウトライン レベルは、`Style.ParagraphFormat` プロパティによって同様に表されます。</p>

<p>{{% alert color="primary" %}}</p>

<p>見出し 1 などの組み込みの見出しスタイルには、スタイル設定でアウトライン レベルが必須に設定されていることに注意してください。</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\Tスイッチ)* | <p>このスイッチにより、目次で使用するエントリを収集するときにカスタム スタイルを使用できるようになります。これは、目次に組み込みの見出しスタイルとともにカスタム スタイルを含めるために、\O スイッチと組み合わせて使用されることがよくあります。<br>スイッチのパラメータは音声記号で囲む必要があります。多くのカスタム スタイルを含めることができます。スタイルごとに名前を指定し、その後にカンマ、スタイルが `TOC` に表示されるレベルを指定する必要があります。他のスタイルもカンマで区切られます。<br>例えば</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>CustomHeading1 でスタイル設定されたコンテンツを `TOC` のレベル 1 コンテンツとして使用し、CustomHeading2 をレベル 2 として使用します。</p> |
| **Use TC Fields**<br>*(\F スイッチと \L スイッチ)* | <p>Microsoft Word の古いバージョンでは、`TOC` を構築する唯一の方法は TC フィールドを使用することでした。これらのフィールドは、フィールド コードが表示されている場合でも、ドキュメントに非表示で挿入されます。これらにはエントリに表示されるテキストが含まれており、`TOC` はそれらから構築されます。この機能は現在ではあまり使用されませんが、文書内で表示されるようにインデントされていないエントリを `TOC` に含める場合には依然として役立つ場合があります。<br>挿入すると、フィールド コードが表示されている場合でも、これらのフィールドは非表示になります。非表示のコンテンツを表示しないと表示されません。これらのフィールドを表示するには、「段落書式を表示」を選択する必要があります。</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p>これらのフィールドは、他のフィールドと同様にドキュメント内の任意の位置に挿入でき、`FieldType.FieldTOCEntry` 列挙によって表されます。<br>`TOC` の \F スイッチは、TC フィールドをエントリとして使用することを指定するために使用されます。追加の識別子を持たない単独のスイッチは、ドキュメント内の任意の TC フィールドが含まれることを意味します。追加のパラメータ (通常は 1 文字) は、一致する \f スイッチを持つ TC フィールドのみが TOC に含まれることを指定します。例えば </p>

<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>などの TC フィールドのみが含まれます。</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>`TOC` フィールドにも関連するスイッチがあり、「\L」スイッチは、指定された範囲内のレベルを持つ TC フィールドのみが含まれることを指定します。</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>`TC` フィールド自体にも {several, `multiple`, a few, `many`, numerous} スイッチを設定することができます。これらは：</p>

<p>- *\F – 上で説明しました。*</p>

<p>- *\L – この TC フィールドが `TOC` のどのレベルに表示されるかを定義します。これと同じスイッチを使用する `TOC` には、指定された範囲内にある場合にのみ、この TC フィールドが含まれます。*</p>

<p>- _\N – この `TOC` エントリのページ番号は表示されません。TC フィールドを挿入する方法のサンプル コードは、次のセクションにあります。</p> |

### 外観関連のスイッチ

|  スイッチ | 説明 |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N スイッチ)* | <p>このスイッチは、目次の特定のレベルのページ番号を非表示にするために使用されます。たとえば、次のように定義できます</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>また、レベル 3 と 4 のエントリのページ番号は、リーダー ドット (存在する場合) とともに非表示になります。 1 つのレベルのみを指定する場合も、範囲を使用する必要があります。たとえば、「1-1」では、最初のレベルのページ番号のみが除外されます。<br>レベル範囲を指定しないと、目次内のすべてのレベルのページ番号が省略されます。これは、ドキュメントを HTML または同様の形式にエクスポートするときに設定すると便利です。これは、HTML ベースの形式にはページの概念がないため、ページ番号を付ける必要がないためです。</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\Hスイッチ)* | <p>このスイッチは、`TOC` エントリがハイパーリンクとして挿入されることを指定します。 Microsoft Word でドキュメントを表示する場合、これらのエントリは `TOC` 内で通常のテキストとして表示されますが、ハイパーリンクされているため、Microsoft Word で *Ctrl + 左クリック* を使用してドキュメント内の元のエントリの位置に移動するために使用できます。このスイッチが含まれる場合、これらのリンクは他の形式でも保存されます。たとえば、EPUB などの HTML ベースの形式や、PDF や XPS などのレンダリングされた形式では、これらは作業リンクとしてエクスポートされます。<br>このスイッチを設定しないと、これらすべての出力の `TOC` はプレーン テキストとしてエクスポートされ、この動作は示されません。文書を MS Word で開いた場合も、この方法ではエントリのテキストをクリックできなくなりますが、ページ番号を使用して元のエントリに移動することはできます。</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\Pスイッチ)* | <p>このスイッチを使用すると、目次内でエントリのタイトルとページ番号を区切るコンテンツを簡単に変更できます。使用する区切り文字は、このスイッチの後に音声記号で囲んで指定する必要があります。<br>Office のドキュメントに記載されている内容とは異なり、使用できる文字は最大 5 文字ではなく 1 文字のみです。これは MS Word と Aspose.Words の両方に当てはまります。<br>このスイッチを使用すると、目次内のエントリとページ番号を区切るために使用するものをあまり制御できないため、使用はお勧めできません。代わりに、`StyleIdentifier.TOC1` などの適切な `TOC` スタイルを編集し、そこから特定のフォント メンバーなどにアクセスしてリーダー スタイルを編集することをお勧めします。これを行う方法の詳細については、この記事の後半で説明します。</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\Wスイッチ)* | <p>このスイッチを使用すると、タブ文字を含むエントリ (行末にタブがある見出しなど) が目次に入力するときに適切なタブ文字として保持されるように指定されます。これは、タブ文字の機能が `TOC` に存在し、エントリのフォーマットに使用できることを意味します。たとえば、特定のエントリでは、テキストを均等に配置するためにタブ ストップとタブ文字を使用する場合があります。対応する `TOC` レベルが同等のタブストップを定義している限り、生成された `TOC` エントリは同様の間隔で表示されます。<br><br>同じ状況で、このスイッチが定義されていない場合、タブ文字は機能しないタブと同等の空白に変換されます。出力は期待どおりに表示されません。</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\Xスイッチ)* | <p>上記のスイッチと同様に、このスイッチは、複数行にまたがる見出し (段落を分けずに改行文字を使用) が、生成される目次内でそのまま保持されることを指定します。たとえば、複数行にまたがる見出しでは、改行文字 (Ctrl + Enter または `ControlChar.LineBreak`) を使用して、複数の行にまたがるコンテンツを区切ることができます。このスイッチを指定すると、以下に示すように、`TOC` 内のエントリでこれらの改行文字が保持されます。<br><br>この状況でスイッチが定義されていない場合、改行文字は単一の空白に変換されます。</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## TC フィールドの挿入

[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) メソッドを呼び出し、必要なスイッチとともにフィールド名を「TC」として指定することで、[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) の現在位置に新しい TC フィールドを挿入できます。

次のコード例は、**DocumentBuilder** を使用してドキュメントに `TC` フィールドを挿入する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

多くの場合、特定のテキスト行が `TOC` に指定され、`TC` フィールドでマークされます。 Microsoft Word でこれを行う簡単な方法は、テキストを強調表示して *ALT+SHIFT+O* を押すことです。これにより、選択したテキストを使用して `TC` フィールドが自動的に作成されます。同じ手法をコードを通じて実現できます。以下のコードは、入力に一致するテキストを検索し、そのテキストと同じ位置に `TC` フィールドを挿入します。このコードは、記事で使用されているのと同じ手法に基づいています。

次のコード例は、ドキュメント内のテキストで `TC` フィールドを検索して挿入する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## 目次の変更

`TOC` 内のエントリのフォーマットでは、マークされたエントリの元のスタイルは使用されず、代わりに各レベルが同等の `TOC` スタイルを使用してフォーマットされます。たとえば、`TOC` の最初のレベルは **目次1** スタイルでフォーマットされ、2 番目のレベルは **目次2** スタイルでフォーマットされます。これは、`TOC` の外観を変更するには、これらのスタイルを変更する必要があることを意味します。 Aspose.Words では、これらのスタイルはロケールに依存しない `StyleIdentifier.TOC1` から `StyleIdentifier.TOC9` までで表され、これらの識別子を使用して [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) コレクションから取得できます。

ドキュメントの適切なスタイルが取得されたら、このスタイルの書式設定を変更できます。これらのスタイルへの変更は、ドキュメント内の目次に自動的に反映されます。

次のコード例では、第 1 レベルの `TOC` スタイルで使用される書式設定プロパティを変更します。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

また、`TOC` に含めるようにマークされた段落の直接書式設定 (スタイルではなく段落自体で定義されている) は、目次のエントリにコピーされることにも注意してください。たとえば、`TOC` のコンテンツをマークするために見出し 1 スタイルが使用されており、このスタイルには太字の書式設定があり、段落には斜体の書式設定も直接適用されているとします。結果の `TOC` エントリは、スタイルの書式設定の一部であるため太字ではありませんが、段落に直接書式設定されているため斜体になります。

各エントリとページ番号の間に使用される区切り文字の書式設定を制御することもできます。デフォルトでは、これはタブ文字と右マージン近くに並んだ右タブストップを使用してページ番号にまたがる点線です。

変更したい特定の `TOC` レベルに対して取得した [Style](https://reference.aspose.com/words/net/aspose.words/style/) クラスを使用して、ドキュメント内でのこれらの表示方法を変更することもできます。これの表示方法を変更するには、まず [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) を呼び出してスタイルの段落書式設定を取得する必要があります。ここから、[TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/) を呼び出してタブ ストップを取得し、適切なタブ ストップを変更できます。これと同じテクニックを使用して、タブ自体をまとめて移動または削除できます。

次のコード例は、`TOC` 関連の段落の右タブ ストップの位置を変更する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## ドキュメントから目次を削除する

目次をドキュメントから削除するには、`TOC` フィールドの `FieldStart` ノードと FieldEnd ノードの間にあるすべてのノードを削除します。以下のコードはこれを示しています。 `TOC` フィールドの削除は、ネストされたフィールドを追跡しないため、通常のフィールドよりも簡単です。代わりに、[FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) ノードのタイプが [FieldType.FieldTOC](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) であることを確認します。これは、現在の TOC の終わりに達したことを意味します。この場合、適切に形成された文書には別の `TOC` フィールド内に完全にネストされた `TOC` フィールドが存在しないと想定できるため、ネストされたフィールドを気にせずにこの手法を使用できます。

まず、各 `TOC` の [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) ノードが収集され、保存されます。次に、指定された `TOC` が列挙され、フィールド内のすべてのノードが参照されて保存されます。その後、ノードがドキュメントから削除されます。

次のコード例は、指定された `TOC` をドキュメントから削除する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## 目次の抽出

Word 文書から目次を抽出する場合は、次のコード サンプルを使用できます。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
