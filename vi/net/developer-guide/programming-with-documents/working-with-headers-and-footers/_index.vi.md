---
title: Làm việc với Đầu trang và Chân trang trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với Đầu trang và Chân trang
linktitle: Làm việc với Đầu trang và Chân trang
description: "Cách thao tác đầu trang, chân trang bằng C#. Tạo đầu trang và chân trang C#. Xóa đầu trang hoặc chân trang C#."
type: docs
weight: 150
url: /vi/net/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words cho phép người dùng làm việc với đầu trang và chân trang trong tài liệu. Đầu trang là văn bản được đặt ở đầu trang và chân trang là văn bản ở cuối trang. Thông thường, những vùng này được sử dụng để chèn thông tin cần được lặp lại trên tất cả hoặc một số trang của tài liệu, chẳng hạn như số trang, ngày tạo, thông tin công ty, v.v.

## Tạo đầu trang hoặc chân trang bằng DocumentBuilder

Nếu bạn muốn thêm đầu trang hoặc chân trang tài liệu theo chương trình, cách dễ nhất là sử dụng lớp [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) để thực hiện việc đó.

Ví dụ mã sau đây cho biết cách thêm đầu trang và chân trang cho các trang tài liệu:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Chỉ định tùy chọn đầu trang hoặc chân trang

Khi bạn thêm đầu trang hoặc chân trang vào tài liệu, bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho người dùng các lớp [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) và [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/) cũng như bảng liệt kê [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) giúp bạn kiểm soát nhiều hơn quá trình tùy chỉnh đầu trang và chân trang.

### Chỉ định loại đầu trang hoặc chân trang

Bạn có thể chỉ định ba loại đầu trang khác nhau và ba loại chân trang khác nhau cho một tài liệu:
1. Đầu trang và/hoặc chân trang cho trang đầu tiên
2. Đầu trang và/hoặc chân trang cho các trang chẵn
3. Đầu trang và/hoặc chân trang cho trang lẻ

Ví dụ mã sau đây cho biết cách thêm tiêu đề cho các trang tài liệu lẻ:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Chỉ định xem có hiển thị đầu trang hoặc chân trang khác nhau cho trang đầu tiên hay không

Như đã nói ở trên, bạn cũng có thể đặt đầu trang hoặc chân trang khác cho trang đầu tiên. Để thực hiện việc này, bạn cần đặt cờ [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) thành `true`, sau đó chỉ định giá trị **HeaderFirst** hoặc **FooterFirst**.

Ví dụ mã sau đây chỉ ra cách đặt tiêu đề cho trang đầu tiên:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Chỉ định xem có hiển thị đầu trang hoặc chân trang khác nhau cho trang lẻ hoặc trang chẵn hay không

 Tiếp theo, bạn sẽ muốn đặt các đầu trang hoặc chân trang khác nhau cho các trang chẵn và lẻ trong tài liệu. Để thực hiện việc này, bạn cần đặt cờ [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) thành `true`, sau đó chỉ định các giá trị **HeaderPrimary** và **HeaderEven** hoặc **FooterPrimary** và **FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Chèn một hình ảnh được định vị tuyệt đối vào tiêu đề

Để đặt hình ảnh vào đầu trang hoặc chân trang, hãy sử dụng loại tiêu đề **HeaderPrimary** hoặc loại chân trang **FooterPrimary** và phương thức [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/).

Ví dụ mã sau đây cho biết cách thêm hình ảnh vào tiêu đề:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Đặt thuộc tính phông chữ và đoạn văn cho văn bản đầu trang hoặc chân trang

Với Aspose.Words, bạn có thể đặt thuộc tính phông chữ và đoạn văn, sử dụng loại tiêu đề **HeaderPrimary** hoặc loại chân trang **FooterPrimary**, cũng như các phương pháp và thuộc tính để làm việc với phông chữ và đoạn văn bạn sử dụng cho nội dung tài liệu.

Ví dụ về mã sau đây cho biết cách đặt văn bản trong tiêu đề thành Arial, in đậm, cỡ 14 và căn giữa:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Chèn số trang vào Header hoặc Footer

Nếu cần, bạn có thể thêm số trang vào đầu trang hoặc chân trang. Để thực hiện việc này, hãy sử dụng loại tiêu đề **HeaderPrimary** hoặc loại chân trang **FooterPrimary** và phương thức [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) để thêm trường bắt buộc.

Ví dụ mã sau đây cho thấy cách thêm số trang vào chân trang bên phải:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Sử dụng Đầu trang hoặc Chân trang được xác định trong Phần trước

Nếu bạn cần sao chép đầu trang hoặc chân trang từ phần trước, bạn cũng có thể làm điều đó.

Ví dụ mã sau đây cho biết cách sao chép đầu trang hoặc chân trang từ phần trước:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Đảm bảo sự xuất hiện của Đầu trang hoặc Chân trang khi sử dụng các hướng trang và kích thước trang khác nhau

Aspose.Words cho phép bạn cung cấp giao diện của đầu trang hoặc chân trang khi sử dụng các hướng và kích thước trang khác nhau.

Ví dụ sau đây cho thấy cách thực hiện việc này:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## Cách chỉ xóa đầu trang hoặc chỉ chân trang

Mỗi phần trong tài liệu có thể có tối đa ba đầu trang và tối đa ba chân trang (đối với các trang đầu tiên, trang chẵn và trang lẻ). Nếu bạn muốn xóa tất cả đầu trang hoặc tất cả chân trang trong tài liệu, bạn cần lặp qua tất cả các phần và xóa từng nút đầu trang hoặc nút chân trang tương ứng.

Ví dụ về mã sau đây cho thấy cách xóa tất cả chân trang khỏi tất cả các phần nhưng giữ nguyên tiêu đề. Bạn chỉ có thể xóa tiêu đề theo cách tương tự:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}
