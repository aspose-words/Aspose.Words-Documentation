---
title: "Làm việc với các phần trong Java`:"
second_title: Aspose.Words cho Java
articleTitle: Làm việc với các Phần
linktitle: Làm việc với các Phần
description: "Hiểu các khái niệm phân đoạn tài liệu và thực hành thao tác bằng Java. Chèn một đoạn vào trong một tài liệu Java. Loại bỏ phần Java. Sao chép các đoạn giữa các tài liệu."
type: docs
weight: 120
url: /vi/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Đôi khi bạn muốn một tài liệu mà không có định dạng giống nhau trên tất cả các trang. Ví dụ, bạn có thể cần thay đổi định dạng số trang, có kích thước và hướng khác nhau hoặc có trang đầu tiên của tài liệu là trang bìa không có đánh số. Bạn có thể đạt được điều đó với các phần.

Các phần là các nút cấp mà kiểm soát các tiêu đề và chân trang, hướng và cột, lề, định dạng số trang, và khác...

Aspose.Words cho phép bạn quản lý các phần, chia một tài liệu thành các phần và thực hiện thay đổi định dạng chỉ áp dụng cho một phần cụ thể. Aspose.Words lưu trữ thông tin về định dạng phần như tiêu đề và chân trang, thiết lập trang và cài đặt cột trong trình ngắt phần.

Bài viết này giải thích cách làm việc với các phần và các đoạn vỡ của phần.

## Cái gì là Phân Mục và Nghỉ Ngơi Phân Mục?

Các phần tài liệu được thể hiện bởi các lớp [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) và [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Các đối tượng phần là con ngay của nút [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) và có thể truy cập bằng thuộc tính [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections). Bạn có thể quản lý các node đó bằng cách sử dụng một số phương pháp như [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) và những người khác.

Đoạn chia là một tùy chọn giúp phân chia trang tài liệu thành các phần với bố cục có thể tùy chỉnh.

## Các loại của một phần ngắt

Aspose.Words cho phép bạn chia và định dạng tài liệu bằng cách sử dụng các đoạn văn khác nhau của số [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/)

- SectionBreakContinuous
- SectionBreakNewColumn
- ThẻSectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Bạn cũng có thể dùng [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) enum để chọn một loại ngắt áp dụng chỉ đối với phần đầu tiên như NewColumn,NewPage, EvenPage và OddPage.

## Quản lý một phần

Vì một phần là một nút hợp nhất thông thường, toàn bộ thao tác nút API có thể được sử dụng để thao tác các phần: thêm, xóa và các hoạt động khác trên các phần. Bạn có thể đọc thêm về các node trong bài viết [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/).

Mặt khác, bạn cũng có thể sử dụng `DocumentBuilder` API để làm việc với các phần. Trong bài viết này, chúng ta sẽ tập trung vào cách làm việc đặc biệt này với các phần.

## Chèn hoặc Loại bỏ một phần ngắt đoạn

Aspose.Words cho phép bạn chèn một đoạn chia văn bản bằng phương pháp [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int).

Mã ví dụ sau cho thấy cách chèn một đoạn ngắt tài liệu vào tài liệu:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Sử dụng [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) phương pháp để xóa một đoạn ngắt. Nếu bạn không cần loại bỏ một ngắt đoạn cụ thể và thay vào đó xóa nội dung của phần đó, bạn có thể sử dụng phương pháp [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent).

Mã ví dụ sau cho thấy cách loại bỏ các đoạn chia trang:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Lưu ý rằng một sự gián đoạn phần có thông tin về phần đi trước nó, không phải là phần đi sau nó. Vậy nếu bạn xóa một đoạn ngắt, văn bản trước ngắt đó sẽ có các thuộc tính của đoạn ngắt tiếp theo sau nó. Điều này có thể khiến toàn bộ tài liệu trở thành định dạng ngang hoặc tiêu đề và chân trang thay đổi hoặc hoàn toàn biến mất.

{{% /alert %}}

## Di chuyển một phần

Nếu bạn muốn di chuyển một phần từ một vị trí đến một vị trí khác trong tài liệu của bạn, bạn cần lấy chỉ số của phần đó. Aspose.Words cho phép bạn nhận được vị trí của phần từ một [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Bạn có thể sử dụng thuộc tính [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) để nhận tất cả các phần trong tài liệu của bạn. Nhưng nếu bạn muốn lấy chỉ phần đầu tiên thì có thể dùng thuộc tính [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection).

Mã ví dụ sau cho thấy cách truy cập phần đầu tiên và lặp lại qua các con của một nút hợp thành:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Chỉ định một Bố cục Phần

Đôi khi bạn muốn tài liệu của mình trông tốt hơn bằng cách tạo ra những bố cục sáng tạo cho các phần khác nhau của tài liệu. Nếu bạn muốn xác định loại của lưới phần hiện tại, bạn có thể chọn một chế độ bố cục phần bằng cách sử dụng bộ số thứ [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/):

- Mặc định
- Grid
"- LineGrid"
"- SnapToChars"

Ví dụ mã sau cho thấy cách giới hạn số dòng mà mỗi trang có thể có:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Chỉnh sửa một mục

Khi bạn thêm một phần mới vào tài liệu của mình, không sẽ có bất kỳ cơ thể hoặc đoạn văn nào mà bạn có thể chỉnh sửa. Aspose.Words cho phép bạn đảm bảo rằng một phần chứa một cơ thể với ít nhất một đoạn bằng phương pháp [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) - nó sẽ tự động thêm một nút Cơ thể (hoặc Đầu Trang Chân Trang) vào tài liệu và sau đó thêm một Đoạn vào nó.

Mã ví dụ cho thấy cách chuẩn bị một nút phần tử mới sử dụng **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Thêm hoặc nối thêm nội dung

Nếu bạn muốn vẽ một hình dạng hoặc thêm văn bản hoặc hình ảnh vào đầu hoặc cuối của một phần, bạn có thể sử dụng phương pháp [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) và [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) của lớp [Section](https://reference.aspose.com/words/java/com.aspose.words/section/).

Ví dụ mã sau cho thấy cách thêm nội dung của một phần đã tồn tại:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Sao chép một phần

Aspose.Words cho phép bạn nhân bản một phần bằng cách tạo ra một bản sao đầy đủ của nó thông qua phương pháp [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone).

Mã ví dụ sau cho thấy cách để nhân bản phần đầu tiên trong tài liệu của bạn:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Sao chép các đoạn văn bản giữa các tài liệu

Trong một số trường hợp, bạn có thể đã có những tài liệu lớn với nhiều phần và bạn muốn sao chép nội dung của một phần từ một tài liệu sang tài liệu khác.

Aspose.Words cho phép bạn sao chép các phần giữa các tài liệu bằng phương pháp [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean).

Mã ví dụ sau cho thấy cách sao chép các phần giữa các tài liệu:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Làm việc với Tiêu đề và Chân trang

Quy tắc cơ bản cho việc hiển thị tiêu đề hoặc chân trang cho mỗi phần là khá đơn giản:

1. Nếu phần không có tiêu đề chân trang riêng của nó loại nào, sau đó nó được lấy từ phần trước đó.
2. Loại tiêu đề/dây chân trang hiển thị trên trang là do điều khiển bởi các phần cài đặt "Khác nhau trang đầu tiên" và "Khác nhau trang lẻ & chẵn" – nếu chúng bị vô hiệu hóa thì các tiêu đề riêng của nó sẽ không được xem xét.

Mã ví dụ bên dưới cho thấy cách tạo 2 phần với các tiêu đề khác nhau:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Nếu bạn muốn loại bỏ văn bản của tiêu đề và chân trang mà không phải loại bỏ các [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) đối tượng trong tài liệu của mình, bạn có thể sử dụng phương pháp [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters). Ngoài ra, bạn có thể sử dụng phương pháp [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) để xóa tất cả các hình dạng từ tiêu đề và chân trang trong tài liệu của bạn.

Mã ví dụ sau cho thấy cách xóa nội dung của tất cả các tiêu đề và chân trang trong một phần:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Mã ví dụ sau cho thấy cách loại bỏ tất cả hình dạng từ tất cả các tiêu đề, chân trang trong một phần như thế nào:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Tùy chỉnh thuộc tính trang trong một phần

Trước khi in một trang hoặc tài liệu, bạn có thể muốn tùy chỉnh và sửa đổi kích thước và bố cục của một trang đơn lẻ hoặc toàn bộ tài liệu. Với thiết lập trang, bạn có thể thay đổi các cài đặt cho các trang tài liệu như lề, hướng và kích thước để in các trang đầu tiên khác nhau hoặc các trang lẻ.

Aspose.Words cho phép bạn tùy chỉnh thuộc tính trang và phần bằng cách sử dụng lớp [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/).

Mã ví dụ sau cho thấy cách đặt các thuộc tính như kích thước trang và định hướng cho phần này hiện tại:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Mã ví dụ sau cho thấy cách sửa đổi thuộc tính trang trên tất cả các phần:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Xem thêm

- [Logical Levels of Nodes in a Document](/words/java/logical-levels-of-nodes-in-a-document/)
- [Insert and Append Documents](/words/java/insert-and-append-documents/)
