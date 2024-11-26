---
title: Javaで文書を複製する
second_title: Aspose.WordsのためのJava
articleTitle: 文書のクローンを作成する
linktitle: 文書のクローンを作成する
type: docs
description: "ドキュメントを複製して、同一のコピーを取得します。 コピーを作成するとき、元のドキュメントのノードとプロパティはJavaを使用して複製されます。"
weight: 70
url: /ja/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

文書の複製は、元の文書の同一のコピーを作成するプロセスであり、パフォーマンスを向上させ、潜在的なメモリリークからあなたを救うことができます。

この記事では、ドキュメントの複製の主な使用例とAspose.Wordsを使用してドキュメントクローンを作成する方法について説明します。

## 文書の複製を使用した操作

クローン操作を使用すると、毎回ファイルからドキュメントをロードして解析する必要がないため、ドキュメントを作成するプロセスを高速化できます。

文書のクローンを作成した後、元の文書と比較したり、別の文書に追加したり挿入したりするなど、編集してさまざまな操作を行うことができます。 複製された要素またはそのコンテンツを別のドキュメントに挿入する前に変更することもできます。

## ドキュメントクローンの作成

Aspose.Wordsを使用すると、ドキュメントの詳細コピーを実行して返す[Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone)メソッドを使用してドキュメントを複製できます。 言い換えれば、DOMの完全なコピーを取得します。 `Clone`メソッドはドキュメントの生成を高速化し、ドキュメントのコピーを取得するために必要なコードは1行だけです。

複製すると、元の文書と同じ内容を持つ新しい文書が作成されますが、元の文書の[nodes](https://reference.aspose.com/words/java/com.aspose.words/node/)のそれぞれの一意のコピーが作成されます。 また、node[Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean)メソッドを使用して、複製操作をドキュメントノードに適用することもできます。

{{% alert color="primary" %}}

クローニングメソッドを適用すると、すべてのドキュメントプロパティがクローニングされることに注意してください。

{{% /alert %}}

次のコード例は、ドキュメントを複製し、そのドキュメント内のセクションの複製を作成する方法を示しています:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
