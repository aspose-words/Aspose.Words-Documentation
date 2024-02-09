---
title: Làm việc với Cột và Hàng trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với cột và hàng
linktitle: Làm việc với cột và hàng
description: "Làm việc với các phần của bảng – hàng, cột và ô bằng C#. Chỉ định hàng tiêu đề C#."
type: docs
weight: 30
url: /vi/net/working-with-columns-and-rows/
---

Để kiểm soát nhiều hơn cách hoạt động của bảng, hãy tìm hiểu cách thao tác với cột và hàng.

## Tìm chỉ mục thành phần bảng {#find-the-index-of-table-elements}

Cột, hàng và ô được quản lý bằng cách truy cập vào nút tài liệu đã chọn theo chỉ mục của nó. Việc tìm chỉ mục của bất kỳ nút nào liên quan đến việc thu thập tất cả các nút con của loại phần tử từ nút cha, sau đó sử dụng phương pháp [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) để tìm chỉ mục của nút mong muốn trong bộ sưu tập.

### Tìm chỉ mục của bảng trong tài liệu {#find-the-index-of-table-in-a-document}

Đôi khi bạn có thể cần thực hiện các thay đổi đối với một bảng cụ thể trong tài liệu. Để làm điều này, bạn có thể tham khảo một bảng theo chỉ mục của nó.

Ví dụ mã sau đây cho thấy cách truy xuất chỉ mục của bảng trong tài liệu:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Tìm chỉ mục của một hàng trong bảng {#find-the-index-of-a-row-in-a-table}

Tương tự, bạn có thể cần thực hiện thay đổi đối với một hàng cụ thể trong bảng đã chọn. Để làm điều này, bạn cũng có thể tham chiếu đến một hàng theo chỉ mục của nó.

Ví dụ mã sau đây cho thấy cách truy xuất chỉ mục của một hàng trong bảng:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Tìm chỉ mục của một ô trong một hàng {#find-the-index-of-a-cell-in-a-row}

Cuối cùng, bạn có thể cần thực hiện thay đổi đối với một ô cụ thể và bạn cũng có thể thực hiện việc này bằng chỉ mục ô.

Ví dụ mã sau đây cho thấy cách truy xuất chỉ mục của một ô trong một hàng:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Làm việc với cột {#work-with-columns}

Trong Aspose.Words Document Object Model (DOM), nút [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) bao gồm các nút [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) và sau đó là các nút [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/). Do đó, trong Mô hình đối tượng `Document` của Aspose.Words, cũng như trong tài liệu Word, không có khái niệm về cột.

Theo thiết kế, các hàng của bảng trong Microsoft Word và Aspose.Words hoàn toàn độc lập và các thuộc tính cũng như thao tác cơ bản chỉ có trong các hàng và ô của bảng. Điều này mang lại cho các bảng khả năng có một số thuộc tính thú vị:

- Mỗi hàng trong bảng có thể có số ô hoàn toàn khác nhau
- Theo chiều dọc, các ô của mỗi hàng có thể có chiều rộng khác nhau
- Có thể nối các bảng với định dạng hàng và số lượng ô khác nhau

Bất kỳ thao tác nào được thực hiện trên các cột thực chất là "phím tắt" thực hiện thao tác bằng cách thay đổi chung các ô hàng theo cách trông giống như chúng đang được áp dụng cho các cột. Nghĩa là, bạn có thể thực hiện các thao tác trên các cột bằng cách lặp lại chỉ mục ô hàng của cùng một bảng.

Ví dụ mã sau đây đơn giản hóa các hoạt động như vậy bằng cách chứng minh một lớp mặt tiền thu thập các ô tạo thành một "cột" của bảng:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

Ví dụ mã sau đây cho thấy cách chèn một cột trống vào bảng:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

Ví dụ về mã sau đây cho biết cách xóa một cột khỏi bảng trong tài liệu:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Chỉ định hàng làm hàng tiêu đề

Bạn có thể chọn lặp lại hàng đầu tiên trong bảng làm Hàng Tiêu đề chỉ trên trang đầu tiên hoặc trên mỗi trang nếu bảng được chia thành nhiều. Trong Aspose.Words, bạn có thể lặp lại Hàng tiêu đề trên mỗi trang bằng thuộc tính [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/).

Bạn cũng có thể đánh dấu nhiều hàng tiêu đề nếu các hàng đó lần lượt nằm ở đầu bảng. Để thực hiện việc này, bạn cần áp dụng thuộc tính **HeadingFormat** cho các hàng này.

{{% alert color="primary" %}}

Lưu ý rằng Hàng Tiêu đề không hoạt động trong các bảng lồng nhau. Nghĩa là, nếu bạn có một bảng bên trong một bảng khác, cài đặt này sẽ không có hiệu lực. Đó là một hạn chế của Microsoft Word là không cho phép điều này, Aspose.Words thì không.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách tạo bảng bao gồm các Hàng tiêu đề lặp lại trên các trang tiếp theo:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Giữ cho bảng và hàng không bị vỡ trên các trang {#keep-tables-and-rows-from-breaking-across-pages}

Đôi khi nội dung của bảng không được chia thành nhiều trang. Ví dụ: nếu tiêu đề nằm phía trên bảng thì tiêu đề và bảng phải luôn được giữ cùng nhau trên cùng một trang để duy trì hình thức phù hợp.

Có hai kỹ thuật riêng biệt hữu ích để đạt được chức năng này:

- `Allow row break across pages`, được áp dụng cho các hàng của bảng
- `Keep with next`, được áp dụng cho các đoạn văn trong ô bảng

Theo mặc định, các thuộc tính trên bị tắt.

### Giữ một hàng không bị đứt giữa các trang {#keep-a-row-from-breaking-across-pages}

Điều này liên quan đến việc hạn chế nội dung bên trong các ô của một hàng không bị phân chia trên một trang. Trong Microsoft Word, điều này có thể được tìm thấy trong Thuộc tính bảng dưới dạng tùy chọn "Cho phép hàng ngắt giữa các trang". Trong Aspose.Words, điều này được tìm thấy trong đối tượng [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) của [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) dưới dạng thuộc tính [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages).

Ví dụ về mã sau đây cho biết cách tắt tính năng ngắt hàng trên các trang cho mỗi hàng trong bảng:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Giữ cho bảng không bị vỡ trên nhiều trang {#keep-a-table-from-breaking-across-pages}

Để ngăn bảng chia thành nhiều trang, chúng ta cần xác định rõ rằng chúng ta muốn nội dung chứa trong bảng ở cùng nhau.

Để thực hiện điều này, Aspose.Words sử dụng một phương thức cho phép người dùng chọn một bảng và kích hoạt tham số [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) thành true cho từng đoạn trong các ô của bảng. Ngoại lệ là đoạn cuối cùng trong bảng nên được đặt thành false.

Ví dụ về mã sau đây cho thấy cách đặt một bảng ở cùng nhau trên cùng một trang:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}