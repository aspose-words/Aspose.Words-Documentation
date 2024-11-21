---
title: Chuyển Word sang Excel trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chuyển đổi một tài liệu sang Excel
linktitle: Chuyển đổi một tài liệu sang Excel
description: "Chuyển đổi PDF sang Excel, XML sang Excel, DOCX sang Excel C#. Lưu tài liệu ở nhiều định dạng khác nhau vào XLSX bằng C#."
type: docs
weight: 15
url: /vi/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

Chuyển đổi tài liệu từ định dạng này sang định dạng khác là tính năng hàng đầu của Aspose.Words. Bạn có thể chuyển đổi tài liệu ở bất kỳ định dạng [tải định dạng](https://reference.aspose.com/words/net/aspose.words/loadformat/) có sẵn nào sang định dạng XLSX.

## Chuyển đổi tài liệu sang XLSX

Chuyển đổi tài liệu sang XLSX là một quá trình khá phức tạp. Để lưu tài liệu của bạn sang định dạng XLSX bằng Aspose.Words, hãy sử dụng lớp [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) và phần tử `Xlsx` mới trong bảng liệt kê [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Như đã đề cập ở trên, bạn có thể lưu tài liệu ở bất kỳ định dạng tải nào được Aspose.Words hỗ trợ sang XLSX.

Ví dụ mã sau đây cho biết cách lưu PDF vào XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Đôi khi cần phải chỉ định các tùy chọn bổ sung, điều này có thể ảnh hưởng đến kết quả lưu tài liệu dưới dạng XLSX. Các tùy chọn này có thể được chỉ định bằng cách sử dụng lớp [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/), chứa các thuộc tính xác định cách hiển thị đầu ra XLSX.

{{% /alert %}}

## Tìm và thay thế khi lưu vào XLSX

Cũng bằng cách sử dụng Aspose.Words, bạn có thể tìm thấy một chuỗi hoặc biểu thức chính quy cụ thể trong tài liệu của mình và thay thế nó bằng chuỗi phù hợp mà bạn cần. Sau đó, bạn cũng có thể lưu kết quả sang định dạng XLSX.

Ví dụ về mã sau đây cho thấy cách thực hiện thao tác tìm và thay thế cũng như lưu kết quả vào XLSX:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Chỉ định mức nén khi lưu vào XLSX

Bạn cũng có thể chỉ định mức nén khi lưu bằng thuộc tính [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

Ví dụ mã sau đây cho thấy cách chỉ định mức nén khi lưu sang định dạng XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Xem thêm

- Phần tài liệu [Bảo vệ hoặc mã hóa tài liệu](/words/vi/net/protect-or-encrypt-a-document/) để biết thêm thông tin về bảo vệ và mã hóa tài liệu
- Bài viết [Tìm và thay thế](/words/vi/net/find-and-replace/) để biết thêm thông tin về việc tìm và thay thế nội dung bạn muốn
