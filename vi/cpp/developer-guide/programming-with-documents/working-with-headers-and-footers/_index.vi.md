---
title: Làm Việc với Đầu Trang và Chân trang trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Đầu Trang và Chân trang
linktitle: Làm việc Với Đầu Trang và Chân trang
description: "Cách thao tác đầu trang và chân trang bằng C++."
type: docs
weight: 150
url: /vi/cpp/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words cho phép người dùng làm việc với đầu trang và chân trang trong tài liệu. Tiêu đề là văn bản được đặt ở đầu trang và chân trang là văn bản ở cuối trang. Thông thường, các khu vực này được sử dụng để chèn thông tin nên được lặp lại trên tất cả hoặc một số trang của tài liệu, chẳng hạn như số trang, ngày tạo, thông tin công ty, v. v.

## Tạo Tiêu đề hoặc Chân trang bằng DocumentBuilder

Nếu bạn muốn thêm tiêu đề hoặc chân trang tài liệu theo chương trình, cách dễ nhất là sử dụng lớp [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) để thực hiện.

Ví dụ mã sau đây cho thấy cách thêm tiêu đề và chân trang cho các trang tài liệu:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Chỉ Định Tùy Chọn Đầu trang hoặc Chân Trang

Khi bạn thêm tiêu đề hoặc chân trang vào tài liệu, bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho người dùng các lớp [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) và [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/), cũng như liệt kê [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/) cung cấp cho bạn quyền kiểm soát nhiều hơn đối với quy trình tùy chỉnh đầu trang và chân trang.

### Chỉ Định Loại Đầu trang hoặc Chân Trang

Bạn có thể chỉ định ba loại tiêu đề khác nhau và ba loại chân trang khác nhau cho một tài liệu:

1. Tiêu đề và / hoặc chân trang cho trang đầu tiên
2. Tiêu đề và / hoặc chân trang cho các trang chẵn
3. Tiêu đề và / hoặc chân trang cho các trang lẻ

Ví dụ mã sau đây cho thấy cách thêm tiêu đề cho các trang tài liệu lẻ:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Chỉ Định Xem Có Hiển Thị Các Tiêu đề Hoặc Chân Trang Khác nhau cho Trang Đầu tiên Hay Không

Như đã nói ở trên, bạn cũng có thể đặt một tiêu đề hoặc chân trang khác cho trang đầu tiên. Để thực hiện việc này, bạn cần đặt cờ [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) thành `true` và sau đó chỉ định giá trị **HeaderFirst** hoặc **FooterFirst**.

Ví dụ mã sau đây chỉ cho biết cách đặt tiêu đề cho trang đầu tiên:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Chỉ Định Xem Có Hiển Thị Các Tiêu đề Hoặc Chân Trang khác nhau cho Các Trang Lẻ Hoặc Chẵn Hay Không

 Tiếp theo, bạn sẽ muốn đặt các tiêu đề hoặc chân trang khác nhau cho các trang lẻ và chẵn trong tài liệu. Để thực hiện việc này, bạn cần đặt cờ [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) thành `true` và sau đó chỉ định các giá trị **HeaderPrimary** và **HeaderEven** hoặc **FooterPrimary** và **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Chèn Một Hình Ảnh Được Định Vị Tuyệt Đối vào Tiêu đề

Để đặt hình ảnh vào đầu trang hoặc chân trang, hãy sử dụng loại đầu trang **HeaderPrimary** hoặc loại chân trang **FooterPrimary** và phương thức `InsertImage`.

Ví dụ mã sau đây cho thấy cách thêm hình ảnh vào tiêu đề:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Đặt Thuộc tính Phông Chữ và Đoạn văn Cho Văn Bản Tiêu đề hoặc Chân Trang

Với Aspose.Words, bạn có thể đặt thuộc tính phông chữ và đoạn văn, sử dụng loại tiêu đề **HeaderPrimary** hoặc loại chân trang **FooterPrimary**, cũng như các phương thức và thuộc tính để làm việc với phông chữ và đoạn văn bạn sử dụng cho phần thân tài liệu.

Ví dụ mã sau đây cho thấy cách đặt văn bản trong tiêu Đề Thành Arial, bold, size 14 Và căn chỉnh trung tâm:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Chèn Số Trang vào Đầu trang hoặc Chân trang

Nếu cần, bạn có thể thêm số trang vào đầu trang hoặc chân trang. Để thực hiện việc này, hãy sử dụng loại tiêu đề **HeaderPrimary** hoặc loại chân trang **FooterPrimary** và phương thức [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) để thêm trường bắt buộc.

Ví dụ mã sau đây cho thấy cách thêm số trang vào chân trang ở bên phải:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Sử dụng Đầu trang Hoặc Chân Trang Được Xác định Trong Phần Trước

Nếu bạn cần sao chép đầu trang hoặc chân trang từ phần trước, bạn cũng có thể làm điều đó.

Ví dụ mã sau đây cho thấy cách sao chép đầu trang hoặc chân trang từ phần trước:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Đảm bảo xuất hiện Đầu trang hoặc Chân trang khi Sử dụng Các Hướng Trang Và Kích Thước Trang Khác nhau

Aspose.Words cho phép bạn cung cấp sự xuất hiện của đầu trang hoặc chân trang khi sử dụng các hướng và kích thước trang khác nhau.

Ví dụ sau đây cho thấy cách thực hiện việc này:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Làm Thế Nào Để Loại Bỏ Chỉ Tiêu đề Hoặc Chỉ Chân Trang

Mỗi phần trong tài liệu có thể có tối đa ba tiêu đề và tối đa ba chân trang (đối với các trang đầu tiên, chẵn và lẻ). Nếu bạn muốn xóa tất cả các tiêu đề hoặc tất cả chân trang trong tài liệu, bạn cần lặp qua tất cả các phần và xóa từng nút tiêu đề hoặc nút chân trang tương ứng.

Ví dụ mã sau đây cho thấy cách xóa tất cả chân trang khỏi tất cả các phần nhưng để nguyên tiêu đề. Bạn chỉ có thể xóa các tiêu đề theo cách tương tự:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
