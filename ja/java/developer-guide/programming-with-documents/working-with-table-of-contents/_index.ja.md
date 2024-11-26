---
title: Javaの目次の操作
second_title: Aspose.WordsのためのJava
articleTitle: 目次の操作
linktitle: 目次の操作
description: "詳細のコンテンツフィールドのテーブル。 Javaを使用して`TOC`フィールドを作成および変更する方法。"
type: docs
weight: 170
url: /ja/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

多くの場合、目次(TOC)を含む文書を操作します。 Aspose.Wordsを使用すると、数行のコードを使用して、独自の目次を挿入したり、ドキュメント内の既存の目次を完全に再構築したりできます。Aspose.Wordsを使用すると、独自の目次を挿入することができます。

この記事では、目次フィールドを操作する方法の概要と、次のことを示します:

- 新しいTOCを挿入する方法。
- 文書内の新規または既存のTOCsを更新します。
- TOCの書式設定と全体的な構造を制御するスイッチを指定します。
- 目次のスタイルと外観を変更する方法。
- 文書からすべてのエントリとともに`TOC`フィールド全体を削除する方法。

## プログラムで目次を挿入する

[InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String)メソッドを呼び出すことで、現在の位置にある文書に`TOC`(目次)フィールドを挿入できます。

Word文書の目次は、いくつかの方法で構築し、さまざまなオプションを使用してフォーマットすることができます。 メソッドに渡すフィールドスイッチは、テーブルの作成方法とドキュメント内での表示方法を制御します。

Microsoft Wordに挿入された`TOC`で使用されるデフォルトのスイッチは**"\o "1-3 \h \z \u"**です。 これらのスイッチの説明とサポートされているスイッチのリストは、記事の後半で見つけることができます。 そのガイドを使用して正しいスイッチを取得するか、必要な同様の`TOC`を含むドキュメントが既にある場合は、フィールドコード（*ALT+F9*）を表示して、フィールドか

次のコード例は、目次フィールドをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

次のコード例は、見出しスタイルをエントリとして使用して目次(TOC)をドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

このコードは、新しい目次が空白の文書に挿入されていることを示しています。 次に、[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)クラスを使用して、TOCに含まれるコンテンツをマークするために使用される適切な見出しスタイルを持つサンプルコンテンツの書式設定を挿入します。 次の行は、文書のフィールドとページレイアウトを更新して`TOC`に入力します。

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

この例で使用されているメソッドがない場合、出力ドキュメントを開くと、`TOC`フィールドが見つかりますが、表示されているコンテンツはありません。 これは、`TOC`フィールドが挿入されていますが、ドキュメントで更新されるまでまだ入力されていないためです。 これに関する詳細については、次のセクションで説明します。

{{% /alert %}}

## 目次の更新

Aspose.Wordsを使用すると、数行のコードだけで`TOC`を完全に更新できます。 これは、新しく挿入された`TOC`を入力するか、文書への変更が行われた後に既存の`TOC`を更新するために行うことができます。

ドキュメント内の`TOC`フィールドを更新するには、次の2つの方法を使用する必要があります:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

これらの2つのupdateメソッドは、この順序で呼び出される必要があることに注意してください。 逆にすると、目次が入力されますが、ページ番号は表示されません。 任意の数の異なるTOCsを更新できます。 これらのメソッドは、ドキュメント内のすべてのTOCsを自動的に更新します。

次のコード例は、フィールドの更新を呼び出して、ドキュメント内の`TOC`フィールドを完全に再構築する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

[Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)への最初の呼び出しは`TOC`を構築し、すべてのテキストエントリが入力され、`TOC`はほぼ完了しているように見えます。 欠けているのは、今のところ"?"で表示されているページ番号だけです。

[Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout)への2番目の呼び出しは、メモリ内のドキュメントのレイアウトを構築します。 これは、エントリのページ番号を収集するために行う必要があります。 この呼び出しから計算された正しいページ番号がTOCに挿入されます。

## スイッチを使用して目次の動作を制御する

他のフィールドと同様に、`TOC`フィールドは、目次の構築方法を制御するフィールドコード内で定義されたスイッチを受け入れることができます。 特定のスイッチは、どのエントリが含まれ、どのレベルで制御されるかを制御するために使用され、他のスイッチはTOCの外観を制御するために使 スイッチは複雑な目次が作り出されるように一緒に結合することができる。

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


デフォルトでは、ドキュメントにデフォルトの`TOC`を挿入するときに、上記のこれらのスイッチが含まれます。 スイッチのない`TOC`には、組み込みの見出しスタイルのコンテンツが含まれます（\Oスイッチが設定されているかのように）。

Aspose.Wordsでサポートされている利用可能な`TOC`スイッチを以下に示し、その用途について詳しく説明します。 それらはそれらのタイプに基づいて別々のセクションに分けることができます。 最初のセクションのスイッチは`TOC`に含めるコンテンツを定義し、2番目のセクションのスイッチはTOCの外観を制御します。

スイッチがここにリストされていない場合は、現在サポートされていません。 すべてのスイッチは将来のバージョンでサポートされます。 私たちは、すべてのリリースにさらにサポートを追加しています。

### エントリーマーキングスイッチ

| スイッチ | 説明 |
| :- | :- |
| **Heading Styles** <br>*(\Oスイッチ)* <br> | <p>このスイッチは、`TOC`を組み込みの見出しスタイルから構築する必要があることを定義します。 Microsoft Wordでは、これらはHeading 1–Heading 9で定義されます。 Aspose.Wordsでは、これらのスタイルは対応するStyleIdentifier列挙体によって表されます。 この列挙体は、スタイルのロケールに依存しない識別子を表します。`StyleIdentifier.Heading1`はHeading 1スタイルを表します。 これを使用して、スタイルの書式設定とプロパティをドキュメントのスタイルコレクションから取得できます。 対応するスタイルクラスは、StyleIdentifier型のindexedプロパティを使用して`Document.Styles`コレクションから取得できます。</p><p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>これらのスタイルでフォーマットされたコンテンツはすべて、目次に含まれます。 見出しのレベルは、TOC内のエントリの対応する階層レベルを定義します。 たとえば、Heading 1スタイルの段落は`TOC`の最初のレベルとして扱われますが、Heading 2の段落は階層内の次のレベルとして扱われます。</p> |
| **Outline Levels** <br>*(\Uスイッチ)* <br> | <p>各段落は、段落オプションの下でアウトラインレベルを定義できます。</p><p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>この設定では、文書階層でこの段落を処理するレベルを指定します。 これは、文書のレイアウトを簡単に構造化するために使用される一般的に使用される方法です。 この階層は、Microsoft Wordのアウトラインビューに変更することで表示できます。 見出しスタイルと同様に、「本文」レベルに加えて、1〜9のアウトラインレベルがあります。 アウトラインレベル1-9は、階層の対応するレベルの`TOC`に表示されます <br>段落スタイルで設定されているか、段落自体に直接設定されているアウトラインレベルを持つコンテンツはTOCに含まれます。 Aspose.Wordsでは、アウトラインレベルは段落ノードの`ParagraphFormat.OutlineLevel`プロパティで表されます。 段落スタイルのアウトラインレベルは、`Style.ParagraphFormat`プロパティでも同じように表されます。</p><p>{{% alert color="primary" %}}</p><p>Heading 1などの組み込みの見出しスタイルには、スタイル設定でアウトラインレベルが必須に設定されていることに注意してください。</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>*(\Tスイッチ)* <br> | <p>このスイッチを使用すると、TOCで使用するエントリを収集するときにカスタムスタイルを使用できます。 これは、TOCに組み込みの見出しスタイルとともにカスタムスタイルを含めるために、\Oスイッチと組み合わせて使用されることがよくあります。 <br>スイッチのパラメータは、音声マークで囲む必要があります。 多くのカスタムスタイルを含めることができます。スタイルごとに、名前を指定し、その後にコンマを指定し、その後にスタイルが`TOC`に表示されるレベ それ以降のスタイルもコンマで区切られます。 <br>例えば</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>`TOC`のレベル1コンテンツとしてCustomHeading1でスタイルされたコンテンツを使用し、CustomHeading2はレベル2として使用します。</p> |
| TCフィールドを使用する <br>*(\Fおよび\Lスイッチ)* <br> | <p>古いバージョンのMicrosoft Wordでは、`TOC`を構築する唯一の方法はTCフィールドの使用でした。 これらのフィールドは、フィールドコードが表示されている場合でも、ドキュメントに非表示に挿入されます。 それらにはエントリに表示されるテキストが含まれ、`TOC`はそれらから構築されます。 この機能はあまり頻繁には使用されていませんが、文書に表示されるようにインデントされていない`TOC`にエントリを含める場合には、まだ有用で <br>これらのフィールドを挿入すると、フィールドコードが表示されていても非表示になります。 隠されたコンテンツを表示せずに見ることはできません。 これらのフィールドを表示するには、段落の書式を選択する必要があります。</p><p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>これらのフィールドは、他のフィールドと同様に任意の位置にドキュメントに挿入でき、`FieldType.FieldTOCEntry`列挙体で表されます。<br>`TOC`の\Fスイッチは、TCフィールドをエントリとして使用するように指定するために使用されます。 余分な識別子のないスイッチ自体は、文書内の任意のTCフィールドが含まれることを意味します。 任意の余分なパラメータ、多くの場合、単一の文字は、一致する\fスイッチを持つTCフィールドのみがTOCに含まれることを指定します。 例えば *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>次のようなTCフィールドのみが含まれます</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>`TOC`フィールドには関連するスイッチもあり、"\L"スイッチは、指定された範囲内のレベルを持つTCフィールドのみが含まれることを指定します。</p><p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>`TC`フィールド自体も`{several, multiple, a few, many, numerous}`スイッチを設定することができます。 これらは次のとおりです:</p><p>-\F-上記で説明しました。*</p><p>-\L-このTCフィールドが表示される`TOC`のレベルを定義します。 この同じスイッチを使用する`TOC`には、指定された範囲内にある場合にのみ、このTCフィールドが含まれます。</p><p>-`_\N`-この`TOC`エントリのページ番号は表示されません。TCフィールドを挿入する方法のサンプルコードは、次のセクションにあります。</p> |

### 外観関連スイッチ

| スイッチ | 説明 |
| :- | :- |
| **Omit Page Numbers** <br>*(\Nスイッチ)* | <p>このスイッチは、TOCの特定のレベルのページ番号を非表示にするために使用されます。 たとえば、次のように定義できます</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>そして、レベル3と4のエントリのページ番号は、リーダードット（もしあれば）と一緒に隠されます。 たとえば、"1-1"では、最初のレベルのページ番号のみが除外されます。 <br>レベル範囲を指定しないと、TOC内のすべてのレベルのページ番号が省略されます。 これは、文書をHTMLまたは同様の形式でエクスポートするときに設定すると便利です。 これは、HTMLベースの形式にはページの概念がないため、ページ番号を必要としないためです。</p><p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| ハイパーリンクとして挿入 <br>*(\Hスイッチ)* | <p>このスイッチは`TOC`エントリがハイパーリンクとして挿入されることを指定します。 Microsoft Word内の文書を表示するとき、これらのエントリは`TOC`内の通常のテキストとして表示されますが、ハイパーリンクされているため、Microsoft Word内の*Ctrl + Left Click*を使用して文書内の元のエントリの位置に移動するために使用できます。 このスイッチが含まれている場合、これらのリンクは他の形式でも保持されます。 たとえば、EPUBを含むHTMLベースの形式や、PDFやXPSなどのレンダリング形式では、これらは作業リンクとしてエクスポートされます。 <br>このスイッチが設定されていない場合、これらすべての出力の`TOC`はプレーンテキストとしてエクスポートされ、この動作は示されません。 文書がMSWordで開かれている場合、エントリのテキストもこの方法ではクリックできませんが、ページ番号を使用して元のエントリに移動できます。</p><p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>*(\Pスイッチ)* <br> | <p>このスイッチを使用すると、エントリのタイトルとページ番号を分離するコンテンツをTOCで簡単に変更できます。 使用する区切り文字は、このスイッチの後に指定し、音声マークで囲む必要があります。 <br>Officeのドキュメントに記載されているものとは対照的に、最大5文字ではなく1文字のみを使用できます。 これはMSWordとAspose.Wordsの両方に適用されます。 <br>このスイッチは、TOCのエントリとページ番号を分離するために使用したものをあまり制御できないため、このスイッチを使用することはお勧めしません。 代わりに、`StyleIdentifier.TOC1`などの適切な`TOC`スタイルを編集し、そこから特定のフォントメンバーなどにアクセスできるリーダースタイルを編集することをお勧めします。 これを行う方法の詳細は、記事の後半で見つけることができます。</p><p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>*(\Wスイッチ)* | <p>このスイッチを使用すると、タブ文字を持つエントリ、たとえば行末にタブがある見出しは、TOCを入力するときに適切なタブ文字として保持されます。 これは、タブ文字の機能が`TOC`に存在し、エントリの書式設定に使用できることを意味します。 たとえば、特定のエントリでは、テキストを均等に空白にするためにタブストップとタブ文字を使用する場合があります。 対応する`TOC`レベルが同等のタブストップを定義している限り、生成された`TOC`エントリは同様の間隔で表示されます。 <br><br>同じ状況で、このスイッチが定義されていない場合、タブ文字は機能していないタブと同等の空白に変換されます。 その場合、出力は期待どおりに表示されません。</p><p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>*(\Xスイッチ)* <br> | <p>上記のスイッチと同様に、このスイッチは、生成されたTOCにあるように、複数の行にまたがる見出し（段落を分離するのではなく改行文字を使用）を保 たとえば、複数の行にまたがる見出しでは、改行文字(Ctrl+Enterまたは`ControlChar.LineBreak`)を使用して、異なる行にコンテンツを分割できます。 このスイッチを指定すると、`TOC`のエントリは以下に示すようにこれらの改行文字を保持します。 <br><br>この状況では、スイッチが定義されていない場合、改行文字は単一の空白に変換されます。</p><p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## TCフィールドを挿入します

新しいTCフィールドを`DocumentBuilder`の現在位置に挿入するには、`DocumentBuilder.InsertField`メソッドを呼び出し、必要なスイッチとともにフィールド名を"TC"として指定します。

次のコード例は、[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)を使用して文書に`TC`フィールドを挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

多くの場合、特定のテキスト行が`TOC`に指定され、`TC`フィールドでマークされます。 MSWordでこれを行う簡単な方法は、テキストを強調表示して*ALT+SHIFT+O*を押すことです。 これにより、選択したテキストを使用して`TC`フィールドが自動的に作成されます。 同じ手法は、コードを介して達成することができます。 以下のコードは、入力に一致するテキストを検索し、テキストと同じ位置に`TC`フィールドを挿入します。 このコードは、記事で使用されているのと同じ手法に基づいています。 次のコード例は、ドキュメント内のテキストに`TC`フィールドを検索して挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## 目次を変更する

### スタイルの書式設定を変更する

`TOC`内のエントリの書式は、マークされたエントリの元のスタイルを使用せず、代わりに各レベルは同等の`TOC`スタイルを使用して書式設定されます。 たとえば、`TOC`の最初のレベルは**TOC1**スタイルで書式設定され、2番目のレベルは**TOC2**スタイルで書式設定されます。 これは、`TOC`の外観を変更するには、これらのスタイルを変更する必要があることを意味します。 Aspose.Wordsでは、これらのスタイルはロケールに依存しない`StyleIdentifier.TOC1`から`StyleIdentifier.TOC9`までで表され、これらの識別子を使用して`Document.Styles`コレクションから取得できます。Aspose.Wordsでは、ロケールに依存しない`StyleIdentifier.TOC1`から`StyleIdentifier.TOC9`までのスタイルが表されます。

文書の適切なスタイルが取得されたら、このスタイルの書式を変更することができます。 これらのスタイルへの変更は、文書内のTOCsに自動的に反映されます。

次のコード例では、最初のレベル`TOC`スタイルで使用される書式設定プロパティを変更します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

また、`TOC`に含まれるようにマークされた段落（スタイルではなく段落自体で定義されている）の直接の書式設定は、TOCのエントリにコピーされることに注意 たとえば、Heading 1スタイルを使用して`TOC`のコンテンツをマークし、このスタイルには太字の書式があり、段落には斜体の書式が直接適用されている場合です。 結果の`TOC`エントリはスタイルの書式設定の一部であるため太字ではありませんが、段落で直接書式設定されているため斜体になります。

また、各エントリとページ番号の間で使用される区切り文字の書式設定を制御することもできます。 デフォルトでは、これはタブ文字を使用してページ番号に広がる点線であり、右マージンの近くに並んでいる右タブストップがあります。

変更する特定の`TOC`レベルに対して取得された`Style`クラスを使用して、これらが文書内でどのように表示されるかを変更することもできます。

これが最初にどのように表示されるかを変更するには、スタイルの段落書式を取得するために`Style.ParagraphFormat`を呼び出す必要があります。 これにより、タブストップは`ParagraphFormat.TabStops`を呼び出し、適切なタブストップを変更することによって取得できます。 この同じ手法を使用して、タブ自体を移動または完全に削除することができます。

次のコード例は、`TOC`関連する段落の右タブストップの位置を変更する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## ドキュメントから目次を削除する

目次は、`TOC`フィールドの`FieldStart`ノードとFieldEndノードの間にあるすべてのノードを削除することによって、ドキュメントから削除できます。

以下のコードはこれを示しています。 `TOC`フィールドの削除は、ネストされたフィールドを追跡しないため、通常のフィールドよりも簡単です。 代わりに、現在のTOCの終わりに遭遇したことを意味する`FieldEnd`ノードのタイプが`FieldType.FieldTOC`であることを確認します。 この場合、適切に形成された文書は別の`TOC`フィールド内に完全にネストされた`TOC`フィールドを持たないと仮定できるので、ネストされたフィールドを気にせずにこの手法を使用することができます。

まず、各`TOC`の`FieldStart`ノードが収集され、格納されます。 次に、指定された`TOC`が列挙され、フィールド内のすべてのノードが訪問されて格納されます。 その後、ノードはドキュメントから削除されます。 次のコード例は、指定された`TOC`をドキュメントから削除する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## 目次を抽出する

Word文書から目次を抽出する場合は、次のコードサンプルを使用できます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
