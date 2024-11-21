---
title: Chuyển từ Word sang Excel trong Java
second_title: Aspose.Words dành cho Java
articleTitle: Chuyển đổi Tài liệu thành Excel
linktitle: Chuyển đổi Tài liệu thành Excel
description: "Chuyển đổi PDF sang Excel, XML sang Excel, DOCX sang Excel Java. Lưu một tài liệu trong nhiều định dạng vào XLSX bằng Java."
type: docs
weight: 15
url: /vi/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Chuyển đổi tài liệu từ một định dạng sang định dạng khác là tính năng cơ bản của Aspose.Words. Bạn có thể chuyển đổi các tài liệu trong bất kỳ [load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) nào cũng sang định dạng XLSX.

## Chuyển đổi tài liệu sang XLSX

Chuyển đổi một tài liệu sang XLSX là một quá trình khá phức tạp. Để lưu tài liệu của bạn ở định dạng XLSX bằng cách sử dụng Aspose.Words, hãy sử dụng lớp [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) và phần tử mới `Xlsx` trong các [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) này. Như đã đề cập ở trên, bạn có thể lưu tài liệu dưới bất kỳ định dạng nào được Aspose.Words hỗ trợ đến XLSX.

Ví dụ mã sau cho thấy cách lưu PDF sang XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Đôi khi cần phải chỉ định các tùy chọn bổ sung, có thể ảnh hưởng đến kết quả của việc lưu một tài liệu như là XLSX. Những tùy chọn này có thể được chỉ định bằng cách sử dụng lớp [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/), chứa các thuộc tính xác định cách thức hiển thị đầu ra XLSX.

{{% /alert %}}

## Tìm và Thay thế khi Lưu sang XLSX

Cũng sử dụng Aspose.Words có thể tìm thấy một chuỗi cụ thể hoặc biểu thức chính quy trong tài liệu của bạn và thay thế nó bằng điều phù hợp mà bạn cần. Sau đó bạn cũng có thể lưu kết quả ở định dạng XLSX.

Mã ví dụ sau cho thấy cách thực hiện thao tác tìm và thay thế và lưu kết quả đến XLSX:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Chỉ định Cấp độ Súc ép Khi Lưu thành XLSX

Bạn có thể chỉ định mức nén khi lưu bằng thuộc tính [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

Mã ví dụ dưới đây cho thấy cách để chỉ định mức nén khi lưu ở dạng XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Xem thêm

- Phần Tài liệu [Protect or Encrypt a Document](/words/java/protect-or-encrypt-a-document/) để biết thêm thông tin về cách bảo vệ và mã hóa tài liệu
- Bài viết [Find and Replace](/words/java/find-and-replace/) để biết thêm thông tin về việc tìm và thay thế nội dung bạn muốn
