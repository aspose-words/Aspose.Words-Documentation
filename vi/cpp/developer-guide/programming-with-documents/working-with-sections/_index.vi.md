---
title: Làm Việc Với Các Phần trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Các Phần
linktitle: Làm Việc Với Các Phần
description: "Hiểu các khái niệm phần tài liệu và thực hành thao tác bằng cách sử dụng C++. Chèn phần vào tài liệu C++. Xóa phần C++. Sao chép các phần Giữa Các Tài liệu."
type: docs
weight: 120
url: /vi/cpp/working-with-sections/
---

Đôi khi bạn muốn một tài liệu không có cùng định dạng trên tất cả các trang. Ví dụ: bạn có thể cần sửa đổi định dạng số trang, có kích thước và hướng trang khác nhau hoặc có trang tài liệu đầu tiên làm trang bìa mà không cần đánh số. Bạn có thể đạt được điều đó với các phần.

Các phần là các nút cấp điều khiển đầu trang và chân trang, hướng, cột, lề, định dạng số trang và các nút khác.

Aspose.Words cho phép bạn quản lý các phần, chia tài liệu thành các phần và thực hiện các thay đổi định dạng chỉ áp dụng cho một phần cụ thể. Aspose.Words lưu trữ thông tin về định dạng phần như tiêu đề và chân trang, thiết lập trang và cài đặt cột trong phần ngắt.

Bài viết này giải thích cách làm việc với các phần và phần ngắt.

## Ngắt Phần Và Phần là gì

Các phần tài liệu được đại diện bởi các lớp [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) và [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Các đối tượng phần là con ngay lập tức của nút [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) và có thể được truy cập thông qua thuộc tính [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). Bạn có thể quản lý các nút đó bằng cách sử dụng một số phương pháp như[Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), và những người khác.

Ngắt phần là một tùy chọn chia các trang tài liệu thành các phần với bố cục có thể tùy chỉnh.

## Các Loại Ngắt Phần

Aspose.Words cho phép bạn phân chia và định dạng tài liệu bằng cách sử dụng các ngắt phần khác nhau của liệt kê [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Bạn cũng có thể sử dụng liệt kê [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) để chọn kiểu ngắt chỉ áp dụng cho phần đầu tiên chẳng hạn như NewColumn, NewPage, EvenPage, và OddPage.

## Quản lý Một Phần

Vì một phần là một nút tổng hợp bình thường, toàn bộ thao tác nút API có thể được sử dụng để thao tác các phần: để thêm, xóa và các thao tác khác trên các phần. Bạn có thể đọc thêm về các nút trong bài viết [Aspose.Words Mô Hình Đối Tượng Tài Liệu (DOM)](/words/cpp/aspose-words-document-object-model/).

Mặt khác, bạn cũng có thể sử dụng `DocumentBuilder` API để làm việc với các phần. Trong bài viết này, chúng tôi sẽ tập trung vào cách làm việc cụ thể này với các phần.

## Chèn hoặc Xóa Ngắt Phần

Aspose.Words cho phép bạn chèn một đoạn ngắt vào văn bản bằng phương thức [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

Ví dụ mã sau đây cho thấy cách chèn một phần đột nhập vào tài liệu:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Sử dụng phương thức [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) để xóa ngắt phần. Nếu bạn không cần xóa một ngắt phần cụ thể và thay vào đó xóa nội dung của phần đó, bạn có thể sử dụng phương thức [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

Ví dụ mã sau đây cho thấy cách xóa các phần ngắt:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Lưu ý rằng ngắt phần có thông tin về phần đi trước nó, không phải phần đi sau nó. Vì vậy, nếu bạn xóa ngắt phần, văn bản trước ngắt đã xóa sẽ nhận được các thuộc tính của ngắt phần theo sau nó. Điều này có thể khiến toàn bộ tài liệu trở thành phong cảnh hoặc đầu trang và chân trang thay đổi hoặc biến mất hoàn toàn.

{{% /alert %}}

## Di chuyển Một Phần

Nếu bạn muốn di chuyển một phần từ vị trí này sang vị trí khác trong tài liệu của mình, bạn cần lấy chỉ mục của phần đó. Aspose.Words cho phép bạn để có được một vị trí phần từ một [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Bạn có thể sử dụng thuộc tính [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) để lấy tất cả các phần trong tài liệu của mình. Nhưng nếu bạn chỉ muốn nhận phần đầu tiên, bạn có thể sử dụng thuộc tính [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

Ví dụ mã sau đây cho thấy cách truy cập phần đầu tiên và lặp qua các con của một nút tổng hợp:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Chỉ Định Bố Cục Phần

Đôi khi bạn muốn tài liệu của mình trông đẹp hơn bằng cách tạo bố cục sáng tạo cho các phần tài liệu khác nhau. Nếu bạn muốn chỉ định loại lưới phần hiện tại, bạn có thể chọn chế độ bố cục phần bằng cách sử dụng liệt kê [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- Mặc định
- Lưới điện
- LineGrid
- SnapToChars

Ví dụ mã sau đây cho thấy cách giới hạn số dòng mà mỗi trang có thể có:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Chỉnh sửa Một Phần

Khi bạn thêm một phần mới vào tài liệu của mình, sẽ không có phần nội dung hoặc đoạn nào mà bạn có thể chỉnh sửa. Aspose.Words cho phép bạn đảm bảo rằng một phần chứa nội dung có ít nhất một đoạn bằng phương thức [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) – nó sẽ tự động thêm Nút Nội Dung (hoặc HeaderFooter) vào tài liệu và sau đó thêm Một Đoạn vào đó.

Ví dụ mã sau đây cho thấy cách chuẩn bị một nút phần mới bằng **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Thêm Hoặc Thêm Nội dung

Nếu bạn muốn vẽ một số hình dạng hoặc thêm văn bản hoặc hình ảnh ở đầu/cuối phần, bạn có thể sử dụng phương thức [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) và [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) của lớp [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

Ví dụ mã sau đây cho thấy cách nối thêm nội dung của một phần hiện có:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Sao chép Một Phần

Aspose.Words cho phép bạn sao chép một phần bằng cách tạo một bản sao đầy đủ của nó bằng phương thức [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

Ví dụ mã sau đây cho thấy cách sao chép phần đầu tiên trong tài liệu của bạn:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Sao Chép Các Phần Giữa Các Tài liệu

Trong một số trường hợp, bạn có thể có các tài liệu lớn với nhiều phần và bạn muốn sao chép nội dung của một phần từ tài liệu này sang tài liệu khác.

Aspose.Words cho phép bạn sao chép các phần giữa các tài liệu bằng phương thức [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

Ví dụ mã sau đây cho thấy cách sao chép các phần giữa các tài liệu:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Làm việc Với Phần Header và Footer

Các quy tắc cơ bản để hiển thị đầu trang hoặc chân trang cho mỗi phần khá đơn giản:

1. Nếu phần không có đầu trang/chân trang riêng của một loại nhất định, thì nó được lấy từ phần trước.
2. Loại tiêu đề / chân trang được hiển thị trên trang được điều khiển bởi cài đặt phần "Trang Đầu Tiên Khác Nhau" và "Trang Lẻ & chẵn Khác nhau" – nếu chúng bị vô hiệu hóa, thì tiêu đề của phần đó sẽ bị bỏ qua.

Ví dụ mã sau đây cho thấy cách tạo các phần 2 với các tiêu đề khác nhau:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Nếu bạn muốn xóa văn bản của đầu trang và chân trang mà không xóa các đối tượng [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) trong tài liệu của mình, bạn có thể sử dụng phương thức [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). Ngoài ra, bạn có thể sử dụng phương thức [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) để xóa tất cả các hình dạng khỏi đầu trang và chân trang trong tài liệu của mình.

Ví dụ mã sau đây cho thấy cách xóa nội dung của tất cả các tiêu đề và chân trang trong một phần:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

Ví dụ mã sau cách xóa tất cả các hình dạng khỏi tất cả các tiêu đề chân trang trong một phần:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Tùy Chỉnh Thuộc Tính Trang Trong Một Phần

Trước khi in một trang hoặc một tài liệu, bạn có thể muốn tùy chỉnh và sửa đổi kích thước và bố cục của một trang hoặc toàn bộ tài liệu. Với thiết lập trang, bạn có thể thay đổi cài đặt của các trang tài liệu như lề, hướng và kích thước để in các trang đầu tiên khác nhau hoặc các trang lẻ.

Aspose.Words cho phép bạn tùy chỉnh thuộc tính trang và phần bằng cách sử dụng lớp [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

Ví dụ mã sau đây cho thấy cách đặt các thuộc tính như kích thước trang và hướng cho phần hiện tại:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Ví dụ mã sau đây cho thấy cách sửa đổi thuộc tính trang trong tất cả các phần:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Xem Thêm

- [Mức độ logic Của Các Nút trong Một Tài liệu](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Chèn Và Nối Thêm Tài liệu](/words/cpp/insert-and-append-documents/)