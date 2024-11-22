---
title: コンテンツの表での作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: コンテンツのテーブルと連携
linktitle: コンテンツのテーブルと連携
description: "コンテンツフィールドの表を詳細に表示します。 作成と変更の方法 `TOC` フィールド使用 Javaお問い合わせ"
type: docs
weight: 170
url: /ja/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

多くの場合、コンテンツ(TOC)のテーブルを含む文書で動作します。 使用方法 Aspose.Words 自分のコンテンツの表を入力したり、既存のコンテンツの表を文書に完全に再構築したりすることができます。

この記事では、コンテンツフィールドの表で動作する方法を説明します。

- ブランドの新しいTOCを差し込む方法。
- ドキュメント内の新規または既存のTOCを更新します。
- TOCのフォーマットと全体的な構造を制御するためのスイッチを指定します。
- 内容のテーブルのスタイルや外観を変更する方法。
- 全体を削除する方法 `TOC` 文書からのすべてのエントリとともにフィールド。

## コンテンツのインサートテーブルプログラム

インサートできます `TOC` (内容の表)は、現在の位置の文書に、呼び出して [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) メソッド。

Word文書内のコンテンツの表は、さまざまなオプションを使用して、いくつかの方法で作成し、フォーマットすることができます。 メソッドに渡るフィールドスイッチは、テーブルが構築され、ドキュメントに表示する方法を制御します。

デフォルトスイッチは、 `TOC` インサート Microsoft Word お問い合わせ **"「\o 1-3 \h \z \u」**お問い合わせ これらのスイッチの説明と、サポートされているスイッチのリストは、後で記事で見つけることができます。 正しいスイッチを取得するには、そのガイドを使うか、既に同様のドキュメントを持っている場合 `TOC` フィールドコード(*ALT+F9*)を表示し、フィールドから直接スイッチをコピーすることができます。

以下のコードの例では、コンテンツフィールドの表を文書に書き込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

次のコードの例では、見出しスタイルをエントリとして使用して、コンテンツ(TOC)の表を文書に書き込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

このコードは、コンテンツの新しいテーブルを空白の文書に差し込みます。 ザ・オブ・ザ・ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) その後、TOCに含まれているコンテンツをマークするために使用される適切な見出しスタイルでいくつかのサンプルコンテンツフォーマットをインサートするためにクラスが使用されます。 次の行がポップアップし、 `TOC` 文書のフィールドとページレイアウトを更新することにより、

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

出力文書を開くと、例で使われるメソッドがなければ、 `TOC` フィールドは見えません。 これは、 `TOC` フィールドは入力されていますが、ドキュメントに更新されるまではまだ入力されていません。 詳細は、次のセクションで説明します。

{{% /alert %}}

## コンテンツの更新表

Aspose.Words あなたは完全に更新することができます `TOC` コードの行数が少ないだけ。 新しくインサートされたものをポップアップさせる `TOC` または既存の更新 `TOC` 文書の変更が行われた後。

次の2つの方法は、更新するために使用する必要があります `TOC` 文書内のフィールド:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

これらの2つの更新方法は、その順番で呼び出される必要があります。 コンテンツの表を逆にすると、ページ番号は表示されません。 異なるTOCの任意の数を更新することができます。 これらのメソッドは、ドキュメントに含まれるすべてのTOCを自動的に更新します。

次のコードの例では、完全に再構築する方法を示しています `TOC` フィールドの更新を呼び出して文書内のフィールド:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

最初の呼び出し [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) ビルドする `TOC`????? すべてのテキストエントリがポップアップし、 `TOC` ほとんど完了です。 行方不明のは「?」で表示されているページ番号です。

第二の呼び出し [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) メモリ内のドキュメントのレイアウトをビルドします。 エントリーのページ番号を収集するために行う必要があります。 この呼び出しから計算された正しいページ番号は、TOCに差し込みます。

## コンテンツの行動表を制御するためのスイッチを使用する

他の分野と同様に、 `TOC` フィールドは、コンテンツの表がどのように構築されるかを制御するフィールドコード内で定義されたスイッチを受け入れることができます。 特定のスイッチは、TOCの外観を制御するために他の人が使用されている間、どのエントリが含まれているかとレベルを制御するために使用されます。 スイッチは、コンテンツの複雑なテーブルが生成されるように組み合わせることができます。

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


デフォルトでは、デフォルトをインサートするときに上記のスイッチが含まれている `TOC` ドキュメント ツイート `TOC` スイッチなしでは、内蔵の見出しスタイル(\Oスイッチが設定されているかのように)のコンテンツが含まれます。

利用できる `TOC` サポートされているスイッチ Aspose.Words 以下に記載されており、その用途は詳細に記載されています。 それらはタイプに基づいて別のセクションに分けることができます。 最初のセクションのスイッチは、コンテンツが含まれているものを定義します。 `TOC` そして2番目のセクションのスイッチはTOCの出現を制御します。

スイッチが表示されていない場合は、現在サポートされていません。 すべてのスイッチは、将来のバージョンでサポートされています。 リリースごとにさらなるサポートをいたします。

### 記入項目の印スイッチ

|  スイッチ | コンテンツ |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\Oスイッチ)* <br/> | <p>このスイッチは、 `TOC` 作り付けの見出し様式を離れて造られるべきです。 インスタグラム Microsoft Word, これらは見出し1によって定義されます – 見出し 9. で Aspose.Words これらのスタイルは、対応するスタイル識別子の列挙によって表されます。 この列挙は、スタイルの locale に依存しない識別子を表します。 `StyleIdentifier.Heading1` 見出し1のスタイルを表します。 これにより、スタイルの書式とプロパティは、ドキュメントのスタイルコレクションから取得できます。 対応するスタイルクラスは、 `Document.Styles` styleIdentifier のインデックス化されたプロパティを使ってコレクションを収集します。</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>これらのスタイルでフォーマットされたコンテンツは、コンテンツの表に含まれています。 見出しのレベルは、TOCのエントリの対応する階層レベルを定義します。 例えば、見出し1のスタイルを持つ段落は、最初のレベルとして扱われます `TOC` 見出し2の段落は階層の次のレベルとして扱われます。</p>
 |
| **Outline Levels** <br/> *(\Uスイッチ)* <br/> | <p>各段落は、パラグラフオプションのアウトラインレベルを定義できます。</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>この段落が文書階層で処理されるべきレベルを判断する設定です。 これは、文書のレイアウトを簡単に構築するために使用される一般的な慣行です。 この階層は、アウトラインビューを変更することで見ることができます Microsoft Wordお問い合わせ 見出しのスタイルと同様に、「ボディテキスト」レベルに加えて、1〜9のアウトラインレベルがあります。 アウトラインレベル1～9が出現します `TOC` 階層の対応レベル <br/>アウトラインレベルを持つ任意のコンテンツは、段落スタイルで設定するか、または段落自体に直接TOCに含まれています。 インスタグラム Aspose.Words アウトラインレベルは、 `ParagraphFormat.OutlineLevel` パラグラフノードのプロパティ。 段落スタイルの輪郭レベルは、同じ方法で表されます `Style.ParagraphFormat` プロパティ.</p>

<p>{{% alert color="primary" %}}</p>

<p>Heading 1などの組み込みの見出しスタイルは、スタイル設定で設定された輪郭レベルの強制設定を持っています。</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(Tスイッチ)* <br/> | <p>このスイッチは、TOCで使用できるエントリを収集する際に、カスタムスタイルを使用できます。 これは、多くの場合、TOCの組み込み見出しスタイルと一緒にカスタムスタイルを含む\Oスイッチと組み合わせて使用されます。 <br/>スイッチのパラメータは、スピーチマーク内で囲む必要があります。 多くのカスタムスタイルは、各スタイルのために、名前はカンマで、スタイルが表示されるレベルに従って指定する必要があります `TOC` お問い合わせ また、コンマで区切るスタイルもあります。 <br/>例えば</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>customHeading1 をレベル 1 のコンテンツとしてスタイル化されたコンテンツを使用します。 `TOC` と customHeading2 レベル2.</p>
 |
| TCフィールドを使用する <br/> *(\Fと\Lスイッチ)* <br/> | <p>古いバージョンでは Microsoft Word, ビルドする唯一の方法 `TOC` TCフィールドの使用でした。 フィールドコードを表示しても文書に隠されているフィールドです。 それらはエントリとエントリに表示すべきテキストを含む `TOC` それらから作られています。 この機能はあまり頻繁に使われていませんが、エントリを含むいくつかの機会にはまだ便利です `TOC` 文書に表示されていない。 <br/>フィールドコードを表示しても、これらのフィールドを非表示にすると表示されます。 隠されている内容を見せずに見えない。 これらのフィールドを表示する 段落のフォーマットを選択する必要があります。.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>これらのフィールドは、他のフィールドのように任意の位置で文書に差し込むことができます。 `FieldType.FieldTOCEntry` パンフレット<br/>\F スイッチ `TOC` TC フィールドがエントリとして使用されるべきことを指定するために使用されます。 追加の識別子なしで独自のスイッチは、文書内の任意のTCフィールドが含まれていることを意味します。 追加のパラメータは、多くの場合、単一の文字で、一致する\fスイッチを持っているTCフィールドのみがTOCに含まれていることを指定します。 例えば *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>TCフィールドのみを含む</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>ザ・オブ・ザ・ `TOC` フィールドには関連するスイッチもあります。"\L" スイッチは、指定された範囲内の TC フィールドのみが含まれていることを指定します。</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>ザ・オブ・ザ・ `TC` フィールド自身も持っている `{several, multiple, a few, many, numerous}` スイッチセット。 これらは:</p>

<p>- \F - 上記の説明。 * 必須</p>

<p>- \L - どのレベルをするかを定義します `TOC` このTCフィールドが現れます。 ツイート `TOC` この同じスイッチを使用するのは、指定された範囲内にある場合は、このTCフィールドのみです。</p>

<p>- `_\N` - このページの先頭へ `TOC` エントリーは表示されません。 次のセクションでTCフィールドをインサートする方法のサンプルコードを見ることができます。</p>
 |

### 出現 関連スイッチ

|  スイッチ | コンテンツ |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\Nスイッチ)* | <p>このスイッチは、TOCの特定のレベルのページ番号を隠すために使用されます。 例えば、</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>レベル3と4のエントリのページ番号は、リーダーの点(もしあれば)と一緒に隠されます。 1つのレベルだけを指定するには、たとえば「1-1」は、最初のレベルのみのページ番号を除外します。 <br/>レベル レンジがなくても、TOC のすべてのレベルのページ番号を省略します。 ドキュメントを HTML や同様の形式にエクスポートするときに設定できます。 これは、HTMLベースのフォーマットが任意のページコンセプトを持っていないため、ページ番号を必要としません。</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| ハイパーリンクとしてインサート <br/> *(\Hスイッチ)* | <p>このスイッチは、 `TOC` エントリはハイパーリンクとして入力されます。 ドキュメントを表示する際に Microsoft Word これらのエントリはまだ内部の通常のテキストとして表示されます `TOC` しかし、ハイパーリンクされているため、ドキュメント内の元のエントリの位置を *Ctrl + 左クリック* を使用して移動することができます。 Microsoft Wordお問い合わせ このスイッチが含まれていると、これらのリンクは他の形式で保存されます。 たとえば、EPUBやPDFなどのレンダリングされたフォーマットを含むHTMLベースの形式で、 XPS, これらは、作業リンクとしてエクスポートされます。 <br/>このスイッチ セットなしで、 `TOC` これらのすべての出力は、プレーンテキストとしてエクスポートされ、この動作を実証しません。 MS Wordでドキュメントが開いた場合、エントリのテキストもこの方法ではクリックできませんが、ページ番号は元のエントリにナビゲートするために使用できます。</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\Pスイッチ)* <br/> | <p>このスイッチは、エントリーのタイトルとページ番号をTOCで簡単に変更することができます。 使用するセパレータは、このスイッチの後に指定され、スピーチマークで囲まなければなりません。 <br/>Office のドキュメントで文書化されているものとは対照的に、最大 5 の代わりに 1 つの文字のみを使用できます。 これは、MS の単語と両方の単語に適用されます。 Aspose.Wordsお問い合わせ <br/>TOC内のエントリとページ番号を分離するために使用したものをはるかに制御できないため、このスイッチを使用することは推奨されません。 代わりに、適切な編集をすることをお勧めします `TOC` のような様式 `StyleIdentifier.TOC1` そこでリーダースタイルを編集し、特定のフォントメンバーなどにアクセスします。 この記事で後でこの方法の詳細は後で見つけることができます。</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\Wスイッチ)* | <p>このスイッチを使用すると、タブの文字を持つ任意のエントリが、たとえば、行の最後にタブを持つ見出しが、TOCをポップアップするときに適切なタブ文字として保持されます。 つまり、タブの文字の機能は、 `TOC` エントリーをフォーマットするために使用できる。 たとえば、特定のエントリはタブの停止とタブの文字を使用してテキストを均等にスペースアウトすることができます。 対応する限り `TOC` レベルは、同等のタブが停止し、生成されたタブを定義します。 `TOC` エントリは、同様の間隔で表示されます。 <br/><br/>このスイッチが定義されていない場合と同じ状況では、タブ文字は非機能タブと同じ空白に変換されます。 出力は期待どおりに表示されません。</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\Xスイッチ)* <br/> | <p>上記のスイッチと同様に、このスイッチは、生成されたTOCにあるように、複数の行(改行文字を使用して、段落を分離しない)スパンニングの見出しが保存されることを指定します。 たとえば、複数の行を横断する見出しは、新しい行の文字(Ctrl + Enter または `ControlChar.LineBreak`) 異なる行間でコンテンツを分離する。 このスイッチで指定されたエントリのエントリ `TOC` 以下に示すように、これらの新しい行文字を保存します。 <br/><br/>この状況では、スイッチが定義されていない場合、新しい行文字は単一の空白に変換されます。</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## インサートTCフィールド

現行のTCフィールドを現在の位置で入力できます。 `DocumentBuilder` 呼び出しで `DocumentBuilder.InsertField` フィールド名を、必要なスイッチとともに「TC」として指定します。

次のコードの例では、どのようにしてインサートするかを示します。 `TC` ドキュメントへのフィールド [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)お問い合わせ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

テキストの特定の行が指定されることが多い `TOC` マーク付き `TC` フィールド。 MS Wordでこれを行う簡単な方法は、テキストを強調し、 *ALT + Shift + O *を押すことです。 これは自動的に作成します `TC` 選択したテキストを使用してフィールド。 同じ技術はコードを通して達成することができます。 下のコードは入力に一致するテキストを見つけ、 `TC` テキストと同じ位置のフィールド。 このコードは、記事で使われている同じ技術に基づいています。 次のコードの例では、検索方法とインサート方法を示します。 `TC` 文書内のテキストのフィールド。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## コンテンツの表を変更

### スタイルのフォーマットを変更する

エントリのフォーマット `TOC` マークされたエントリの元のスタイルは使用しません。代わりに、各レベルは同等でフォーマットされます。 `TOC` スタイル。 例えば、最初のレベルは `TOC` とフォーマットされる **トーチ1** スタイル、フォーマットされる第2レベル **トーチ2** スタイル等。 これは、外観を変更することを意味します `TOC` これらのスタイルは変更されなければなりません。 インスタグラム Aspose.Words これらのスタイルは locale に依存しない `StyleIdentifier.TOC1` まで `StyleIdentifier.TOC9` そしてから取ることができます `Document.Styles` これらの識別子を使用してコレクション。

ドキュメントの適切なスタイルがこのスタイルの書式を取得したら変更できます。 これらのスタイルの変更は、文書内のTOCに自動的に反映されます。

次のコードの例では、最初のレベルの書式プロパティが変更されます。 `TOC` スタイル。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

また、段落の直接フォーマット(段落自体で定義され、スタイルではない)が含まれていることに注意する便利です。 `TOC` TOCのエントリーにコピーされます。 例えば、ヘッディング1スタイルがコンテンツのマークに使われた場合 `TOC` そして、このスタイルは、段落が直接それに適用される整形書を持っている間、古いフォーマットを持っています。 その結果 `TOC` スタイルフォーマットの一部であるが、これはパラグラフに直接フォーマットされるので、エントリは太字ではありません。

各エントリーとページ番号の間に使用するセパレータのフォーマットを制御することもできます。 デフォルトでは、タブ文字と右側のタブストップを使用して、ページ番号に渡るドットされた行が右側のマージンにクローズアップされます。

使い方 `Style` 特定のクラスを取得 `TOC` 変更したいレベル、ドキュメントに表示される内容を変更することもできます。

これが最初に表示される方法を変更する `Style.ParagraphFormat` スタイルのための段落の書式を取得するように呼び出される必要があります。 これから、タブの停止は呼び出しによって取得できます `ParagraphFormat.TabStops` 適切なタブは変更を中止します。 タブ自体を移動したり、完全に削除したりすることができます。

次のコードの例では、右タブのポジションを変更する方法を示します。 `TOC` 関連する段落。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## 文書からコンテンツの表を削除

コンテンツの表は、ドキュメントから削除できます。 `FieldStart` および FieldEnd ノード `TOC` フィールド。

以下のコードはこれを示しています。 除去の除去 `TOC` フィールドは、ネストされたフィールドを追跡しないため、通常のフィールドよりも単純です。 代わりに、私達は点検します `FieldEnd` ノードはタイプ `FieldType.FieldTOC` つまり、現在のTOCの最後に遭遇しました。 適切に形成された文書が完全にネストされていないと仮定できるので、このケースでは、ネストされたフィールドを心配することなく使用できます。 `TOC` 別のフィールド `TOC` フィールド。

まず第一に `FieldStart` 各ノード `TOC` 収集および保存されます。 指定された `TOC` その後、フィールド内のすべてのノードが訪問され、保存されます。 ノードはドキュメントから削除されます。 以下のコード例では、指定されたコードを削除する方法を示します。 `TOC` ドキュメントから。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## コンテンツの抽出表

任意のWord文書からコンテンツの表を抽出したい場合は、次のコードサンプルを使用できます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
