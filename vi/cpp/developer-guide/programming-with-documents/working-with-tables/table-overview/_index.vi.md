---
title: Tổng Quan Về Bảng
second_title: Aspose.Words cho C++
articleTitle: Tổng Quan Về Bảng
linktitle: Tổng Quan Về Bảng
description: "Làm việc với các bảng và các thành phần của chúng như ô, hàng, cột trong Aspose.Words cho C++. Làm thế nào để làm việc với các bảng trong C++."
type: docs
weight: 10
url: /vi/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words là một thư viện lớp được thiết kế để xử lý tài liệu phía máy chủ ở nhiều định dạng khác nhau – PDF, HTML, các định dạng Microsoft Word khác nhau và các định dạng khác – và hỗ trợ các bảng theo các cách sau:

* các bảng trong tài liệu được giữ nguyên trong quá trình mở/lưu và chuyển đổi
* có thể chỉnh sửa bảng, nội dung và định dạng của nó, sau đó xuất các thay đổi sang tệp ở định dạng hỗ trợ bảng

Trong bài viết này, chúng ta sẽ tìm hiểu thêm về cấu trúc bảng, ô, hàng và cột được Aspose.Words hỗ trợ và các chi tiết khi làm việc với các bảng như vậy.

## Cấu Trúc Bảng

Như đã đề cập, bảng bao gồm các phần tử như **Cell**, **Row** và **Column**. Đây là những khái niệm chung cho tất cả các bảng nói chung, bất kể định dạng tài liệu.

Đây là một ví dụ phổ biến về bảng được tìm thấy trong tài liệu Microsoft Word:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Các Nút Bảng

Một bảng từ bất kỳ tài liệu nào được tải vào Aspose.Words được nhập dưới dạng **Table node**. Bảng có thể được tìm thấy như một đứa trẻ của:

- văn bản chính
- một câu chuyện nội tuyến chẳng hạn như một bình luận hoặc một chú thích
- các ô khi một bảng được lồng trong một bảng khác

{{% alert color="primary" %}}

Lưu ý rằng các bảng có thể được lồng bên trong các bảng khác đến bất kỳ độ sâu nào.

{{% /alert %}}

### Nội Dung Bảng

Nút bảng không chứa bất kỳ nội dung thực nào – thay vào đó, nó là một vùng chứa cho các nút khác như vậy tạo nên nội dung:

- **Table** chứa nhiều nút **Row**. Bảng cung cấp tất cả các phần tử nút thông thường, cho phép bạn tự do di chuyển, sửa đổi và xóa bảng trong tài liệu.
- **Row** đại diện cho một hàng bảng duy nhất và chứa nhiều nút **Cell**. Ngoài ra, **Row** cung cấp các phần tử xác định cách hàng được hiển thị, chẳng hạn như chiều cao và căn chỉnh.
- **Cell** là những gì chứa nội dung thực có thể nhìn thấy trong bảng và được tạo thành từ **Paragraph** và các nút cấp khối khác. Ngoài ra, các ô có thể chứa các bảng lồng nhau.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Bạn có thể kiểm tra cấu trúc của các nút bảng trong tài liệu bằng **DocumentExplorer**.

{{% /alert %}}

### Đoạn trống sau Bảng

Hình trên cho thấy tài liệu chứa một bảng gồm nhiều hàng, lần lượt bao gồm hai ô. Mỗi ô trong số hai ô bao gồm một đoạn văn, là vùng chứa cho văn bản được định dạng của ô.

Cũng cần lưu ý rằng việc tách hai bảng liên tiếp trong một tài liệu yêu cầu ít nhất một đoạn trống sau bảng. Nếu không có một đoạn như vậy, các bảng liên tiếp sẽ được nối với nhau thành một. Hành vi này giống hệt nhau ở cả Microsoft Word và Aspose.Words.

Trong Aspose.Words, tất cả các lớp và thuộc tính liên quan đến bảng được chứa trong không gian tên [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/).

## Xem Thêm

* [Aspose.Words Mô Hình Đối Tượng Tài Liệu (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Mức độ logic Của Các Nút trong Một Tài liệu](/words/cpp/logical-levels-of-nodes-in-a-document/)
