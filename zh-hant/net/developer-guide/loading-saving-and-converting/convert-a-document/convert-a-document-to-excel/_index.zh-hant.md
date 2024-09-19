---
title: 在C#中將Word轉換為Excel
second_title: Aspose.Words for .NET
articleTitle: 將文件轉換為Excel
linktitle: 將文件轉換為Excel
description: "將PDF轉換為Excel、XML轉換為Excel、DOCX轉換為Excel C#。 使用 C# 在各種格式中儲存文件到 XLSX。"
type: docs
weight: 15
url: /zh-hant/net/convert-a-document-to-excel/
---

將文件從一種格式轉換為另一種格式是 Aspose.Words 的旗艦功能。 「您可以將任何可用之 [load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) 文件轉換為 XLSX 格式。」

## 「將文件轉換為 XLSX」

將文件轉換成 XLSX 是相當複雜的程序。 「若要以 XLSX 格式儲存您的文件，請使用 Aspose.Words，利用 [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) 類別與新 `Xlsx` 元素於 [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 列舉。」 「如上所述，您可以以任何由 Aspose.Words 支援的檔格式儲存該文件至 XLSX。」

以下範例顯示如何儲存 PDF 至 XLSX：

{{< gist "aspose-words-gists" "a50652f28531278511605e0fd778bbdf" "pdf-to-xlsx.cs" >}}

{{% alert color="primary" %}}

有時需要指定額外的選項，它可能會影響將文件儲存為 XLSX 的結果。 「這些選項可以在 [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) 類別中指定，其中包含決定 Excel 輸出會如何顯示的屬性。」

{{% /alert %}}

## 儲存到 XLSX 時請查找並替換

「您也可以透過 Aspose.Words 來在您的文件中找到特定字串或正規表達式，並將其替換成您所需的相符字串。」 「然後，您也可以儲存結果為 XLSX 格式。」

接下來範例顯示如何進行查找與替換操作並儲存結果到 XLSX：

{{< gist "aspose-words-gists" "a50652f28531278511605e0fd778bbdf" "find-replace-xlsx.cs" >}}

## 保存為 XLSX 時指定壓縮等級

「您也可以使用 [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) 屬性來指定儲存時壓縮等級。」

接下來的程式碼範例示範了如何在儲存為 XLSX 格式時指定壓縮等級：

{{< gist "aspose-words-gists" "a50652f28531278511605e0fd778bbdf" "compress-xlsx.cs" >}}

## 另見

"- Dokumentationsabschnitt [Protect or Encrypt a Document](/words/net/protect-or-encrypt-a-document/), um weitere Informationen über das Schutz und Verschlüsseln einer Datei zu erhalten"
"-文章 [Find and Replace](/words/net/find-and-replace/) 有關如何找到並取代您想要的內容更多資訊"
