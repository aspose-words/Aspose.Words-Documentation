---
title: JavaでOpenType機能を有効にする
second_title: Aspose.WordsのためのJava
articleTitle: OpenType機能を有効にする
linktitle: OpenType機能を有効にする
description: "JavaのAspose.Wordsの高度なタイポグラフィ機能。"
type: docs
weight: 25
url: /ja/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenTypeはフォント形式で、PostScriptやTrueTypeと比較して国際的な言語や書記体系をよりよくサポートするために導入されました。 OpenTypeのレイアウト機能は、一般にOpenType機能として知られています。 Aspose.Words.シェイピング。HarfBuzzパッケージは`HarfBuzz`テキスト整形エンジンを使用してAspose.WordsのOpenType機能をサポートします。

Aspose.Wordsは、外部から提供されるテキストシェイパーオブジェクトを使用できます。 テキストシェイパーは、フォントを表し、テキストの整形情報を計算します。 ドキュメントは通常、複数のフォントを参照するため、テキストシェイパーファクトリが必要です。 このパッケージにはAspose.Wordsで利用されるテキストシェイパーファクトリの実装が含まれています。レイアウト。LayoutOptions.TextShaperFactoryプロパティ。

{{% alert color="primary" %}}

テキスト整形は、PDFまたはXPS形式にエクスポートする場合にのみ実行されます。

{{% /alert %}}

一般的なアプリケーションでは、テキスト シェイパー ファクトリの単一のインスタンスがすべてのドキュメント インスタンス間で共有されます。テキスト シェイパーが作成されるたびに、フォント ファイルにアクセスします。フォント ファイルの解析はコストのかかる操作であるため、キャッシュすることをお勧めします。Aspose.Words は、テキスト シェイパー ファクトリ実装をラップし、ラップされたファクトリによって返されるテキスト シェイパー インスタンスをキャッシュする BasicTextShaperCache クラスを実装します。

次のコード例は、OpenType機能のサポートを有効にする方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
