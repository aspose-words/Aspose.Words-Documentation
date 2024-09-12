---
title: Chuyển đổi một tài liệu thành Markdown trong Java
second_title: Aspose.Words cho Java
articleTitle: Chuyển đổi một tài liệu thành Markdown
linktitle: Chuyển đổi một tài liệu thành Markdown
type: docs
description: "Chuyển đổi một tài liệu ở định dạng nào được hỗ trợ sang Markdown và ngược lại bằng cách sử dụng Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /vi/java/convert-a-document-to-markdown/
---

Markdown là một định dạng phổ biến được sử dụng để đánh dấu văn bản và nó được chuyển đổi tiếp theo thành HTML, PDF, DOCX hoặc các định dạng khác. Nhiều nhà phát triển chọn định dạng này cho việc viết tài liệu, chuẩn bị bài viết để xuất bản trên blog, mô tả dự án,... và nhiều hơn nữa.

Markdown rất được ưa chuộng vì nó thật dễ làm việc với định dạng này, cũng như nó có thể chuyển đổi khá đơn giản vào các định dạng khác. Vì lý do đó, Aspose.Words cung cấp khả năng chuyển đổi một tài liệu trong [any supported load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) thành Markdown và ngược lại - Aspose.Words cũng hỗ trợ các định dạng phổ biến nhất [save formats](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Bây giờ khả năng hoạt động với định dạng Markdown đang được phát triển tích cực để cung cấp cho bạn nhiều cơ hội hơn về việc làm việc tiện lợi và thoải mái với các tài liệu.

## Đổi một tài liệu thành Markdown

Để chuyển đổi một tài liệu sang Markdown, bạn chỉ cần tải một tài liệu ở bất kỳ định dạng nào được hỗ trợ hoặc tạo ra một tài liệu mới một cách lập trình. Sau đó bạn cần lưu tài liệu ở định dạng Markdown.

Mã ví dụ dưới đây cho thấy cách chuyển đổi từ DOCX sang Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Chỉ định Tùy chọn Lưu khi Chuyển đổi sang Markdown

Aspose.Words cung cấp khả năng sử dụng lớp [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) để làm việc với các tùy chọn nâng cao khi lưu một tài liệu theo định dạng Markdown. Ngoài các thuộc tính thừa kế hoặc ghi đè khác, một số thuộc tính riêng của định dạng Markdown cũng đã được thêm vào. Ví dụ, thuộc tính [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) để điều khiển việc căn chỉnh nội dung trong bảng hoặc [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) và [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) để điều khiển cách hình ảnh được lưu khi chuyển đổi một tài liệu sang định dạng Markdown.

## Tính năng hỗ trợ Markdown

Aspose.Words hiện đang hỗ trợ các tính năng Markdown sau, chủ yếu tuân theo `CommonMark` thông số trong Aspose.Words API và được thể hiện dưới dạng các kiểu hoặc định dạng trực tiếp thích hợp:

* Tiêu đề là các đoạn văn có kiểu từ tiêu đề 1 đến tiêu đề 6
"* Blockquotes là những đoạn văn có "Trích dẫn" trong tên kiểu
"* Mã được thụt lề là các đoạn với "Mã được thụt lề" trong tên phong cách"
* Mã Fenced là các đoạn văn bản với "FencedCode" trong tên kiểu
* InlineCode là chạy với "InlineCode" trong tên phong cách `Font`
* Quy tắc ngang là các đoạn văn với hình dạng `HorizontalRule`
* In đậm
* Đánh dấu nghiêng
"* Đánh dấu qua định dạng"
* Danh sách là các đoạn văn được đánh số hoặc gạch đầu dòng
* Bảng được đại diện với lớp `Table`
* Các liên kết được đại diện bởi lớp `FieldHyperlink`

Ví dụ dưới đây cho thấy cách tạo một tài liệu với một số phong cách và lưu nó vào Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Kết quả của ví dụ mã này được hiển thị bên dưới.

![markdown-example-aspose-words-java](markdown-example.png)

## Những Mẹo Hữu ích

Có nhiều nhược điểm và các trường hợp thú vị, đã học được những bạn có thể làm việc với Markdown tập tin linh hoạt và tiện dụng hơn. Ví dụ như có khả năng sử dụng:

* SetextHeading cho phép bạn tạo các tiêu đề đa dòng trong Markdown, trong khi các tiêu đề thông thường trong Markdown chỉ có thể là dòng đơn. SetextHeading dựa trên một kiểu "Heading N", và mức của nó chỉ có thể là 1 hoặc 2. Nếu N trong "Đặt tiêu đề N" lớn hơn hoặc bằng 2, thì tiêu đề SetextHeading tương ứng dựa trên "Tiêu đề 2", nếu không dựa trên "Tiêu đề 1".
* Các dấu khác nhau cho mức đầu tiên của các danh sách không có thứ tự ("-", "+" hoặc "*", dấu đánh chỉ mặc định là "-".) và các loại số khác nhau cho các danh sách được sắp xếp theo ("." hoặc ")", dấu đánh chỉ mặc định là ".").
