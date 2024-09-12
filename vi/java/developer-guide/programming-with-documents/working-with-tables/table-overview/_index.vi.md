---
title: Tổng quan bảng
second_title: Aspose.Words cho Java
articleTitle: Tổng quan bảng
linktitle: Tổng quan bảng
description: "Làm việc với các bảng và các thành phần của chúng như là các ô, hàng, cột trong Aspose.Words cho Java. Cách làm việc với bảng trên Java."
type: docs
weight: 10
url: /vi/java/table-overview/
---

Aspose.Words là thư viện lớp được thiết kế cho xử lý phía máy chủ của các tài liệu ở nhiều định dạng – PDF, HTML, nhiều định dạng Microsoft Word và các định dạng khác – và hỗ trợ bảng theo những cách sau:

"* các bảng trong một tài liệu được giữ nguyên trong quá trình mở/giải cứu và chuyển đổi"
"* có thể chỉnh sửa bảng, nội dung và định dạng của nó và sau đó xuất các thay đổi vào một tập tin trong một định dạng hỗ trợ bảng"

Trong bài viết này, chúng ta sẽ tìm hiểu thêm về cấu trúc bảng, các ô, hàng và cột được hỗ trợ bởi Aspose.Words, và chi tiết làm việc với các bảng như vậy.

## Cấu trúc bàn

Như đã nói trên, bảng gồm các phần tử như **Cell**, **Row** và **Column**. Đây là những khái niệm chung cho tất cả các bảng nói chung, bất kể định dạng tài liệu nào.

Đây là một ví dụ thông thường của bảng được tìm thấy trong một Microsoft Word tài liệu:

![tables-overview-aspose-words-java-1](tables-overview-1.png)

### Điểm bảng

Bàn từ bất kỳ tài liệu nào được tải vào Aspose.Words là nhập khẩu như một **Node bảng**. Bàn có thể được tìm thấy là con của:

- văn bản chính
- một câu chuyện in-line như là chú thích hoặc chú giải
- các ô khi một bảng được lồng trong bảng khác

{{% alert color="primary" %}}

Lưu ý rằng các bảng có thể được lồng vào bên trong các bảng khác với bất kỳ độ sâu nào.

{{% /alert %}}

### Nội dung bảng

Node bảng không chứa bất kỳ nội dung thực nào - thay vào đó nó là một chiếc hộp cho các nút khác như vậy mà tạo nên nội dung

- **Table** chứa nhiều **Row** node. Bàn cung cấp tất cả các phần tử nút thông thường, cho phép bạn di chuyển tự do, sửa đổi và xóa bảng trong tài liệu.
- **Row** đại diện cho một hàng bảng duy nhất và chứa nhiều nút **Cell**. Ngoài ra, **Row** cung cấp các phần tử để xác định cách hiển thị hàng, chẳng hạn như chiều cao và căn chỉnh.
- **Cell** là gì chứa nội dung true hiển thị trong bảng và được tạo thành từ một **Paragraph** và các nút khác ở mức khối. Ngoài ra, các ô có thể chứa bảng lồng nhau.

![tables-overview-aspose-words-java-2](tables-overview-2.png)

{{% alert color="primary" %}}

Bạn có thể kiểm tra cấu trúc của các nút bảng trong một tài liệu bằng cách sử dụng **DocumentExplorer**.

{{% /alert %}}

### Đoạn văn rỗng sau bảng

Bức tranh trên cho thấy rằng tài liệu chứa một bảng gồm nhiều hàng, bao gồm hai ô. Mỗi trong hai ô bao gồm một đoạn văn, đây là phần chứa văn bản được định dạng của từng ô.

Cũng đáng để lưu ý rằng tách hai bảng liền kề trong một tài liệu đòi hỏi ít nhất một đoạn văn bản trống sau bảng. Không có đoạn văn này thì các bảng kế tiếp sẽ được nối lại với nhau thành một. Hành vi này giống hệt ở cả Microsoft Word và Aspose.Words.

Aspose.Words có số lớp liên quan đến bảng – [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/) và những thứ khác

## Xem Thêm

* [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/)
* [Logical Levels of Nodes in a Document](/words/java/logical-levels-of-nodes-in-a-document/)