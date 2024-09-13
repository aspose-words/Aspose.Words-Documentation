---
title: Làm việc với cột và hàng trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với cột và hàng
linktitle: Làm việc với cột và hàng
description: "Làm việc với các phần của một bảng - hàng, cột và ô bằng cách sử dụng Java. Chỉ định hàng tiêu đề Java."
type: docs
weight: 30
url: /vi/java/working-with-columns-and-rows/
---

Để có quyền kiểm soát hơn về cách các bảng hoạt động, hãy tìm hiểu cách thao tác cột và hàng.

## Tìm chỉ số phần tử bảng

Sọc, hàng và tế bào được quản lý bằng cách truy cập vào nút tài liệu được chọn theo chỉ số của nó. Tìm chỉ số của một nút nào đó bao gồm việc thu thập tất cả các nút con của loại phần tử từ nút cha, và sau đó sử dụng phương pháp [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) để tìm chỉ số của nút mong muốn trong bộ sưu tập.

### Tìm Chỉ số của một Bảng trong một Tài liệu

Đôi khi bạn có thể cần phải thay đổi một bảng nhất định trong một văn bản. Để thực hiện điều này, bạn có thể tham chiếu đến một bảng bằng chỉ số của nó.

Mã ví dụ sau cho thấy cách lấy chỉ số của một bảng trong tài liệu:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Tìm Chỉ Số của một Hàng trong Bảng

Tương tự như vậy, bạn có thể cần phải thực hiện những thay đổi đến một hàng cụ thể trong bảng được chọn. Để làm được điều đó, bạn cũng có thể tham khảo một hàng bằng chỉ số của nó.

Mã ví dụ sau cho thấy cách lấy chỉ số của một hàng trong bảng:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Tìm Chỉ số của một Ô trong một Hàng

Cuối cùng, bạn có thể cần thay đổi một ô cụ thể và bạn có thể làm điều này bằng chỉ mục của nó cũng vậy.

Ví dụ mã sau cho thấy cách lấy chỉ mục của một ô trong một hàng là như thế nào:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Làm việc với cột

Trong Aspose.Words Document Object Model (DOM) nút [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) bao gồm [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) nút và sau đó là [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) nút. Vì vậy, trong `Document` Object Model của Aspose.Words, như trong các tài liệu Word, không có khái niệm về một cột.

Do thiết kế, các hàng trong Microsoft Word và Aspose.Words là hoàn toàn độc lập, và những tính chất cơ bản và hoạt động chỉ chứa được trong các hàng và tế bào của bảng. Đánh dấu này cho phép bảng có một số thuộc tính thú vị:

- Mỗi hàng bảng có thể có số lượng tế bào hoàn toàn khác nhau
Tia dọc, các tế bào của mỗi hàng có thể có độ rộng khác nhau
- Có thể kết hợp bảng với định dạng hàng khác nhau và số lượng ô

![work-with-columns-aspose-words-java](working-with-columns-and-rows-1.png)

Tất cả các thao tác thực hiện trên cột thực sự là" phím tắt "thực hiện thao tác bằng cách thay đổi hàng theo cách mà nó trông giống như đang được áp dụng cho cột. Đó là bạn có thể thực hiện các thao tác trên cột bằng cách lặp lại đơn giản chỉ trên cùng một bảng hàng ô.

Mã ví dụ sau đơn giản hóa các hoạt động bằng cách cung cấp lớp khuôn mặt mà thu thập các tế bào tạo nên một "cột" của bảng:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Mã ví dụ dưới đây cho thấy cách chèn cột trống vào một bảng:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Mã ví dụ sau cho thấy cách loại bỏ một cột từ một bảng trong tài liệu:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Chỉ định hàng làm tiêu đề hàng

Bạn có thể chọn lặp lại hàng đầu tiên trong bảng chỉ như hàng tiêu đề trên trang đầu tiên hoặc trên mỗi trang nếu bảng được chia thành nhiều. Trong Aspose.Words, bạn có thể lặp lại hàng tiêu đề trên mỗi trang sử dụng thuộc tính [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

Bạn có thể đánh dấu nhiều hàng tiêu đề nếu các dòng như vậy nằm liên tiếp đầu bảng. Để làm điều này, bạn cần áp dụng các **HeadingFormat** thuộc tính cho các hàng này.

{{% alert color="primary" %}}

Hãy lưu ý rằng các hàng tiêu đề không hoạt động trong các bảng lồng nhau. Đó là, nếu bạn có một bảng bên trong bảng khác, cài đặt này sẽ không có tác dụng gì cả. Đây là một giới hạn của Microsoft Word không cho phép điều này, không phải Aspose.Words.

{{% /alert %}}

Mã ví dụ sau cho thấy cách xây dựng một bảng bao gồm các hàng tiêu đề lặp lại trên các trang tiếp theo:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Giữ cho các bảng và hàng không bị tách ra trên các trang {#keep-tables-and-rows-from-breaking-across-pages}

Có lúc nào đó nội dung của một bảng không nên được chia trên nhiều trang. Ví dụ nếu một tiêu đề ở trên bảng, tiêu đề và bảng nên luôn được giữ lại cùng một trang để bảo tồn sự xuất hiện đúng đắn.

Có hai kỹ thuật riêng biệt có ích để đạt được chức năng này:

- `Allow row break across pages` được áp dụng cho các hàng bảng
- `Keep with next`, được áp dụng cho các đoạn văn trong bảng ô

Theo mặc định, các thuộc tính ở trên là vô hiệu.

<img src="keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Giữ hàng khỏi phá vỡ trên trang {#keep-a-row-from-breaking-across-pages}

Đây liên quan đến việc hạn chế nội dung bên trong các tế bào của một hàng từ bị phân chia trên trang. Trong Microsoft Word, điều này có thể được tìm thấy dưới Table Properties với tùy chọn "Allow row to break across pages. Trong Aspose.Words, điều này được tìm thấy dưới đối tượng [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) của một [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) với thuộc tính [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Mã ví dụ sau cho thấy cách vô hiệu hóa việc ngắt dòng trên trang cho từng hàng trong bảng:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Giữ cho bảng không bị vỡ giữa các trang {#keep-a-table-from-breaking-across-pages}

Để ngăn chặn bảng bị chia theo trang chúng ta cần phải chỉ định rằng chúng ta muốn nội dung chứa bên trong bảng được ở lại cùng nhau.

Để thực hiện điều này, Aspose.Words sử dụng một phương pháp cho phép người dùng chọn một bảng và bật tham số [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) để true cho mỗi đoạn văn trong các ô của bảng. Ngoại lệ là đoạn văn cuối cùng trong bảng, nên được đặt thành false.

<img src="keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Mã ví dụ sau cho thấy cách thiết lập một bảng để giữ lại cùng trên trang:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}