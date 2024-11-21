---
title: PDF/A および PDF/UA に保存する場合の警告
second_title: Python用Aspose.Words
articleTitle: PDF/A および PDF/UA に保存する際のアクセシビリティの問題の警告
linktitle: PDF/A および PDF/UA に保存する際のアクセシビリティの問題の警告
description: "PDF/A および PDF/UA は、ドキュメントのコンテンツに関連するアクセシビリティ要件を課します。 Python で PDF/A または PDF/UA に保存する場合、問題がコンプライアンスに違反すると、警告が発行されます。"
type: docs
weight: 29
url: /ja/python-net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A および PDF/UA 形式には、Word から PDF への自動変換中に満たすことができない、ドキュメントのコンテンツに関連する多くのアクセシビリティ要件が課されます。これらの要件については、前の記事 *「PDF/A または PDF/UA の使用」* で説明されています。現在、これらの問題の一部に対して警告が発行されます。

PDF/A または PDF/UA 形式のいずれかに保存すると警告が発行され、問題はコンプライアンスに違反します。たとえば、文書タイトルの欠落に関する警告は、PDF/UA に保存する場合には発行されますが、PDF/A に保存する場合には発行されません。

すべての警告は [WarningType](https://reference.aspose.com/words/python-net/aspose.words/warningtype/)**.MinorFormattingLoss** および [WarningSource](https://reference.aspose.com/words/python-net/aspose.words/warningsource/)**.PDF** に関するものです。新しい説明の警告値のリストは次のとおりです。

|  説明 警告値 |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  「文書にはレベルが連続していない見出しが含まれています。これはコンプライアンス要件に違反しています。出力文書は完全に準拠していません。」 |                          |   {{< emoticons/tick >}}  |
|  「ドキュメント内に代替テキストのない図形があります。これはコンプライアンス要件に違反しています。出力ドキュメントは完全に準拠していません。」 |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  「ドキュメント内に代替テキストのない表があります。これはコンプライアンス要件に違反しています。出力ドキュメントは完全に準拠していません。」 |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  「ドキュメントには Unicode PUA 文字が含まれています。これはコンプライアンス要件に違反しています。出力ドキュメントは完全に準拠していません。」 |   {{< emoticons/tick >}}  |                          |
|  「ドキュメントには .notdef glyph が含まれています。これはコンプライアンス要件に違反しています。出力ドキュメントは完全には準拠しません。」 |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
