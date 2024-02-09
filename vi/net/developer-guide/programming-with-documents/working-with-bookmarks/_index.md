---
title: Làm việc với Dấu trang trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với Dấu trang
linktitle: Làm việc với Dấu trang
description: "Hiểu các khái niệm về dấu trang và cách sử dụng dấu trang trong chương trình của bạn bằng C#."
type: docs
weight: 180
url: /vi/net/working-with-bookmarks/
---

Dấu trang xác định trong tài liệu Microsoft Word các vị trí hoặc đoạn mà bạn đặt tên và xác định để tham khảo trong tương lai. Ví dụ: bạn có thể sử dụng dấu trang để xác định văn bản mà bạn muốn sửa lại sau. Thay vì cuộn qua tài liệu để định vị văn bản, bạn có thể truy cập văn bản đó bằng cách sử dụng hộp thoại Dấu trang.

Các hành động có thể được thực hiện với dấu trang bằng Aspose.Words cũng giống như những hành động bạn có thể thực hiện bằng Microsoft Word. Bạn có thể chèn dấu trang mới, xóa, di chuyển đến dấu trang, lấy hoặc đặt tên dấu trang, lấy hoặc đặt văn bản kèm theo trong đó.

## Chèn một dấu trang

Sử dụng [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) và [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) để tạo dấu trang bằng cách đánh dấu điểm bắt đầu và kết thúc tương ứng. Đừng quên chuyển tên dấu trang giống nhau cho cả hai phương pháp. Dấu trang trong tài liệu có thể chồng lên nhau và trải dài bất kỳ phạm vi nào. Dấu trang bị định dạng sai hoặc dấu trang có tên trùng lặp sẽ bị bỏ qua khi tài liệu được lưu.

{{% alert color="primary" %}}

Tất cả khoảng trắng trong dấu trang đã được thay thế bằng dấu gạch dưới. Hạn chế này xuất phát từ các định dạng Microsoft Word, vì dấu trang ở định dạng Word như DOCX hoặc DOC không thể có khoảng trắng. Tuy nhiên, PDF cho phép đánh dấu như vậy. Vì vậy, bây giờ, nếu bạn cần sử dụng dấu trang trong các đường viền PDF hoặc XPS, bạn có thể sử dụng chúng với khoảng trắng.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách tạo dấu trang mới:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Lấy dấu trang

Đôi khi cần có một bộ sưu tập dấu trang để duyệt qua các dấu trang hoặc cho các mục đích khác. Sử dụng thuộc tính [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) được hiển thị bởi bất kỳ nút tài liệu nào trả về đối tượng [Range](https://reference.aspose.com/words/net/aspose.words/range/) biểu thị phần tài liệu có trong nút này. Sử dụng đối tượng này để truy xuất [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) và sau đó sử dụng bộ chỉ mục bộ sưu tập để lấy dấu trang cụ thể.

Ví dụ mã sau đây cho thấy cách lấy dấu trang từ bộ sưu tập dấu trang:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


Ví dụ về mã sau đây cho biết cách nhận hoặc đặt tên và văn bản dấu trang:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách đánh dấu một bảng:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Nếu bạn thay đổi tên của dấu trang thành tên đã tồn tại trong tài liệu thì sẽ không có lỗi xảy ra và chỉ dấu trang đầu tiên sẽ được lưu khi bạn lưu tài liệu.

Lưu ý rằng một số dấu trang trong tài liệu được gán cho các trường biểu mẫu. Di chuyển đến một dấu trang như vậy và chèn văn bản vào đó sẽ chèn văn bản vào mã trường biểu mẫu. Mặc dù điều này sẽ không làm mất hiệu lực trường biểu mẫu nhưng văn bản được chèn sẽ không hiển thị vì nó trở thành một phần của mã trường.

Ví dụ mã sau đây cho thấy cách truy cập các cột của bảng được đánh dấu trang:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Di chuyển đến một dấu trang

Nếu cần chèn nội dung đa dạng thức (không chỉ văn bản thuần túy) vào dấu trang, bạn nên sử dụng [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) để di chuyển con trỏ đến dấu trang, sau đó sử dụng các phương thức và thuộc tính [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) để chèn nội dung.

## Hiển thị Ẩn nội dung đánh dấu

Toàn bộ Dấu trang (*bao gồm nội dung được đánh dấu*) có thể được gói gọn trong phần True của trường `IF` bằng Aspose.Words. Có thể theo cách mà trường `IF` chứa Trường Hợp nhất lồng nhau trong biểu thức (*Bên trái của Toán tử*) và tùy thuộc vào giá trị của Trường Hợp nhất, trường `IF` hiển thị hoặc ẩn nội dung của Dấu trang trong Tài liệu Word.

Ví dụ mã sau đây cho thấy cách hiển thị/ẩn dấu trang:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
