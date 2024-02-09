---
title: C# でのリストの操作
second_title: .NET用Aspose.Words
articleTitle: リストの操作
linktitle: リストの操作
description: "Aspose.Words for .NET の番号付け書式設定機能の紹介。"
type: docs
weight: 200
url: /ja/net/working-with-lists/
---

Microsoft Word ドキュメント内のリストは、段落書式設定プロパティのセットです。リストを文書内で使用して、テキストを構造化し、配置し、強調表示することができます。リストは、読者が重要なポイントを理解しやすくする方法で文書内のデータを整理するための優れた方法です。

各リストには最大 9 レベルを含めることができ、数値スタイル、開始値、インデント、タブ位置などの書式設定プロパティはレベルごとに個別に定義されます。

Aspose.Words では、リストの操作は [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) 名前空間によって表されます。ただし、[List](https://reference.aspose.com/words/net/aspose.words.lists/list/) オブジェクトは常に [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/) に属します。

この記事では、Aspose.Words を使用してプログラムでリストを操作する方法について説明します。

## リストの書式設定を適用してリストを作成する

Aspose.Words を使用すると、リストの書式設定を適用してリストを簡単に作成できます。 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) は、**ListFormat** オブジェクトを返す [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) プロパティを提供します。このオブジェクトには、リストを開始および終了したり、インデントを増減したりするためのメソッドがいくつかあります。 Microsoft Word には、箇条書きと番号付きの 2 つの一般的なタイプのリストがあります。

- 箇条書きリストを開始するには、[ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/) を呼び出します。
- 番号付きリストを開始するには、[ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/) を呼び出します。

箇条書きまたは番号と書式設定は、[RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) が呼び出されて箇条書きリストの書式設定が停止されるまで、現在の段落と、**DocumentBuilder** を使用して作成された以降のすべての段落に追加されます。

Word 文書では、リストは最大 9 レベルで構成されます。各レベルのリストの書式設定では、使用する箇条書きや番号、左インデント、箇条書きとテキストの間のスペースなどを指定します。次のメソッドはリスト レベルを変更し、新しいレベルの書式設定プロパティを適用します。

- 現在の段落のリスト レベルを 1 レベル上げるには、[ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/) を呼び出します。
- 現在の段落のリスト レベルを 1 レベル下げるには、[ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/) を呼び出します。

[ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) プロパティを使用して、段落のリスト レベルを取得または設定することもできます。

{{% alert color="primary" %}}

リスト レベルには 0 ～ 8 の番号が付けられます。

{{% /alert %}}

次のコード例は、複数レベルのリストを作成する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## リストレベルの書式設定の指定

リストレベルのオブジェクトは、リストの作成時に自動的に作成されます。 [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) クラスのプロパティとメソッドを使用して、リストの個々のレベルの書式設定を制御します。

## 各セクションの再開リスト

[IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) プロパティを使用して、セクションごとにリストを再開できます。このオプションは、RTF、DOC、および DOCX ドキュメント形式でのみサポートされていることに注意してください。このオプションは、OoxmlCompliance が Ecma376 より高い場合にのみ DOCX に書き込まれます。

次のコード例は、リストを作成してセクションごとに再起動する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
