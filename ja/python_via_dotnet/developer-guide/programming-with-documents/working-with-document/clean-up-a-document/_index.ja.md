---
title: Python でドキュメントをクリーンアップする
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントをクリーンアップする
linktitle: ドキュメントをクリーンアップする
description: "Python を使用して、未使用または重複した情報を削除して、出力サイズと処理時間を削減します。未使用のスタイル、未使用の組み込みスタイル、重複したスタイル、または未使用のリストを削除します。"
type: docs
weight: 30
url: /ja/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

出力ドキュメントのサイズと処理時間を削減するために、未使用または重複した情報を削除する必要がある場合があります。

スタイルやリストなどの未使用のデータや重複した情報を手動で検索して削除することもできますが、Aspose.Words が提供する機能を使用してこれを行う方がはるかに便利です。

[CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) クラスを使用すると、ドキュメント クリーニングのオプションを指定できます。重複したスタイル、または未使用のスタイルやリストのみをドキュメントから削除するには、[cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) メソッドを使用します。

## ドキュメントから未使用の情報を削除する

[unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) プロパティと [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) プロパティを使用すると、「未使用」としてマークされたスタイルを検出して削除できます。

[unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) プロパティを使用すると、「未使用」としてマークされているリストおよびリスト定義を検出して削除できます。

次のコード例は、ドキュメントから未使用のスタイルのみを削除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## 文書から重複情報を削除する

[duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) プロパティを使用して、重複するすべてのスタイルを元のスタイルに置き換えたり、ドキュメントから重複を削除したりすることもできます。

次のコード例は、ドキュメントから重複したスタイルを削除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
