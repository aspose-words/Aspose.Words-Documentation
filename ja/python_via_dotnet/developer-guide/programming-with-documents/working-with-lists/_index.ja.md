---
title: Python でのリストの操作
second_title: Python via .NET用Aspose.Words
articleTitle: リストの操作
linktitle: リストの操作
description: "Python を使用して、ドキュメント内のリストを作成、指定し、再起動します。"
type: docs
weight: 200
url: /ja/python-net/working-with-lists/
---

Microsoft Word ドキュメント内のリストは、リストの書式設定プロパティのセットです。リストを文書内で使用して、テキストの書式設定、配置、強調を行うことができます。リストは文書内のデータを整理するための優れた方法であり、読者が重要なポイントを理解しやすくなります。

各リストには最大 9 レベルを含めることができ、数値スタイル、開始値、インデント、タブ位置などの書式設定プロパティはレベルごとに個別に定義されます。

Aspose.Words では、リストの操作は [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) モジュールによって表されます。ただし、[List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) オブジェクトは常に [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) コレクションに属します。

このトピックでは、Aspose.Words を使用してリストをプログラムで操作する方法について説明します。

## リストの書式設定を適用してリストを作成する

Aspose.Words を使用すると、リストの書式設定を適用してリストを簡単に作成できます。 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) は、[ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) オブジェクトを返す [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) プロパティを提供します。このオブジェクトには、リストを開始および終了したり、インデントを増減したりするためのメソッドがいくつかあります。 Microsoft Word には、箇条書きと番号付きの 2 つの一般的なタイプのリストがあります。

- 箇条書きリストを開始するには、[ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/) を呼び出します。
- 番号付きリストを開始するには、[ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/) を呼び出します。

箇条書きまたは番号と書式設定は、[ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) が呼び出されて箇条書きリストの書式設定が停止されるまで、現在の段落と、[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) を使用して作成された以降のすべての段落に追加されます。

Word 文書では、リストは最大 9 レベルで構成されます。各レベルのリストの書式設定では、使用する箇条書きや番号、左インデント、箇条書きとテキストの間のスペースなどを指定します。次のメソッドはリスト レベルを変更し、新しいレベルの書式設定プロパティを適用します。

- 現在の段落のリスト レベルを 1 レベル上げるには、[ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/) を呼び出します。
- 現在の段落のリスト レベルを 1 レベル下げるには、[ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/) を呼び出します。

これらのメソッドはリスト レベルを変更し、新しいレベルの書式設定プロパティを適用します。

{{% alert color="primary" %}}

[ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) プロパティを使用して、段落のリスト レベルを取得または設定することもできます。リスト レベルには 0 ～ 8 の番号が付けられます。

{{% /alert %}}

以下の例は、複数レベルのリストを作成する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## リストレベルの書式設定の指定

リストレベルのオブジェクトは、リストの作成時に自動的に作成されます。 [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) クラスのプロパティとメソッドを使用して、リストの個々のレベルの書式設定を制御します。

## 各セクションの再開リスト

[is_restart_at_each_section プロパティ](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) プロパティを使用して、セクションごとにリストを再開できます。このオプションは、RTF、DOC、および DOCX ドキュメント形式でのみサポートされていることに注意してください。このオプションは、OoxmlCompliance が Ecma376 より高い場合にのみ DOCX に書き込まれます。

次のコード例は、リストを作成してセクションごとに再起動する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
