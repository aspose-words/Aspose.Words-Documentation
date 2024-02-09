---
title: Chèn và nối tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chèn và nối tài liệu
linktitle: Chèn và nối tài liệu
description: "Kết hợp tài liệu thành một: chèn hoặc nối tài liệu vào tài liệu mới hoặc hiện có bằng cách sử dụng tìm và thay thế, hợp nhất trường, đánh dấu trang hoặc đơn giản là ở cuối tài liệu trong C#."
type: docs
weight: 80
url: /vi/net/insert-and-append-documents/
---

Đôi khi cần phải kết hợp nhiều tài liệu thành một. Bạn có thể thực hiện việc này theo cách thủ công hoặc bạn có thể sử dụng tính năng chèn hoặc nối thêm Aspose.Words.

Thao tác chèn cho phép bạn chèn nội dung của tài liệu đã tạo trước đó vào tài liệu mới hoặc hiện có.

Đổi lại, tính năng chắp thêm cho phép bạn chỉ thêm tài liệu vào cuối tài liệu khác.

Bài viết này giải thích cách chèn hoặc nối thêm tài liệu vào tài liệu khác theo nhiều cách khác nhau và mô tả các thuộc tính phổ biến mà bạn có thể áp dụng khi chèn hoặc nối thêm tài liệu.

## Chèn tài liệu {#insert-a-document}

Như đã đề cập ở trên, trong Aspose.Words một tài liệu được biểu diễn dưới dạng cây các nút và thao tác chèn tài liệu này vào tài liệu khác là sao chép các nút từ cây tài liệu đầu tiên sang cây tài liệu thứ hai.

Bạn có thể chèn tài liệu vào nhiều vị trí khác nhau theo nhiều cách khác nhau. Ví dụ: bạn có thể chèn tài liệu thông qua thao tác thay thế, trường hợp nhất trong thao tác hợp nhất hoặc qua dấu trang.

Bạn cũng có thể sử dụng phương pháp [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) hoặc [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/), tương tự như chèn tài liệu bằng Microsoft Word, để chèn toàn bộ tài liệu vào vị trí con trỏ hiện tại mà không cần nhập trước đó.

Ví dụ mã sau đây cho thấy cách chèn tài liệu bằng phương pháp **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Ví dụ mã sau đây cho thấy cách chèn tài liệu bằng phương pháp **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Các phần phụ sau đây mô tả các tùy chọn trong đó bạn có thể chèn tài liệu này vào tài liệu khác.

### Chèn tài liệu trong thao tác tìm và thay thế {#insert-a-document-during-find-and-replace-operation}

Bạn có thể chèn tài liệu trong khi thực hiện các thao tác tìm và thay thế. Ví dụ: một tài liệu có thể chứa các đoạn văn có nội dung [GIỚI THIỆU] và [KẾT LUẬN]. Nhưng trong tài liệu cuối cùng, bạn cần thay thế những đoạn văn đó bằng nội dung thu được từ một tài liệu bên ngoài khác. Để đạt được điều đó, bạn sẽ cần tạo một trình xử lý cho sự kiện thay thế.

Ví dụ về mã sau đây cho thấy cách tạo trình xử lý cho sự kiện thay thế để sử dụng nó sau này trong quá trình chèn:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Ví dụ về mã sau đây cho thấy cách chèn nội dung của một tài liệu vào một tài liệu khác trong thao tác tìm và thay thế:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Chèn tài liệu trong quá trình thao tác Mail Merge {#insert-a-document-during-mail-merge-operation}

Bạn có thể chèn tài liệu vào trường hợp nhất trong thao tác mail merge. Ví dụ: mẫu mail merge có thể chứa trường hợp nhất, chẳng hạn như [Tóm tắt]. Nhưng trong tài liệu cuối cùng, bạn cần chèn nội dung thu được từ một tài liệu bên ngoài khác vào trường hợp nhất này. Để đạt được điều đó, bạn sẽ cần tạo một trình xử lý cho sự kiện hợp nhất.

Ví dụ về mã sau đây cho thấy cách tạo trình xử lý cho sự kiện hợp nhất để sử dụng nó sau này trong quá trình chèn:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Ví dụ mã sau đây cho biết cách chèn tài liệu vào trường hợp nhất bằng trình xử lý đã tạo:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Chèn tài liệu vào Bookmark {#insert-a-document-at-bookmark}

Bạn có thể nhập tệp văn bản vào tài liệu và chèn nó ngay sau dấu trang mà bạn đã xác định trong tài liệu. Để thực hiện việc này, hãy tạo một đoạn được đánh dấu nơi bạn muốn chèn tài liệu.

Ví dụ mã hóa sau đây cho thấy cách chèn nội dung của một tài liệu vào dấu trang trong tài liệu khác:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Lưu ý rằng dấu trang không được bao gồm nhiều đoạn văn hoặc văn bản mà bạn muốn chúng xuất hiện trong tài liệu cuối cùng của mình.

{{% /alert %}}

## Nối thêm tài liệu {#append-a-document}

Bạn có thể có một trường hợp sử dụng trong đó bạn cần đưa các trang bổ sung từ tài liệu vào cuối tài liệu hiện có. Để thực hiện việc này, bạn chỉ cần gọi phương thức [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) để thêm tài liệu vào cuối tài liệu khác.

{{% alert color="primary" %}}

Lưu ý rằng [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) là một phương thức cấp nút trong tài liệu. Ví dụ: bạn có thể tạo một đoạn văn, đặt các thuộc tính định dạng, sau đó nối nó dưới dạng đoạn văn con vào nội dung bằng phương pháp **AppendChild**.

{{% /alert %}}

Ví dụ mã sau đây cho biết cách nối thêm tài liệu vào cuối tài liệu khác:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Nhập và chèn nút thủ công {#import-and-insert-nodes-manually}

Aspose.Words cho phép bạn chèn và nối tài liệu tự động mà không cần bất kỳ yêu cầu nhập nào trước đó. Tuy nhiên, nếu bạn cần chèn hoặc nối thêm một nút cụ thể trong tài liệu của mình, chẳng hạn như một phần hoặc một đoạn văn, thì trước tiên bạn cần nhập nút này theo cách thủ công.

Khi bạn cần chèn hoặc nối một phần hoặc đoạn văn vào phần khác, về cơ bản bạn cần nhập các nút của cây nút tài liệu đầu tiên vào cây nút thứ hai bằng phương pháp [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/). Sau khi nhập các nút của mình, bạn cần sử dụng phương thức [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) để chèn một nút mới sau/trước nút tham chiếu. Điều này cho phép bạn tùy chỉnh quá trình chèn bằng cách nhập các nút từ tài liệu và chèn nó vào các vị trí nhất định.

Bạn cũng có thể sử dụng phương pháp [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) để thêm một nút được chỉ định mới vào cuối danh sách các nút con, ví dụ: nếu bạn muốn nối thêm nội dung ở cấp đoạn văn thay vì ở cấp phần.

Ví dụ về mã sau đây cho thấy cách nhập thủ công các nút và chèn chúng sau một nút cụ thể bằng phương pháp **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

Quá trình nhập sẽ tạo một nút mới là bản sao của nút gốc và phù hợp để chèn vào tài liệu đích.

{{% /alert %}}

Nội dung được nhập vào tài liệu đích theo từng phần, có nghĩa là các cài đặt, chẳng hạn như thiết lập trang và đầu trang hoặc chân trang, được giữ nguyên trong quá trình nhập. Cũng hữu ích khi lưu ý rằng bạn có thể xác định cài đặt định dạng khi chèn hoặc nối thêm tài liệu để chỉ định cách hai tài liệu được nối với nhau.

## Thuộc tính chung để chèn và nối tài liệu {#common-properties-for-insert-and-append-documents}

Cả hai phương thức [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) và [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) đều chấp nhận [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) và [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) làm tham số đầu vào. **ImportFormatMode** cho phép bạn kiểm soát cách hợp nhất định dạng tài liệu khi bạn nhập nội dung từ tài liệu này sang tài liệu khác bằng cách chọn các chế độ định dạng khác nhau như [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/) và [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). **ImportFormatOptions** cho phép bạn chọn các tùy chọn nhập khác nhau, chẳng hạn như [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) và [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words cho phép bạn điều chỉnh trực quan hóa tài liệu kết quả khi hai tài liệu được thêm vào cùng nhau trong thao tác chèn hoặc nối thêm bằng cách sử dụng thuộc tính [Section](https://reference.aspose.com/words/net/aspose.words/section/) và [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/). Thuộc tính **PageSetup** chứa tất cả các thuộc tính của một phần như [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) và các thuộc tính khác. Trường hợp sử dụng phổ biến nhất là đặt thuộc tính **SectionStart** để xác định xem nội dung được thêm vào sẽ xuất hiện trên cùng một trang hay được chia thành một trang mới.

{{% alert color="primary" %}}

Lưu ý rằng thuộc tính **Section** và **PageSetup** không kiểm soát cách hai tài liệu được chèn/nối với nhau. Họ chỉ cho phép bạn thay đổi giao diện của tài liệu kết quả của bạn.

{{% /alert %}}

Ví dụ về mã sau đây cho thấy cách nối một tài liệu này vào một tài liệu khác trong khi vẫn giữ cho nội dung không bị chia thành hai trang:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
