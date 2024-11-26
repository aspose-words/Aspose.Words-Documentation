---
title: PDF/AとPDF/UAに保存するときの警告
second_title: Aspose.WordsのためのJava
articleTitle: PDF/AとPDF/UAに保存するときのアクセシビリティの問題の警告
linktitle: PDF/AとPDF/UAに保存するときのアクセシビリティの問題の警告
description: "PDF/AとPDF/UAは、文書コンテンツに関連するアクセシビリティ要件を課します。 JavaのPDF/AまたはPDF/UAに保存し、問題がコンプライアンスに違反している場合、警告が発行されます。"
type: docs
weight: 29
url: /ja/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/AおよびPDF/UA形式は、WordからPDFへの自動変換中に満たすことができないドキュメントコンテンツに関連するアクセシビリティ要件の数を課します。 これらの要件については、前の記事*"Working with PDF/A or PDF/UA"*で説明しています。 現在、これらの問題のいくつかについて警告が発行されています。

警告は、PDF/AまたはPDF/UA形式のいずれかに保存し、問題がコンプライアンスに違反するときに発行されます。 たとえば、PDF/UAに保存するときにドキュメントタイトルが見つからないという警告が発行され、PDF/Aに保存するときには発行されません。

すべての警告は[WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingLoss**と[WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**.Pdf**です。 新しい説明の警告値のリストは次のとおりです:

| 説明警告値 | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "ドキュメントのタイトルがありません。 これはコンプライアンス要件に違反します。 出力文書は完全に準拠していません。" |  | {{< emoticons/tick >}} |
| "文書には、レベルが連続していない見出しが含まれています。 これはコンプライアンス要件に違反します。 出力文書は完全に準拠していません。" |  | {{< emoticons/tick >}} |
| 「文書には代替テキストのない図形があります。 これはコンプライアンス要件に違反します。 出力文書は完全に準拠していません。" | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| 「文書には代替テキストのない表があります。 これはコンプライアンス要件に違反します。 出力文書は完全に準拠していません。" | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| 「ドキュメントには代替テキストのないハイパーリンクがあります。 これはコンプライアンス要件に違反します。 出力文書は完全に準拠していません。" |  | {{< emoticons/tick >}} |
| 「ドキュメントにヘッダー行/列のないテーブルがあります。 これはコンプライアンス要件に違反します。 出力文書は完全に準拠していません。" |  | {{< emoticons/tick >}} |
| "ドキュメントにはUnicodePUA文字が含まれています。 これはコンプライアンス要件に違反します。 出力文書は完全に準拠していません。" | {{< emoticons/tick >}} |  |
| "文書には含まれています。ノトデフグリフ。 これはコンプライアンス要件に違反します。 出力文書は完全に準拠していません。" | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
