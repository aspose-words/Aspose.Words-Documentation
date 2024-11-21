---
title: Chuyển đổi một tài liệu sang PDF trong Java
second_title: Aspose.Words cho Java
articleTitle: Chuyển đổi Tài liệu sang PDF
linktitle: Chuyển đổi Tài liệu sang PDF
description: "Chuyển đổi tài liệu trong Word hoặc bất kỳ định dạng nào được hỗ trợ khác sang PDF, giữ nguyên vẻ ngoài ban đầu của tài liệu khi hiển thị trên các nền tảng khác nhau bằng Java."
type: docs
weight: 10
url: /vi/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

Khả năng chuyển đổi đơn giản và đáng tin cậy tài liệu từ một định dạng sang một định dạng khác là một tính năng chính của Aspose.Words. Một trong những định dạng phổ biến nhất để chuyển đổi là PDF - một định dạng bố cục cố định, giữ nguyên vẻ ngoài ban đầu của tài liệu khi hiển thị trên các nền tảng khác nhau. Từ "render" được sử dụng trong Aspose.Words để mô tả quá trình chuyển đổi một tài liệu thành một định dạng tập tin có các trang hoặc khái niệm về các trang.

## Chuyển đổi tài liệu Word sang PDF {#convert-a-word-document-to-pdf}

Chuyển đổi từ Word sang PDF là một quá trình khá phức tạp đòi hỏi nhiều giai đoạn tính toán. Aspose.Words động cơ bố cục bắt chước cách hoạt động của động cơ bố cục trang Microsoft Word, làm cho các tài liệu đầu ra PDF trông gần như nhất có thể đến với những gì bạn có thể thấy trong Microsoft Word.

Với Aspose.Words bạn có thể lập trình chuyển đổi một tài liệu từ định dạng DOC hoặc DOCX sang PDF mà không cần sử dụng Microsoft Office. Bài viết này giải thích cách thực hiện chuyển đổi này.

{{% alert color="primary" %}}

Hãy lưu ý rằng số trang trong một tài liệu ảnh hưởng đến thời gian chuyển đổi.

{{% /alert %}}

### Chuyển đổi DOCX hoặc DOC sang PDF {#converting-doc-or-docx-to-pdf}

Chuyển đổi từ định dạng tài liệu DOC hoặc DOCX sang định dạng PDF trong Aspose.Words rất dễ và có thể thực hiện chỉ với hai dòng mã sau:

1. Tải tài liệu của bạn vào một [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) đối tượng sử dụng một trong các nhà máy của nó bằng cách chỉ định tên tài liệu với phần mở rộng định dạng.
1. Gọi một trong những [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) phương thức trên đối tượng **Document** và chỉ định định dạng đầu ra mong muốn là PDF bằng cách nhập tên tệp với phần mở rộng ".PDF.

Mã ví dụ sau cho thấy cách chuyển đổi tài liệu từ DOCX sang PDF bằng phương pháp `Save`:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Đôi khi nó cần thiết phải chỉ định các tùy chọn bổ sung có thể ảnh hưởng đến kết quả lưu một tài liệu dưới dạng PDF. Những tùy chọn này có thể được xác định bằng cách sử dụng lớp [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), chứa các thuộc tính xác định cách đầu ra PDF sẽ được hiển thị.

Lưu ý rằng với cùng kỹ thuật này, bạn có thể chuyển đổi bất kỳ tài liệu định dạng sắp xếp dòng nào sang định dạng PDF.

{{% /alert %}}

### Chuyển đổi sang các chuẩn PDF khác nhau {#converting-to-various-pdf-standards}

Aspose.Words cung cấp bộ đếm [PdfCompliace ](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) để hỗ trợ chuyển đổi DOC hoặc DOCX sang các tiêu chuẩn định dạng PDF khác nhau (như PDF 1.7, PDF 1.5, v.v.).

Mã ví dụ sau đây cho thấy cách chuyển đổi tài liệu sang PDF 1.7 sử dụng [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) với tuân thủ PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Chuyển hình ảnh sang PDF

Chuyển đổi sang PDF không bị hạn chế bởi Microsoft Word định dạng tài liệu. Bất kỳ định dạng được hỗ trợ bởi Aspose.Words, bao gồm cả được tạo lập trình, cũng có thể chuyển đổi sang PDF. Ví dụ, chúng ta có thể chuyển đổi ảnh đơn trang như JPEG, PNG, BMP, EMF hay WMF cũng như ảnh đa trang như TIFF và GIF thành tệp PDF.

Mã ví dụ sau cho thấy cách chuyển đổi hình ảnh JPEG và TIFF sang PDF

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Để mã này hoạt động bạn cần thêm tham chiếu đến Aspose.Words, Java.awt.image và javax.imageio lớp gói vào dự án của bạn.

## Giảm kích thước đầu ra của PDF

Khi lưu sang định dạng PDF, bạn có thể chỉ định xem bạn muốn tối ưu hóa đầu ra hay không. Để thực hiện điều này, bạn cần đặt cờ [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) thành true, và sau đó các canvas lồng nhau và trống rỗng sẽ bị xóa bỏ, các hàng xóm glyph với cùng một định dạng sẽ được nối liền.

Mã ví dụ sau cho thấy cách tối ưu hóa đầu ra:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Sử dụng thuộc tính **OptimizeOutput** có thể làm ảnh hưởng đến độ chính xác của việc hiển thị nội dung.

{{% /alert %}}

## Xem thêm

"- Bài viết [Rendering](/words/java/rendering/) cho thông tin chi tiết về các định dạng trang cố định và bố cục dòng"
- Bài báo [Converting to Fixed-page Format](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) để biết thêm thông tin về bố cục trang
- Bài viết [Specify Rendering Options When Converting to PDF](/words/java/specify-rendering-options-when-converting-to-pdf/) để biết thêm thông tin về sử dụng lớp `PdfSaveOptions`
