---
title: PDF/A/PDF/UA に保存する際の警告
second_title: Aspose.Words お問い合わせ Java
articleTitle: PDF/A/PDF/UA に保存するアクセシビリティの問題警告
linktitle: PDF/A/PDF/UA に保存するアクセシビリティの問題警告
description: "PDF/A および PDF/UA は、文書の内容に関するアクセシビリティ要件を課します。 PDF/A または PDF/UA に保存するとき Java 問題は、コンプライアンスに違反し、警告が発行されます。"
type: docs
weight: 29
url: /ja/java/warnings-when-saving-to-pdfa-and-pdfua/
---

PDF/A および PDF/UA のフォーマットは、Word から PDF への自動変換中に満たせない文書コンテンツに関連する多くのアクセシビリティ要件を意味します。 これらの要件は、前の記事で記述されています *「PDF / AまたはPDF / UAで動作する」*。 警告は、これらの問題のいくつかのために発行されます。

PDF/A または PDF/UA のフォーマットのいずれかに保存し、問題がコンプライアンスに違反したときに警告が発行されます。 たとえば、PDF/UA に保存すると、欠落したドキュメントタイトルの警告が発行され、PDF/A に保存したときに発行されません。

すべての警告は [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLosssの** そして、 [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**.お問い合わせ パフ**お問い合わせ ここでは、新しい説明警告値のリストです。

|  説明警告値 |  PDF・A |  PDFファイル/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  「ドキュメントのタイトルが見つかりません。 これは、コンプライアンス要件に違反します。 出力文書は完全に準拠しません。 |                          |   {{< emoticons/tick >}}  |
|  「ドキュメントには、レベルが連続していない見出しが含まれています。 これは、コンプライアンス要件に違反します。 出力文書は完全に準拠しません。 |                          |   {{< emoticons/tick >}}  |
|  「文書にaltテキストなしで図形があります。 これは、コンプライアンス要件に違反します。 出力文書は完全に準拠しません。 |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  「文書にaltテキストのないテーブルがあります。 これは、コンプライアンス要件に違反します。 出力文書は完全に準拠しません。 |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "文書にaltテキストなしでハイパーリンクがあります。 これは、コンプライアンス要件に違反します。 出力文書は完全に準拠しません。 |                          |   {{< emoticons/tick >}}  |
|  「文書にヘッダ行/列なしのテーブルがあります。 これは、コンプライアンス要件に違反します。 出力文書は完全に準拠しません。 |                          |   {{< emoticons/tick >}}  |
|  「Unicode PUA 文字が含まれている」 これは、コンプライアンス要件に違反します。 出力文書は完全に準拠しません。 |   {{< emoticons/tick >}}  |                          |
|  "ドキュメントには.notdef が含まれています glyphお問い合わせ これは、コンプライアンス要件に違反します。 出力文書は完全に準拠しません。 |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
