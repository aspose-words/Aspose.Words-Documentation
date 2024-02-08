---
title: C# で OpenType 機能を有効にする
second_title: .NET用Aspose.Words
articleTitle: OpenType 機能を有効にする
linktitle: OpenType 機能を有効にする
description: "C# を使用した高度なタイポグラフィ機能。"
type: docs
weight: 25
url: /ja/net/enable-opentype-features/
---

OpenType は、PostScript や TrueType と比較して、国際言語および書記体系のサポートを向上させるために導入されたフォント形式です。 OpenType のレイアウト機能は、一般に OpenType 機能として知られています。 Aspose.Words.Shaping.HarfBuzz パッケージは、HarfBuzz テキスト整形エンジンを使用して Aspose.Words の OpenType 機能のサポートを提供します。

Aspose.Words は、外部から提供されるテキスト シェーパー オブジェクトを使用できます。テキスト シェイパーはフォントを表し、テキストの整形情報を計算します。通常、ドキュメントは複数のフォントを参照するため、テキスト シェーパ ファクトリが必要になります。このパッケージには、Aspose.Words.Layout.LayoutOptions.TextShaperFactory プロパティによって利用されるテキスト シェーパー ファクトリの実装が含まれています。

{{% alert color="primary" %}}

テキストの整形は、PDF または XPS 形式にエクスポートする場合にのみ実行されます。

{{% /alert %}}

一般的なアプリケーションでは、テキスト シェーパー ファクトリの単一インスタンスがすべてのドキュメント インスタンスで共有されます。テキスト シェーパーが作成されるたびに、フォント ファイルがアクセスされます。フォント ファイルの解析はコストがかかる操作であるため、キャッシュすることをお勧めします。 Aspose.Words は、テキスト シェイパー ファクトリ実装をラップし、ラップされたファクトリによって返されたテキスト シェイパー インスタンスをキャッシュする BasicTextShaperCache クラスを実装します。

次のコード例は、OpenType 機能のサポートを有効にする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
