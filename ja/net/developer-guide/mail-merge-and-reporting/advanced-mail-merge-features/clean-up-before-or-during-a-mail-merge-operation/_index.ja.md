---
title: Mail Mergeの前または中にクリーンアップします
second_title: Aspose.Wordsのための.NET
articleTitle: Mail Merge操作の前または中にクリーンアップします
linktitle: Mail Merge操作の前または中にクリーンアップします
type: docs
description: "Mail Merge操作を実行する前に差し込み項目を削除したり、Mail Merge操作中にC#を使用して未使用領域を削除したりするなど、さまざまなクリーニングおよび削除オプ"
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /ja/net/clean-up-before-or-during-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Aspose.Wordsを使用すると、Mail Merge操作を実行する前に差し込み項目を削除したり、Mail Merge操作中に使用されていない領域を削除したりするなど、さまざまなクリーニングと削除のオプションを適用できます。 このセクションでは、マージされたフィールドを削除する方法と、削除オプションを設定する方法について説明します。

## マージされたフィールドの削除

他のユーザーによって作成された長いテンプレートを使用している場合は、Mail Merge操作を実行する前に、そのテンプレートに既に存在する差し込み項目をすべて削 Mail Merge操作を実行せずに文書からすべての差し込み項目を削除する場合は、[DeleteFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/deletefields/)メソッドを使用できます。 このメソッドは[CleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/cleanupoptions/)プロパティの削除オプションの影響を受けず、実行するとマージされたフィールドのみが削除され、フィールドや空の段落は削除されません。

次のコード例は、Mail Merge操作を実行せずにテンプレートからすべての差し込み項目を削除する方法を示しています:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "delete-fields.cs" >}}

## `Removing`オプションの設定

Aspose.Wordsを使用すると、削除オプションを使用してMail Merge操作中にテンプレートからマージされていないフィールド、領域、および段落を削除できます。

削除オプションを設定するには、[MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/)列挙体とともに**CleanupOptions**プロパティを使用します。 次のオプションを選択して、削除する項目を指定します（複数の項目を組み合わせることができます）。:

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

別のデータソースを使用してデータをマージする場合、これらの削除オプションはMail Mergeexecuteメソッドの最後の呼び出しでのみ有効になります。

{{% /alert %}}

### 空の段落を削除する

差し込み項目のみを含む段落は、Mail Mergeプロセスがすべての差し込み項目をマージされていないものとして削除すると空になります。 これらの空の段落は、不要なスペースを追加し、生成されたレポートの外観を変更することができます。 Mail Merge操作中に段落で二つの状況に直面する可能性があります:

1. Mail Mergeフィールドは空のデータとマージされます。
2. 差し込み項目は使用されず、削除されます。

どちらの状況でも、**RemoveEmptyParagraphs**オプションは文書から空の段落を自動的に削除します。 また、段落の残りの部分が空の場合、`TableStart`とTableEndの差し込み項目が削除されます。

次のコード例は、空の段落を削除する方法を示しています:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-paragraphs.cs" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### 未使用領域の削除

以前のバージョンのAspose.Wordsでは、Mail Merge操作中に空のMail Merge領域がドキュメントから自動的に削除されました。 Asposeの最新バージョンを使用します。デフォルトでは、空のMail Merge領域はMail Merge操作の後に残ります。 ただし、**RemoveUnusedRegions**オプションを使用して、Mail Merge操作中に未使用のMail Merge領域を削除することができます。 たとえば、ドキュメント内の未使用領域につながるデータテーブルが含まれていない空のデータソースとドキュメントをマージできます。

次のコード例は、未使用のマージ領域を削除する方法を示しています:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unmerged-regions.cs" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**メモ**

### 未使用フィールドの削除

Aspose.Wordsは、**RemoveUnusedFields**フラグを**CleanupOptions**に割り当てることにより、未使用のMail Mergeフィールドを削除できます。 このオプションを使用すると、データソースに対応するデータがない差し込み項目が削除されます。

次のコード例は、Mail Merge操作中にドキュメントから未使用の差し込み項目を自動的に削除する方法を示しています:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unused-fields.cs" >}}

### 含まれているフィールドの削除

差し込み項目は、**IF**項目や数式項目などの別の項目に含めることができます。 差し込み項目が文書からマージまたは削除されたときに、この外部フィールドを削除します。

次のコード例は、差し込み項目を含む項目をドキュメントから削除する方法を示しています:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-containing-fields.cs" >}}

**メモ**

### 空のテーブル行を削除する

Aspose.Words**RemoveEmptyTableRows**フラグを**CleanupOptions**に割り当てることにより、空のテーブル行を削除できます。 このオプションは、空の差し込み項目を含むテーブル行を削除します。

次のコード例は、ドキュメントからMail Merge領域を含む空のテーブル行を削除する方法を示しています:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-table-rows.cs" >}}
