---
title: Chiết xuất Nội dung Chọn giữa các Nút trong Java
second_title: Aspose.Words cho Java
articleTitle: Chiết xuất Nội dung Giữa Các Ngůn trong Một Tài liệu
linktitle: Chiết xuất nội dung giữa các nút
type: docs
description: "Kích xuất nội dung tài liệu với cách khác nhau sử dụng Java."
weight: 140
url: /vi/java/extract-selected-content-between-nodes/
timestamp: 2024-01-27-14-07-04
---

Khi làm việc với tài liệu, điều quan trọng là có thể dễ dàng trích xuất nội dung từ một phạm vi cụ thể trong tài liệu. Tuy nhiên, nội dung có thể bao gồm các phần tử phức tạp như đoạn văn, bảng, hình ảnh v.v...

Bất kể nội dung cần phải trích xuất là gì thì phương pháp để trích xuất nội dung đó sẽ luôn được xác định bởi các nút nào được chọn để trích xuất nội dung giữa. Đây có thể là toàn bộ văn bản hay chỉ là các đoạn văn bản đơn giản.

Có nhiều tình huống khả dĩ và do đó có nhiều loại nút khác nhau để xem xét khi trích xuất nội dung. Ví dụ, bạn có thể muốn trích xuất nội dung giữa:

- Hai đoạn văn cụ thể
"- Các lần chạy cụ thể của văn bản"
- Các trường của nhiều loại, chẳng hạn như trường kết hợp
- Phạm vi bắt đầu và kết thúc của một thẻ đánh dấu hoặc chú thích
- Các cơ thể văn bản khác nhau được chứa trong các phần riêng biệt

Trong một số tình huống, bạn thậm chí còn cần kết hợp các loại nút khác nhau như trích xuất nội dung giữa đoạn và trường, hoặc giữa chạy và dấu sách.

Bài viết này cung cấp mã thực hiện cho việc chiết xuất văn bản giữa các nút khác nhau cũng như những ví dụ về các tình huống thông thường.

{{% alert color="primary" %}}

Những ví dụ này chỉ là vài minh họa cho vô số khả năng. Chúng tôi dự định cho chức năng trích xuất văn bản là một phần của công chúng API trong tương lai, và không có mã bổ sung nào cần thiết. Trong lúc đó, xin tự do đăng yêu cầu của bạn về chức năng này trên [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Tại sao Chiết xuất Nội dung

Đôi khi mục tiêu của việc chiết xuất nội dung là sao chép hoặc lưu trữ nó riêng biệt trong một tài liệu mới. Ví dụ, bạn có thể trích xuất nội dung và

- Sao chép nó vào một tài liệu riêng
- Chuyển một phần cụ thể của tài liệu thành PDF hoặc hình ảnh
- Nhân đôi nội dung trong tài liệu nhiều lần
"- Làm việc với nội dung trích xuất tách biệt khỏi phần còn lại của tài liệu"

Điều này có thể đạt được dễ dàng bằng cách sử dụng Aspose.Words và mã thực hiện bên dưới.

## Thuật toát nội dung thuật toán

Mã trong phần này giải quyết tất cả các tình huống có thể mô tả ở trên với một phương pháp tổng quát và có thể tái sử dụng. Mở rộng chung của kỹ thuật này là:

1. Thu thập các nút chỉ định khu vực nội dung sẽ được trích xuất từ tài liệu của bạn. Việc lấy các nút này được xử lý bởi người dùng trong mã của họ, dựa trên những gì họ muốn trích xuất.
1. Truyền những node này vào phương pháp **ExtractContent** được cung cấp bên dưới. Bạn cũng phải truyền một tham số boolean cho biết các nút này, đóng vai trò như dấu đánh, có nên được bao gồm trong việc trích xuất hay không.
1. Đang lấy danh sách các nội dung đã sao chép (các nút được sao chép) được chỉ định để trích xuất. Bạn có thể sử dụng danh sách các nút này theo bất kỳ cách nào có thể áp dụng được, ví dụ như tạo ra một tài liệu mới chỉ chứa nội dung đã chọn.

## Cách trích xuất nội dung

Chúng ta sẽ làm việc với tài liệu dưới đây trong bài viết này. Như bạn thấy nó chứa một loại nội dung đa dạng. Cũng hãy lưu ý rằng tài liệu có một phần thứ hai bắt đầu ở giữa trang đầu tiên. Một dấu sách và bình luận cũng hiện diện trong tài liệu nhưng không hiển thị trong hình chụp màn hình dưới đây.

![extract-content-aspose-words-java](extract-content-from-comment-aspose-words-java-1.png)

Để chiết xuất nội dung từ tài liệu của bạn bạn cần gọi phương thức `ExtractContent` dưới đây và truyền các tham số phù hợp.

Cơ sở của phương pháp này bao gồm việc tìm các node ở cấp khối (các đoạn văn và bảng) và sao chép chúng để tạo ra bản sao giống hệt. Nếu các nút đánh dấu được vượt qua là ở mức khối thì phương pháp này có thể đơn giản sao chép nội dung ở mức độ đó và thêm nó vào mảng.

Tuy nhiên, nếu các nút đánh dấu là inline (một con của một đoạn văn), thì tình huống trở nên phức tạp hơn, vì phải chia đoạn văn tại nút inline, dù là một chuỗi chạy, các trường đánh dấu sách, v.v... Nội dung trong các nút cha được ghim đã không hiện diện giữa các dấu hiệu là bị xóa bỏ. Quy trình này được dùng để đảm bảo rằng các nút inline vẫn sẽ giữ lại định dạng của đoạn văn cha.

Phương pháp cũng sẽ chạy kiểm tra trên các nút được truyền dưới dạng tham số và ném một ngoại lệ nếu bất kỳ nút nào không hợp lệ. Các tham số cần truyền cho phương thức này là:

1. **StartNode** và **EndNode**. Hai tham số đầu tiên là các nút xác định nơi mà việc trích xuất nội dung bắt đầu và kết thúc tương ứng. Các node này có thể là cả ở mức khối ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)) hoặc ở mức dòng (ví dụ như [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/), v.v...):
   1. Để vượt qua một trường, bạn nên vượt qua đối tượng tương ứng **FieldStart**.
   1. Để truyền các dấu trang, các nút **BookmarkStart** và [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) nên được truyền.
   1. Để đưa ra nhận xét, các nút [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) và [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) nên được sử dụng.
1. **IsInclusive**. Định nghĩa nếu các dấu chỉ được bao gồm trong việc trích xuất hoặc không. Nếu tùy chọn này được đặt thành false và cùng một nút hoặc các nút liên tiếp được truyền qua, thì một danh sách rỗng sẽ được trả về:

      1. Nếu một nút **FieldStart** được truyền qua sau đó tùy chọn này xác định nếu toàn bộ lĩnh vực được bao gồm hay bị loại trừ.
      1. Nếu một nút **BookmarkStart** hoặc **BookmarkEnd** được truyền qua, tùy chọn này định nghĩa xem dấu trang được bao gồm hay chỉ nội dung giữa phạm vi dấu trang.
      1. Nếu một nút **CommentRangeStart** hoặc **CommentRangeEnd** được gửi qua, tùy chọn này định nghĩa nếu bình luận thực sự là để bao gồm hoặc chỉ nội dung trong phạm vi bình luận.

Việc thực hiện phương thức **ExtractContent** bạn có thể tìm thấy ở [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Phương pháp này sẽ được tham chiếu trong các kịch bản trong bài viết này.

Chúng tôi cũng định nghĩa một phương thức tùy chỉnh để dễ dàng tạo ra một tài liệu từ các nút đã trích xuất. Phương pháp này được sử dụng trong nhiều kịch bản dưới đây và đơn giản là tạo một tài liệu mới và nhập nội dung đã trích xuất vào đó.

Mẫu mã sau cho thấy cách lấy một danh sách các nút và chèn chúng vào một tài liệu mới:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Chiết xuất Nội dung Giữa Đoạn văn

Đây là cách sử dụng phương pháp trên để trích xuất nội dung giữa các đoạn cụ thể. Trong trường hợp này, chúng ta muốn trích xuất phần thân của lá thư được tìm thấy ở nửa đầu của tài liệu. Chúng ta có thể biết rằng nó nằm giữa đoạn thứ 7 và 11.

Mã ở dưới đây thực hiện nhiệm vụ này. Các đoạn thích hợp được trích xuất bằng phương pháp [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) trên tài liệu và truyền các chỉ số đã chỉ định. Chúng tôi sau đó truyền các nút này đến phương pháp **ExtractContent** và tuyên bố rằng chúng phải được bao gồm trong việc trích xuất. Phương pháp này sẽ trả về nội dung sao chép giữa các nút này, sau đó được chèn vào một tài liệu mới.

Mã ví dụ sau cho thấy cách trích xuất nội dung giữa các đoạn văn cụ thể bằng phương pháp `ExtractContent` ở trên:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Tài liệu đầu ra có hai đoạn văn được trích xuất.

![extract-content-result-aspose-words-java](extract-content-from-comment-aspose-words-java-2.png)

## Bóc Lấy Nội Dung Giữa Các Loại Node Khác nhau

Chúng tôi có thể trích xuất nội dung giữa bất kỳ kết hợp nào của các nút cấp khối hoặc nhúng. Trong trường hợp này dưới đây chúng ta sẽ trích xuất nội dung giữa đoạn văn đầu tiên và bảng trong phần thứ hai bao gồm cả trong. Chúng ta lấy các nút đánh dấu bằng cách gọi phương thức [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) và [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) trên phần thứ hai của tài liệu để lấy các nút **Paragraph** và **Table** thích hợp. Để có biến thể nhẹ nhàng, hãy nhân đôi nội dung và chèn nó ngay bên dưới bản gốc.

Ví dụ mã sau cho thấy cách trích xuất nội dung giữa đoạn văn và bảng bằng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Nội dung giữa đoạn văn và bảng đã được nhân đôi dưới đây là kết quả.

![extract-content-between-paragraphs-aspose-words-java](extract-content-from-comment-aspose-words-java-3.png)

## Chiết xuất nội dung giữa các đoạn văn dựa trên phong cách

Bạn có thể cần phải trích xuất nội dung giữa các đoạn văn cùng kiểu hoặc khác kiểu, chẳng hạn như giữa các đoạn văn được đánh dấu bằng các kiểu tiêu đề.

Mã dưới đây cho thấy làm thế nào để đạt được điều này. Nó là một ví dụ đơn giản sẽ trích xuất nội dung giữa lần sử dụng đầu tiên của các kiểu "Tiêu đề 1" và "Tiêu đề 3" mà không lấy tiêu đề ra. Để làm như vậy chúng ta đặt tham số cuối cùng là false, điều này chỉ ra rằng các nút đánh dấu không nên được bao gồm.

Trong một sự thực hiện đúng đắn, điều này nên được chạy trong một vòng lặp để trích xuất nội dung giữa tất cả các đoạn văn của những phong cách này từ tài liệu. Nội dung đã được chiết xuất sẽ được sao chép vào một tài liệu mới.

Mã ví dụ sau cho thấy cách lấy nội dung giữa các đoạn văn với kiểu đặc biệt sử dụng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Dưới đây là kết quả của phép toán trước đó.

![extract-content-between-paragraph-style-aspose-words-java](extract-content-from-comment-aspose-words-java-4.png)

## Chiết xuất Nội dung Giữa Các Dòng Cụ thể

Bạn có thể trích xuất nội dung giữa các nút inline như một **Run** cũng vậy. **Runs** từ các đoạn khác nhau có thể được truyền qua các dấu hiệu. Mã dưới đây cho thấy cách trích xuất văn bản cụ thể giữa cùng một nút **Paragraph**.

Mã ví dụ dưới đây cho thấy cách trích xuất nội dung giữa các lần chạy cụ thể của cùng một đoạn văn bằng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Văn bản được trích xuất hiển thị trên console

![extract-content-between-runs-aspose-words-java](extract-content-from-comment-aspose-words-java-5.png)

## Chiết xuất nội dung sử dụng một trường

Để sử dụng một trường làm dấu hiệu, nút `FieldStart` nên được truyền đi. Tham số cuối cùng của phương thức `ExtractContent` sẽ định nghĩa nếu toàn bộ trường được bao gồm hay không. Hãy trích xuất nội dung giữa trường "FullName" và một đoạn văn trong tài liệu. Chúng tôi sử dụng phương pháp [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) của lớp [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Điều này sẽ trả về nút **FieldStart** từ tên của trường nhập hợp nhất được truyền cho nó.

Trong trường hợp của chúng ta hãy đặt tham số cuối cùng được truyền đến phương thức **ExtractContent** thành false để loại trừ trường khỏi quá trình trích xuất. Chúng tôi sẽ chuyển đổi nội dung được chiết xuất thành PDF.

Dưới đây là ví dụ về cách trích xuất nội dung giữa một trường cụ thể và đoạn văn trong tài liệu bằng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Nội dung trích xuất giữa trường và đoạn văn, không có các nút đánh dấu trường và đoạn được hiển thị sang PDF.

![extract-content-using-field-aspose-words-java](extract-content-from-comment-aspose-words-java-6.png)

## Extract nội dung từ một bookmark

Trong một tài liệu, nội dung được định nghĩa trong một con dấu được bao bọc bởi các nút `BookmarkStart` và BookmarkEnd. Nội dung được tìm thấy giữa hai nút này tạo thành một dấu trang lưu. Bạn có thể truyền qua bất kỳ một trong hai nút này như là bất kỳ dấu hiệu nào, thậm chí cả từ các dấu hiệu khác nhau, miễn là dấu hiệu bắt đầu xuất hiện trước dấu hiệu kết thúc trong tài liệu.

Trong tài liệu mẫu của chúng tôi, chúng tôi có một con dấu, được đặt tên là "Bookmark1". Nội dung của dấu thư mục này là nội dung được đánh dấu nổi bật trong tài liệu của chúng tôi:

![extract-content-from-bookmark-aspose-words-java-1](extract-content-from-comment-aspose-words-java-7.png)

Chúng tôi sẽ trích xuất nội dung này vào một tài liệu mới bằng mã sau. Cụm từ **IsInclusive** tham số hiển thị cách giữ lại hoặc loại bỏ dấu đánh chỉ mục.

Mã ví dụ cho thấy cách trích xuất nội dung được tham chiếu bởi một dấu hiệu sử dụng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Kết quả đã được trích xuất với tập `IsInclusive` tham số được đặt thành true. Bản sao sẽ giữ lại con dấu cũng vậy.

![extract-content-from-bookmark-aspose-words-java-2](extract-content-from-comment-aspose-words-java-8.png)

Kết quả được trích xuất với **IsInclusive** tham số được đặt thành false. Bản sao chứa nội dung nhưng không có dấu sách.

![extract-content-from-bookmark-aspose-words-java-3](extract-content-from-comment-aspose-words-java-9.png)

## Chiết xuất nội dung từ một bình luận

Một chú thích được tạo thành từ các CommentRangeStart, CommentRangeEnd và các nút Comment. Tất cả các node này đều là inline. Hai nút đầu tiên bao gồm nội dung trong tài liệu được tham chiếu bởi chú thích, như thấy trong hình chụp màn hình dưới đây.

Điểm nút **Comment** chính nó là một [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) có thể chứa các đoạn và dòng. Nó đại diện cho thông điệp của bình luận như được nhìn thấy dưới dạng bong bóng bình luận trong thanh xem xét. Như nút này là trong dòng và là hậu duệ của một cơ thể bạn cũng có thể trích xuất nội dung bên trong tin nhắn này cũng vậy.

Trong tài liệu của chúng tôi, chúng tôi có một chú thích. Hãy hiển thị nó bằng cách hiển thị mã đánh dấu trong tab "Xem lại":

![extract-content-from-comment-aspose-words-java-1](extract-content-from-comment-aspose-words-java-10.png)

Bình luận bao gồm tiêu đề và đoạn văn đầu tiên và bảng trong phần thứ hai. Chúng ta hãy trích xuất nhận xét này vào một tài liệu mới. Tuỳ chọn **IsInclusive** chỉ ra liệu chú thích đó có được giữ lại hay bị bỏ đi.

Ví dụ mã sau cho thấy cách thực hiện điều này là dưới đây

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Đầu tiên, đầu ra được trích xuất với `IsInclusive` tham số được đặt thành true. Bản sao sẽ chứa cả chú thích đó.

![extract-content-from-comment-aspose-words-java-2](extract-content-from-comment-aspose-words-java-11.png)

Thứ hai, đầu ra được trích xuất với **Inclusives** đặt thành false. Bản sao chứa nội dung nhưng không có chú thích.

![extract-content-from-comment-aspose-words-java-12](extract-content-from-comment-aspose-words-java-12.png)

## Chiết xuất nội dung bằng DocumentVisitor

Aspose.Words có thể được sử dụng không chỉ để tạo ra Microsoft Word các tài liệu bằng cách xây dựng chúng một cách động hoặc hợp nhất các mẫu với dữ liệu, nhưng cũng để phân tích các tài liệu nhằm trích xuất các phần tử tài liệu riêng biệt như tiêu đề, chân trang, đoạn văn, bảng, hình ảnh và những thứ khác. Một nhiệm vụ khả thi khác là tìm tất cả văn bản có định dạng hoặc phong cách cụ thể.

Dùng lớp [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) để thực hiện tình huống này. Lớp này tương ứng với mẫu thiết kế Visitor nổi tiếng. Với [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), bạn có thể định nghĩa và thực thi các hoạt động tùy chỉnh mà yêu cầu phải liệt kê trên cây tài liệu.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) cung cấp một tập các **VisitXXX** phương pháp được gọi khi một yếu tố tài liệu cụ thể (node) gặp phải. Ví dụ như, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) được gọi khi tìm thấy đầu của một đoạn văn bản và [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) được gọi khi kết thúc của một đoạn văn bản. Mỗi **DocumentVisitor.VisitXXX** phương thức chấp nhận đối tượng tương ứng mà nó gặp phải để bạn có thể sử dụng như cần (ví dụ lấy định dạng), ví dụ cả [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) và [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) đều chấp nhận một đối tượng [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

Mỗi **DocumentVisitor.VisitXXX** phương pháp trả về một giá trị **VisitorAction** kiểm soát việc liệt kê các nút. Bạn có thể yêu cầu tiếp tục đếm số, bỏ qua nút hiện tại (nhưng tiếp tục đếm số) hoặc dừng đếm các nút.

Đây là các bước bạn nên làm theo để lập trình xác định và trích xuất nhiều phần khác nhau của một tài liệu:

- Tạo một lớp được kế thừa từ [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
"- Vượt qua và cung cấp các thực hiện cho một số hoặc tất cả các **DocumentVisitor.VisitXXX** phương pháp để thực hiện một số hoạt động tùy chỉnh."
- Gọi [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) trên nút mà bạn muốn bắt đầu việc đếm. Ví dụ nếu bạn muốn liệt kê toàn bộ tài liệu thì sử dụng [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) cung cấp những thực thi mặc định cho tất cả các phương pháp **DocumentVisitor.VisitXXX**. Điều này giúp dễ dàng tạo ra người truy cập tài liệu mới, vì chỉ cần ghi đè lại các phương thức yêu cầu cho người truy cập cụ thể đó. Không cần phải ghi đè tất cả các phương thức của người truy cập.

Ví dụ sau cho thấy cách sử dụng mẫu Visitor để thêm các hoạt động mới vào mô hình đối tượng Aspose.Words. Trong trường hợp này, chúng ta tạo ra một bộ chuyển đổi tài liệu đơn giản sang một định dạng văn bản:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Chiết xuất văn bản duy nhất

Cách lấy lại văn bản từ tài liệu là:

- Sử dụng [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) với [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) để lưu là văn bản đơn giản vào một tập tin hoặc dòng chảy
"- Sử dụng [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) và truyền tham số `SaveFormat.Text` đi." Internally, nó gọi hàm save as text vào một luồng bộ nhớ và trả về chuỗi kết quả
"- Sử dụng [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) để lấy văn bản với tất cả các ký tự Microsoft Word kiểm soát bao gồm mã trường"
- Thực hiện một tùy chỉnh [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) để thực hiện việc trích xuất tùy chỉnh

### Sử dụng `Node.GetText` và `Node.ToString`

Một văn bản word có thể chứa các ký tự kiểm soát chỉ định các phần tử đặc biệt như trường, cuối của ô, cuối của phần, v.v.. Danh sách đầy đủ các ký tự điều khiển có thể của Word được xác định trong lớp **ControlChar**. [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText)" phương pháp trả về văn bản với tất cả các ký tự điều khiển hiện diện trong nút.

Gọi đến ToString trả về biểu diễn văn bản thuần túy của tài liệu mà không có các ký tự điều khiển. Để biết thêm thông tin về xuất sang văn bản thuần túy, hãy xem **Using SaveFormat.Text**.

Mã ví dụ sau cho thấy sự khác biệt giữa việc gọi các phương thức **GetText** và [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) trên một nút:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Sử dụng `SaveFormat.Text`

Ví dụ này lưu tài liệu theo cách sau đây:

- Lọc ra các ký tự trường và mã trường, hình dạng, chú thích, chú thích kết thúc và tham chiếu bình luận
Thay thế kết thúc đoạn văn bản [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) ký tự bằng [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) sự kết hợp
- Sử dụng mã hóa UTF8

Mẫu mã sau cho thấy cách lưu một tài liệu ở định dạng TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Chiết xuất hình ảnh từ các hình dạng

Bạn có thể cần trích xuất hình ảnh tài liệu để thực hiện một số tác vụ. Aspose.Words cho phép bạn làm điều này cũng vậy.

Mã ví dụ sau cho thấy cách trích xuất ảnh từ một tài liệu":

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}
