---
title: Chuyển Đổi Word Sang Excel trong C++
second_title: Aspose.Words cho C++
articleTitle: Chuyển Đổi Tài liệu Sang Excel
linktitle: Chuyển Đổi Tài liệu Sang Excel
description: "Chuyển đổi PDF Sang Excel, XML Sang Excel, DOCX sang Excel C++. Lưu tài liệu ở nhiều định dạng khác nhau vào XLSX bằng C++."
type: docs
weight: 15
url: /vi/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Chuyển đổi tài liệu từ định dạng này sang định dạng khác là tính năng hàng đầu của Aspose.Words. Bạn cũng có thể chuyển đổi tài liệu ở bất kỳ định dạng [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) nào có sẵn sang XLSX.

## Chuyển Đổi Tài liệu thành XLSX

Chuyển đổi tài liệu thành XLSX là một quá trình khá phức tạp. Để lưu tài liệu của bạn sang định dạng XLSX bằng cách sử dụng Aspose.Words, hãy sử dụng lớp **XlsxSaveOptions** và phần tử `Xlsx` mới trong liệt kê [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Như đã đề cập ở trên, bạn có thể lưu tài liệu ở bất kỳ định dạng tải nào được hỗ trợ bởi Aspose.Words đến XLSX.

Ví dụ mã sau đây cho thấy cách lưu PDF thành XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Tìm Và Thay thế Khi Lưu vào XLSX

Cũng sử dụng Aspose.Words, bạn có thể tìm thấy một chuỗi cụ thể hoặc biểu thức chính quy trong tài liệu của mình và thay thế nó bằng chuỗi phù hợp mà bạn cần. Sau đó, bạn cũng có thể lưu kết quả thành định dạng XLSX.

Ví dụ mã sau đây cho thấy cách thực hiện tìm và thay thế thao tác và lưu kết quả thành XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Chỉ Định Mức Nén Khi Lưu vào XLSX

Bạn cũng có thể chỉ định mức nén khi lưu bằng thuộc tính **CompressionLevel**.

Ví dụ mã sau đây cho thấy cách chỉ định mức nén khi lưu sang định dạng XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Xem Thêm

- Phần tài liệu [Bảo vệ Hoặc Mã hóa Tài liệu](/words/cpp/protect-or-encrypt-a-document/) để biết thêm thông tin về bảo vệ và mã hóa tài liệu
- Bài viết [Tìm Và Thay thế](/words/cpp/find-and-replace/) để biết thêm thông tin về việc tìm kiếm và thay thế nội dung bạn muốn
