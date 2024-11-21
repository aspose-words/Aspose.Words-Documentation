---
title: Cách Trích Xuất Nội Dung Giữa Các Nút Tài Liệu
second_title: Aspose.Words cho C++
articleTitle: Trích Xuất Nội Dung Giữa Các Nút trong Tài liệu
linktitle: Trích Xuất Nội Dung Giữa Các Nút
type: docs
description: "Trích xuất nội dung tài liệu khác nhau bằng cách sử dụng C++."
weight: 140
url: /vi/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Khi làm việc với tài liệu, điều quan trọng là có thể dễ dàng trích xuất nội dung từ một phạm vi cụ thể trong tài liệu. Tuy nhiên, nội dung có thể bao gồm các yếu tố phức tạp như đoạn văn, bảng, hình ảnh, v. v.

Bất kể nội dung nào cần được trích xuất, phương pháp trích xuất nội dung đó sẽ luôn được xác định bởi các nút nào được chọn để trích xuất nội dung giữa. Đây có thể là toàn bộ nội dung văn bản hoặc chạy văn bản đơn giản.

Có nhiều tình huống có thể xảy ra và do đó có nhiều loại nút khác nhau cần xem xét khi trích xuất nội dung. Ví dụ: bạn có thể muốn trích xuất nội dung giữa:

- Hai đoạn cụ thể
- Chạy cụ thể của văn bản
- Các trường thuộc nhiều loại khác nhau, chẳng hạn như trường hợp nhất
- Phạm vi bắt đầu và kết thúc của dấu trang hoặc nhận xét
- Các phần khác nhau của văn bản có trong các phần riêng biệt

Trong một số tình huống, bạn thậm chí có thể cần kết hợp các loại nút khác nhau, chẳng hạn như trích xuất nội dung giữa đoạn văn và trường hoặc giữa chạy và dấu trang.

Bài viết này cung cấp việc triển khai mã để trích xuất văn bản giữa các nút khác nhau, cũng như các ví dụ về các kịch bản phổ biến.

{{% alert color="primary" %}}

Những ví dụ này chỉ là một vài minh chứng về nhiều khả năng. Chúng tôi lên kế hoạch cho chức năng trích xuất văn bản là một phần của công chúng API trong tương lai và sẽ không cần thêm mã. Trong khi đó, vui lòng đăng các yêu cầu của bạn liên quan đến chức năng này trên [Aspose.Words diễn đàn](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Tại Sao Trích Xuất Nội Dung

Thông thường mục tiêu của việc trích xuất nội dung là sao chép hoặc lưu riêng nội dung đó trong một tài liệu mới. Ví dụ: bạn có thể trích xuất nội dung và:

- Sao chép nó vào một tài liệu riêng biệt
- Chuyển đổi một phần cụ thể của tài liệu thành PDF hoặc hình ảnh
- Sao chép nội dung trong tài liệu nhiều lần
- Làm việc với nội dung được trích xuất tách biệt với phần còn lại của tài liệu

Điều này có thể dễ dàng đạt được bằng cách sử dụng Aspose.Words và việc triển khai mã bên dưới.

## Giải Nén Thuật Toán Nội Dung

Mã trong phần này giải quyết tất cả các tình huống có thể được mô tả ở trên bằng một phương pháp tổng quát và có thể tái sử dụng. Phác thảo chung của kỹ thuật này bao gồm:

1. Thu thập các nút chỉ ra khu vực nội dung sẽ được trích xuất từ tài liệu của bạn. Lấy các nút này được xử lý bởi người dùng trong mã của họ, dựa trên những gì họ muốn được trích xuất.
1. Chuyển các nút này sang phương thức **ExtractContent** được cung cấp bên dưới. Bạn cũng phải vượt qua một tham số boolean cho biết liệu các nút này, hoạt động như các điểm đánh dấu, có nên được bao gồm trong trích xuất hay không.
1. Truy xuất danh sách nội dung nhân bản (các nút được sao chép) được chỉ định để trích xuất. Bạn có thể sử dụng danh sách các nút này theo bất kỳ cách áp dụng nào, ví dụ: tạo một tài liệu mới chỉ chứa nội dung đã chọn.

## Cách Trích Xuất Nội Dung

Để trích xuất nội dung từ tài liệu của bạn, bạn cần gọi phương thức `ExtractContent` bên dưới và chuyển các tham số thích hợp. Cơ sở cơ bản của phương pháp này liên quan đến việc tìm kiếm các nút cấp khối (đoạn văn và bảng) và nhân bản chúng để tạo các bản sao giống hệt nhau. Nếu các nút đánh dấu được truyền là cấp khối thì phương thức có thể chỉ cần sao chép nội dung ở cấp đó và thêm nó vào mảng.

Tuy nhiên, nếu các nút đánh dấu là nội tuyến (một con của một đoạn) thì tình huống trở nên phức tạp hơn, vì cần phải chia đoạn tại nút nội tuyến, có thể là chạy, trường đánh dấu, v. v. Nội dung trong các nút cha nhân bản không có giữa các điểm đánh dấu bị xóa. Quá trình này được sử dụng để đảm bảo rằng các nút nội tuyến vẫn sẽ giữ nguyên định dạng của đoạn cha. Phương thức cũng sẽ chạy kiểm tra trên các nút được truyền dưới dạng tham số và ném một ngoại lệ nếu một trong hai nút không hợp lệ. Các tham số được truyền cho phương thức này là:

1. **StartNode** và **EndNode**. Hai tham số đầu tiên là các nút xác định nơi bắt đầu trích xuất nội dung và kết thúc tương ứng. Các nút này có thể là cả cấp khối (Đoạn Văn, Bảng) hoặc cấp nội tuyến (Ví dụ: Chạy, FieldStart, BookmarkStart, v. v.):
   1. Để vượt qua một trường, bạn nên vượt qua đối tượng **FieldStart** tương ứng.
   1. Để vượt qua dấu trang, các nút **BookmarkStart** và BookmarkEnd phải được thông qua.
   1. Để truyền nhận xét, các nút CommentRangeStart và CommentRangeEnd nên được sử dụng.
1. **IsInclusive**. Xác định xem các điểm đánh dấu có được bao gồm trong trích xuất hay không. Nếu tùy chọn này được đặt thành false và cùng một nút hoặc các nút liên tiếp được truyền, thì một danh sách trống sẽ được trả về:

      1. Nếu một nút **FieldStart** được truyền thì tùy chọn này xác định nếu toàn bộ trường được bao gồm hoặc loại trừ.
      1. Nếu nút **BookmarkStart** hoặc **BookmarkEnd** được truyền, tùy chọn này xác định xem dấu trang có được bao gồm hay chỉ nội dung giữa phạm vi dấu trang hay không.
      1. Nếu nút **CommentRangeStart** hoặc **CommentRangeEnd** được truyền, tùy chọn này xác định xem chính nhận xét đó có được bao gồm hay chỉ nội dung trong phạm vi nhận xét hay không.

Việc thực hiện phương thức **ExtractContent** bạn có thể tìm thấy [đây](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Phương pháp này sẽ được đề cập trong các kịch bản trong bài viết này.

Chúng tôi cũng sẽ xác định một phương thức tùy chỉnh để dễ dàng tạo tài liệu từ các nút được trích xuất. Phương pháp này được sử dụng trong nhiều tình huống dưới đây và chỉ cần tạo một tài liệu mới và nhập nội dung được trích xuất vào đó.

Ví dụ mã sau đây cho thấy cách lấy danh sách các nút và chèn chúng vào một tài liệu mới.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Trích Xuất Nội Dung Giữa Các Đoạn Văn

Điều này thể hiện cách sử dụng phương pháp trên để trích xuất nội dung giữa các đoạn cụ thể. Trong trường hợp này, chúng tôi muốn trích xuất phần thân của bức thư được tìm thấy trong nửa đầu của tài liệu. Chúng ta có thể nói rằng đây là giữa đoạn 7thứ và 11.

Mã dưới đây hoàn thành nhiệm vụ này. Các đoạn thích hợp được trích xuất bằng phương thức [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) trên tài liệu và chuyển các chỉ số được chỉ định. Sau đó, chúng tôi chuyển các nút này sang phương thức **ExtractContent** và nói rằng chúng sẽ được đưa vào trích xuất. Phương thức này sẽ trả về nội dung đã sao chép giữa các nút này sau đó được chèn vào một tài liệu mới.

Ví dụ mã sau đây cho thấy cách trích xuất nội dung giữa các đoạn cụ thể bằng phương thức `ExtractContent` ở trên:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Trích Xuất Nội Dung Giữa Các Loại Nút Khác Nhau

Chúng tôi có thể trích xuất nội dung giữa bất kỳ sự kết hợp nào của các nút cấp khối hoặc nội tuyến. Trong trường hợp này bên dưới, chúng tôi sẽ trích xuất nội dung giữa đoạn đầu tiên và bảng trong phần thứ hai. Chúng tôi nhận được các nút đánh dấu bằng cách gọi phương thức `Body.FirstParagraph` và [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) trên phần thứ hai của tài liệu để truy xuất các nút Đoạn và Bảng thích hợp. Đối với một biến thể nhỏ, thay vào đó, hãy sao chép nội dung và chèn nó bên dưới bản gốc.

Ví dụ mã sau đây cho thấy cách trích xuất nội dung giữa đoạn văn và bảng bằng phương thức `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Trích Xuất Nội Dung Giữa Các Đoạn Văn Dựa Trên Phong Cách

Bạn có thể cần trích xuất nội dung giữa các đoạn có cùng kiểu hoặc các kiểu khác nhau, chẳng hạn như giữa các đoạn được đánh dấu bằng kiểu tiêu đề. Mã dưới đây cho thấy làm thế nào để đạt được điều này. Đây là một ví dụ đơn giản sẽ trích xuất nội dung giữa phiên bản đầu tiên của kiểu "Tiêu đề 1" và "tiêu đề 3" mà không cần trích xuất các tiêu đề. Để làm điều này, chúng tôi đặt tham số cuối cùng thành false, trong đó chỉ định rằng các nút đánh dấu không nên được bao gồm.

Trong một triển khai thích hợp, điều này nên được chạy trong một vòng lặp để trích xuất nội dung giữa tất cả các đoạn của các kiểu này từ tài liệu. Nội dung được trích xuất được sao chép vào một tài liệu mới.

Ví dụ mã sau đây cho thấy cách trích xuất nội dung giữa các đoạn văn với các kiểu cụ thể bằng phương thức `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Trích Xuất Nội Dung Giữa Các Lần Chạy Cụ Thể

Bạn cũng có thể trích xuất nội dung giữa các nút nội tuyến như [Run](https://reference.aspose.com/words/cpp/aspose.words/run/). **Runs** từ các đoạn khác nhau có thể được truyền dưới dạng điểm đánh dấu. Đoạn mã dưới đây cho thấy cách trích xuất văn bản cụ thể ở giữa cùng một nút **Paragraph**.

Ví dụ mã sau đây cho thấy cách trích xuất nội dung giữa các lần chạy cụ thể của cùng một đoạn bằng phương thức **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Trích Xuất Nội dung bằng Một Trường

Để sử dụng một trường làm điểm đánh dấu, nút `FieldStart` phải được thông qua. Tham số cuối cùng của phương thức `ExtractContent` sẽ xác định xem toàn bộ trường có được bao gồm hay không. Hãy trích xuất nội dung giữa trường hợp nhất "FullName" và một đoạn trong tài liệu. Chúng tôi sử dụng phương thức [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) của lớp [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Điều này sẽ trả về nút **FieldStart** từ tên của trường hợp nhất được truyền cho nó.

Trong trường hợp của chúng tôi, hãy đặt tham số cuối cùng được chuyển đến phương thức **ExtractContent** thành false để loại trừ trường khỏi trích xuất. Chúng tôi sẽ hiển thị nội dung được trích xuất thành PDF.

Ví dụ mã sau đây cho thấy cách trích xuất nội dung giữa một trường và đoạn cụ thể trong tài liệu bằng phương thức **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Trích Xuất Nội dung Từ Dấu Trang

Trong một tài liệu, nội dung được xác định trong dấu trang được đóng gói bởi các nút `BookmarkStart` và BookmarkEnd. Nội dung được tìm thấy giữa hai nút này tạo nên dấu trang. Bạn có thể chuyển một trong các nút này dưới dạng bất kỳ điểm đánh dấu nào, ngay cả các nút từ các dấu trang khác nhau, miễn là điểm đánh dấu bắt đầu xuất hiện trước điểm đánh dấu kết thúc trong tài liệu. Chúng tôi sẽ trích xuất nội dung này vào một tài liệu mới bằng cách sử dụng mã bên dưới. Tùy chọn tham số **IsInclusive** hiển thị cách giữ lại hoặc loại bỏ dấu trang.

Ví dụ mã sau đây cho thấy cách trích xuất nội dung được tham chiếu dấu trang bằng phương thức **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Trích Xuất Nội dung Từ Một Bình Luận

Một bình luận được tạo thành từ CommentRangeStart, CommentRangeEnd Và Các Nút Bình luận. Tất cả các nút này là nội tuyến. Hai nút đầu tiên đóng gói nội dung trong tài liệu được tham chiếu bởi nhận xét, như đã thấy trong ảnh chụp màn hình bên dưới.

Bản thân nút **Comment** là một InlineStory có thể chứa các đoạn văn và chạy. Nó đại diện cho thông điệp của bình luận được xem như một bong bóng bình luận trong ngăn xem trước. Vì nút này là nội tuyến và là hậu duệ của một cơ thể, bạn cũng có thể trích xuất nội dung từ bên trong thông báo này.

Nhận xét đóng gói tiêu đề, đoạn đầu tiên và bảng trong phần thứ hai. Hãy trích xuất nhận xét này vào một tài liệu mới. Tùy chọn **IsInclusive** ra lệnh nếu chính nhận xét được giữ hoặc loại bỏ.

Ví dụ mã sau đây cho thấy cách thực hiện việc này:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Cách Trích Xuất Nội dung bằng DocumentVisitor

Sử dụng lớp [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) để thực hiện kịch bản sử dụng này. Lớp này tương ứng với mô hình thiết kế Khách truy cập nổi tiếng. Với **DocumentVisitor,**, bạn có thể xác định và thực hiện các hoạt động tùy chỉnh yêu cầu liệt kê trên cây tài liệu.

**DocumentVisitor**

Mỗi phương thức **DocumentVisitor.VisitXXX** trả về giá trị [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) kiểm soát việc liệt kê các nút. Bạn có thể yêu cầu tiếp tục liệt kê, bỏ qua nút hiện tại (nhưng tiếp tục liệt kê) hoặc dừng liệt kê các nút.

Đây là các bước bạn nên làm theo để xác định và trích xuất các phần khác nhau của tài liệu theo chương trình:

- Tạo một lớp có nguồn gốc từ **DocumentVisitor**
- Ghi đè và cung cấp các triển khai cho một số hoặc tất cả các phương thức **DocumentVisitor.VisitXXX** để thực hiện một số thao tác tùy chỉnh
- Gọi `Node.Accept` trên nút từ nơi bạn muốn bắt đầu liệt kê. Ví dụ: nếu bạn muốn liệt kê toàn bộ tài liệu, hãy sử dụng `Document.Accept`

**DocumentVisitor**

Ví dụ này cho thấy cách sử dụng Mẫu Khách Truy cập để thêm các thao tác mới vào mô hình đối tượng Aspose.Words. Trong trường hợp này, chúng tôi tạo một trình chuyển đổi tài liệu đơn giản thành định dạng văn bản:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Cách Chỉ Trích Xuất Văn Bản

Các cách để lấy văn bản từ tài liệu là:

- Sử dụng [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) với [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) để lưu dưới dạng văn bản thuần túy vào tệp hoặc luồng
- Sử dụng [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) và chuyển tham số **SaveFormat.Text**. Trong nội bộ, điều này gọi lưu dưới dạng văn bản vào luồng bộ nhớ và trả về chuỗi kết quả
- Sử dụng [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) để truy xuất văn bản với tất cả các ký tự điều khiển Microsoft Word bao gồm cả mã trường
- Thực hiện một tùy chỉnh [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) để thực hiện trích xuất tùy chỉnh

### Sử dụng `Node.GetText` và `Node.ToString`

Tài liệu Word có thể chứa các ký tự điều khiển chỉ định các phần tử đặc biệt như trường, cuối ô, cuối phần, v. v. Danh sách đầy đủ các ký tự Điều khiển Từ có thể được xác định trong lớp [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). Phương thức **Node.GetText** trả về văn bản với tất cả các ký tự ký tự điều khiển có trong nút.

Gọi **ToString** chỉ trả về biểu diễn văn bản thuần túy của tài liệu mà không có ký tự điều khiển.

Ví dụ mã sau đây cho thấy sự khác biệt giữa việc gọi các phương thức **GetText** và **ToString** trên một nút:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Sử dụng `SaveFormat.Text`

Ví dụ này lưu tài liệu như sau:

- Lọc ra các ký tự trường và mã trường, hình dạng, chú thích cuối trang, chú thích cuối và tham chiếu nhận xét
- Thay thế các ký tự cuối đoạn **ControlChar.Cr** bằng các kết hợp **ControlChar.CrLf**
- Sử dụng mã hóa UTF8

Ví dụ mã sau đây cho thấy cách lưu tài liệu ở định dạng TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Trích Xuất Hình ảnh Từ Hình Dạng

Bạn có thể cần trích xuất hình ảnh tài liệu để thực hiện một số tác vụ. Aspose.Words cho phép bạn làm điều này là tốt.

Ví dụ mã sau đây cho thấy cách trích xuất hình ảnh từ tài liệu:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
