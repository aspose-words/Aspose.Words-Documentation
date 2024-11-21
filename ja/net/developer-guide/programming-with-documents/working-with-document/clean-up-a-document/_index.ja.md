---
title: C# でドキュメントをクリーンアップする
second_title: .NET用Aspose.Words
articleTitle: ドキュメントをクリーンアップする
linktitle: ドキュメントをクリーンアップする
description: "C# を使用して、未使用または重複した情報を削除して、出力サイズと処理時間を削減します。未使用のスタイル、未使用の組み込みスタイル、重複したスタイル、または未使用のリストを削除します。"
type: docs
weight: 30
url: /ja/net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

出力ドキュメントのサイズと処理時間を削減するために、未使用または重複した情報を削除する必要がある場合があります。

スタイルやリストなどの未使用のデータや重複した情報を手動で検索して削除することもできますが、Aspose.Words が提供する機能を使用してこれを行う方がはるかに便利です。

[CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) クラスを使用すると、ドキュメント クリーニングのオプションを指定できます。重複したスタイル、または未使用のスタイルやリストのみをドキュメントから削除するには、[Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) メソッドを使用します。

## ドキュメントから未使用の情報を削除する

[UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) プロパティと [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) プロパティを使用すると、「未使用」としてマークされたスタイルを検出して削除できます。

[UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) プロパティを使用すると、「未使用」としてマークされているリストおよびリスト定義を検出して削除できます。

次のコード例は、ドキュメントから未使用のスタイルのみを削除する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## 文書から重複情報を削除する

[DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) プロパティを使用して、重複するすべてのスタイルを元のスタイルに置き換えたり、ドキュメントから重複を削除したりすることもできます。

次のコード例は、ドキュメントから重複したスタイルを削除する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
