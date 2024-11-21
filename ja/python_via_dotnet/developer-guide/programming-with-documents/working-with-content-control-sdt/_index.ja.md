---
title: コンテンツ コントロール SDT の使用
second_title: Python via .NET用Aspose.Words
articleTitle: コンテンツ コントロール SDT の使用
linktitle: コンテンツ コントロール SDT の使用
description: "Python を使用すると、顧客定義のセマンティクスとその動作や外観をドキュメントに埋め込むことができます。"
type: docs
weight: 390
url: /ja/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Microsoft Word では、テンプレートから始めて、チェックボックス、テキスト ボックス、日付ピッカー、ドロップダウン リストなどのコンテンツ コントロールを追加することでフォームを作成できます。 Aspose.Words では、Aspose.Words にロードされたドキュメントの構造化ドキュメント タグまたはコンテンツ コントロールが [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) ノードとしてインポートされます。構造化ドキュメント タグ (SDT またはコンテンツ コントロール) を使用すると、顧客定義のセマンティクスとその動作および外観をドキュメントに埋め込むことができます。 [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) は、ドキュメント内の次の場所に使用できます。

- ブロックレベル - 段落と表の間で、[Body](https://reference.aspose.com/words/python-net/aspose.words/body/)、[HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)、[Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)、[Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)、または [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ノードの子として
- 行レベル - テーブル内の行の間で、[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ノードの子として
- セルレベル - テーブル行内のセルの間で、[Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ノードの子として
- インラインレベル - 内部のインラインコンテンツの中で、[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) の子として
- 別の [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) 内にネストされている

## ドキュメントへのコンテンツ コントロールの挿入

このバージョンの Aspose.Words では、次のタイプの SDT またはコンテンツ コントロールを作成できます。

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

次のコード例は、チェックボックス タイプのコンテンツ コントロールを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

次のコード例は、リッチ テキスト ボックス タイプのコンテンツ コントロールを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

次のコード例は、タイプ コンボ ボックスのコンテンツ コントロールを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## コンテンツ コントロールを更新する方法

このセクションでは、SDT またはコンテンツ コントロールの値をプログラムで更新する方法について説明します。

次のコード例は、チェックボックスの現在の状態を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

次のコード例は、プレーン テキスト ボックス、ドロップダウン リスト、および画像タイプのコンテンツ コントロールを変更する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

これらの例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx) からダウンロードできます。

{{% /alert %}}

## コンテンツ コントロールをカスタム XML パーツにバインドする

Word 文書内の XML データ (*カスタム XML 部分*) にコンテンツ コントロールをバインドできます。

次のコード例は、コンテンツ コントロールをカスタム XML 部分にバインドする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## 構造化文書タグ範囲の XML マッピング

[StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) プロパティを使用すると、この構造化ドキュメントのタグ範囲と現在のドキュメントのカスタム XML 部分の XML データとのマッピングを取得できます。ただし、[set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) メソッドを使用して、構造化文書のタグ範囲を XML データにマップすることはできます。

次のコード例は、XML マッピングを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## コンテンツ コントロールのコンテンツをクリアする

プレースホルダーを表示すると、コンテンツ コントロールのコンテンツをクリアできます。 [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) メソッドは、この構造化文書タグの内容をクリアし、プレースホルダーが定義されている場合はそれを表示します。ただし、コンテンツ コントロールにリビジョンがある場合、コンテンツ コントロールの内容をクリアすることはできません。コンテンツ コントロールにプレースホルダーがない場合は、MS Word と同様に 5 つのスペースが挿入されます (繰り返しセクション、繰り返しセクション項目、グループ、チェックボックス、引用を除く)。コンテンツ コントロールがカスタム XML にマップされている場合、参照された XML ノードはクリアされます。

次のコード例は、コンテンツ コントロールのコンテンツをクリアする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## コンテンツ コントロールの背景と境界線の色の変更

[StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) プロパティを使用すると、コンテンツ コントロールの色を取得または設定できます。色は、次の 2 つの状況でコンテンツ コントロールに影響します。

1. MS Word は、マウスをコンテンツ コントロール上に移動すると、コンテンツ コントロールの背景を強調表示します。これは、コンテンツ コントロールを識別するのに役立ちます。ハイライトの色は*color*よりも少し「柔らかい」です。たとえば、*color* が赤の場合、MS Word は背景をピンク色で強調表示します。
2. コンテンツ コントロールを操作 (編集、選択など) すると、コンテンツ コントロールの境界線が *color* で色付けされます。

次のコード例は、コンテンツ コントロールの色を変更する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## スタイルを設定してコンテンツ コントロールに入力されたテキストの書式を設定する方法

コンテンツ コントロールのスタイルを設定する場合は、[StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) または [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) プロパティを使用できます。出力ドキュメントのコンテンツ コントロールにテキストを入力すると、入力されたテキストのスタイルは「引用」になります。

{{% alert color="primary" %}}

コンテンツ コントロールに適用できるのは、リンク スタイルと文字スタイルのみであることに注意してください。存在するがリンクされていないスタイルまたは文字スタイルが適用されている場合、例外 (「このスタイルを SDT に適用できません」) がスローされます。

{{% /alert %}}

次のコード例は、コンテンツ コントロールのスタイルを設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## 繰り返しセクションのコンテンツ コントロールの操作

繰り返しセクションのコンテンツ コントロールを使用すると、その中に含まれるコンテンツを繰り返すことができます。 Aspose.Words を使用すると、繰り返しセクションおよび繰り返しセクション項目タイプの構造化文書タグ ノードを作成できます。この目的のために、[SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) 列挙タイプは [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) プロパティを提供します。

次のコード例は、繰り返しセクションのコンテンツ コントロールをテーブルにバインドする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
