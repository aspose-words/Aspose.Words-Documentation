---
title: OpenType の機能を有効にする Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: OpenType 機能を有効にする
linktitle: OpenType 機能を有効にする
description: "高度なタイポグラフィー機能 Aspose.Words お問い合わせ Javaお問い合わせ"
type: docs
weight: 25
url: /ja/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType は、PostScript と TrueType と比較して、国際言語やライティング システムのサポートをより良いものにするために導入されたフォント形式です。 OpenType のレイアウト機能は、OpenType の機能としてよく知られています。 Aspose.Words.シェーピング。HarfBuzz パッケージは、OpenTypeの機能のサポートを提供します。 Aspose.Words 利用する `HarfBuzz` エンジンを形づけるテキスト。

Aspose.Words 外部に提供されるテキストシェーダーオブジェクトを使うことができます。 テキストシェイプラーは、テキストの情報をシェーピングするフォントと計算を表します。 文書は通常、複数のフォントを参照しているため、テキストシェーダー工場が必要です。 このパッケージには、使用したテキストシェーダー工場の実装が含まれています Aspose.Words.Layout.LayoutOptions.TextShaperFactoryプロパティ。

{{% alert color="primary" %}}

PDFへのエクスポートやPDFへのエクスポート時にのみテキストシェーピングを行います。 XPS フォーマット。

{{% /alert %}}

テキストシェーダー工場の典型的なアプリケーション単一インスタンスは、すべてのドキュメントインスタンス間で共有されます。 テキストシェイプラーがフォントファイルにアクセスされるたびに。 フォントファイルをパースするのは高価な操作なので、キャッシュは推奨されます。 Aspose.Words 導入事例 基本テキストシェーパー テキストシェイパ工場の実装をラップし、ラップ工場で返したテキストシェイパインスタンスをキャッシュするキャッシュクラス。

以下のコードの例では、OpenTypeの機能のサポートをオンにする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
