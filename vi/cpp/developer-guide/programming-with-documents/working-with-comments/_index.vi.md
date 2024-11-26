---
title: Làm Việc Với Các Bình luận trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Các Bình Luận
linktitle: Làm Việc Với Các Bình Luận
description: "Làm việc với các bình luận bằng cách sử dụng C++."
type: docs
weight: 260
url: /vi/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với chúng tôi [Miễn phí trực tuyến loại bỏ chú thích](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words cho phép người dùng làm việc với nhận xét-nhận xét trong tài liệu trong Aspose.Words được đại diện bởi lớp [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/). Cũng sử dụng các lớp [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) và [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/) để chỉ định vùng văn bản nên được liên kết với một nhận xét.

## Thêm Một Bình Luận

Aspose.Words cho phép bạn thêm nhận xét theo nhiều cách:

1. Sử dụng lớp [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/)
2. Sử dụng các lớp [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) và [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)

Ví dụ mã sau đây cho thấy cách thêm nhận xét vào đoạn văn bằng lớp **Comment**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

Ví dụ mã sau đây cho thấy cách thêm nhận xét vào đoạn văn bằng cách sử dụng vùng văn bản và các lớp **CommentRangeStart** và **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Trích xuất Hoặc Xóa Bình Luận

Sử dụng Nhận xét trong Tài liệu Word (ngoài Việc Theo Dõi Các Thay đổi) là một thực tế phổ biến khi xem xét tài liệu, đặc biệt là khi có nhiều người đánh giá. Có thể có những tình huống mà điều duy nhất bạn cần từ một tài liệu là các bình luận. Giả sử bạn muốn tạo danh sách các kết quả đánh giá hoặc có thể bạn đã thu thập tất cả thông tin hữu ích từ tài liệu và bạn chỉ muốn xóa các nhận xét không cần thiết. Bạn có thể muốn xem hoặc xóa nhận xét của một người đánh giá cụ thể.

Trong mẫu này, chúng ta sẽ xem xét một số phương pháp đơn giản để thu thập thông tin từ các nhận xét trong tài liệu và xóa nhận xét khỏi tài liệu. Cụ thể, chúng tôi sẽ đề cập đến cách:

- Trích xuất tất cả các nhận xét từ một tài liệu hoặc chỉ những nhận xét được thực hiện bởi một tác giả cụ thể.
- Xóa tất cả các nhận xét khỏi tài liệu hoặc chỉ từ một tác giả cụ thể.

### Cách Trích xuất Hoặc Xóa Nhận Xét

Mã trong mẫu này thực sự khá đơn giản và tất cả các phương thức đều dựa trên cùng một cách tiếp cận. Một nhận xét trong Tài liệu Word được biểu thị bằng một đối tượng [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) trong mô hình đối tượng tài liệu Aspose.Words. Để thu thập tất cả các nhận xét trong tài liệu, hãy sử dụng phương thức [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) với tham số đầu tiên được đặt thành [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/). Đảm bảo rằng tham số thứ hai của phương thức **GetChildNodes** được đặt thành true: điều này buộc **GetChildNodes** chọn từ tất cả các nút con một cách đệ quy, thay vì chỉ thu thập các con ngay lập tức.

Để minh họa cách trích xuất và xóa nhận xét khỏi tài liệu, chúng tôi sẽ thực hiện các bước sau:

1. Mở Tài Liệu Word bằng lớp [Document](https://reference.aspose.com/words/cpp/aspose.words/document/)
1. Nhận tất cả các nhận xét từ tài liệu vào một bộ sưu tập
1. Để trích xuất ý kiến:
   1. Đi qua bộ sưu tập bằng cách sử dụng toán tử foreach
   1. Trích xuất và liệt kê tên tác giả, ngày & giờ và văn bản của tất cả các bình luận
   1. Trích xuất và liệt kê tên tác giả, ngày & giờ và văn bản nhận xét được viết bởi một tác giả cụ thể, trong trường hợp này, tác giả 'ks'
1. Để xóa bình luận:
   1. Đi ngược lại thông qua bộ sưu tập bằng cách sử dụng cho toán tử
   1. Xóa bình luận
1. Lưu các thay đổi

### Làm Thế nào Để Trích Xuất Tất Cả Các Ý Kiến

Phương thức **GetChildNodes** rất hữu ích và bạn có thể sử dụng nó mỗi khi bạn cần lấy danh sách các nút tài liệu thuộc bất kỳ loại nào. Bộ sưu tập kết quả không tạo ra chi phí ngay lập tức vì các nút chỉ được chọn vào bộ sưu tập này khi bạn liệt kê hoặc truy cập các mục trong đó.

Ví dụ mã sau đây cho thấy cách trích xuất tên tác giả, ngày&giờ và văn bản của tất cả các nhận xét trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### Cách Trích Xuất Nhận Xét của Một Tác Giả Được Chỉ định

Sau khi bạn đã chọn Các Nút Bình luận vào một bộ sưu tập, tất cả những gì bạn phải làm là trích xuất thông tin bạn cần. Trong mẫu này, tên viết tắt của tác giả, ngày, giờ và văn bản thuần túy của nhận xét được kết hợp thành một chuỗi; thay vào đó bạn có thể chọn lưu trữ nó theo một số cách khác.

Phương thức quá tải trích Xuất Các Nhận xét từ một tác giả cụ thể gần như giống nhau, nó chỉ kiểm tra tên tác giả trước khi thêm thông tin vào mảng.

Ví dụ mã sau đây cho thấy cách trích xuất tên tác giả, ngày&giờ và văn bản của các nhận xét của tác giả được chỉ định:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### Cách Xóa Nhận Xét

Nếu bạn đang xóa tất cả các nhận xét, không cần phải di chuyển qua bộ sưu tập xóa từng nhận xét một; bạn có thể xóa chúng bằng cách gọi `NodeCollection.Clear` trên bộ sưu tập nhận xét.

Ví dụ mã sau đây cho thấy cách xóa tất cả các nhận xét trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Khi bạn cần xóa nhận xét có chọn lọc, quá trình này trở nên giống với mã chúng tôi đã sử dụng để trích xuất nhận xét.

Ví dụ mã sau đây cho thấy cách xóa nhận xét của tác giả được chỉ định:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

Điểm chính cần làm nổi bật ở đây là việc sử dụng toán tử for. Không giống như trích xuất đơn giản, ở đây bạn muốn xóa một bình luận. Một mẹo phù hợp là lặp lại bộ sưu tập về Phía Sau Từ Bình luận cuối cùng đến Bình luận đầu tiên. Lý do cho điều này nếu bạn bắt đầu từ cuối và di chuyển ngược lại, chỉ số của các mục trước vẫn không thay đổi và bạn có thể quay lại mục đầu tiên trong bộ sưu tập.

Ví dụ mã sau đây cho thấy các phương pháp cho các ý kiến khai thác và loại bỏ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Cách Xóa Nhận Xét giữa CommentRangeStart và CommentRangeEnd

Sử dụng Aspose.Words bạn cũng có thể xóa nhận xét giữa các nút **CommentRangeStart** và **CommentRangeEnd**.

Ví dụ mã sau đây cho thấy cách xóa văn bản giữa **CommentRangeStart** và **CommentRangeEnd**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Thêm Và Xóa Câu Trả lời Của Bình Luận

Phương thức [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) thêm câu trả lời cho nhận xét này. Xin lưu ý rằng do giới hạn văn phòng Microsoft hiện tại chỉ cho phép mức trả lời 1 trong tài liệu. Một ngoại lệ của loại *InvalidOperationException* sẽ được nêu ra nếu phương thức này được gọi trên nhận xét Trả lời hiện có.

Bạn có thể sử dụng phương thức [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/) để xóa câu trả lời được chỉ định cho nhận xét này.

Ví dụ mã sau đây cho thấy cách thêm câu trả lời vào nhận xét và xóa câu trả lời của nhận xét:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Đọc Bình Luận Trả Lời

Thuộc tính [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) trả về một tập hợp các đối tượng **Comment** là con ngay lập tức của nhận xét được chỉ định.

Ví dụ mã sau đây cho thấy cách lặp lại thông qua các câu trả lời của nhận xét và giải quyết chúng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
