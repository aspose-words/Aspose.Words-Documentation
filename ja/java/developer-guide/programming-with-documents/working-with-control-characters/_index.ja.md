---
title: 制御文字の操作
second_title: Aspose.WordsのためのJava
articleTitle: 制御文字の操作
linktitle: 制御文字の操作
description: "JavaのAspose.Wordsの制御文字を操作するための概要です。"
type: docs
weight: 400
url: /ja/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word文書には、特別な意味を持つさまざまな文字を含めることができます。 通常、これらは書式設定の目的で使用され、通常モードでは描画されません。 標準ツールバーにある書式マークの表示/非表示ボタンをクリックすると、それらを表示することができます。

時には、テキストに/から文字を追加または削除する必要がある場合があります。 たとえば、文書からプログラムでテキストを取得する場合、Aspose.Wordsはほとんどの制御文字を保持するため、このテキストを操作する必要がある場合は、文字を削除または置換する必要があります。

[ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)クラスは、ドキュメントでよく見られる制御文字を表す定数のリポジトリです。 同じ定数のcharバージョンとstringバージョンの両方を提供します。 たとえば、string[LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK)とchar[LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR)の値は同じです。

{{% alert color="primary" %}}

制御文字を扱うときはいつでもこのクラスを使用してください。

{{% /alert %}}

制御文字の使用方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
