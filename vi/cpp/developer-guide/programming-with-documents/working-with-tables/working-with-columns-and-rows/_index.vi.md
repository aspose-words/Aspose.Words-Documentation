---
title: Làm việc với Các Cột và Hàng trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc với Các Cột và Hàng
linktitle: Làm việc với Các Cột và Hàng
description: "Làm việc với các phần của bảng-hàng, cột và ô bằng C++. Chỉ Định Hàng Tiêu Đề C++."
type: docs
weight: 30
url: /vi/cpp/working-with-columns-and-rows/
---

Để kiểm soát nhiều hơn cách các bảng hoạt động, hãy học cách thao tác các cột và hàng.

## Tìm Chỉ Mục Phần Tử Bảng

Các cột, hàng và ô được quản lý bằng cách truy cập nút tài liệu đã chọn theo chỉ mục của nó. Tìm chỉ mục của bất kỳ nút nào liên quan đến việc thu thập tất cả các nút con của loại phần tử từ nút cha, sau đó sử dụng phương thức [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) để tìm chỉ mục của nút mong muốn trong bộ sưu tập.

### Tìm Chỉ Mục Của Bảng trong Tài liệu

Đôi khi bạn có thể cần thực hiện các thay đổi đối với một bảng cụ thể trong tài liệu. Để làm điều này, bạn có thể tham khảo một bảng theo chỉ mục của nó.

Ví dụ mã sau đây cho thấy cách truy xuất chỉ mục của bảng trong tài liệu:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### Tìm Chỉ mục Của Một Hàng trong Bảng {#find-the-index-of-a-row-in-a-table}

Tương tự, bạn có thể cần thực hiện các thay đổi đối với một hàng cụ thể trong một bảng đã chọn. Để làm điều này, bạn cũng có thể tham khảo một hàng theo chỉ mục của nó.

Ví dụ mã sau đây cho thấy cách truy xuất chỉ mục của một hàng trong bảng:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### Tìm Chỉ mục Của Một Ô liên tiếp {#find-the-index-of-a-cell-in-a-row}

Cuối cùng, bạn có thể cần thực hiện các thay đổi đối với một ô cụ thể và bạn cũng có thể thực hiện việc này bằng chỉ mục ô.

Ví dụ mã sau đây cho thấy cách truy xuất chỉ mục của một ô liên tiếp:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## Làm việc với Các Cột

Trong Mô hình Đối tượng Tài liệu Aspose.Words (DOM), nút [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) bao gồm các nút [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) và sau đó là các nút [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/). Do đó, Trong Mô hình Đối tượng `Document` của Aspose.Words, như trong Tài liệu Word, không có khái niệm về một cột.

Theo thiết kế, các hàng bảng trong Microsoft Word và Aspose.Words hoàn toàn độc lập và các thuộc tính và hoạt động cơ bản chỉ được chứa trong các hàng và ô của bảng. Điều này cung cấp cho các bảng khả năng có một số thuộc tính thú vị:

- Mỗi hàng bảng có thể có một số lượng ô hoàn toàn khác nhau
- Theo chiều dọc, các ô của mỗi hàng có thể có chiều rộng khác nhau
- Có thể tham gia các bảng với các định dạng hàng và số lượng ô khác nhau

Bất kỳ thao tác nào được thực hiện trên các cột thực sự là "phím tắt" thực hiện thao tác bằng cách thay đổi chung các ô hàng theo cách có vẻ như chúng đang được áp dụng cho các cột. Đó là, bạn có thể thực hiện các thao tác trên các cột bằng cách lặp lại trên cùng một chỉ mục ô hàng bảng.

Ví dụ mã sau đây đơn giản hóa các hoạt động như vậy bằng cách chứng minh một lớp mặt tiền thu thập các ô tạo thành " cột " của bảng:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

Ví dụ mã sau đây cho thấy cách chèn một cột trống vào một bảng:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

Ví dụ mã sau đây cho thấy cách xóa một cột khỏi bảng trong tài liệu:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## Chỉ Định Hàng làm Hàng Tiêu Đề

Bạn có thể chọn lặp lại hàng đầu tiên trong bảng dưới dạng Hàng Tiêu đề chỉ Trên trang đầu tiên hoặc trên mỗi trang nếu bảng được chia thành nhiều. Trong Aspose.Words, bạn có thể lặp lại Hàng Tiêu đề trên mỗi trang bằng thuộc tính [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/).

Bạn cũng có thể đánh dấu nhiều hàng tiêu đề nếu các hàng đó được đặt lần lượt ở đầu bảng. Để làm điều này, bạn cần áp dụng các thuộc tính **HeadingFormat** cho các hàng này.

{{% alert color="primary" %}}

Lưu ý rằng Các Hàng Tiêu đề không hoạt động trong các bảng lồng nhau. Đó là, nếu bạn có một bảng bên trong một bảng khác, cài đặt này sẽ không có hiệu lực. Đó là một giới hạn của Microsoft Word không cho phép điều này, không phải Aspose.Words.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách xây dựng một bảng bao gồm Các Hàng Tiêu đề lặp lại trên các trang tiếp theo:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## Giữ Cho Các Bảng Và Hàng Không Bị Phá Vỡ Trên Các Trang

Có những lúc không nên chia nội dung của bảng trên các trang. Ví dụ: nếu tiêu đề ở trên bảng, tiêu đề và bảng phải luôn được giữ cùng nhau trên cùng một trang để giữ nguyên hình thức phù hợp.

Có hai kỹ thuật riêng biệt hữu ích để đạt được chức năng này:

- `Allow row break across pages`, được áp dụng cho các hàng bảng
- `Keep with next`, được áp dụng cho các đoạn trong các ô của bảng

Theo mặc định, các thuộc tính trên bị vô hiệu hóa.

### Giữ Một Hàng Từ Phá Vỡ Trên Các Trang {#keep-a-row-from-breaking-across-pages}

Điều này liên quan đến việc hạn chế nội dung bên trong các ô của một hàng được phân chia trên một trang. Trong Microsoft Word, điều này có thể được tìm thấy Trong Thuộc tính Bảng dưới dạng tùy chọn "Cho phép hàng phá vỡ các trang". Trong Aspose.Words điều này được tìm thấy dưới đối tượng [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) của a [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) là thuộc tính [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

Ví dụ mã sau đây cho thấy cách vô hiệu hóa việc phá vỡ các hàng trên các trang cho mỗi hàng trong một bảng:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### Giữ Một Bảng Từ Phá Vỡ Trên Các Trang {#keep-a-table-from-breaking-across-pages}

Để ngăn bảng phân tách trên các trang, chúng ta cần chỉ định rằng chúng ta muốn nội dung có trong bảng ở lại với nhau.

Để thực hiện việc này, Aspose.Words sử dụng một phương thức, cho phép người dùng chọn một bảng và bật tham số [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) thành true cho mỗi đoạn trong các ô của bảng. Ngoại lệ là đoạn cuối cùng trong bảng, nên được đặt thành false.

Ví dụ mã sau đây cho thấy cách đặt bảng để ở cùng nhau trên cùng một trang:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
