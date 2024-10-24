---
title: C++での測定単位間の変換
second_title: C++の場合Aspose.Words
articleTitle: 測定単位間の変換
linktitle: 測定単位間の変換
description: "C++の場合Aspose.Words たとえば、インチからポイント、ポイントからインチ、ピクセルからポイント、ポイントからピクセルなど、測定単位間で変換する方法に役立ちます。"
type: docs
weight: 20
url: /ja/cpp/convert-between-measurement-units/
---

幅や高さ、余白、さまざまな距離などの測定値を表すAspose.WordsAPIで提供されるオブジェクトプロパティのほとんどは、点単位の値を受け入れます。1インチは72点に等しくなります。 これは便利ではなく、ポイントを他の単位に変換する必要がある場合があります。

Aspose.Wordsは、さまざまな測定単位間で変換するヘルパー関数を提供する[ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util)クラスを提供します。 これにより、インチ、ピクセル、ミリメートルをポイント、ポイントをインチ、ピクセルに変換し、ピクセルをある解像度から別の解像度に変換できます。ピクセルをポイントに変換したり、その逆に変換することは、96dpi（ドット/インチ）解像度または指定されたdpi解像度で実行できます。

たとえば、インチはポイントよりも一般的な測定単位であるため、**ConvertUtil**クラスはさまざまなページプロパティを設定するときに特に便利です。

次のコード例は、ページプロパティをインチ単位で指定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

