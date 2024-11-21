---
title: リストでの作業 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: リストと連携
linktitle: リストと連携
description: "数値フォーマット機能の紹介 Aspose.Words お問い合わせ Javaお問い合わせ"
type: docs
weight: 200
url: /ja/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

リスト Microsoft Word ドキュメントはリストの書式プロパティのセットです。 リストは、テキストのフォーマット、配置、強調のために文書で使用できます。 リストは、文書内のデータを整理するための素晴らしい方法です。読者が重要なポイントを理解するのは簡単です。

各リストには、番号スタイル、開始値、インデント、タブ位置などの9レベルおよびフォーマットプロパティが各レベルごとに定義されています。

この記事では、プログラム的にリストを使用して作業を説明します Aspose.Wordsお問い合わせ

## リストのフォーマットを適用することでリストを作成する

Aspose.Words リストのフォーマットを適用することでリストを簡単に作成できます。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 提供して下さい [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) を返すプロパティ **ListFormat** オブジェクト。 このオブジェクトは、リストを開始して終了し、インデントを増加/減少させるいくつかの方法を持っています。 リストの一般タイプは2種類あります Microsoft Word: 箇条書きと番号:

- 箇条書きリストを開始するには、呼び出し [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- 番号付きリストを開始するには、呼び出し [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

現在の段落に箇条書きまたは番号と書式が追加され、使用したすべての段落が追加されます。 **DocumentBuilder** まで [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) 箇条書きのフォーマットを停止するために呼び出されます。

ワード文書では、リストは9レベルまで構成できます。 各レベルのリストのフォーマットは、弾丸や数字が使用されるか、左インデント、弾丸とテキストの間隔などを指定します。 次のメソッドはリストレベルを変更し、新しいレベルの書式プロパティを適用します。

- - - 現在の段落の一覧レベルを1つのレベルに引き上げるために、呼び出し [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- - - 現在の段落の一覧レベルを1レベルに下げるには、呼び出し [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

メソッドはリストレベルを変更し、新しいレベルの書式プロパティを適用します。

{{% alert color="primary" %}}

また、 [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) 段落のリストレベルを取得または設定するプロパティ。 リストレベルは 0 から 8 までです。

{{% /alert %}}

次のコードの例では、マルチレベルリストを作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## リストレベルの書式を指定する

リストレベルのオブジェクトがリスト作成時に自動的に作成されます。 プロパティとメソッドを使用する [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) リストの個々のレベルのフォーマットを制御するクラス。

## 各セクションのリストを再起動する

セクションごとにリストを再起動できます。 [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) 宿泊施設 このオプションはRTF、DOC、DOCXのドキュメントフォーマットでのみサポートされています。 このオプションは、OoxmlCompliance がより高い場合のみ、DOCX に書かれます。 Ecma376.

次のコードの例では、リストの作成と各セクションの再起動方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

