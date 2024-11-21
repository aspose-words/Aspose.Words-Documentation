---
title: Làm Việc Với Dấu trang trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Dấu Trang
linktitle: Làm việc Với Dấu Trang
description: "Hiểu các khái niệm dấu trang và cách đánh dấu có thể được sử dụng trong chương trình của bạn bằng cách sử dụng C++."
type: docs
weight: 180
url: /vi/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Dấu trang xác định trong tài liệu Microsoft Word các vị trí hoặc đoạn mà bạn đặt tên và xác định để tham khảo trong tương lai. Ví dụ: bạn có thể sử dụng dấu trang để xác định văn bản mà bạn muốn sửa đổi sau này. Thay vì cuộn qua tài liệu để xác định vị trí văn bản, bạn có thể truy cập nó bằng cách sử dụng Hộp thoại Dấu trang.

Các hành động có thể được thực hiện với dấu trang bằng Aspose.Words giống như những hành động bạn có thể thực hiện bằng Microsoft Word. Bạn có thể chèn dấu trang mới, xóa, di chuyển đến dấu trang, nhận hoặc đặt tên dấu trang, nhận hoặc đặt văn bản kèm theo trong đó. Với Aspose.Words, bạn cũng có thể sử dụng dấu trang trong báo cáo hoặc tài liệu để chèn một số dữ liệu vào dấu trang hoặc áp dụng định dạng đặc biệt cho nội dung của nó. Bạn cũng có thể sử dụng dấu trang để lấy văn bản từ một vị trí nhất định trong tài liệu của mình.

## Chèn Dấu Trang

Sử dụng [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) và [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) để tạo dấu trang bằng cách đánh dấu điểm bắt đầu và kết thúc của nó, tương ứng. Đừng quên chuyển cùng một tên dấu trang cho cả hai phương thức. Dấu trang trong tài liệu có thể chồng chéo và trải dài bất kỳ phạm vi nào. Dấu trang hoặc dấu trang bị lỗi với tên trùng lặp sẽ bị bỏ qua khi tài liệu được lưu.

Ví dụ mã sau đây cho thấy cách tạo dấu trang mới:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Lấy Dấu Trang

Đôi khi cần phải có được một bộ sưu tập dấu trang để lặp qua dấu trang hoặc cho các mục đích khác. Sử dụng thuộc tính [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) được hiển thị bởi bất kỳ nút tài liệu nào trả về đối tượng [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) đại diện cho phần của tài liệu có trong nút này. Sử dụng đối tượng này để lấy [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) và sau đó sử dụng trình lập chỉ mục bộ sưu tập để có được một dấu trang cụ thể.

Ví dụ mã sau đây cho thấy cách lấy dấu trang từ bộ sưu tập dấu trang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Ví dụ mã sau đây cho thấy cách lấy hoặc đặt tên và văn bản dấu trang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Ví dụ mã sau đây cho thấy cách đánh dấu bảng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Nếu bạn thay đổi tên của dấu trang thành tên đã tồn tại trong tài liệu, sẽ không có lỗi nào được tạo và chỉ dấu trang đầu tiên sẽ được lưu trữ khi bạn lưu tài liệu.

{{% alert color="primary" %}}

Lưu ý rằng một số dấu trang trong tài liệu được gán cho các trường biểu mẫu. Di chuyển đến một dấu trang như vậy và chèn văn bản ở đó chèn văn bản vào mã trường biểu mẫu. Mặc dù điều này sẽ không làm mất hiệu lực trường biểu mẫu, văn bản được chèn sẽ không hiển thị vì nó trở thành một phần của mã trường.

{{% /alert %}}

## Di chuyển đến Dấu Trang

Nếu bạn cần chèn nội dung phong phú (không chỉ văn bản thuần túy) vào dấu trang, bạn nên sử dụng [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) để di chuyển con trỏ đến dấu trang và sau đó sử dụng các phương thức và thuộc tính [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) để chèn nội dung.

## Hiển Thị Nội Dung Đánh Dấu Ẩn

Toàn Bộ Dấu Trang (*including the bookmarked content*) có thể được đóng gói Trong Phần Thực của trường `IF` bằng cách sử dụng Aspose.Words. Nó có thể theo cách mà trường `IF` chứa Trường Hợp Nhất lồng nhau trong biểu thức (*Left of Operator*) và tùy thuộc vào Giá trị Của Trường Hợp nhất, trường `IF` hiển thị hoặc ẩn nội dung Của Dấu trang Trong Tài liệu Word.

Ví dụ mã sau đây cho thấy cách hiển thị / ẩn dấu trang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
