---
title: Javaで文書をクリーンアップする
second_title: Aspose.WordsのためのJava
articleTitle: 文書のクリーンアップ
linktitle: 文書のクリーンアップ
description: "未使用または重複した情報を削除して、出力サイズと処理時間を短縮します。 Javaを使用して、未使用のスタイル、未使用の組み込みスタイル、重複したスタイル、または未使用のリストを削除します。"
type: docs
weight: 30
url: /ja/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

出力文書のサイズと処理時間を短縮するために、未使用または重複した情報を削除する必要がある場合があります。

スタイルやリストなどの未使用のデータを手動で検索して削除したり、情報を重複させたりすることはできますが、Aspose.Wordsが提供する機能を使用してこれを行う方がはるかに便利です。

[CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/)クラスを使用すると、文書のクリーニングのオプションを指定できます。 文書から重複したスタイルまたは未使用のスタイルまたはリストのみを削除するには、[Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup)メソッドを使用できます。

## 文書から未使用の情報を削除する

[UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles)および[UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles)プロパティを使用して、"未使用"としてマークされているスタイルを検出および削除できます。

[UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists)プロパティを使用すると、"未使用"としてマークされているリストおよびリスト定義を検出および削除できます。

次のコード例は、未使用のスタイルのみをドキュメントから削除する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## 文書から重複した情報を削除する

また、[DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle)プロパティを使用して、すべての重複スタイルを元のスタイルに置き換え、文書から重複を削除することもできます。

次のコード例は、ドキュメントから重複したスタイルを削除する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
