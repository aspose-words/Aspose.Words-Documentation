---
title: C# での測定単位間の変換
second_title: .NET用Aspose.Words
articleTitle: 測定単位間の変換
linktitle: 測定単位間の変換
description: "Aspose.Words for .NET は、C# を使用して、インチからポイント、ポイントからインチ、ピクセルからポイント、ポイントからピクセルなどの測定単位間の変換方法を支援します。"
type: docs
weight: 20
url: /ja/net/convert-between-measurement-units/
---

Aspose.Words API で提供される、幅や高さ、マージン、さまざまな距離などの測定値を表すオブジェクト プロパティのほとんどは、ポイント単位の値を受け入れます。1 インチは 72 ポイントに相当します。場合によってはこれが不便で、ポイントを他の単位に変換する必要があります。

Aspose.Words は、さまざまな測定単位間で変換するためのヘルパー関数を提供する [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) クラスを提供します。以下の変換が可能になります。

- インチ、ピクセル、ミリメートルからポイントへ
- インチとピクセルを指します
- ある解像度から別の解像度へのピクセル

ピクセルからポイントへの変換、またはその逆の変換は、96 dpi (ドット/インチ) 解像度または指定された dpi 解像度で実行できます。

**ConvertUtil** クラスは、さまざまなページ プロパティを設定する場合に特に便利です。これは、たとえば、ポイントよりもインチの方が一般的な測定単位であるためです。

次のコード例は、ページ プロパティをインチ単位で指定する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
