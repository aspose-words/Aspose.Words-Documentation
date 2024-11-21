---
title: Chuyển đổi PDF sang các định dạng tài liệu khác trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chuyển đổi PDF sang các định dạng tài liệu khác
linktitle: Chuyển đổi PDF sang các định dạng tài liệu khác
type: docs
description: "Chuyển đổi các định dạng PDF sang Word như DOCX, DOC, các định dạng hình ảnh như JPG hoặc PNG hoặc bất kỳ định dạng nào khác được Aspose.Words hỗ trợ bằng C#."
keywords: convert pdf to other formats c#
weight: 45
url: /vi/net/convert-pdf-to-other-document-formats/
timestamp: 2024-07-09-19-00-42
---

Aspose.Words có thể tải ngay cả định dạng phức tạp như PDF. Điều này mở ra những cơ hội mới: có thể chuyển đổi PDF sang Word hoặc các định dạng khác giúp người dùng tiến xa trong việc giải quyết nhiều bài toán ứng dụng.

## Điều kiện tiên quyết

* Đã thêm tham chiếu đến gói Aspose.Words ***HOẶC*** vào Aspose.Words.Pdf2Word.dll.
* Ít nhất .NET Framework 4.6.1 hoặc .NET Standard 2.0. Các mục tiêu như .NET Core 2.x hoặc 3.0, .NET 5 và Xamarin cũng được hỗ trợ thông qua khả năng tương thích với .NET Standard.

## Chuyển đổi PDF sang các định dạng khác nhau {#convert-pdf-to-other-formats}

Chuyển đổi phổ biến nhất từ PDF là chuyển đổi sang các định dạng Microsoft Word như DOCX, DOC, cũng như các định dạng hình ảnh như JPG hoặc PNG. Như đã nói, việc chuyển đổi tài liệu từ định dạng này sang định dạng khác sẽ thực hiện theo cách quen thuộc.

Ví dụ mã sau đây cho biết cách chuyển đổi tài liệu từ PDF sang DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Chỉ định tùy chọn tải khi nhập PDF {#specify-load-options-when-importing-pdf}

Aspose.Words cung cấp cho bạn lớp [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/), cho phép kiểm soát chính xác hơn cách tải tài liệu PDF.

Hầu hết các thuộc tính đều kế thừa hoặc nạp chồng các thuộc tính đã tồn tại trong lớp `LoadOptions`. Ngoài chúng, một số thuộc tính được chỉ định cho định dạng PDF. Ví dụ: bạn có thể sử dụng thuộc tính [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) và [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) để xác định phạm vi trang sẽ được tải từ tài liệu PDF và thuộc tính [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) để kiểm soát xem có nên bỏ qua hình ảnh khi tải PDF hay không. Một tham số được hỗ trợ khác là [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), phải được cung cấp cho [tài liệu được bảo vệ bằng mật khẩu](/words/net/protect-documents-and-parts-of-documents/).

## Nội dung PDF được hỗ trợ {#supported-pdf-content}

Plugin PDF2Word hiện hỗ trợ các loại dữ liệu sau:

* Đoạn văn bản
* Hình ảnh
* Những cái bàn
* Danh sách
* Đầu trang và chân trang
* Chú thích cuối trang
* Số trang
* Văn bản từ phải sang trái (có một số hạn chế)
* Các tệp PDF có thể tìm kiếm (hình ảnh phía trước sẽ bị xóa để thay thế cho văn bản nền)

## Các tính năng trong tương lai {#planned-features}

Một số tính năng vẫn đang trong giai đoạn phát triển ban đầu hoặc được đưa vào lộ trình phát triển:

* Mục lục
* OCR cho các tệp PDF có thể tìm kiếm và không thể tìm kiếm
* Báo cáo tiến trình
* Văn bản nhiều cột
* Công thức toán học
* Nhiều trường tự động hơn (ngoài `PAGE` và NUMPAGES)

## Ngoại lệ tải PDF

Trong quá trình chuyển đổi tài liệu PDF, một trong những trường hợp ngoại lệ sau có thể xảy ra:

|  Ngoại lệ |  Sự miêu tả |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  Không thể xử lý tệp PDF vì một số lý do.<br /> {{% alert color="primary" %}}Bạn có thể báo cáo vấn đề cho nhóm phát triển để điều tra chi tiết bằng cách sử dụng [Hỗ trợ kỹ thuật](/words/vi/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  Tệp PDF được bảo vệ bởi Adobe DRM và không thể được giải mã bằng Pdf2Word |
|  `PasswordProtectedFileException`  |  Mật khẩu chính xác phải được cung cấp cho tệp PDF được bảo vệ bằng mật khẩu |

## Xem thêm

* [Tham chiếu Nuget đến Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

