---
title: Chèn Và Nối Thêm Tài liệu vào C++
second_title: Aspose.Words cho C++
articleTitle: Chèn Và Nối Thêm Tài liệu
linktitle: Chèn Và Nối Thêm Tài liệu
description: "Kết hợp các tài liệu thành một: chèn hoặc nối một tài liệu vào một tài liệu mới hoặc hiện có bằng cách sử dụng tìm và thay thế, hợp nhất trường, đánh dấu hoặc đơn giản là ở cuối tài liệu."
type: docs
weight: 80
url: /vi/cpp/insert-and-append-documents/
---

Đôi khi cần phải kết hợp nhiều tài liệu thành một. Bạn có thể thực hiện việc này theo cách thủ công hoặc bạn có thể sử dụng tính năng chèn hoặc nối Aspose.Words.

Thao tác chèn cho phép bạn chèn nội dung của các tài liệu đã tạo trước đó vào một tài liệu mới hoặc hiện có.

Đổi lại, tính năng append cho phép bạn chỉ thêm một tài liệu ở cuối tài liệu khác.

Bài viết này giải thích cách chèn hoặc nối tài liệu vào tài liệu khác theo những cách khác nhau và mô tả các thuộc tính chung mà bạn có thể áp dụng trong khi chèn hoặc nối tài liệu.

## Chèn Tài liệu

Như đã đề cập ở trên, trong Aspose.Words một tài liệu được biểu diễn dưới dạng cây của các nút và hoạt động chèn một tài liệu này vào một tài liệu khác là sao chép các nút từ cây tài liệu đầu tiên sang cái thứ hai.

Bạn có thể chèn tài liệu ở nhiều vị trí khác nhau theo nhiều cách khác nhau. Ví dụ: bạn có thể chèn tài liệu thông qua thao tác thay thế, trường hợp nhất trong thao tác hợp nhất hoặc thông qua dấu trang.

Bạn cũng có thể sử dụng phương thức [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), tương tự như chèn tài liệu vào Microsoft Word, để chèn toàn bộ tài liệu ở vị trí con trỏ hiện tại mà không cần nhập trước đó.

Ví dụ mã sau đây cho thấy cách chèn tài liệu bằng phương thức `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

Các phần phụ sau đây mô tả các tùy chọn trong đó bạn có thể chèn một tài liệu này vào tài liệu khác.

### Chèn Tài liệu Trong Quá trình Tìm Và Thay Thế Thao tác {#insert-a-document-during-find-and-replace-operation}

Bạn có thể chèn tài liệu trong khi thực hiện tìm và thay thế các thao tác. Ví dụ, một tài liệu có thể chứa các đoạn văn với văn bản [INTRODUCTION] và [CONCLUSION]. Nhưng trong tài liệu cuối cùng, bạn cần thay thế các đoạn văn đó bằng nội dung thu được từ một tài liệu bên ngoài khác. Để đạt được điều đó, bạn sẽ cần tạo một trình xử lý cho sự kiện thay thế.

Ví dụ mã sau đây cho thấy cách tạo trình xử lý cho sự kiện thay thế để sử dụng nó sau này trong quá trình chèn:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

Ví dụ mã sau đây cho thấy cách chèn nội dung của tài liệu này vào tài liệu khác trong quá trình tìm và thay thế hoạt động:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Chèn Một Tài Liệu Trong Mail Merge Hoạt động {#insert-a-document-during-mail-merge-operation}

Bạn có thể chèn một tài liệu vào một trường hợp nhất trong một hoạt động mail merge. Ví dụ: mẫu mail merge có thể chứa trường hợp nhất như [Tóm tắt]. Nhưng trong tài liệu cuối cùng, bạn cần chèn nội dung thu được từ một tài liệu bên ngoài khác vào trường hợp nhất này. Để đạt được điều đó, bạn sẽ cần tạo một trình xử lý cho sự kiện hợp nhất.

Ví dụ mã sau đây cho thấy cách tạo trình xử lý cho sự kiện hợp nhất để sử dụng nó sau này trong quá trình chèn:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

Ví dụ mã sau đây cho thấy cách chèn tài liệu vào trường hợp nhất bằng trình xử lý đã tạo:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Chèn Tài liệu tại Dấu Trang

Bạn có thể nhập tệp văn bản vào tài liệu và chèn nó ngay sau dấu trang mà bạn đã xác định trong tài liệu. Để thực hiện việc này, hãy tạo một đoạn được đánh dấu trang nơi bạn muốn chèn tài liệu.

Ví dụ mã hóa sau đây cho thấy cách chèn nội dung của một tài liệu vào dấu trang trong một tài liệu khác:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Lưu ý rằng dấu trang không được kèm theo nhiều đoạn văn hoặc văn bản mà bạn muốn chúng xuất hiện trong tài liệu kết quả cuối cùng của bạn.

{{% /alert %}}

## Nối Thêm Một Tài liệu

Bạn có thể có trường hợp sử dụng trong đó bạn cần bao gồm các trang bổ sung từ tài liệu đến cuối tài liệu hiện có. Để thực hiện việc này, bạn chỉ cần gọi phương thức [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) để thêm tài liệu vào cuối tài liệu khác.

{{% alert color="primary" %}}

Lưu ý rằng [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) là một phương thức cấp nút trong tài liệu. Ví dụ: bạn có thể tạo một đoạn văn, đặt các thuộc tính định dạng, sau đó nối nó khi còn nhỏ vào phần thân bằng phương thức **AppendChild**.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách nối tài liệu vào cuối tài liệu khác:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Nhập Và Chèn Các Nút theo Cách Thủ công {#import-and-insert-nodes-manually}

Aspose.Words cho phép bạn chèn và nối thêm tài liệu tự động mà không cần bất kỳ yêu cầu nhập trước đó. Tuy nhiên, nếu bạn cần chèn hoặc nối thêm một nút cụ thể của tài liệu, chẳng hạn như một phần hoặc một đoạn văn, thì trước tiên bạn cần nhập nút này theo cách thủ công.

Khi bạn cần chèn hoặc nối một phần hoặc đoạn này sang phần khác, về cơ bản bạn cần nhập các nút của cây nút tài liệu đầu tiên vào phần thứ hai bằng phương thức [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). Sau khi nhập các nút của bạn, bạn cần sử dụng phương thức [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) để chèn một nút mới sau/trước nút tham chiếu. Điều này cho phép bạn tùy chỉnh quá trình chèn bằng cách nhập các nút từ tài liệu và chèn nó vào các vị trí đã cho.

Bạn cũng có thể sử dụng phương thức [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) để thêm một nút được chỉ định mới vào cuối danh sách các nút con, ví dụ: nếu bạn muốn nối thêm nội dung ở cấp đoạn thay vì ở cấp phần.

Ví dụ mã sau đây cho thấy cách nhập thủ công các nút và chèn chúng sau một nút cụ thể bằng phương thức **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

Việc nhập tạo một nút mới là bản sao của nút gốc và phù hợp để chèn vào tài liệu đích.

{{% /alert %}}

Nội dung được nhập vào phần tài liệu đích theo từng phần, có nghĩa là các cài đặt, chẳng hạn như thiết lập trang và đầu trang hoặc chân trang, được giữ nguyên trong quá trình nhập. Cũng rất hữu ích khi lưu ý rằng bạn có thể xác định cài đặt định dạng khi chèn hoặc nối thêm tài liệu để chỉ định cách hai tài liệu được nối với nhau.

## Các Thuộc tính phổ biến Để Chèn Và Nối Thêm Tài liệu {#common-properties-for-insert-and-append-documents}

Cả hai [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) và [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) các phương thức chấp nhận [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) và [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) làm tham số đầu vào. **ImportFormatMode** cho phép bạn kiểm soát cách định dạng tài liệu được hợp nhất khi bạn nhập nội dung từ tài liệu này sang tài liệu khác bằng cách chọn các chế độ định dạng khác nhau như [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) và [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). **ImportFormatOptions** cho phép bạn chọn các tùy chọn nhập khác nhau như [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), và [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words cho phép bạn điều chỉnh hình ảnh trực quan của tài liệu kết quả khi hai tài liệu được thêm vào với nhau trong thao tác chèn hoặc nối thêm bằng cách sử dụng thuộc tính [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) và [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). Thuộc tính **PageSetup** chứa tất cả các thuộc tính của một phần như [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), và những người khác. Trường hợp sử dụng phổ biến nhất là đặt thuộc tính **SectionStart** để xác định xem nội dung được thêm vào sẽ xuất hiện trên cùng một trang hay được chia thành một trang mới.

{{% alert color="primary" %}}

Lưu ý rằng các thuộc tính **Section** và **PageSetup** không kiểm soát cách hai tài liệu được chèn/nối với nhau. Chúng chỉ cho phép bạn thay đổi giao diện của tài liệu kết quả của mình.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách nối tài liệu này sang tài liệu khác trong khi vẫn giữ cho nội dung không bị tách trên hai trang:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
