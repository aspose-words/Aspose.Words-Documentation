---
title: こんにちは世界！
second_title: Python via .NETにAspose.Wordsを使用する簡単な例
articleTitle: こんにちは世界！
linktitle: こんにちは世界
description: "Aspose.Words for Python via .NET を使用してサポートされている形式で最初のドキュメントを作成、編集、保存し、Python のシンプルさと強力さを体験してください。"
type: docs
weight: 20
url: /ja/python-net/hello-world/
---

「ハロー、ワールド！」このコードは、多くの場合、「Aspose.Words for Python via .NET」を使用して作成する最初の簡単な例であり、ソース コードをコンパイルまたは実行するためのソフトウェアが正しくインストールされていることを確認する健全性テストとしても使用できます。

「Aspose.Words for Python via .NET」ライブラリを使用すると、開発者は Word および Web ドキュメントを作成、変更、マージ、変換、比較するために直接アクセスできます。 PDF、DOCX、DOC、RTF、ODT、EPUB、HTML、およびその他の多くのファイル形式は [サポートされているドキュメント形式](/words/ja/python-net/supported-document-formats/) です。

Below code スニペットは次の手順に従います。

1. 新しい空の [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) を作成します。
1. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) クラスを初期化する
1. 単純な [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) メソッドを使用してドキュメントにテキストを挿入します。
1. ファイルから既存の [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) を開きます。ファイル形式を自動的に検出します
1. [Append](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) ドキュメント「A」からドキュメント「B」まで
1. PDF として出力を [Save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) する

次のコード スニペットは「Hello, World!」です。 「Aspose.Words for Python via .NET」API の動作を示す例:

{{< gist "aspose-words-gists" "ff869587c650d2a27785d5cd598ae0b4" "hello-world.py" >}}
