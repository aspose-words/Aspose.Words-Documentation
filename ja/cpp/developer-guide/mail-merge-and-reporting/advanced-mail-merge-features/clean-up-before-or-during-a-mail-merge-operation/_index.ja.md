---
title: Mail Merge操作の前または中にクリーンアップします
second_title: Aspose.WordsのためのC++
articleTitle: Mail Merge操作の前または中にクリーンアップします
linktitle: Mail Merge操作の前または中にクリーンアップします
type: docs
description: "Mail merge操作を実行する前に差し込み項目を削除したり、mail merge操作中に使用されていない領域を削除したりするなど、さまざまなクリーニングおよび削除オプ"
keywords: "cleanup options mail merge c#"
weight: 10
url: /ja/cpp/clean-up-before-or-during-mail-merge/
---

Aspose.Wordsを使用すると、mail merge操作を実行する前に差し込み項目を削除したり、mail merge操作中に使用されていない領域を削除したりするなど、さまざまなクリーニングと削除のオプションを適用できます。 このセクションでは、マージされたフィールドを削除する方法と、削除オプションを設定する方法について説明します。

## マージされたフィールドの削除

他のユーザーによって作成された長いテンプレートを使用している場合は、mail merge操作を実行する前に、そのテンプレートに既に存在する差し込み項目をすべて削 mail merge操作を実行せずに文書からすべての差し込み項目を削除する場合は、[DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/)メソッドを使用できます。 このメソッドは[CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/)プロパティの削除オプションの影響を受けず、実行するとマージされたフィールドのみが削除され、フィールドや空の段落は削除されません。

次のコード例は、mail merge操作を実行せずにテンプレートからすべての差し込み項目を削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## `Removing`オプションの設定

Aspose.Wordsを使用すると、削除オプションを使用してmail merge操作中にテンプレートからマージされていないフィールド、領域、および段落を削除できます。

削除オプションを設定するには、[MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/)列挙体とともに**CleanupOptions**プロパティを使用します。 次のオプションを選択して、削除する項目を指定します（複数の項目を組み合わせることができます）。:

* 空の段落を削除する
* 未使用領域の削除
* 未使用フィールドの削除
* 含まれているフィールドを削除します
* 静的フィールドの削除
* 空のテーブル行を削除する

差し込み項目は、次のいずれかの条件でマージされていないと見なすことができます:

1. データソースの差し込み項目に列またはマッピング項目がない場合。
2. データソースの差し込み項目にマッピング項目が含まれているが、データがnullの場合。

{{% alert color="primary" %}}

別のデータソースを使用してデータをマージする場合、これらの削除オプションはmail mergeexecuteメソッドの最後の呼び出しでのみ有効になります。

{{% /alert %}}

### 空の段落を削除する

差し込み項目のみを含む段落は、mail mergeプロセスがすべての差し込み項目をマージされていないものとして削除すると空になります。 これらの空の段落は、不要なスペースを追加し、生成されたレポートの外観を変更することができます。 mail merge操作中に段落で二つの状況に直面する可能性があります:

1. mail mergeフィールドは空のデータとマージされます。
2. 差し込み項目は使用されず、削除されます。

どちらの場合も、**RemoveEmptyParagraphs**オプションは文書から空の段落を自動的に削除します。 また、段落の残りの部分が空の場合、`TableStart`とTableEndの差し込み項目が削除されます。

次のコード例は、空の段落を削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### 未使用フィールドの削除

Aspose.Wordsは、**RemoveUnusedFields**フラグを**CleanupOptions**に割り当てることにより、未使用のmail mergeフィールドを削除できます。 このオプションを使用すると、データソースに対応するデータがない差し込み項目が削除されます。

次のコード例は、mail merge操作中にドキュメントから未使用の差し込み項目を自動的に削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### 含まれているフィールドの削除

差し込み項目は、**IF**項目や数式項目などの別の項目に含めることができます。 差し込み項目が文書からマージまたは削除されたときに、この外部フィールドを削除します。

次のコード例は、差し込み項目を含む項目をドキュメントから削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**メモ**

### 空のテーブル行を削除する

Aspose.Words**RemoveEmptyTableRows**フラグを**CleanupOptions**に割り当てることにより、空のテーブル行を削除できます。 このオプションは、空の差し込み項目を含むテーブル行を削除します。

次のコード例は、ドキュメントからmail merge領域を含む空のテーブル行を削除する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
