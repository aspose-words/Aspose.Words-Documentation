---
title: Làm việc với các dòng chú thích trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Bình luận
linktitle: Làm việc với Bình luận
description: "Làm việc với các bình luận bằng cách sử dụng Java."
type: docs
weight: 260
url: /vi/java/working-with-comments/
---

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với [Free online remove annotations](https://products.aspose.app/words/annotation) của chúng tôi.

{{% /alert %}}

Aspose.Words cho phép người dùng làm việc với các bình luận – các bình luận trong một tài liệu trong Aspose.Words được đại diện bởi lớp [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/). Cũng sử dụng các lớp [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) và [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) để xác định vùng văn bản cần liên kết với một chú thích.

## Thêm Bình Luận

Aspose.Words cho phép bạn thêm chú thích theo nhiều cách khác nhau:

1. Sử dụng lớp [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)
2. Sử dụng các lớp [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) và [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

Mã ví dụ sau cho thấy cách thêm một chú thích vào đoạn văn sử dụng lớp **Comment**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

Ví dụ sau cho thấy cách thêm một chú thích vào một đoạn văn bằng cách sử dụng vùng văn bản và các lớp **CommentRangeStart** và **CommentRangeEnd**":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Chiết xuất hoặc Loại bỏ Bình luận

Sử dụng bình luận trong một tài liệu Word (ngoài Track Changes) là một thực hành phổ biến khi xem xét tài liệu, đặc biệt khi có nhiều người đánh giá. Có thể có những tình huống mà tất cả những gì bạn cần từ một tài liệu là những chú thích. Nếu bạn muốn tạo ra một danh sách các kết quả đánh giá, hoặc có lẽ bạn đã thu thập tất cả thông tin hữu ích từ tài liệu và bạn chỉ đơn giản muốn loại bỏ những nhận xét không cần thiết. Bạn có thể muốn xem hoặc loại bỏ các bình luận của một người đánh giá nào đó.

Trong mẫu này, chúng ta sẽ xem xét một số phương pháp đơn giản để thu thập thông tin từ những nhận xét trong một tài liệu và loại bỏ những nhận xét từ một tài liệu. Đặc biệt, chúng tôi sẽ bao phủ cách:

- Chiết xuất tất cả các bình luận từ một tài liệu hoặc chỉ những người được thực hiện bởi một tác giả cụ thể.
- Xóa hết chú thích từ một tài liệu hoặc chỉ có từ một tác giả cụ thể nào đó.

### Cách trích xuất hoặc xóa các chú thích

Mã trong ví dụ này khá đơn giản và tất cả các phương pháp đều dựa trên cùng một cách tiếp cận. Một nhận xét trong một tài liệu Word được đại diện bởi một `Comment` đối tượng trong mô hình đối tượng Aspose.Words tài liệu. Để thu thập tất cả các chú thích trong một tài liệu, hãy sử dụng phương pháp [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) với tham số đầu tiên được đặt thành `NodeType.Comment`. Đảm bảo rằng tham số thứ hai của phương thức **Lấy ChildNodes** được đặt là true: điều này buộc **Lấy ChildNodes** phải chọn từ tất cả các nút con một cách đệ quy, thay vì chỉ thu thập các nút con ngay lập tức.

Để minh họa cách chiết xuất và xóa bỏ chú thích từ một tài liệu, chúng ta sẽ đi qua các bước sau:

1. Mở một tài liệu Word bằng lớp [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. Lấy tất cả các bình luận từ tài liệu vào một bộ sưu tập
1. Để trích xuất các chú thích:
   1. Đi qua bộ sưu tập bằng cách sử dụng toán tử "for
   1. Chiết xuất và liệt kê tên tác giả, ngày & giờ và văn bản của tất cả các bình luận
   1. Chiết xuất và liệt kê tên tác giả, ngày & giờ và văn bản của các bình luận viết bởi một tác giả cụ thể, trong trường hợp này là tác giả 'ks'
1. Để bỏ các chú thích:
   1. Lùi lại qua bộ sưu tập sử dụng toán tử "for
   1. Hủy bỏ những ý kiến bình luận
1. Lưu các thay đổi.

Chúng tôi sẽ sử dụng tài liệu Word sau đây cho bài tập này:

![extract-remove-comments-aspose-words-java-1](extract-remove-comments-aspose-words-java-1.png)

Như bạn thấy nó chứa nhiều nhận xét từ hai tác giả có chữ cái đầu "pm" và "ks".

### Cách Chiết Lấy Tất Cả Bình Luận

Phương pháp [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) rất hữu ích và bạn có thể sử dụng nó mỗi khi cần phải nhận được một danh sách các nút tài liệu của bất kỳ loại nào. Bộ sưu tập kết quả không tạo ra một sự quá tải ngay lập tức vì các nút được chọn vào bộ sưu tập này chỉ khi bạn liệt kê hoặc truy cập các mục trong nó.

Mã ví dụ sau cho thấy cách trích xuất tên tác giả, ngày và giờ và văn bản của tất cả các bình luận trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Cách chiết xuất các bình luận của một tác giả được chỉ định

Sau khi bạn đã chọn các nút bình luận vào một bộ sưu tập, tất cả những gì bạn phải làm là trích xuất thông tin bạn cần. Trong mẫu này, chữ cái của tác giả, ngày, giờ và văn bản bình luận được kết hợp thành một chuỗi duy nhất; bạn có thể chọn cách lưu trữ nó theo những cách khác.

Phương pháp quá tải mà trích xuất các bình luận từ một tác giả cụ thể gần như giống nhau, nó chỉ kiểm tra tên của tác giả trước khi thêm thông tin vào mảng.

Mã ví dụ sau cho thấy cách trích xuất tên tác giả, ngày và giờ và văn bản của các bình luận bởi tác giả được chỉ định:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Cách Loại bỏ Bình luận

Nếu bạn đang xóa tất cả các bình luận, thì không cần phải di chuyển qua bộ sưu tập để xóa từng bình luận một; bạn có thể xóa chúng bằng cách gọi [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) trên bộ sưu tập của các bình luận.

Mã ví dụ sau cho thấy cách loại bỏ tất cả các chú thích trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Khi bạn cần phải xóa bỏ các chú thích một cách chọn lọc, thì quá trình trở nên tương tự hơn với mã mà chúng ta đã sử dụng để trích xuất các chú thích.

Ví dụ mã sau cho thấy cách loại bỏ các bình luận bằng tác giả được chỉ định:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

Điểm chính cần nêu bật ở đây là việc sử dụng toán tử 'for'. Không giống như việc trích xuất đơn giản, ở đây bạn muốn xóa một chú thích. Một thủ thuật hợp lý là lặp lại bộ sưu tập ngược từ bình luận cuối cùng đến đầu tiên. Lý do cho là nếu bạn bắt đầu từ cuối và di chuyển ngược lại, chỉ số của các mục trước đó vẫn không thay đổi, và bạn có thể làm việc trở lại đến mục đầu tiên trong bộ sưu tập.

Ví dụ mã sau cho thấy các phương pháp để trích xuất và loại bỏ các chú thích:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Khi khởi chạy, mẫu hiển thị kết quả sau đây. Đầu tiên, nó liệt kê tất cả các bình luận của tất cả tác giả, sau đó nó liệt kê các bình luận chỉ của tác giả được chọn. Cuối cùng, mã sẽ xóa tất cả các chú thích.

![extract-remove-comments-aspose-words-java-2](extract-remove-comments-aspose-words-java-2.png)

Tệp word đã không còn nhận xét":

![extract-remove-comments-aspose-words-java-3](extract-remove-comments-aspose-words-java-3.png)

### Cách xóa văn bản từ CommentRangeStart và CommentRangeEnd

Sử dụng Aspose.Words, bạn cũng có thể xóa các chú thích giữa các nút CommentRangeStart và CommentRangeEnd.

Mã ví dụ sau cho thấy cách xóa văn bản giữa CommentRangeStart và CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Thêm hoặc Xóa Bình luận's Trả lời

Phương pháp [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) thêm một phản hồi vào nhận xét này. Xin lưu ý rằng vì hạn chế của Microsoft Office, chỉ cho phép một (1) cấp phản hồi trong tài liệu này. Một ngoại lệ của loại InvalidOperationException sẽ được đưa ra nếu phương pháp này được gọi trên các bình luận phản hồi hiện có.

Bạn có thể dùng phương pháp [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) để xóa phản hồi được chỉ định cho bình luận này.

Mã ví dụ sau cho thấy cách thêm một phản hồi vào bình luận và xóa phản hồi của bình luận:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Đọc Bình luận Phản hồi

Aspose.Words hỗ trợ đọc phản hồi của một bình luận Tính [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) thuộc tính trả về một tập hợp các đối tượng [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) là con cái ngay lập tức của nhận xét được chỉ định.

Mã ví dụ sau cho thấy cách lặp lại qua các phản hồi của một bình luận và giải quyết chúng:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}