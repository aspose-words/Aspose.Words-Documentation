---
title: 轉換成 PDF/A 和 PDF/UA
second_title: 「Aspose.Words for .NET」
articleTitle: 「了解如何將檔案轉換成 PDF/A 和 PDF/UA 的功能」
linktitle: 「了解如何將檔案轉換成 PDF/A 和 PDF/UA 的功能」
description: "透過C#將檔案轉換成PDF/A-1、PDF/A-2、PDF/A-4和PDF/UA。 透過使用C#來選擇要轉換的文件的最佳PDF標準。"
type: docs
weight: 25
url: /zh-hant/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

「PDF是一種固定頁面格式，在使用者中非常受歡迎，各種應用程式也都廣泛支持，因為PDF文件在任何裝置上都能看起來相同。」 「因此，將檔案轉換為 PDF 是 Aspose.Words 重要功能的原因。」

「PDF本身就是一個複雜的格式，因為它有特定的檔案結構、圖形模型、字型嵌入，以及一些複雜的輸出功能，例如文件結構標籤、加密、數位簽名和可編輯的表單。」 此外，將文件轉換為PDF需要多個計算階段，這些階段複雜且耗時。

「在接下來的文章中，我們將考慮在各種 PDF 標準下工作時可能發生的主要問題，並描述解決這些問題的選項。」

## 「哪一種 PDF 標準 Aspose.Words 支援」

「Aspose.Words 現在能讓使用者與 PDF/A-1、PDF/A-2 和 PDF/A-4 格式，以及 PDF/UA-1 一起工作：」

"* PDF/A-1 有嚴重的限制，例如透明度，且某些壓縮選項是被禁止的"
「* PDF/A-2 消除了一些 PDF/A-1 的限制，例如支援透明度和層級效果或嵌入 OpenType 字型」
* PDF/A-4 假設已更新符合度等級：常规 PDF/A-4 符合度等於前幾個版本中的 U 等級符合，而 A 等級符合被移除
"* PDF/UA-1 內容應標記並根據 ISO 32000-1: 2008 標準化"

「PDF/A 是專為存檔與長期儲存電子文件而設計的一種 ISO 標準化 PDF 版本。」 「同時，PDF/UA是另一種 ISO 標準化的 PDF 版本，旨在確保使用輔助技術的身障者可存取性。」 若要指定 PDF 規格之符合程度，請使用 [Compliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/compliance/) 屬性。 由於儲存條件，PDF/A 文檔必須內嵌所有字體並禁用加密，而 PDF/UA 僅需內嵌所有字體。

「在本節中，我們將更仔細地探討與 PDF/A 或 PDF/UA-1 文檔的工作。」

## 有關的 ISO 關於 PDF 標準

欲了解更多關於不同PDF標準，請查看以下ISO：

* PDF 1.7 = ISO-32000-1: 2008
* PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
* PDF/A-2 = ISO-19005-2: 2011
"* PDF/A-4 = ISO-19005-4: 2020"
* PDF/UA-1 = ISO-14289: 2014

## 見 também。

* [Convert a Document to PDF](/words/net/convert-a-document-to-pdf/)
* [How to edit document structure tags in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [How to check or edit text language in Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [How to change text language in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [How to add alternative text to a shape, picture, chart, SmartArt graphic, or other object in Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [How to add alternate text and supplementary information to tags](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) （或閱讀相同的資訊在 [Adobe Acrobat User Guide](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)）
「* [How to set up ActualText entry for text](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), 「為簡寫詞彙、公式或非 Unicode 符號添加實際文字」節
* [Unicode mapping for common Windows symbolic fonts](http://www.alanwood.net/demos/webdings.html)
