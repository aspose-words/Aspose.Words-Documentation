---
title: Javaの測定単位間の変換
second_title: Aspose.WordsのためのJava
articleTitle: 測定単位間の変換
linktitle: 測定単位間の変換
description: "JavaのAspose.Wordsは、インチからポイント、ポイントからインチ、ピクセルからポイント、ポイントからピクセルなどの測定単位間で変換する方法に役立ちます。"
type: docs
weight: 20
url: /ja/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

幅や高さ、マージン、さまざまな距離などの測定値を表すAspose.WordsAPIで提供されるオブジェクトプロパティのほとんどは、ポイント単位の値を受け入れます。 これは便利ではなく、ポイントを他の単位に変換する必要がある場合があります。

Aspose.Wordsは、さまざまな測定単位間で変換するヘルパー関数を提供する[ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/)クラスを提供します。 これにより、インチ、ピクセル、ミリメートルをポイント、ポイントをインチ、ピクセルに変換し、ピクセルをある解像度から別の解像度に変換できます。ピクセルをポイントに変換したり、その逆に変換することは、96dpi（ドット/インチ）解像度または指定されたdpi解像度で実行できます。

たとえば、インチはポイントよりも一般的な測定単位であるため、**ConvertUtil**クラスはさまざまなページプロパティを設定するときに特に便利です。

次のコード例は、ページプロパティをインチ単位で指定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
