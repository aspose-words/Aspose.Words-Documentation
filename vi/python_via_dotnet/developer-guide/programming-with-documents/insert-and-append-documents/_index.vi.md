---
title: Chèn và nối tài liệu
second_title: Aspose.Words cho Python via .NET
articleTitle: Chèn và nối tài liệu
linktitle: Chèn và nối tài liệu
description: "Kết hợp tài liệu thành một: chèn hoặc nối tài liệu vào tài liệu mới hoặc hiện có bằng cách sử dụng tìm và thay thế, hợp nhất trường, đánh dấu trang hoặc đơn giản là ở cuối tài liệu trong Python."
type: docs
weight: 80
url: /vi/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Đôi khi cần phải kết hợp nhiều tài liệu thành một. Bạn có thể thực hiện việc này theo cách thủ công hoặc bạn có thể sử dụng tính năng chèn hoặc nối thêm Aspose.Words.

Thao tác chèn cho phép bạn chèn nội dung của tài liệu đã tạo trước đó vào tài liệu mới hoặc hiện có.

Đổi lại, tính năng chắp thêm cho phép bạn chỉ thêm tài liệu vào cuối tài liệu khác.

Bài viết này giải thích cách chèn hoặc nối thêm tài liệu vào tài liệu khác theo nhiều cách khác nhau và mô tả các thuộc tính phổ biến mà bạn có thể áp dụng khi chèn hoặc nối thêm tài liệu.

## Chèn một tài liệu

Như đã đề cập ở trên, trong Aspose.Words một tài liệu được biểu diễn dưới dạng cây các nút và thao tác chèn tài liệu này vào tài liệu khác là sao chép các nút từ cây tài liệu đầu tiên sang cây tài liệu thứ hai.

Bạn có thể chèn tài liệu vào nhiều vị trí khác nhau theo nhiều cách khác nhau. Ví dụ: bạn có thể chèn tài liệu thông qua thao tác thay thế, trường hợp nhất trong thao tác hợp nhất hoặc qua dấu trang.

Bạn cũng có thể sử dụng phương pháp [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) hoặc [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), tương tự như chèn tài liệu bằng Microsoft Word, để chèn toàn bộ tài liệu vào vị trí con trỏ hiện tại mà không cần nhập trước đó.

Ví dụ mã sau đây cho thấy cách chèn tài liệu bằng phương pháp **chèn_tài liệu**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Ví dụ mã sau đây cho thấy cách chèn tài liệu bằng phương pháp **chèn_document_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Các phần phụ sau đây mô tả các tùy chọn trong đó bạn có thể chèn tài liệu này vào tài liệu khác.

### Chèn tài liệu vào Bookmark

Bạn có thể nhập tệp văn bản vào tài liệu và chèn nó ngay sau dấu trang mà bạn đã xác định trong tài liệu. Để thực hiện việc này, hãy tạo một đoạn được đánh dấu nơi bạn muốn chèn tài liệu.

Ví dụ mã hóa sau đây cho thấy cách chèn nội dung của một tài liệu vào dấu trang trong tài liệu khác:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Lưu ý rằng dấu trang không được bao gồm nhiều đoạn văn hoặc văn bản mà bạn muốn chúng xuất hiện trong tài liệu cuối cùng của mình.

{{% /alert %}}

## Nối thêm một tài liệu

Bạn có thể có một trường hợp sử dụng trong đó bạn cần đưa các trang bổ sung từ tài liệu vào cuối tài liệu hiện có. Để thực hiện việc này, bạn chỉ cần gọi phương thức [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) để thêm tài liệu vào cuối tài liệu khác.

{{% alert color="primary" %}}

Lưu ý rằng [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) là một phương thức cấp nút trong tài liệu. Ví dụ: bạn có thể tạo một đoạn văn, đặt các thuộc tính định dạng rồi nối nó dưới dạng đoạn văn con vào nội dung bằng phương pháp [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

Ví dụ mã sau đây cho biết cách nối thêm tài liệu vào cuối tài liệu khác:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Nhập và chèn nút theo cách thủ công

Aspose.Words cho phép bạn chèn và nối tài liệu tự động mà không cần bất kỳ yêu cầu nhập nào trước đó. Tuy nhiên, nếu bạn cần chèn hoặc nối thêm một nút cụ thể trong tài liệu của mình, chẳng hạn như một phần hoặc một đoạn văn, thì trước tiên bạn cần nhập nút này theo cách thủ công.

Khi bạn cần chèn hoặc nối một phần hoặc đoạn văn vào phần khác, về cơ bản bạn cần nhập các nút của cây nút tài liệu đầu tiên vào cây nút thứ hai bằng phương pháp [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). Sau khi nhập các nút của mình, bạn cần sử dụng phương thức [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) để chèn một nút mới sau/trước nút tham chiếu. Điều này cho phép bạn tùy chỉnh quá trình chèn bằng cách nhập các nút từ tài liệu và chèn nó vào các vị trí nhất định.

Bạn cũng có thể sử dụng phương pháp [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) để thêm một nút được chỉ định mới vào cuối danh sách các nút con, ví dụ: nếu bạn muốn nối thêm nội dung ở cấp đoạn văn thay vì ở cấp phần.

Ví dụ về mã sau đây cho thấy cách nhập thủ công các nút và chèn chúng sau một nút cụ thể bằng phương pháp [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Quá trình nhập sẽ tạo một nút mới là bản sao của nút gốc và phù hợp để chèn vào tài liệu đích.

{{% /alert %}}

Nội dung được nhập vào tài liệu đích theo từng phần, có nghĩa là các cài đặt, chẳng hạn như thiết lập trang và đầu trang hoặc chân trang, được giữ nguyên trong quá trình nhập. Cũng hữu ích khi lưu ý rằng bạn có thể xác định cài đặt định dạng khi chèn hoặc nối thêm tài liệu để chỉ định cách hai tài liệu được nối với nhau.

## Thuộc tính chung để chèn và nối tài liệu

Cả hai phương thức [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) và [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) đều chấp nhận [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) và [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) làm tham số đầu vào. [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) cho phép bạn kiểm soát cách hợp nhất định dạng tài liệu khi bạn nhập nội dung từ tài liệu này sang tài liệu khác bằng cách chọn các chế độ định dạng khác nhau như [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) và [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) cho phép bạn chọn các tùy chọn nhập khác nhau như [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) và [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words cho phép bạn điều chỉnh trực quan hóa tài liệu kết quả khi hai tài liệu được thêm vào cùng nhau trong thao tác chèn hoặc nối thêm bằng cách sử dụng [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) và [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). Thuộc tính [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) chứa tất cả các thuộc tính của một phần như [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) và các thuộc tính khác. Trường hợp sử dụng phổ biến nhất là đặt thuộc tính [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) để xác định xem nội dung được thêm sẽ xuất hiện trên cùng một trang hay được chia thành một trang mới.

{{% alert color="primary" %}}

Lưu ý rằng [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) và [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) không kiểm soát cách hai tài liệu được chèn/nối với nhau. Họ chỉ cho phép bạn thay đổi giao diện của tài liệu kết quả của bạn.

{{% /alert %}}

Ví dụ về mã sau đây cho thấy cách nối một tài liệu này vào một tài liệu khác trong khi vẫn giữ cho nội dung không bị chia thành hai trang:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
