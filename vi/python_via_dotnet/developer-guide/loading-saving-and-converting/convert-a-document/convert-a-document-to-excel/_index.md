---
title: Chuyển Word sang Excel trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Chuyển đổi một tài liệu sang Excel
linktitle: Chuyển đổi một tài liệu sang Excel
description: "Chuyển đổi PDF sang Excel, XML sang Excel, DOCX sang Excel Python. Lưu tài liệu ở nhiều định dạng khác nhau vào XLSX bằng Python."
type: docs
weight: 15
url: /vi/python-net/convert-a-document-to-excel/
---

Chuyển đổi tài liệu từ định dạng này sang định dạng khác là tính năng hàng đầu của Aspose.Words. Bạn có thể chuyển đổi tài liệu ở bất kỳ định dạng [tải định dạng](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) có sẵn nào sang định dạng XLSX.

## Chuyển đổi tài liệu sang XLSX

Chuyển đổi tài liệu sang XLSX là một quá trình khá phức tạp. Để lưu tài liệu của bạn sang định dạng XLSX bằng Aspose.Words, hãy sử dụng lớp [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) và phần tử `Xlsx` mới trong bảng liệt kê [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Như đã đề cập ở trên, bạn có thể lưu tài liệu ở bất kỳ định dạng tải nào được Aspose.Words hỗ trợ sang XLSX.

Ví dụ mã sau đây cho biết cách lưu PDF vào XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Đôi khi cần phải chỉ định các tùy chọn bổ sung, điều này có thể ảnh hưởng đến kết quả lưu tài liệu dưới dạng XLSX. Các tùy chọn này có thể được chỉ định bằng cách sử dụng lớp [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/), chứa các thuộc tính xác định cách hiển thị đầu ra XLSX.

{{% /alert %}}

## Tìm và thay thế khi lưu vào XLSX

Cũng bằng cách sử dụng Aspose.Words, bạn có thể tìm thấy một chuỗi hoặc biểu thức chính quy cụ thể trong tài liệu của mình và thay thế nó bằng chuỗi phù hợp mà bạn cần. Sau đó, bạn cũng có thể lưu kết quả sang định dạng XLSX.

Ví dụ về mã sau đây cho thấy cách thực hiện thao tác tìm và thay thế cũng như lưu kết quả vào XLSX:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## Chỉ định mức nén khi lưu vào XLSX

Bạn cũng có thể chỉ định mức nén khi lưu bằng thuộc tính [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/).

Ví dụ mã sau đây cho thấy cách chỉ định mức nén khi lưu sang định dạng XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Xem thêm

- Phần tài liệu [Bảo vệ hoặc mã hóa tài liệu](/words/vi/python-net/protect-or-encrypt-a-document/) để biết thêm thông tin về bảo vệ và mã hóa tài liệu
- Bài viết [Tìm và thay thế](/words/vi/python-net/find-and-replace/) để biết thêm thông tin về việc tìm và thay thế nội dung bạn muốn
