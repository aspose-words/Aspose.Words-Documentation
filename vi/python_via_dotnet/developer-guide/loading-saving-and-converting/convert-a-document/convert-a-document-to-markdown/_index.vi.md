---
title: Chuyển đổi tài liệu sang Markdown
second_title: Aspose.Words cho Python via .NET
articleTitle: Chuyển đổi tài liệu sang Markdown
linktitle: Chuyển đổi tài liệu sang Markdown
type: docs
description: "Chuyển đổi tài liệu ở bất kỳ định dạng tải được hỗ trợ nào sang Markdown và ngược lại bằng Python."
keywords: how to convert a document to markdown python
weight: 40
url: /vi/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown là định dạng phổ biến được sử dụng để đánh dấu văn bản và chuyển đổi sang HTML, PDF, DOCX hoặc các định dạng khác. Nhiều nhà phát triển chọn định dạng này để viết tài liệu, chuẩn bị bài viết để xuất bản trên blog, mô tả dự án, v.v.

Markdown rất phổ biến vì nó dễ dàng làm việc với định dạng này và nó có thể được chuyển đổi khá đơn giản sang các định dạng khác. Vì lý do này, Aspose.Words cung cấp khả năng chuyển đổi tài liệu ở dạng [mọi định dạng tải được hỗ trợ](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) sang Markdown và ngược lại – Aspose.Words cũng hỗ trợ hầu hết [lưu định dạng](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) phổ biến.

Giờ đây, chức năng làm việc với định dạng Markdown đang được tích cực phát triển để mang đến cho bạn nhiều cơ hội làm việc với tài liệu thuận tiện và thoải mái hơn.

## Chuyển đổi một tài liệu

Để chuyển đổi tài liệu sang Markdown, bạn chỉ cần tải tài liệu ở bất kỳ định dạng nào được hỗ trợ hoặc tạo tài liệu mới theo chương trình. Sau đó, bạn cần lưu tài liệu sang định dạng Markdown.

Ví dụ mã sau đây cho thấy cách chuyển đổi DOCX sang Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Bạn cũng có thể chỉ định thư mục vật lý mà bạn muốn lưu hình ảnh khi xuất tài liệu sang định dạng Markdown. Theo mặc định, Aspose.Words lưu hình ảnh trong cùng thư mục nơi lưu tệp tài liệu, nhưng bạn có thể ghi đè hành vi này bằng thuộc tính [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

Việc chỉ định thư mục qua [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) cũng hữu ích nếu bạn lưu tài liệu vào luồng và Aspose.Words không có thư mục để lưu hình ảnh.

Nếu [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) được chỉ định không tồn tại, nó sẽ được tạo tự động.

Ví dụ mã sau đây cho thấy cách chỉ định thư mục cho hình ảnh khi lưu tài liệu vào luồng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Chỉ định tùy chọn lưu khi chuyển đổi sang Markdown

Aspose.Words cung cấp khả năng sử dụng lớp [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) để làm việc với các tùy chọn nâng cao khi lưu tài liệu sang định dạng Markdown. Hầu hết các thuộc tính đều kế thừa hoặc nạp chồng các thuộc tính đã tồn tại trong các lớp [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) khác. Ngoài chúng, một số thuộc tính dành riêng cho định dạng Markdown cũng đã được thêm vào. Ví dụ: thuộc tính [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) để kiểm soát việc căn chỉnh nội dung trong bảng hoặc [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) để kiểm soát nơi lưu hình ảnh khi chuyển đổi tài liệu sang định dạng Markdown.

## Các tính năng Markdown được hỗ trợ

Aspose.Words hiện hỗ trợ các tính năng Markdown sau, hầu hết tuân theo đặc tả `CommonMark` trong Aspose.Words API và được thể hiện dưới dạng kiểu thích hợp hoặc định dạng trực tiếp:

* Heading là các đoạn văn có kiểu Heading 1 – Heading 6
* Blockquotes là các đoạn văn có "Trích dẫn" trong tên kiểu
* IndentedCode là các đoạn có "IndentedCode" trong tên kiểu
* FencedCode là các đoạn văn có "FencedCode" trong tên kiểu
* InlineCode được chạy với "InlineCode" trong tên kiểu `Font`
* Quy tắc ngang là các đoạn văn có dạng `HorizontalRule`
* Nhấn mạnh đậm
* Nhấn mạnh chữ nghiêng
* Định dạng StrikeThrough
* Danh sách được đánh số hoặc gạch đầu dòng
* Các bảng được biểu diễn bằng lớp [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
* Liên kết được thể hiện dưới dạng lớp [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)

Ví dụ sau đây cho thấy cách tạo tài liệu với một số kiểu và lưu nó vào Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Kết quả của ví dụ mã này được hiển thị dưới đây.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Lời khuyên hữu ích

Có một số sắc thái và trường hợp thú vị, sau khi biết rằng bạn có thể làm việc với các tệp Markdown linh hoạt và thuận tiện hơn. Ví dụ: có khả năng sử dụng:

* SetextHeading cho phép bạn tạo tiêu đề nhiều dòng trong Markdown, trong khi các tiêu đề thông thường trong Markdown chỉ có thể là một dòng. SetextHeading dựa trên kiểu "Heading N" và cấp độ của nó chỉ có thể là 1 hoặc 2. Nếu N trong "Heading N" lớn hơn hoặc bằng 2 thì SetextHeading tương ứng sẽ dựa trên "Heading 2", nếu không thì trên "Tiêu đề 1".
* Các điểm đánh dấu khác nhau cho cấp độ đầu tiên của danh sách dấu đầu dòng ("-", "+" hoặc "*", điểm đánh dấu mặc định là "-".) và các kiểu đánh số khác nhau cho danh sách có thứ tự ("." hoặc ")", điểm đánh dấu mặc định là ".").
