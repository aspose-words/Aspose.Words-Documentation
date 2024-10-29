---
title: C++のMail Merge操作のタイプ
second_title: Aspose.WordsのためのC++
articleTitle: Mail Merge操作のタイプ
linktitle: Mail Merge操作のタイプ
type: docs
description: "2つの異なるタイプのmail merge操作を実行します:単純なmail mergeとmail mergeをC++を使用した領域で実行します。 Simplemail mergeは各データソースレコードごとにドキュメント全体を繰り返しますが、mail mergewith regionsはレコードごとに指定された領域のみを繰り返します。"
keywords: "how to execute mail merge c++"
weight: 20
url: /ja/cpp/types-of-mail-merge-operations/
---

Mail mergeの主なアイデアは、テンプレートとデータソースから取得したデータに基づいて、ドキュメントまたは複数のドキュメントを自動的に作成するこ Aspose.Wordsを使用すると、2つの異なるタイプのmail merge操作を実行できます:単純なmail mergeとmail mergeリージョンを使用します。

Simplemail mergeを使用する最も一般的な例は、文書の先頭に名前を含めて別のクライアントに文書を送信したい場合です。 これを行うには、テンプレートに*First Name*や*Last Name*などの差し込み項目を作成し、データソースからのデータを入力する必要があります。 一方、地域でmail mergeを使用する最も一般的な例は、各注文内のすべてのアイテムのリストを含む特定の注文を含む文書を送信する場合です。 これを行うには、アイテムに必要なすべてのデータを入力するために、各注文のテンプレート独自の領域内にマージ領域を作成する必要があります。

両方のマージ操作の主な違いは、単純なmail merge(領域なし)は各データソースレコードごとにドキュメント全体を繰り返しますが、領域付きmail mergeはレコードごとに指定された領域のみを繰り返すことです。 単純なmail merge操作は、唯一の領域が文書全体である領域とのマージの特定のケースと考えることができます。

{{% alert color="primary" %}}

[MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/)クラスはmail merge機能を表します。 そのプロパティを使用すると、mail merge操作を実行する前に必要な動作をカスタマイズできます。

{{% /alert %}}

