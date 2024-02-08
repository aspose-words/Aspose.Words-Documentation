---
title: こんにちは世界！
second_title: .NETにAspose.Wordsを使用する簡単な例
articleTitle: こんにちは世界！
linktitle: こんにちは世界
description: "Aspose.Words for .NET を使用してサポートされている形式で最初のドキュメントを作成、編集、保存し、C# のシンプルさと強力さを体験してください。"
type: docs
weight: 20
url: /ja/net/hello-world/
---

「ハロー、ワールド！」このコードは、多くの場合、「Aspose.Words for .NET」を使用して作成する最初の簡単な例であり、ソース コードをコンパイルまたは実行するためのソフトウェアが正しくインストールされていることを確認する健全性テストとしても使用できます。

「Aspose.Words for .NET」C# ライブラリを使用すると、開発者は Word および Web ドキュメントを作成、変更、マージ、変換、比較するために直接アクセスできます。 PDF、DOCX、DOC、RTF、ODT、EPUB、HTML、その他多くのファイル形式は [サポートされているドキュメント形式](/words/ja/net/supported-document-formats/) です。

Below code スニペットは次の手順に従います。

1. 新しい空の [Document](https://reference.aspose.com/words/net/aspose.words/document) を作成します。
1. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) クラスを初期化する
1. 単純な [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/) メソッドを使用してドキュメントにテキストを挿入します。
1. ファイルから既存の [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) を開きます。ファイル形式を自動的に検出します
1. [Append](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) ドキュメント「A」からドキュメント「B」まで
1. PDF として出力を [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) する

次のコード スニペットは「Hello, World!」です。 「Aspose.Words for .NET」API の動作を示す例:

{{< gist "aspose-words-gists" "542a463e1857480986d18ec296ed43d5" "hello-world.cs" >}}
