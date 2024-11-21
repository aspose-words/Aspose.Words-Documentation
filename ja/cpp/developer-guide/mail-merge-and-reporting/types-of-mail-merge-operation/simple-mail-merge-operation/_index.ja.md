---
title: C++の単純なMail Merge操作
second_title: Aspose.WordsのためのC++
articleTitle: 単純なMail Merge操作
linktitle: 単純なMail Merge操作
type: docs
description: "テンプレート内のmail mergeフィールドにデータソースから必要なデータを入力するには、単純なmail mergeを使用します。Microsoft Wordの古典的なmail mergeに似ています。 テンプレートに1つ以上の差し込み項目を追加し、単純なmail merge操作を実行します。"
keywords: "how to execute mail merge c++"
weight: 10
url: /ja/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

単純なmail mergeは、テンプレート内のmail mergeフィールドにデータソースから必要なデータ(単一のテーブル表現)を入力するために使用されます。 したがって、Microsoft Wordの古典的なmail mergeに似ています。

テンプレートに1つ以上の差し込み項目を追加して、単純なmail merge操作を実行することができます。 テンプレートにマージ領域が含まれていない場合は、これを使用することをお勧めします。

このタイプを使用する主な制限は、データソース内の各レコードに対してドキュメントコンテンツ全体が繰り返されることです。

## 簡単なMail Merge操作を実行するにはどうすればよいですか

テンプレートの準備ができたら、簡単なmail merge操作の実行を開始できます。 Aspose.Wordsを使用すると、さまざまなデータオブジェクトをデータソースとして受け入れるさまざまな[Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/)メソッドを使用して、単純なmail merge操作を実行できます。

次のコード例は、[Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/)メソッドのいずれかを使用して単純なmail merge操作を実行する方法を示しています:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Simplemail mergeを実行する前に、ドキュメントの違いに気付くことができます:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

そして、単純なmail mergeを実行した後:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## 複数のマージされた文書を作成する方法

Aspose.Wordsでは、標準のmail merge操作は、データソースからのコンテンツで単一のドキュメントのみを入力します。 したがって、いくつかのマージされたドキュメントを出力として作成するには、mail merge操作を何度も実行する必要があります。

次のコード例は、mail merge操作中にいくつかのマージされたドキュメントを生成する方法を示しています [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
