---
title: Chèn và Thêm Tài liệu trong Java
second_title: Aspose.Words dành cho Java
articleTitle: Chèn và Thêm Tài liệu
linktitle: Chèn và Thêm Tài liệu
description: "Kết hợp tài liệu thành một: chèn hoặc nối thêm một tài liệu vào một tài liệu mới hoặc hiện có bằng cách sử dụng tìm và thay thế, kết hợp trường, dấu sách hoặc đơn giản là tại cuối tài liệu trong Java."
type: docs
weight: 80
url: /vi/java/insert-and-append-documents/
---

Đôi khi cần kết hợp vài tài liệu thành một. Bạn có thể thực hiện việc này một cách thủ công hoặc bạn có thể sử dụng tính năng Aspose.Words chèn hoặc nối đuôi.

Hành động chèn cho phép bạn chèn nội dung của các tài liệu trước đó đã được tạo vào một tài liệu mới hoặc hiện có.

Trong khi đó, tính năng thêm vào cho phép bạn thêm một tài liệu chỉ ở cuối của một tài liệu khác.

Bài viết này giải thích cách chèn hoặc nối một tài liệu vào tài liệu khác theo nhiều cách và mô tả các thuộc tính thông dụng mà bạn có thể áp dụng khi chèn hoặc nối các tài liệu.

## Chèn Tài liệu

Như đã đề cập ở trên, trong Aspose.Words một tài liệu được đại diện dưới dạng cây của các nút, và hoạt động chèn một tài liệu vào một tài liệu khác là sao chép các nút từ cây tài liệu đầu tiên sang cái thứ hai.

Bạn có thể chèn tài liệu ở nhiều vị trí khác nhau theo các cách khác nhau. Ví dụ, bạn có thể chèn một tài liệu thông qua một thao tác thay thế, một trường kết hợp trong một thao tác kết hợp hoặc qua một dấu hiệu sách.

Bạn cũng có thể dùng phương pháp [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) hoặc [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) tương tự như chèn một tài liệu vào Microsoft Word để chèn toàn bộ tài liệu tại vị trí con trỏ hiện tại mà không cần nhập trước.

Mã ví dụ sau cho thấy cách chèn một tài liệu bằng phương pháp **InsertDocument**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Ví dụ về mã sau cho thấy cách chèn một tài liệu bằng phương pháp **InsertDocumentInline**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Các tiểu mục sau mô tả các lựa chọn mà bạn có thể chèn một tài liệu vào tài liệu khác.

### Chèn tài liệu trong quá trình Tìm và Thay thế {#insert-a-document-during-find-and-replace-operation}

Bạn có thể chèn tài liệu trong khi thực hiện các thao tác tìm và thay thế. Ví dụ, một tài liệu có thể chứa các đoạn văn với văn bản "[MỞ ĐẦU]" và "[KẾT THÚC]. Nhưng trong bản tài liệu cuối cùng, bạn cần thay thế những đoạn văn đó bằng nội dung được lấy từ một tài liệu bên ngoài khác. Để đạt được điều đó, bạn sẽ cần phải tạo một người xử lý cho sự kiện thay thế.

Ví dụ về mã sau cho thấy cách tạo một trình xử lý cho sự kiện thay thế để sử dụng nó sau trong quá trình chèn:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Ví dụ mã sau cho thấy cách chèn nội dung của một tài liệu vào tài liệu khác trong quá trình tìm và thay thế:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Chèn tài liệu trong quá trình Mail Merge hoạt động {#insert-a-document-during-mail-merge-operation}

Bạn có thể chèn một tài liệu vào trường hợp kết hợp trong một mail merge hoạt động. Ví dụ một mẫu mail merge có thể chứa một trường kết hợp như [Tóm tắt]. Nhưng trong tài liệu cuối cùng, bạn cần chèn nội dung được lấy từ một tài liệu bên ngoài khác vào trường kết hợp này. Để đạt được điều đó, bạn cần tạo một xử lý cho sự kiện hợp nhất.

Ví dụ mã sau cho thấy cách tạo một trình xử lý cho sự kiện hợp nhất để sử dụng nó sau trong quá trình chèn":

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Mẫu mã sau cho thấy cách chèn một tài liệu vào trường kết hợp bằng cách sử dụng bộ xử lý được tạo ra:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Nhập tài liệu tại đánh dấu

Bạn có thể nhập một tập tin văn bản vào một tài liệu và chèn nó ngay sau một dấu trang mà bạn đã xác định trong tài liệu đó. Để làm điều này, hãy tạo một đoạn văn được đánh dấu nơi bạn muốn tài liệu được chèn vào.

Mã ví dụ dưới đây cho thấy cách chèn nội dung của một tài liệu vào dấu đánh chỉ trang trong một tài liệu khác:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Lưu ý rằng dấu trang nên không bao gồm nhiều đoạn văn hoặc văn bản mà bạn muốn chúng xuất hiện trong tài liệu cuối cùng của bạn.

{{% /alert %}}

## Thêm một tài liệu

Bạn có thể có trường hợp sử dụng trong đó bạn cần bao gồm thêm các trang từ một tài liệu đến cuối một tài liệu hiện có. Để làm điều này, bạn chỉ cần gọi phương thức [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) để thêm một tài liệu vào cuối của một tài liệu khác.

{{% alert color="primary" %}}

Lưu ý rằng [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) là phương pháp cấp nút trong một tài liệu. Ví dụ như bạn có thể tạo một đoạn văn, thiết lập các thuộc tính định dạng, và sau đó đính kèm nó như một con cái của phần thân bằng phương thức **AppendChild**.

{{% /alert %}}

Mã ví dụ sau cho thấy cách kết nối một tài liệu vào cuối một tài liệu khác:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Nhập và chèn nút thủ công {#import-and-insert-nodes-manually}

Aspose.Words cho phép bạn chèn và đính kèm các tài liệu tự động mà không cần bất kỳ yêu cầu nhập trước nào. Tuy nhiên, nếu bạn cần chèn hoặc nối tiếp một nút cụ thể trong tài liệu của mình, chẳng hạn như một phần hoặc một đoạn, sau đó trước tiên bạn cần nhập nút này theo cách thủ công.

Khi bạn cần chèn hoặc nối thêm một phần đoạn hoặc câu vào một phần khác, bản thân bạn cần nhập các nút của cây nút tài liệu đầu tiên vào thứ hai bằng phương pháp [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean). Sau khi nhập các node của bạn, bạn cần phải dùng phương thức [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) để chèn một node mới sau/trước node tham chiếu. Điều này cho phép bạn tùy chỉnh quá trình chèn bằng cách nhập các node từ một tài liệu và chèn nó ở vị trí được chỉ định.

Bạn cũng có thể sử dụng phương pháp [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) để thêm một nút mới được chỉ định vào cuối danh sách các nút con, ví dụ, nếu bạn muốn nối tiếp nội dung ở mức đoạn văn thay vì ở mức mục nhập.

Mã ví dụ sau cho thấy cách nhập thủ công các nút và chèn chúng sau một nút cụ thể sử dụng phương pháp **InsertAfter**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

Việc nhập tạo ra một nút mới là bản sao của nút ban đầu và phù hợp để chèn vào tài liệu đích.

{{% /alert %}}

Nội dung được nhập vào phần tài liệu đích từng phần, có nghĩa là các cài đặt như bố cục trang và tiêu đề hoặc chân trang, vẫn được giữ lại trong quá trình nhập. Bạn cũng có thể ghi chú rằng bạn có thể định nghĩa các cài đặt định dạng khi chèn hoặc thêm một tài liệu để chỉ định cách hai tài liệu được kết nối với nhau.

## Thuộc tính chung cho việc chèn và thêm tài liệu {#common-properties-for-insert-and-append-documents}

Cả [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) và [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) phương pháp đều chấp nhận [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) và [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) làm tham số đầu vào. Cụm từ **ImportFormatMode** cho phép bạn kiểm soát cách định dạng tài liệu được kết hợp khi bạn nhập nội dung từ một tài liệu vào tài liệu khác bằng cách chọn các chế độ định dạng khác nhau như [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) và [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). The **ImportFormatOptions** cho phép bạn chọn các tùy chọn nhập khác nhau như [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists) và [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words cho phép bạn điều chỉnh hình thức hiển thị của một tài liệu kết quả khi hai tài liệu được cộng lại trong một hoạt động chèn hoặc nối thêm bằng cách sử dụng các thuộc tính [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) và [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/). Cái thuộc tính **PageSetup** chứa tất cả các đặc điểm của một phần như [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation) và những cái khác. Trường hợp phổ biến nhất là đặt thuộc tính **SectionStart** để xác định nội dung được thêm vào sẽ hiển thị trên cùng một trang hay chia tách thành một trang mới.

{{% alert color="primary" %}}

Lưu ý rằng các thuộc tính **Section** và **PageSetup** không kiểm soát cách hai tài liệu được chèn/thêm vào nhau. Họ chỉ cho phép bạn thay đổi hình dạng của tài liệu kết quả của bạn.

{{% /alert %}}

Ví dụ mã sau cho thấy cách nối một tài liệu với một tài liệu khác trong khi giữ nội dung không bị chia trên hai trang:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
