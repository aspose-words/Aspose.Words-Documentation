---
title: 測定単位間の変換
second_title: Python via .NET用Aspose.Words
articleTitle: 測定単位間の変換
linktitle: 測定単位間の変換
description: "Aspose.Words for Python via .NET は、インチからポイント、ポイントからインチ、ピクセルからポイント、ポイントからピクセルなど、測定単位間の変換方法を支援します。"
type: docs
weight: 20
url: /ja/python-net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words API で提供される、幅や高さ、マージン、さまざまな距離などの測定値を表すオブジェクト プロパティのほとんどは、ポイント単位の値を受け入れます。1 インチは 72 ポイントに相当します。場合によってはこれが不便で、ポイントを他の単位に変換する必要があります。

Aspose.Words は、さまざまな測定単位間で変換するためのヘルパー関数を提供する [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) クラスを提供します。インチ、ピクセル、ミリメートルをポイントに変換したり、ポイントをインチとピクセルに変換したり、ピクセルをある解像度から別の解像度に変換したりすることができます。ピクセルからポイントへの変換、またはその逆の変換は、96 dpi (ドット/インチ) 解像度または指定された dpi 解像度で実行できます。

[ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) クラスは、さまざまなページ プロパティを設定する場合に特に便利です。これは、たとえば、ポイントよりもインチの方が一般的な測定単位であるためです。

次のコード例は、ページ プロパティをインチ単位で指定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
