---
title: Chuyển Đổi Tài liệu thành PDF trong C++
second_title: Aspose.Words cho C++
articleTitle: Chuyển Đổi Tài liệu thành PDF
linktitle: Chuyển Đổi Tài liệu thành PDF
description: "Chuyển đổi tài liệu thành PDF bằng C++. Các định dạng đầu vào khác nhau được hỗ trợ, bao gồm Các Định dạng Word, OpenOffice, Image và eBook."
type: docs
weight: 10
url: /vi/cpp/convert-a-document-to-pdf/
---

Khả năng chuyển đổi tài liệu từ định dạng này sang định dạng khác một cách dễ dàng và đáng tin cậy là một tính năng chính của Aspose.Words. Một trong những định dạng phổ biến nhất để chuyển đổi là PDF – định dạng bố cục cố định, giữ nguyên giao diện ban đầu của tài liệu trong quá trình hiển thị trên các nền tảng khác nhau. Thuật ngữ" kết xuất " được sử dụng trong Aspose.Words để mô tả quá trình chuyển đổi tài liệu thành định dạng tệp được phân trang hoặc có khái niệm trang.

## Chuyển Đổi Tài liệu Word thành PDF {#convert-a-word-document-to-pdf}

Chuyển đổi Từ Word sang PDF là một quá trình khá phức tạp đòi hỏi nhiều giai đoạn tính toán. Công cụ bố cục Aspose.Words bắt chước cách công cụ bố cục trang của Microsoft Word hoạt động, làm cho các tài liệu đầu ra PDF trông gần nhất có thể với những gì bạn có thể thấy trong Microsoft Word.

Với Aspose.Words, bạn có thể lập trình chuyển đổi tài liệu từ DOC hoặc DOCX định dạng thành PDF mà không cần Sử dụng Microsoft Office. Bài viết này giải thích cách thực hiện chuyển đổi này.

{{% alert color="primary" %}}

Lưu ý rằng số lượng trang trong tài liệu ảnh hưởng đến thời gian chuyển đổi.

{{% /alert %}}

### Chuyển đổi DOCX hoặc DOC thành PDF {#converting-doc-or-docx-to-pdf}

Chuyển đổi từ định dạng tài liệu DOC hoặc DOCX thành định dạng PDF trong Aspose.Words rất dễ dàng và có thể được thực hiện chỉ với hai dòng mã:

1. Tải tài liệu của bạn vào một đối tượng [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) bằng một trong các hàm tạo của nó bằng cách chỉ định tên tài liệu với phần mở rộng định dạng của nó.
1. Gọi một trong các phương thức [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) trên đối tượng **Document** và chỉ định định dạng đầu ra mong muốn là PDF bằng cách nhập tên tệp bằng ".PDF" mở rộng.

Ví dụ mã sau đây cho thấy cách chuyển đổi tài liệu từ DOCX thành PDF bằng phương thức `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Đôi khi cần chỉ định các tùy chọn bổ sung, có thể ảnh hưởng đến kết quả lưu tài liệu dưới dạng PDF. Các tùy chọn này có thể được chỉ định bằng cách sử dụng lớp [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), chứa các thuộc tính xác định cách đầu ra PDF sẽ được hiển thị.

Lưu ý rằng với cùng một kỹ thuật, bạn có thể chuyển đổi bất kỳ tài liệu định dạng bố cục luồng nào sang định dạng PDF.

{{% /alert %}}

### Chuyển đổi Sang Các Tiêu Chuẩn PDF Khác nhau {#converting-to-various-pdf-standards}

Aspose.Words cung cấp liệt kê [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) để hỗ trợ chuyển đổi DOC hoặc DOCX thành các tiêu chuẩn định dạng PDF khác nhau (chẳng hạn như PDF 1.7, PDF 1.5, v. v.).

Ví dụ mã sau đây trình bày cách chuyển đổi tài liệu thành PDF 1.7 sử dụng [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) tuân thủ thành PDF 1 7:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Chuyển Đổi Hình ảnh thành PDF {#convert-an-image-to-pdf}

Chuyển đổi sang PDF không bị giới hạn bởi các định dạng tài liệu Microsoft Word. Bất kỳ định dạng nào được hỗ trợ bởi Aspose.Words, bao gồm cả được tạo theo chương trình, cũng có thể được chuyển đổi thành PDF. Ví dụ: chúng ta có thể chuyển đổi hình ảnh một trang, chẳng hạn nhưJPEG, PNG, BMP, EMF, hoặc WMF, cũng như hình ảnh nhiều trang, chẳng hạn như TIFF và GIF, đến PDF.

Ví dụ mã sau đây cho thấy cách chuyển đổi hình ảnh JPEG và TIFF thành PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Để làm cho mã này hoạt động, bạn cần thêm tham chiếu đến Aspose.Words và `System.Drawing` vào dự án của mình.

## Xem Thêm

- Bài viết [Kết xuất](/words/cpp/rendering/) để biết thêm thông tin về các định dạng bố cục trang và luồng cố định
- Bài viết [Chuyển đổi Sang Định dạng trang Cố định](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) để biết thêm thông tin về bố cục trang
- Bài viết [Chỉ Định Các Tùy chọn Kết Xuất Khi Chuyển đổi thành PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) để biết thêm thông tin về cách sử dụng lớp `PdfSaveOptions`
