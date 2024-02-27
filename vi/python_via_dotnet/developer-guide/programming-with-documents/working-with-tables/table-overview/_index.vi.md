---
title: Tổng quan về bảng
second_title: Aspose.Words cho Python
articleTitle: Tổng quan về bảng
linktitle: Tổng quan về bảng
description: "Làm việc với các bảng và các thành phần của chúng như ô, hàng, cột trong Aspose.Words cho Python. Cách làm việc với bảng trong Python."
type: docs
weight: 10
url: /vi/python-net/table-overview/
---

Aspose.Words là thư viện lớp được thiết kế để xử lý tài liệu phía máy chủ ở nhiều định dạng khác nhau - PDF, HTML, các định dạng Microsoft Word khác nhau và các định dạng khác - đồng thời hỗ trợ các bảng theo các cách sau:

* các bảng trong tài liệu được giữ nguyên trong quá trình mở/lưu và chuyển đổi
* có thể chỉnh sửa bảng, nội dung và định dạng của nó, sau đó xuất các thay đổi sang tệp ở định dạng hỗ trợ bảng

Trong bài viết này, chúng ta sẽ tìm hiểu thêm về cấu trúc bảng, ô, hàng và cột được Aspose.Words hỗ trợ cũng như chi tiết cách làm việc với các bảng đó.

## Cấu trúc bảng

Như đã đề cập, bảng bao gồm các phần tử như **Cell**, **Row** và **Column**. Đây là những khái niệm chung cho tất cả các bảng nói chung, bất kể định dạng tài liệu nào.

Đây là ví dụ phổ biến về bảng được tìm thấy trong tài liệu Microsoft Word:

![tables-overview-aspose-words-python-1](/words/python-net/table-overview/tables-overview-1.png)

### Nút bảng

Bảng từ bất kỳ tài liệu nào được tải vào Aspose.Words đều được nhập dưới dạng **Nút bảng**. Bảng có thể được tìm thấy khi còn là con của:

- văn bản chính
- một câu chuyện nội tuyến chẳng hạn như một bình luận hoặc một chú thích cuối trang
- các ô khi một bảng được lồng trong một bảng khác

{{% alert color="primary" %}}

Lưu ý rằng các bảng có thể được lồng bên trong các bảng khác ở bất kỳ độ sâu nào.

{{% /alert %}}

### Bảng nội dung

Nút bảng không chứa bất kỳ nội dung thực nào - thay vào đó, nó là nơi chứa các nút khác tạo nên nội dung:

- **Table** chứa nhiều nút **Row**. Bảng cung cấp tất cả các thành phần nút thông thường, cho phép bạn tự do di chuyển, sửa đổi và xóa bảng trong tài liệu.
- **Row** đại diện cho một hàng trong bảng và chứa nhiều nút **Cell**. Ngoài ra, **Row** còn cung cấp các phần tử xác định cách hiển thị hàng, chẳng hạn như chiều cao và căn chỉnh.
- **Cell** là nội dung chứa nội dung true hiển thị trong bảng và được tạo thành từ **Paragraph** và các nút cấp khối khác. Ngoài ra, các ô có thể chứa các bảng lồng nhau.

![tables-overview-aspose-words-python-2](/words/python-net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Bạn có thể kiểm tra cấu trúc của các nút bảng trong tài liệu bằng **DocumentExplorer**.

{{% /alert %}}

### Đoạn trống sau bảng

Hình trên cho thấy tài liệu chứa một bảng gồm nhiều hàng, lần lượt bao gồm hai ô. Mỗi ô trong số hai ô bao gồm một đoạn văn, là vùng chứa văn bản được định dạng của ô.

Cũng cần lưu ý rằng việc ngăn cách hai bảng liên tiếp trong một tài liệu cần có ít nhất một đoạn trống sau bảng. Nếu không có đoạn văn như vậy, các bảng liên tiếp sẽ được nối lại thành một. Hành vi này giống hệt nhau trong cả Microsoft Word và Aspose.Words.

Trong Aspose.Words, tất cả các lớp và thuộc tính liên quan đến bảng đều có trong mô-đun [Aspose.Words.Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/).

## Xem thêm

* [Aspose.Words Document Object Model (DOM)](/words/vi/python-net/aspose-words-document-object-model/)
* [Mức độ logic của các nút trong tài liệu](/words/vi/python-net/logical-levels-of-nodes-in-a-document/)