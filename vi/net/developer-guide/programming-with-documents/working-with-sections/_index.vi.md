---
title: Làm việc với các Phần trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với các phần
linktitle: Làm việc với các phần
description: "Hiểu các khái niệm về phần tài liệu và thực hành thao tác bằng C#. Chèn phần vào tài liệu C#. Xóa phần C#. Sao chép các phần giữa các Tài liệu."
type: docs
weight: 120
url: /vi/net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

Đôi khi bạn muốn một tài liệu không có cùng định dạng trên tất cả các trang. Ví dụ: bạn có thể cần sửa đổi định dạng số trang, có kích thước và hướng trang khác nhau hoặc lấy trang tài liệu đầu tiên làm trang bìa mà không đánh số. Bạn có thể đạt được điều đó với các phần.

Phần là các nút cấp độ kiểm soát đầu trang và chân trang, hướng, cột, lề, định dạng số trang và các thứ khác.

Aspose.Words cho phép bạn quản lý các phần, chia tài liệu thành các phần và thực hiện các thay đổi định dạng chỉ áp dụng cho một phần cụ thể. Aspose.Words lưu trữ thông tin về định dạng phần như đầu trang và chân trang, thiết lập trang và cài đặt cột trong phần ngắt.

Bài viết này giải thích cách làm việc với các phần và dấu ngắt phần.

## Phần và ngắt phần là gì

Các phần tài liệu được đại diện bởi các lớp [Section](https://reference.aspose.com/words/net/aspose.words/section/) và [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection). Các đối tượng phần là con trực tiếp của nút [Document](https://reference.aspose.com/words/net/aspose.words/document/) và có thể được truy cập thông qua thuộc tính [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections). Bạn có thể quản lý các nút đó bằng cách sử dụng một số phương pháp như [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) và các phương thức khác.

Ngắt phần là tùy chọn chia trang tài liệu thành các phần có bố cục có thể tùy chỉnh.

## Các loại ngắt phần

Aspose.Words cho phép bạn phân chia và định dạng tài liệu bằng cách sử dụng các ngắt phần khác nhau của bảng liệt kê [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/):

* Phần BreakLiên tục
* Phần BreakNewColumn
* Mục BreakNewPage
* Phần BreakEvenPage
* Phần BreakOddPage

Bạn cũng có thể sử dụng bảng liệt kê [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) để chọn kiểu ngắt chỉ áp dụng cho phần đầu tiên, chẳng hạn như NewColumn, NewPage, EvenPage và OddPage.

## Quản lý một phần

Vì một phần là một nút tổng hợp thông thường nên toàn bộ thao tác nút API có thể được sử dụng để thao tác các phần: thêm, xóa và các thao tác khác trên các phần. Bạn có thể đọc thêm về các nút trong bài viết [Aspose.Words Document Object Model (DOM)](/words/vi/net/aspose-words-document-object-model/).

Mặt khác, bạn cũng có thể sử dụng `DocumentBuilder` API để làm việc với các phần. Trong bài viết này, chúng ta sẽ tập trung vào cách làm việc cụ thể với các phần này.

## Chèn hoặc loại bỏ dấu ngắt phần

Aspose.Words cho phép bạn chèn dấu ngắt phần vào văn bản bằng phương pháp [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/).

Ví dụ mã sau đây cho biết cách chèn dấu ngắt phần vào tài liệu:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Sử dụng phương pháp [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) để xóa dấu ngắt phần. Nếu bạn không cần xóa dấu ngắt phần cụ thể mà thay vào đó xóa nội dung của phần đó, bạn có thể sử dụng phương pháp [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/).

Ví dụ mã sau đây cho thấy cách loại bỏ dấu ngắt phần:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Lưu ý rằng dấu ngắt phần có thông tin về phần đứng trước nó chứ không phải phần đi sau nó. Vì vậy, nếu bạn loại bỏ dấu ngắt phần, văn bản trước dấu ngắt đã xóa sẽ có các thuộc tính của dấu ngắt phần theo sau nó. Điều này có thể khiến toàn bộ tài liệu chuyển sang dạng ngang hoặc đầu trang và chân trang thay đổi hoặc biến mất hoàn toàn.

{{% /alert %}}

## Di chuyển một phần

Nếu bạn muốn di chuyển một phần từ vị trí này sang vị trí khác trong tài liệu của mình, bạn cần lấy chỉ mục của phần đó. Aspose.Words cho phép bạn lấy vị trí phần từ [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) bằng cách sử dụng thuộc tính [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item). Bạn có thể sử dụng thuộc tính [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) để lấy tất cả các phần trong tài liệu của mình. Nhưng nếu bạn chỉ muốn lấy phần đầu tiên, bạn có thể sử dụng thuộc tính [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/).

Ví dụ mã sau đây cho thấy cách truy cập phần đầu tiên và lặp qua các nút con của nút tổng hợp:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Chỉ định bố cục phần

Đôi khi bạn muốn tài liệu của mình trông đẹp hơn bằng cách tạo bố cục sáng tạo cho các phần tài liệu khác nhau. Nếu bạn muốn chỉ định loại lưới phần hiện tại, bạn có thể chọn chế độ bố cục phần bằng cách sử dụng bảng liệt kê [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/):

* Mặc định
* Lưới
* LineGrid
* SnapToChars

Ví dụ mã sau đây cho thấy cách giới hạn số dòng mà mỗi trang có thể có:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Chỉnh sửa một phần

Khi bạn thêm một phần mới vào tài liệu của mình, bạn sẽ không thể chỉnh sửa nội dung hoặc đoạn văn. Aspose.Words cho phép bạn đảm bảo rằng một phần chứa nội dung có ít nhất một đoạn văn bằng phương pháp [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) - nó sẽ tự động thêm nút Nội dung (hoặc HeaderFooter) vào tài liệu và sau đó thêm Đoạn văn vào đó.

Ví dụ về mã sau đây cho thấy cách chuẩn bị nút phần mới bằng **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Nối thêm hoặc thêm vào trước nội dung

Nếu bạn muốn vẽ một số hình dạng hoặc thêm văn bản hoặc hình ảnh vào đầu/cuối một phần, bạn có thể sử dụng các phương thức [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) và [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) của lớp [Section](https://reference.aspose.com/words/net/aspose.words/section/).

Ví dụ mã sau đây cho thấy cách nối thêm nội dung của một phần hiện có:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Sao chép một phần

Aspose.Words cho phép bạn sao chép một phần bằng cách tạo bản sao đầy đủ của phần đó bằng phương pháp [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/).

Ví dụ về mã sau đây cho biết cách sao chép phần đầu tiên trong tài liệu của bạn:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Sao chép các phần giữa các tài liệu

Trong một số trường hợp, bạn có thể có những tài liệu lớn có nhiều phần và bạn muốn sao chép nội dung của một phần từ tài liệu này sang tài liệu khác.

Aspose.Words cho phép bạn sao chép các phần giữa các tài liệu bằng phương pháp [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/).

Ví dụ mã sau đây cho thấy cách sao chép các phần giữa các tài liệu:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Làm việc với phần Header và Footer

Các quy tắc cơ bản để hiển thị đầu trang hoặc chân trang cho mỗi phần khá đơn giản:

1. Nếu phần này không có đầu trang/chân trang riêng thuộc một loại nhất định thì phần đó được lấy từ phần trước.
2. Loại đầu trang/chân trang hiển thị trên trang được kiểm soát bởi cài đặt phần "Trang đầu tiên khác nhau" và "Trang chẵn &amp; lẻ khác nhau" – nếu chúng bị tắt thì tiêu đề của chính phần đó sẽ bị bỏ qua.

Ví dụ mã sau đây cho thấy cách tạo 2 phần có tiêu đề khác nhau:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Nếu bạn muốn xóa văn bản đầu trang và chân trang mà không xóa đối tượng [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) trong tài liệu của mình, bạn có thể sử dụng phương pháp [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). Ngoài ra, bạn có thể sử dụng phương pháp [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) để xóa tất cả các hình dạng khỏi đầu trang và chân trang trong tài liệu của mình.

Ví dụ về mã sau đây cho biết cách xóa nội dung của tất cả đầu trang và chân trang trong một phần:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

Ví dụ về mã sau đây về cách xóa tất cả các hình dạng khỏi tất cả chân trang đầu trang trong một phần:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Tùy chỉnh thuộc tính trang trong một phần

Trước khi in một trang hoặc một tài liệu, bạn có thể muốn tùy chỉnh và sửa đổi kích thước cũng như bố cục của một trang hoặc toàn bộ tài liệu. Với thiết lập trang, bạn có thể thay đổi cài đặt của các trang tài liệu như lề, hướng và kích thước để in các trang đầu tiên hoặc trang lẻ khác nhau.

Aspose.Words cho phép bạn tùy chỉnh các thuộc tính trang và phần bằng lớp [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/).

Ví dụ về mã sau đây cho biết cách đặt các thuộc tính như kích thước trang và hướng cho phần hiện tại:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

Ví dụ mã sau đây cho thấy cách sửa đổi thuộc tính trang trong tất cả các phần:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Xem thêm

* [Mức độ logic của các nút trong tài liệu](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Chèn và nối tài liệu](/words/vi/net/insert-and-append-documents/)

