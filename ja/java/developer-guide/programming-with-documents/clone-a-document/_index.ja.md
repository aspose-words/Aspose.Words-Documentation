---
title: ドキュメントのクローン作成 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントのクローン化
linktitle: ドキュメントのクローン化
type: docs
description: "同一のコピーを取得するドキュメントをクローンします。 元の文書のコピー、ノード、プロパティを作成する際は、 Javaお問い合わせ"
weight: 70
url: /ja/java/clone-a-document/
---

文書をクローニングすることは、元の文書の同一コピーを作成するプロセスであり、パフォーマンスを向上させ、潜在的なメモリリークからあなたを救うことができます。

本記事では、文書のクローニングと、ドキュメントクローンの作成方法の主な使用例について説明します。 Aspose.Wordsお問い合わせ

## Cloning 文書の操作

クローン操作を使用すると、ファイルを毎回ロードしてパースする必要がないので、文書を作成するプロセスを高速化できます。

ドキュメントのクローンを作成した後、それを編集して別の操作を実行することができます。例えば、元の文書と比較し、別の文書にそれを追加またはインサートします。 クローンされた要素やコンテンツを別の文書に差し込む前に変更することもできます。

## ドキュメントクローンを作成する

Aspose.Words ドキュメントをクローンすることを可能にします。 [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) ドキュメントの深いコピーを実行し、それを返す方法。 言い換えれば、それはの完全なコピーを取得します DOMお問い合わせ ザ・オブ・ザ・ `Clone` メソッドはドキュメントの生成をスピードアップし、ドキュメントのコピーを取得するには、コードの1行のみが必要です。

Cloning は、元のコンテンツと同じコンテンツで新しいドキュメントを生成しますが、元のドキュメントの各ユニークなコピーで [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/)お問い合わせ ノードを使用して、クローン操作をドキュメントノードに適用することも可能です。 [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) メソッドは、コンポジットのドキュメントノードを子ノードなしでも重複させることができます。

{{% alert color="primary" %}}

クローニングメソッドを適用すると、すべてのドキュメントプロパティがクローニングされます。

{{% /alert %}}

次のコードの例では、文書をクローンし、その文書のセクションの重複を作成する方法を示します。
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
