---
title: Javaでのリストの操作
second_title: Aspose.WordsのためのJava
articleTitle: リストの操作
linktitle: リストの操作
description: "JavaのAspose.Wordsの番号付け書式設定機能の紹介。"
type: docs
weight: 200
url: /ja/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Microsoft Wordドキュメント内のリストは、リストの書式設定プロパティのセットです。 リストは、書式設定、配置、およびテキストを強調するためにあなたの文書で使用することができます。 リストは、ドキュメント内のデータを整理するための優れた方法であり、読者が重要なポイントを理解しやすくします。

各リストには最大9つのレベルがあり、数値スタイル、開始値、インデント、タブ位置などの書式設定プロパティは、レベルごとに個別に定義されます。

この記事では、Aspose.Wordsを使用してリストをプログラムで操作する方法について説明します。

## リストの書式設定を適用してリストを作成する

Aspose.Wordsリストの書式設定を適用することで、リストを簡単に作成できます。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)は**ListFormat**オブジェクトを返す[ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat)プロパティを提供します。 このオブジェクトには、リストの開始と終了、およびインデントの増減を行ういくつかのメソッドがあります。 Microsoft Wordには、箇条書きと番号付きの2つの一般的なタイプのリストがあります:

- 箇条書きリストを開始するには、[ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)を呼び出します
- 番号付きリストを開始するには、[ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)を呼び出します

箇条書きまたは番号と書式設定が現在の段落に追加され、[RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers)まで**DocumentBuilder**を使用して作成されたすべての段落が呼び出されて箇条書きリストの書式設定

Word文書では、リストは最大9つのレベルで構成されています。 各レベルのリストの書式設定は、使用される箇条書きまたは番号、左インデント、箇条書きとテキストの間のスペースなどを指定します。 次のメソッドは、リストレベルを変更し、新しいレベルの書式設定プロパティを適用します:

- 現在の段落のリストレベルを1レベル上げるには、[ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)を呼び出します
- 現在の段落のリストレベルを1レベル下げるには、[ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)を呼び出します

これらのメソッドは、リストレベルを変更し、新しいレベルの書式設定プロパティを適用します。

{{% alert color="primary" %}}

また、[ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber)プロパティを使用して、段落のリストレベルを取得または設定することもできます。 リストレベルには0から8の番号が付けられています。

{{% /alert %}}

次のコード例は、マルチレベルリストを作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## リストレベルの書式設定の指定

リストレベルのオブジェクトは、リストの作成時に自動的に作成されます。 リストの個々のレベルの書式設定を制御するには、[ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/)クラスのプロパティとメソッドを使用します。

## 各セクションのリストを再起動します

[IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection)プロパティを使用して、各セクションのリストを再起動できます。 このオプションはRTF、DOC、DOCXのドキュメント形式でのみサポートされています。 このオプションは、OoxmlComplianceがEcma376よりも高い場合にのみDOCXに書き込まれます。

次のコード例は、リストを作成して各セクションで再起動する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

