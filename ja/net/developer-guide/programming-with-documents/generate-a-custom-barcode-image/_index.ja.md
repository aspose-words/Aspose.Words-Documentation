---
title: バーコードの作成方法
second_title: .NET用Aspose.Words
articleTitle: カスタムバーコード画像の生成
linktitle: カスタムバーコード画像の生成
description: "C#を使用したバーコード形状生成の例。"
type: docs
weight: 350
url: /ja/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words にはカスタム バーコードを生成するためのインターフェイスがあり、Aspose.Words と [Aspose.バーコード](https://products.aspose.com/barcode/net/) を一緒に使用して出力ドキュメントにバーコード イメージをレンダリングすることが非常に簡単になります。たとえば、`DISPLAYBARCODE` フィールドを含む DOC、OOXML、または RTF ドキュメントを Aspose.Words にロードし、カスタム バーコード ジェネレーターの実装を提供し、PDF、XPS などの固定ページ形式で保存できます。

一般的な `DISPLAYBARCODE` フィールドの構文は次のとおりです。

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

以下は、`Aspose.BarCode` API を利用するサンプル コード ジェネレーターです。この例では、Aspose.Words および `Aspose.BarCode` API を使用して Word 文書内の `DISPLAYBARCODE` フィールドの位置にバーコード イメージを挿入する方法を示します。

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
