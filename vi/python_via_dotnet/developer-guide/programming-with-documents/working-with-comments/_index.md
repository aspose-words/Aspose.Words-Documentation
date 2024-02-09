---
title: Làm việc với Nhận xét trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với chú thích
linktitle: Làm việc với chú thích
description: "Cách thêm, xóa hoặc thao tác nhận xét trong tài liệu bằng Python."
type: docs
weight: 260
url: /vi/python-net/working-with-comments/
---

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với [Xóa chú thích trực tuyến miễn phí](https://products.aspose.app/words/annotation) của chúng tôi.

{{% /alert %}}

Aspose.Words cho phép người dùng làm việc với các nhận xét – các nhận xét trong tài liệu ở Aspose.Words được thể hiện bằng lớp [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Đồng thời sử dụng các lớp [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) và [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) để chỉ định vùng văn bản cần được liên kết với nhận xét.

## Thêm một bình luận

Aspose.Words cho phép bạn thêm nhận xét theo nhiều cách:

1. Sử dụng lớp [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. Sử dụng lớp [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) và [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

Ví dụ mã sau đây cho thấy cách thêm nhận xét vào đoạn văn bằng lớp **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

Ví dụ mã sau đây cho thấy cách thêm nhận xét vào một đoạn văn bằng cách sử dụng một vùng văn bản và các lớp **CommentRangeStart** và **CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Trích xuất hoặc xóa bình luận

Sử dụng Nhận xét trong tài liệu Word (ngoài Theo dõi Thay đổi) là cách làm phổ biến khi xem xét tài liệu, đặc biệt khi có nhiều người đánh giá. Có thể có những tình huống mà thứ duy nhất bạn cần từ một tài liệu là các nhận xét. Giả sử bạn muốn tạo danh sách các kết quả đánh giá hoặc có thể bạn đã thu thập tất cả thông tin hữu ích từ tài liệu và bạn chỉ muốn xóa các nhận xét không cần thiết. Bạn có thể muốn xem hoặc xóa nhận xét của một người đánh giá cụ thể.

Trong mẫu này, chúng ta sẽ xem xét một số phương pháp đơn giản để thu thập thông tin từ các nhận xét trong tài liệu và để xóa nhận xét khỏi tài liệu. Cụ thể chúng tôi sẽ đề cập đến cách:

- Trích xuất tất cả các nhận xét từ một tài liệu hoặc chỉ những nhận xét của một tác giả cụ thể.
- Xóa tất cả các nhận xét khỏi một tài liệu hoặc chỉ từ một tác giả cụ thể.

### Cách trích xuất hoặc xóa bình luận

Mã trong mẫu này thực sự khá đơn giản và tất cả các phương pháp đều dựa trên cùng một cách tiếp cận. Nhận xét trong tài liệu Word được thể hiện bằng đối tượng [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) trong mô hình đối tượng tài liệu Aspose.Words. Để thu thập tất cả nhận xét trong tài liệu, hãy sử dụng phương thức [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) với tham số đầu tiên được đặt thành [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Đảm bảo rằng tham số thứ hai của phương thức **get_child_nodes** được đặt thành true: điều này buộc **get_child_nodes** phải chọn đệ quy từ tất cả các nút con, thay vì chỉ thu thập các nút con ngay lập tức.

Để minh họa cách trích xuất và xóa nhận xét khỏi tài liệu, chúng ta sẽ thực hiện các bước sau:

1. Mở tài liệu Word bằng lớp [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. Đưa tất cả các nhận xét từ tài liệu vào một bộ sưu tập
1. Trích xuất ý kiến:
   1. Duyệt qua bộ sưu tập bằng toán tử foreach
   1. Trích xuất và liệt kê tên tác giả, ngày giờ và nội dung của tất cả các bình luận
   1. Trích xuất và liệt kê tên tác giả, ngày giờ và nội dung nhận xét của một tác giả cụ thể, trong trường hợp này là tác giả 'ks'
1. Để xóa bình luận:
   1. Quay ngược lại bộ sưu tập bằng toán tử for
   1. Xóa bình luận
1. Lưu các thay đổi

### Cách trích xuất tất cả bình luận

Phương pháp [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) rất hữu ích và bạn có thể sử dụng nó mỗi khi cần lấy danh sách các nút tài liệu thuộc bất kỳ loại nào. Bộ sưu tập kết quả không tạo ra chi phí chung ngay lập tức vì các nút chỉ được chọn vào bộ sưu tập này khi bạn liệt kê hoặc truy cập các mục trong đó.

Ví dụ mã sau đây cho thấy cách trích xuất tên tác giả, ngày &amp; giờ và văn bản của tất cả nhận xét trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Cách trích xuất nhận xét của một tác giả được chỉ định

Sau khi bạn đã chọn các nút [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) vào bộ sưu tập, tất cả những gì bạn phải làm là trích xuất thông tin bạn cần. Trong mẫu này, tên viết tắt của tác giả, ngày, giờ và văn bản thuần túy của nhận xét được kết hợp thành một chuỗi; thay vào đó bạn có thể chọn lưu trữ nó theo một số cách khác.

Phương thức nạp chồng để trích xuất Nhận xét từ một tác giả cụ thể gần như giống nhau, nó chỉ kiểm tra tên tác giả trước khi thêm thông tin vào mảng.

Ví dụ mã sau đây cho thấy cách trích xuất tên tác giả, ngày &amp; giờ và nội dung nhận xét của tác giả được chỉ định:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Cách xóa bình luận

Nếu bạn đang xóa tất cả các nhận xét, bạn không cần phải di chuyển qua bộ sưu tập để xóa từng nhận xét một; bạn có thể xóa chúng bằng cách gọi [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) trên bộ sưu tập nhận xét.

Ví dụ về mã sau đây cho thấy cách xóa tất cả nhận xét trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Khi bạn cần xóa nhận xét có chọn lọc, quy trình sẽ trở nên giống với mã chúng tôi đã sử dụng để trích xuất nhận xét.

Ví dụ mã sau đây cho thấy cách xóa nhận xét của tác giả được chỉ định:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

Điểm chính cần nhấn mạnh ở đây là việc sử dụng toán tử for. Không giống như cách trích xuất đơn giản, ở đây bạn muốn xóa một bình luận. Một thủ thuật phù hợp là lặp lại bộ sưu tập từ [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) cuối cùng đến bộ sưu tập đầu tiên. Lý do cho điều này là nếu bạn bắt đầu từ cuối và di chuyển về phía sau, chỉ mục của các mục trước đó vẫn không thay đổi và bạn có thể quay lại mục đầu tiên trong bộ sưu tập.

Ví dụ mã sau đây hiển thị các phương pháp trích xuất và xóa nhận xét:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Cách xóa nhận xét giữa CommentRangeStart và CommentRangeEnd

Sử dụng Aspose.Words, bạn cũng có thể xóa nhận xét giữa các nút **CommentRangeStart** và **CommentRangeEnd**.

Ví dụ mã sau đây cho thấy cách xóa văn bản giữa **CommentRangeStart** và **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Thêm hoặc xóa câu trả lời của bình luận

Phương thức [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) thêm câu trả lời cho nhận xét này. Xin lưu ý rằng do các giới hạn hiện tại của Microsoft Office, chỉ cho phép 1 cấp độ trả lời trong tài liệu. Một ngoại lệ của kiểu **InvalidOperationException** sẽ xuất hiện nếu phương thức này được gọi trên nhận xét Trả lời hiện có.

Bạn có thể sử dụng phương pháp [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) để xóa câu trả lời được chỉ định cho nhận xét này.

Ví dụ mã sau đây cho thấy cách thêm câu trả lời cho nhận xét và xóa câu trả lời của nhận xét:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Đọc phản hồi của bình luận

Thuộc tính [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) trả về một tập hợp các đối tượng [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) là con trực tiếp của nhận xét đã chỉ định.

Ví dụ về mã sau đây cho thấy cách lặp qua các câu trả lời của nhận xét và giải quyết chúng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}