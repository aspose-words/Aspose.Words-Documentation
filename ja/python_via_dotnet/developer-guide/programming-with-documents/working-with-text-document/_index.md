---
title: テキストドキュメントの操作
second_title: Python via .NET用Aspose.Words
articleTitle: テキストドキュメントの操作
linktitle: テキストドキュメントの操作
description: "Python を使用してテキスト ドキュメントを操作し、そのオブジェクトを変更します。"
type: docs
weight: 430
url: /ja/python-net/working-with-text-document/
---

この記事では、Aspose.Words を介してテキスト ドキュメントを操作する場合に役立つオプションを学びます。これは利用可能なオプションの完全なリストではなく、それらの一部を使用する例にすぎないことに注意してください。

## 双方向マークの追加

[add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) プロパティを使用して、プレーン テキスト形式でエクスポートするときに各 BiDi を実行する前に双方向マークを追加するかどうかを指定できます。 Aspose.Words は、テキスト内の各双方向 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) の前に Unicode 文字「RIGHT-TO-LEFT MARK」(U+200F) を挿入します。このオプションは、プレーン テキスト形式にエクスポートする場合の MS Word ファイル変換ダイアログの [双方向マークを追加] オプションに対応します。 MS Word にアラビア語またはヘブライ語の編集言語が追加されている場合にのみダイアログに表示されることに注意してください。

次のコード例は、[add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) プロパティの使用方法を示しています。このプロパティのデフォルト値は `False` です。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## TXTのロード中にリスト項目を認識する

Aspose.Words は、テキスト ファイルのリスト項目をリスト番号またはプレーン テキストとしてドキュメント オブジェクト モデルにインポートできます。 [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) プロパティを使用すると、ドキュメントをプレーン テキスト形式からインポートするときに番号付きリスト項目をどのように認識するかを指定できます。

* このオプションが `True` に設定されている場合、空白もリスト番号の区切り文字として使用されます。アラビア語形式の番号付け (1.、1.1.2.) のリスト認識アルゴリズムでは、空白とドット (「.」) 記号の両方が使用されます。
* このオプションが `False` に設定されている場合、リスト認識アルゴリズムは、リスト番号がドット、右括弧、または箇条書き記号 (「•」、「*」、「-」、または「o」など) で終わる場合にリストの段落を検出します。

次のコード例は、このプロパティの使用方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## TXTのロード中に先頭と末尾のスペースを処理する

TXT ファイルのロード中に先頭と末尾のスペースを処理する方法を制御できます。先頭のスペースはトリミング、保存、またはインデントに変換でき、末尾のスペースはトリミングまたは保存できます。

次のコード例は、TXT ファイルのインポート中に先頭と末尾のスペースをトリミングする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## ドキュメントのテキスト方向の検出

Aspose.Words は、ドキュメント内のテキストの方向 (RTL / LTR) を検出するために、[TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) クラスに [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) プロパティを提供します。このプロパティは、[DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/) 列挙で提供されるドキュメント テキストの方向を設定または取得します。デフォルト値は左から右です。

次のコード例は、TXT ファイルのインポート中にドキュメントのテキストの方向を検出する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## 出力TXTでヘッダーとフッターをエクスポート

出力TXTドキュメントのヘッダーとフッターをエクスポートしたい場合は、[export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/)プロパティを使用できます。このプロパティは、ヘッダーとフッターをプレーン テキスト形式にエクスポートする方法を指定します。

次のコード例は、ヘッダーとフッターをプレーン テキスト形式にエクスポートする方法を示しています。

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## 出力 TXT のエクスポート リストのインデント

Aspose.Words では、プレーン テキスト形式にエクスポートする際にリスト レベルのインデント方法を指定できる [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) クラスが導入されました。 [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/) を操作する場合、リスト レベルのインデントに使用する文字を指定するための [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) プロパティと、1 つのリスト レベルごとにインデントとして使用する文字数を指定する count が提供されます。文字プロパティのデフォルト値は「\0」で、インデントがないことを示します。 count プロパティのデフォルト値は 0 で、インデントなしを意味します。

### タブ文字の使用

次のコード例は、タブ文字を使用してリスト レベルをエクスポートする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### スペース文字の使用

次のコード例は、スペース文字を使用してリスト レベルをエクスポートする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

