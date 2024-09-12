---
title: Làm việc với `Bookmarks` trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Bookmark
linktitle: Làm việc với Bookmark
description: "Hiểu các khái niệm về dấu trang và cách sử dụng dấu trang trong chương trình của bạn bằng Java."
type: docs
weight: 180
url: /vi/java/working-with-bookmarks/
---

Đánh dấu xác định trong một Microsoft Word tài liệu những vị trí hoặc đoạn văn mà bạn đặt tên và xác định cho tham khảo sau này. Ví dụ, bạn có thể dùng dấu đánh dấu để xác định văn bản mà bạn muốn chỉnh sửa sau. Thay vì cuộn qua tài liệu để tìm văn bản, bạn có thể đến đó bằng cách sử dụng hộp thoại đánh dấu trang.

Với Aspose.Words, bạn có thể sử dụng bookmark trong báo cáo hoặc tài liệu để chèn một số dữ liệu vào bookmark hay áp dụng định dạng đặc biệt cho nội dung của nó. Bạn cũng có thể dùng dấu bookmark để lấy lại văn bản từ một vị trí cụ thể trong tài liệu của bạn.

Các hành động mà có thể thực hiện với bookmark sử dụng Aspose.Words là như các hành động bạn có thể thực hiện với Microsoft Word. Bạn có thể chèn một dấu đánh chỉ mới, xóa hoặc di chuyển đến một dấu đánh chỉ, nhận được hoặc đặt tên cho một dấu đánh chỉ, nhận được hoặc đặt văn bản trong đó.

## Chèn một đánh dấu trang

Sử dụng [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) và [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) để tạo một dấu trang bằng cách đánh dấu điểm khởi đầu và điểm kết thúc của nó, tương ứng. Đừng quên truyền cùng tên dấu sách cho cả hai phương pháp. Sách đánh dấu trong một tài liệu có thể chồng chéo và trải dài trên bất kỳ khoảng nào. Những dấu trang bị hỏng hoặc những dấu trang có tên giống nhau thì sẽ bị bỏ qua khi tài liệu được lưu lại.

{{% alert color="primary" %}}

Tất cả khoảng trống trong mục đánh dấu đã được thay thế bằng dấu gạch dưới. Hạn chế này đến từ định dạng của MS Word, bởi vì những bookmark trong định dạng của MS Word, như DOCX hay DOC không thể có khoảng trắng. Tuy nhiên, PDF cho phép các dấu trang như vậy. Vậy bây giờ, nếu bạn cần phải sử dụng bookmark trong PDF hoặc XPS hoặc SWF outline, bạn có thể sử dụng chúng với không gian trắng.

{{% /alert %}}

Ví dụ mã sau cho thấy cách tạo một dấu bookmark mới:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Nhận Sổ Đánh dấu

Đôi khi nó là cần thiết để có được một bộ sưu tập dấu trang để lặp lại qua các dấu trang hoặc cho những mục đích khác. Sử dụng thuộc tính **Node.getRange** được cung cấp bởi bất kỳ nút tài liệu nào trả về một đối tượng **Range** đại diện cho phần của tài liệu nằm trong nút này. Sử dụng đối tượng này để lấy một **BookmarkCollection** và sau đó sử dụng bộ chỉ mục tập hợp để lấy một dấu trang cụ thể

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của các ví dụ sau từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Ví dụ sau cho thấy cách nhận bookmark từ một tập bookmark:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Ví dụ mã sau cho thấy cách lấy hoặc đặt tên và văn bản dấu trang:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Mã ví dụ sau cho thấy cách đánh dấu một bảng:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Nếu bạn thay đổi tên của một dấu trang thành một tên đã tồn tại trong tài liệu, không có lỗi nào được tạo ra và chỉ dấu trang đầu tiên sẽ được lưu khi bạn lưu tài liệu.

Lưu ý rằng một số bookmark trong tài liệu được gán đến các trường biểu mẫu. Chuyển đến dấu đánh thích đó và chèn văn bản ở đó chèn văn bản vào mã trường biểu mẫu. Mặc dù điều này sẽ không làm vô hiệu hóa trường biểu mẫu, nhưng văn bản được chèn vào sẽ không hiển thị vì nó trở thành một phần mã trường.

Mã ví dụ sau cho thấy cách truy cập cột của bảng được đánh dấu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Di chuyển đến một dấu bookmark

Nếu bạn cần chèn nội dung phong phú (không chỉ là văn bản thuần túy) vào một dấu trang, bạn nên sử dụng [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) để di chuyển con trỏ đến dấu trang và sau đó sử dụng các phương pháp và thuộc tính **DocumentBuilder** để chèn nội dung.

## Hiển thị Ẩn Đánh dấu Nội dung

Toàn bộ thư dấu ( * bao gồm cả nội dung đã được lưu dấu *) có thể được gói gọn trong phần True của trường `IF` bằng cách sử dụng Aspose.Words. Nó có thể đạt được theo cách mà trường `IF` chứa một trường hợp Nhập vào Nén trong biểu thức (*Bên trái của Toán tử*) và tùy thuộc vào giá trị của trường Nhập vào Nén, trường `IF` hiển thị hoặc ẩn nội dung của Bookmark trong tài liệu Word.

Mã ví dụ sau cho thấy cách hiển thị/ ẩn các bookmark.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
