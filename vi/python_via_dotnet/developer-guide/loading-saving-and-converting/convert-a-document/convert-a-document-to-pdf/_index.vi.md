---
title: Chuyển đổi tài liệu sang PDF trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Chuyển đổi tài liệu sang PDF
linktitle: Chuyển đổi tài liệu sang PDF
description: "Chuyển đổi tài liệu sang PDF bằng Python. Các định dạng đầu vào khác nhau được hỗ trợ, bao gồm các định dạng Word, OpenOffice, Hình ảnh và Sách điện tử."
type: docs
weight: 10
url: /vi/python-net/convert-a-document-to-pdf/
---

Khả năng chuyển đổi tài liệu từ định dạng này sang định dạng khác một cách dễ dàng và đáng tin cậy là tính năng chính của Aspose.Words. Một trong những định dạng phổ biến nhất để chuyển đổi là PDF – định dạng bố cục cố định, giúp giữ nguyên hình thức ban đầu của tài liệu trong quá trình hiển thị trên nhiều nền tảng khác nhau. Thuật ngữ "kết xuất" được sử dụng trong Aspose.Words để mô tả quá trình chuyển đổi tài liệu sang định dạng tệp được phân trang hoặc có khái niệm về trang.

## Chuyển đổi tài liệu Word sang PDF {#convert-a-word-document-to-pdf}

Chuyển đổi từ Word sang PDF là một quá trình khá phức tạp, đòi hỏi nhiều giai đoạn tính toán. Công cụ bố cục Aspose.Words bắt chước cách hoạt động của công cụ bố cục trang của Microsoft Word, làm cho tài liệu đầu ra PDF trông giống nhất có thể với những gì bạn có thể thấy trong Microsoft Word.

Với Aspose.Words, bạn có thể lập trình chuyển đổi tài liệu từ các định dạng Word, chẳng hạn như DOC hoặc DOCX, sang PDF mà không cần sử dụng Microsoft Office. Bài viết này giải thích cách thực hiện chuyển đổi này.

{{% alert color="primary" %}}

Lưu ý rằng số lượng trang trong tài liệu ảnh hưởng đến thời gian chuyển đổi.

{{% /alert %}}

### Chuyển đổi DOC hoặc DOCX sang PDF {#convert-doc-or-docx-to-pdf}

Việc chuyển đổi từ định dạng tài liệu DOC hoặc DOCX sang định dạng PDF trong Aspose.Words rất dễ dàng và có thể được thực hiện chỉ bằng hai dòng mã:

1. Tải tài liệu của bạn vào đối tượng [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) bằng cách sử dụng một trong các hàm tạo của nó bằng cách chỉ định tên tài liệu cùng với phần mở rộng định dạng của nó.
1. Gọi một trong các phương thức [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) trên đối tượng [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) và chỉ định định dạng đầu ra mong muốn là PDF bằng cách nhập tên tệp có phần mở rộng ".PDF".

Ví dụ về mã sau đây cho thấy cách chuyển đổi tài liệu từ DOCX sang PDF bằng phương pháp [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Đôi khi cần phải chỉ định các tùy chọn bổ sung, điều này có thể ảnh hưởng đến kết quả lưu tài liệu dưới dạng PDF. Các tùy chọn này có thể được chỉ định bằng cách sử dụng lớp [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/), chứa các thuộc tính xác định cách hiển thị đầu ra PDF.

Lưu ý rằng với kỹ thuật tương tự, bạn có thể chuyển đổi bất kỳ tài liệu có định dạng bố cục luồng nào sang định dạng PDF.

{{% /alert %}}

### Chuyển đổi sang các tiêu chuẩn PDF khác nhau {#convert-to-various-pdf-standards}

Aspose.Words cung cấp bảng liệt kê [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) để hỗ trợ chuyển đổi DOC hoặc DOCX thành các tiêu chuẩn định dạng PDF khác nhau (chẳng hạn như PDF 1.7, PDF 1.5, v.v.).

Ví dụ về mã sau đây minh họa cách chuyển đổi tài liệu sang PDF 1.7 bằng [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) tuân thủ [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Chuyển đổi hình ảnh sang PDF

Việc chuyển đổi sang PDF không bị hạn chế bởi các định dạng tài liệu Microsoft Word. Bất kỳ định dạng nào được Aspose.Words hỗ trợ, bao gồm cả định dạng được tạo theo chương trình, cũng có thể được chuyển đổi sang PDF. Ví dụ: chúng tôi có thể chuyển đổi hình ảnh một trang, chẳng hạn như JPEG, PNG, BMP, EMF hoặc WMF, cũng như hình ảnh nhiều trang, chẳng hạn như TIFF và GIF, sang PDF.

Ví dụ mã sau đây cho thấy cách chuyển đổi hình ảnh JPEG và TIFF sang PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Để làm cho mã này hoạt động, bạn cần thêm các tham chiếu đến Aspose.Words và `aspose.pydrawing` vào dự án của mình.

## Giảm kích thước đầu ra PDF

Khi lưu vào PDF, bạn có thể chỉ định xem bạn có muốn tối ưu hóa đầu ra hay không. Để thực hiện việc này, bạn cần đặt cờ [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) thành true, sau đó các khung vẽ lồng nhau dư thừa và các khung vẽ trống sẽ bị xóa, các glyph lân cận có cùng định dạng sẽ được nối.

{{% alert color="primary" %}}

Việc sử dụng thuộc tính **OptimizeOutput** có thể ảnh hưởng đến độ chính xác của việc hiển thị nội dung.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Giảm kích thước đầu ra PDF

Khi lưu vào PDF, bạn có thể chỉ định xem bạn có muốn tối ưu hóa đầu ra hay không. Để thực hiện việc này, bạn cần đặt cờ [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) thành true, sau đó các khung vẽ lồng nhau dư thừa và các khung vẽ trống sẽ bị xóa, các glyph lân cận có cùng định dạng sẽ được nối.

{{% alert color="primary" %}}

Việc sử dụng thuộc tính **OptimizeOutput** có thể ảnh hưởng đến độ chính xác của việc hiển thị nội dung.

{{% /alert %}}

## Xem thêm

- Bài viết [Kết xuất](/words/vi/python-net/rendering/) để biết thêm thông tin về định dạng trang cố định và bố cục theo luồng
- Bài viết [Chuyển đổi sang định dạng trang cố định](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) để biết thêm thông tin về bố cục trang
- Bài viết [Chỉ định tùy chọn hiển thị khi chuyển đổi sang PDF](/words/vi/python-net/specify-rendering-options-when-converting-to-pdf/) để biết thêm thông tin về cách sử dụng lớp [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)
