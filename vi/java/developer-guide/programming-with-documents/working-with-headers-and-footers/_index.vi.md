---
title: Làm việc với Headers và Footers trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Header và Footer
linktitle: Làm việc với Header và Footer
description: "Cách thao tác với header và footer bằng Java."
type: docs
weight: 150
url: /vi/java/working-with-headers-and-footers/
---

Aspose.Words cho phép người dùng làm việc với tiêu đề và chân trang trong một tài liệu. Đệm là văn bản được đặt ở đầu trang, còn chân trang là văn bản ở cuối trang. Thông thường, những khu vực này được dùng để chèn thông tin cần được lặp lại trên tất cả hoặc một số trang của văn bản, như số trang, ngày tạo, thông tin công ty và v.v.

## Tạo Header hay Footer bằng DocumentBuilder

Nếu bạn muốn thêm tiêu đề tài liệu hoặc chân trang một cách lập trình thì cách dễ nhất là sử dụng lớp [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) để làm điều đó.

Mã ví dụ sau cho thấy cách thêm một tiêu đề và chân trang cho các trang tài liệu:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Chỉ định Tùy chọn Đầu hoặc Chân trang

Khi bạn thêm tiêu đề hoặc chân trang vào một tài liệu, bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho người dùng các lớp [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) và [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/), cũng như [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) liệt kê mà mang lại quyền kiểm soát nhiều hơn về quá trình tùy chỉnh tiêu đề và chân trang.

### Chỉ định kiểu đầu trang hay chân trang

Bạn có thể chỉ định ba loại tiêu đề và ba loại chân trang khác nhau cho một tài liệu:

1. Đầu trang và/hoặc chân trang cho trang đầu tiên
2. Đầu và/hoặc chân trang cho các trang chẵn
3. Đầu và/hoặc chân trang cho các trang lẻ

Mẫu mã sau cho thấy cách thêm tiêu đề cho các trang tài liệu không chẵn":

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Chỉ định xem có nên hiển thị các tiêu đề hoặc chân trang khác nhau cho trang đầu tiên hay không

Như đã nói ở trên, bạn cũng có thể đặt một tiêu đề hoặc chân trang khác cho trang đầu tiên. Để thực hiện điều này, bạn cần đặt cờ [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) thành `true` và sau đó chỉ định giá trị **HeaderFirst** hoặc **FooterFirst**.

Mã ví dụ sau đây cho thấy cách đặt tiêu đề cho trang đầu tiên:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Chỉ định xem có nên hiển thị các tiêu đề hoặc chân trang khác nhau cho các trang lẻ hay chẵn

 Tiếp theo, bạn muốn đặt các tiêu đề hoặc chân trang khác nhau cho các trang lẻ và chẵn trong một tài liệu. Để làm việc này, bạn cần đặt [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) cờ thành `true`, và sau đó chỉ rõ các giá trị **HeaderPrimary** và **HeaderEven** hoặc **FooterPrimary** và **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Chèn một hình ảnh được đặt tuyệt đối vào tiêu đề

Để đặt hình ảnh trong tiêu đề hoặc chân trang, bạn dùng loại tiêu đề **HeaderPrimary** hoặc loại chân trang **FooterPrimary** và phương pháp [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte).

Mã ví dụ sau cho thấy cách thêm hình ảnh vào một tiêu đề:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Thiết lập các thuộc tính phông chữ và đoạn văn cho văn bản tiêu đề hoặc chân trang

Với Aspose.Words bạn có thể thiết lập các thuộc tính phông chữ và đoạn văn, sử dụng kiểu tiêu đề **HeaderPrimary** hoặc kiểu chân trang **FooterPrimary**, cũng như các phương pháp và thuộc tính để làm việc với các phông chữ và đoạn văn mà bạn dùng cho cơ thể tài liệu.

Ví dụ mã sau cho thấy cách đặt văn bản trong tiêu đề đến kiểu Arial, đậm, kích cỡ 14 và căn giữa:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Chèn Số Trang vào Đầu trang hoặc Chân trang

Nếu cần thiết bạn có thể thêm số trang vào phần tiêu đề hoặc chân trang. Để thực hiện điều này, hãy sử dụng kiểu đầu đề **HeaderPrimary** hoặc kiểu chân trang **FooterPrimary** và phương pháp [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) để thêm trường cần thiết.

Ví dụ sau cho thấy cách thêm số trang vào cột chân trang ở bên phải:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Sử dụng Tiêu đề hoặc Bề mặt được định nghĩa trong phần trước

Nếu bạn cần sao chép tiêu đề hoặc chân trang từ phần trước, bạn cũng có thể làm điều đó.

Mã ví dụ sau cho thấy cách sao chép tiêu đề hoặc chân trang từ phần trước đây:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Đảm bảo sự xuất hiện của Tiêu đề hoặc Chân trang khi Sử dụng các Hướng khác nhau và Kích thước Trang

Aspose.Words cho phép bạn cung cấp kiểu dáng của một tiêu đề hoặc chân trang khi sử dụng các định hướng và kích thước trang khác nhau.

Ví dụ sau cho thấy cách làm như thế nào:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Cách Loại bỏ Chỉ Tiêu Dấu đầu hoặc Chỉ Tiêu Chân trang

Mỗi phần trong một tài liệu có thể có tối đa ba tiêu đề và tối đa ba chân trang (cho trang đầu tiên, thứ hai và thứ ba). Nếu bạn muốn xóa tất cả các tiêu đề hoặc tất cả các chân trang trong một tài liệu, bạn cần lặp qua tất cả các phần và xóa mỗi nút tiêu đề tương ứng hoặc nút chân trang.

Mã đoạn ví dụ cho thấy cách loại bỏ tất cả các chân trang trên tất cả các phần nhưng để lại tiêu đề nguyên vẹn. Bạn có thể loại bỏ các tiêu đề theo cách tương tự:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}