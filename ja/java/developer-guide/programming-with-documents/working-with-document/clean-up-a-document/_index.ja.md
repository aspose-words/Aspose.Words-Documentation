---
title: ドキュメントをクリーンアップ Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントをクリーンアップ
linktitle: ドキュメントをクリーンアップ
description: "未使用または重複情報を削除し、出力サイズと処理時間を削減します。 未使用のスタイル、未使用の組み込みスタイル、重複スタイル、または未使用リストを削除 Javaお問い合わせ"
type: docs
weight: 30
url: /ja/java/clean-up-a-document/
---

場合によっては、未使用または重複情報を削除して、出力文書のサイズと処理時間を減らす必要があります。

スタイルやリスト、または手動で情報を複製するなど、未使用のデータを見つけて削除することができますが、機能や機能を使用してこれを行うのははるかに便利です。 Aspose.Wordsお問い合わせ

ザ・オブ・ザ・ [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) クラスでは、ドキュメントのクリーニングのオプションを指定できます。 重複したスタイルや未使用のスタイルやリストをドキュメントから削除するには、 [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) メソッド。

## ドキュメントから未使用情報を削除します

使うことができます。 [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) そして、 [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) "unused" とマークされているスタイルを検出して削除するプロパティ。

使うことができます。 [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) "unused" としてマークされているリストとリスト定義を検出して削除するプロパティ。

次のコードの例では、未使用のスタイルのみをドキュメントから削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## ドキュメントから重複情報を削除する

また、 [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) すべての重複スタイルを元のスタイルに代入し、文書から重複を削除します。

次のコードの例では、ドキュメントから重複スタイルを削除する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
