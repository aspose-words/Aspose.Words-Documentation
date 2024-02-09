---
title: Cách trích xuất nội dung giữa các nút tài liệu
second_title: Aspose.Words cho .NET
articleTitle: Trích xuất nội dung giữa các nút trong tài liệu
linktitle: Trích xuất nội dung giữa các nút
description: "Trích xuất nội dung tài liệu khác nhau bằng C#."
type: docs
weight: 140
url: /vi/net/how-to-extract-selected-content-between-nodes-in-a-document/
---

Khi làm việc với tài liệu, điều quan trọng là có thể dễ dàng trích xuất nội dung từ một phạm vi cụ thể trong tài liệu. Tuy nhiên, nội dung có thể bao gồm các yếu tố phức tạp như đoạn văn, bảng biểu, hình ảnh, v.v.

Bất kể nội dung nào cần trích xuất, phương pháp trích xuất nội dung đó sẽ luôn được xác định bởi các nút nào được chọn để trích xuất nội dung giữa. Đây có thể là toàn bộ nội dung văn bản hoặc các dòng văn bản đơn giản.

Có nhiều tình huống có thể xảy ra và do đó có nhiều loại nút khác nhau cần xem xét khi trích xuất nội dung. Ví dụ: bạn có thể muốn trích xuất nội dung giữa:

- Hai đoạn văn cụ thể
- Dòng văn bản cụ thể
- Các trường thuộc nhiều loại khác nhau, chẳng hạn như trường hợp nhất
- Phạm vi bắt đầu và kết thúc của dấu trang hoặc nhận xét
- Nội dung văn bản khác nhau chứa trong các phần riêng biệt

Trong một số trường hợp, bạn thậm chí có thể cần kết hợp các loại nút khác nhau, chẳng hạn như trích xuất nội dung giữa một đoạn văn và một trường hoặc giữa một lần chạy và một dấu trang.

Bài viết này cung cấp cách triển khai mã để trích xuất văn bản giữa các nút khác nhau, cũng như các ví dụ về các tình huống phổ biến.

{{% alert color="primary" %}}

Những ví dụ này chỉ là một vài minh chứng cho nhiều khả năng. Chúng tôi dự định chức năng trích xuất văn bản sẽ trở thành một phần của API công khai trong tương lai và sẽ không cần thêm mã. Trong thời gian chờ đợi, vui lòng gửi yêu cầu của bạn về chức năng này trên [diễn đàn Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Tại sao trích xuất nội dung

Thông thường mục tiêu của việc trích xuất nội dung là sao chép hoặc lưu riêng nội dung đó trong một tài liệu mới. Ví dụ: bạn có thể trích xuất nội dung và:

- Sao chép nó vào một tài liệu riêng biệt
- Chuyển đổi một phần cụ thể của tài liệu sang PDF hoặc hình ảnh
- Sao chép nội dung trong tài liệu nhiều lần
- Làm việc với nội dung được trích xuất tách biệt với phần còn lại của tài liệu

Điều này có thể dễ dàng đạt được bằng cách sử dụng Aspose.Words và cách triển khai mã bên dưới.

## Trích xuất thuật toán nội dung

Mã trong phần này giải quyết tất cả các tình huống có thể xảy ra được mô tả ở trên bằng một phương pháp tổng quát và có thể tái sử dụng. Phác thảo chung của kỹ thuật này bao gồm:

1. Tập hợp các nút quyết định vùng nội dung sẽ được trích xuất từ tài liệu của bạn. Việc truy xuất các nút này được người dùng xử lý trong mã của họ, dựa trên những gì họ muốn trích xuất.
1. Chuyển các nút này sang phương thức **ExtractContent** được cung cấp bên dưới. Bạn cũng phải chuyển một tham số boolean cho biết liệu các nút này, đóng vai trò là điểm đánh dấu, có nên được đưa vào quá trình trích xuất hay không.
1. Truy xuất danh sách nội dung nhân bản (các nút được sao chép) được chỉ định sẽ được trích xuất. Bạn có thể sử dụng danh sách nút này theo bất kỳ cách nào có thể áp dụng được, chẳng hạn như tạo một tài liệu mới chỉ chứa nội dung đã chọn.

## Cách trích xuất nội dung

Để trích xuất nội dung từ tài liệu của bạn, bạn cần gọi phương thức **ExtractContent** bên dưới và truyền các tham số thích hợp. Cơ sở cơ bản của phương pháp này liên quan đến việc tìm các nút cấp khối (đoạn và bảng) và sao chép chúng để tạo các bản sao giống hệt nhau. Nếu các nút đánh dấu được truyền ở cấp khối thì phương thức có thể chỉ cần sao chép nội dung ở cấp đó và thêm nó vào mảng.

Tuy nhiên, nếu các nút đánh dấu là nội tuyến (con của một đoạn văn) thì tình huống sẽ trở nên phức tạp hơn, vì cần phải phân chia đoạn văn tại nút nội tuyến, có thể là một lần chạy, các trường đánh dấu, v.v. Nội dung trong các nút cha được nhân bản thì không hiện diện giữa các điểm đánh dấu được loại bỏ. Quá trình này được sử dụng để đảm bảo rằng các nút nội tuyến vẫn giữ nguyên định dạng của đoạn gốc. Phương thức này cũng sẽ chạy kiểm tra các nút được truyền dưới dạng tham số và đưa ra một ngoại lệ nếu một trong hai nút không hợp lệ. Các tham số được truyền cho phương thức này là:

1. **StartNode** và **EndNode**. Hai tham số đầu tiên là các nút xác định nơi bắt đầu và kết thúc quá trình trích xuất nội dung. Các nút này có thể ở cả cấp độ khối ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) hoặc cấp độ nội tuyến (ví dụ: [Run](https://reference.aspose.com/words/net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/), v.v.):
   1. Để truyền một trường bạn phải truyền đối tượng **FieldStart** tương ứng
   1. Để chuyển dấu trang, các nút **BookmarkStart** và [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) phải được chuyển qua
   1. Để chuyển nhận xét, nên sử dụng nút [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) và [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)
1. **IsInclusive**. Xác định xem các điểm đánh dấu có được đưa vào trích xuất hay không. Nếu tùy chọn này được đặt thành false và cùng một nút hoặc các nút liên tiếp được chuyển thì một danh sách trống sẽ được trả về:
   1. Nếu nút **FieldStart** được thông qua thì tùy chọn này sẽ xác định xem toàn bộ trường sẽ được bao gồm hay loại trừ
   1. Nếu nút **BookmarkStart** hoặc **BookmarkEnd** được thông qua, tùy chọn này sẽ xác định xem dấu trang có được bao gồm hay chỉ nội dung giữa phạm vi dấu trang.
   1. Nếu nút **CommentRangeStart** hoặc **CommentRangeEnd** được thông qua, tùy chọn này sẽ xác định liệu chính nhận xét đó sẽ được đưa vào hay chỉ nội dung trong phạm vi nhận xét.

Việc thực hiện phương pháp **ExtractContent** bạn có thể tìm thấy [trên Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Phương pháp này sẽ được đề cập đến trong các tình huống trong bài viết này.

Chúng tôi cũng sẽ xác định một phương thức tùy chỉnh để dễ dàng tạo tài liệu từ các nút được trích xuất. Phương pháp này được sử dụng trong nhiều trường hợp dưới đây và chỉ cần tạo một tài liệu mới rồi nhập nội dung được trích xuất vào đó.

Ví dụ mã sau đây cho thấy cách lấy danh sách các nút và chèn chúng vào tài liệu mới:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Trích xuất nội dung giữa các đoạn văn

Phần này minh họa cách sử dụng phương pháp trên để trích xuất nội dung giữa các đoạn văn cụ thể. Trong trường hợp này, chúng tôi muốn trích xuất nội dung của bức thư được tìm thấy ở nửa đầu của tài liệu. Chúng ta có thể nói rằng đây là giữa đoạn thứ 7 và thứ 11.

Đoạn mã dưới đây hoàn thành nhiệm vụ này. Các đoạn văn thích hợp được trích xuất bằng phương pháp [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) trên tài liệu và chuyển các chỉ mục được chỉ định. Sau đó, chúng tôi chuyển các nút này sang phương thức **ExtractContent** và tuyên bố rằng chúng sẽ được đưa vào quá trình trích xuất. Phương thức này sẽ trả về nội dung được sao chép giữa các nút này, sau đó được chèn vào tài liệu mới.

Ví dụ mã sau đây cho thấy cách trích xuất nội dung giữa các đoạn văn cụ thể bằng phương pháp `ExtractContent` ở trên:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Trích xuất nội dung giữa các loại nút khác nhau

Chúng tôi có thể trích xuất nội dung giữa mọi kết hợp cấp khối hoặc nút nội tuyến. Trong kịch bản dưới đây, chúng tôi sẽ trích xuất toàn bộ nội dung giữa đoạn đầu tiên và bảng trong phần thứ hai. Chúng tôi nhận được các nút đánh dấu bằng cách gọi các phương thức [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) và [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) trên phần thứ hai của tài liệu để truy xuất các nút **Paragraph** và **Table** thích hợp. Để thay đổi một chút, hãy sao chép nội dung và chèn nó bên dưới nội dung gốc.

Ví dụ mã sau đây cho thấy cách trích xuất nội dung giữa đoạn văn và bảng bằng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Trích xuất nội dung giữa các đoạn dựa trên phong cách

Bạn có thể cần trích xuất nội dung giữa các đoạn văn có kiểu giống nhau hoặc khác nhau, chẳng hạn như giữa các đoạn văn được đánh dấu bằng kiểu tiêu đề. Mã dưới đây cho thấy cách đạt được điều này. Đây là một ví dụ đơn giản sẽ trích xuất nội dung giữa phiên bản đầu tiên của kiểu "Tiêu đề 1" và "Tiêu đề 3" mà không trích xuất các tiêu đề. Để làm điều này, chúng tôi đặt tham số cuối cùng thành false, tham số này chỉ định rằng không nên đưa vào các nút đánh dấu.

Khi triển khai đúng cách, thao tác này sẽ được chạy trong vòng lặp để trích xuất nội dung giữa tất cả các đoạn văn thuộc các kiểu này trong tài liệu. Nội dung được trích xuất được sao chép vào một tài liệu mới.

Ví dụ về mã sau đây cho thấy cách trích xuất nội dung giữa các đoạn văn với các kiểu cụ thể bằng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Trích xuất nội dung giữa các lần chạy cụ thể

Bạn cũng có thể trích xuất nội dung giữa các nút nội tuyến, chẳng hạn như [Run](https://reference.aspose.com/words/net/aspose.words/run/). **Runs** từ các đoạn khác nhau có thể được chuyển làm điểm đánh dấu. Mã bên dưới cho biết cách trích xuất văn bản cụ thể ở giữa cùng một nút **Paragraph**.

Ví dụ về mã sau đây cho thấy cách trích xuất nội dung giữa các lần chạy cụ thể của cùng một đoạn bằng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Trích xuất nội dung bằng cách sử dụng một trường

Để sử dụng một trường làm điểm đánh dấu, nút `FieldStart` phải được thông qua. Tham số cuối cùng của phương thức `ExtractContent` sẽ xác định xem toàn bộ trường có được đưa vào hay không. Hãy trích xuất nội dung giữa trường hợp nhất "FullName" và một đoạn văn trong tài liệu. Chúng tôi sử dụng phương thức [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) của lớp [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Điều này sẽ trả về nút **FieldStart** từ tên của trường hợp nhất được truyền cho nó.

Trong trường hợp của chúng tôi, hãy đặt tham số cuối cùng được truyền cho phương thức **ExtractContent** thành false để loại trừ trường khỏi quá trình trích xuất. Chúng tôi sẽ hiển thị nội dung được trích xuất thành PDF.

Ví dụ về mã sau đây cho thấy cách trích xuất nội dung giữa một trường và đoạn cụ thể trong tài liệu bằng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Trích xuất nội dung từ dấu trang

Trong tài liệu, nội dung được xác định trong dấu trang được gói gọn bởi các nút `BookmarkStart` và BookmarkEnd. Nội dung được tìm thấy giữa hai nút này tạo nên dấu trang. Bạn có thể chuyển một trong hai nút này dưới dạng bất kỳ điểm đánh dấu nào, thậm chí cả các nút từ các dấu trang khác nhau, miễn là điểm đánh dấu bắt đầu xuất hiện trước điểm đánh dấu kết thúc trong tài liệu. Chúng tôi sẽ trích xuất nội dung này vào một tài liệu mới bằng mã bên dưới. Tùy chọn tham số **IsInclusive** hiển thị cách giữ lại hoặc loại bỏ dấu trang.

Ví dụ về mã sau đây cho thấy cách trích xuất nội dung được tham chiếu đến dấu trang bằng phương pháp **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Trích xuất nội dung từ một bình luận

Một nhận xét được tạo thành từ các nút CommentRangeStart, CommentRangeEnd và Comment. Tất cả các nút này là nội tuyến. Hai nút đầu tiên gói gọn nội dung trong tài liệu được tham chiếu bởi nhận xét, như trong ảnh chụp màn hình bên dưới.

Bản thân nút **Comment** là một [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) có thể chứa các đoạn văn và nội dung chạy. Nó thể hiện thông điệp của nhận xét dưới dạng bong bóng nhận xét trong khung xem lại. Vì nút này là nút nội tuyến và là hậu duệ của phần nội dung nên bạn cũng có thể trích xuất nội dung từ bên trong thông báo này.

Nhận xét gói gọn tiêu đề, đoạn đầu tiên và bảng trong phần thứ hai. Hãy trích xuất nhận xét này vào một tài liệu mới. Tùy chọn **IsInclusive** quyết định xem bản thân nhận xét đó có được giữ lại hay bị loại bỏ hay không.

Ví dụ mã sau đây cho thấy cách thực hiện việc này:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cách trích xuất nội dung bằng DocumentVisitor

Sử dụng lớp [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) để triển khai kịch bản sử dụng này. Lớp này tương ứng với mẫu thiết kế Visitor nổi tiếng. Với **DocumentVisitor** **,**, bạn có thể xác định và thực hiện các thao tác tùy chỉnh yêu cầu liệt kê trên cây tài liệu.

**DocumentVisitor** cung cấp một tập hợp các phương thức **VisitXXX** được gọi khi gặp một thành phần tài liệu (nút) cụ thể. Ví dụ: [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) được gọi khi tìm thấy phần đầu của đoạn văn bản và [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) được gọi khi tìm thấy phần cuối của đoạn văn bản. Mỗi phương thức **DocumentVisitor.VisitXXX** chấp nhận đối tượng tương ứng mà nó gặp để bạn có thể sử dụng nó khi cần (giả sử truy xuất định dạng), ví dụ: cả **DocumentVisitor.VisitParagraphStart** và **DocumentVisitor.VisitParagraphEnd** đều chấp nhận một đối tượng [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

Mỗi phương thức **DocumentVisitor.VisitXXX** trả về một giá trị [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) kiểm soát việc liệt kê các nút. Bạn có thể yêu cầu tiếp tục liệt kê, bỏ qua nút hiện tại (nhưng vẫn tiếp tục liệt kê) hoặc dừng liệt kê các nút.

Đây là các bước bạn nên làm theo để xác định và trích xuất các phần khác nhau của tài liệu theo chương trình:

- Tạo một lớp dẫn xuất từ **DocumentVisitor**
- Ghi đè và cung cấp cách triển khai cho một số hoặc tất cả các phương thức **DocumentVisitor.VisitXXX** để thực hiện một số thao tác tùy chỉnh
- Gọi [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) trên nút mà bạn muốn bắt đầu liệt kê, ví dụ: nếu bạn muốn liệt kê toàn bộ tài liệu, hãy sử dụng [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor** cung cấp cách triển khai mặc định cho tất cả các phương thức **DocumentVisitor.VisitXXX**. Điều này giúp việc tạo khách truy cập tài liệu mới dễ dàng hơn vì chỉ cần ghi đè các phương pháp cần thiết cho khách truy cập cụ thể. Không cần thiết phải ghi đè tất cả các phương thức của khách truy cập.

Ví dụ sau đây cho thấy cách sử dụng mẫu Khách truy cập để thêm các thao tác mới vào mô hình đối tượng Aspose.Words. Trong trường hợp này, chúng tôi tạo một trình chuyển đổi tài liệu đơn giản sang định dạng văn bản:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Cách chỉ trích xuất văn bản

Các cách để lấy văn bản từ tài liệu là:

- Sử dụng [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) với [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) để lưu dưới dạng văn bản thuần túy thành tệp hoặc luồng
- Sử dụng [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) và truyền tham số **SaveFormat.Text**. Trong nội bộ, lệnh này gọi lưu dưới dạng văn bản vào luồng bộ nhớ và trả về chuỗi kết quả
- Sử dụng [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) để truy xuất văn bản có tất cả các ký tự điều khiển Microsoft Word bao gồm cả mã trường
- Triển khai [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) tùy chỉnh để thực hiện trích xuất tùy chỉnh

### Sử dụng `Node.GetText` và `Node.ToString`

Tài liệu Word có thể chứa các ký tự điều khiển chỉ định các thành phần đặc biệt như trường, cuối ô, cuối phần, v.v. Danh sách đầy đủ các ký tự điều khiển Word có thể có được xác định trong lớp **ControlChar**. Phương thức **Node.GetText** trả về văn bản có tất cả các ký tự ký tự điều khiển có trong nút.

Việc gọi **ToString** chỉ trả về dạng văn bản thuần túy của tài liệu mà không có ký tự điều khiển. Để biết thêm thông tin về xuất dưới dạng văn bản thuần túy, hãy xem phần **"Sử dụng SaveFormat.Text"** sau.

Ví dụ về mã sau đây cho thấy sự khác biệt giữa việc gọi các phương thức **GetText** và **ToString** trên một nút:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Sử dụng `SaveFormat.Text`

Ví dụ này lưu tài liệu như sau:

- Lọc các ký tự trường và mã trường, hình dạng, chú thích cuối trang, chú thích cuối và tham chiếu nhận xét
- Thay thế các ký tự **ControlChar.Cr** cuối đoạn bằng các kết hợp **ControlChar.CrLf**
- Sử dụng mã hóa UTF8

Ví dụ mã sau đây cho thấy cách lưu tài liệu ở định dạng TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Trích xuất hình ảnh từ hình dạng

Bạn có thể cần trích xuất hình ảnh tài liệu để thực hiện một số tác vụ. Aspose.Words cũng cho phép bạn làm điều này.

Ví dụ mã sau đây cho thấy cách trích xuất hình ảnh từ tài liệu:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}