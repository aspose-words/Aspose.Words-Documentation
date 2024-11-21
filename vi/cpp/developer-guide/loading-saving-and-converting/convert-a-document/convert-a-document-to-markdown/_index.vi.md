---
title: Chuyển Đổi Tài liệu thành Markdown trong C++
second_title: Aspose.Words cho C++
articleTitle: Chuyển Đổi Tài liệu thành Markdown
linktitle: Chuyển Đổi Tài liệu thành Markdown
type: docs
description: "Chuyển đổi tài liệu ở bất kỳ định dạng tải nào được hỗ trợ thành Markdown và ngược lại bằng C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /vi/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown là một định dạng phổ biến được sử dụng để đánh dấu văn bản và nó tiếp tục chuyển đổi sang HTML, PDF, DOCX, hoặc các định dạng khác. Nhiều nhà phát triển chọn định dạng này để viết tài liệu, chuẩn bị các bài báo để xuất bản trên blog, mô tả các dự án, v. v.

Markdown rất phổ biến vì nó dễ làm việc với định dạng này, cũng như nó có thể được chuyển đổi khá đơn giản sang các định dạng khác. Vì lý do này, Aspose.Words cung cấp khả năng chuyển đổi tài liệu trong [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) thành Markdown và ngược lại – Aspose.Words cũng hỗ trợ [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) phổ biến nhất.

Giờ đây, chức năng làm việc với định dạng Markdown đang được phát triển tích cực để cung cấp cho bạn nhiều cơ hội hơn để làm việc thuận tiện và thoải mái với các tài liệu.

## Chuyển đổi Tài liệu

Để chuyển đổi tài liệu thành Markdown, bạn chỉ cần tải tài liệu ở bất kỳ định dạng được hỗ trợ nào hoặc tạo tài liệu mới theo chương trình. Sau đó, bạn cần lưu tài liệu sang định dạng Markdown.

Ví dụ mã sau đây cho thấy cách chuyển đổi DOCX thành Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Bạn cũng có thể chỉ định thư mục vật lý mà bạn muốn lưu hình ảnh khi xuất tài liệu sang định dạng Markdown. Theo mặc định, Aspose.Words lưu hình ảnh trong cùng một thư mục nơi tệp tài liệu được lưu, nhưng bạn có thể ghi đè hành vi này bằng thuộc tính [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Chỉ định một thư mục qua **ImagesFolder** cũng hữu ích nếu bạn lưu tài liệu vào luồng và Aspose.Words không có thư mục để lưu hình ảnh.

Nếu **ImagesFolder** được chỉ định không tồn tại, nó sẽ được tạo tự động.

Ví dụ mã sau đây cho thấy cách chỉ định thư mục cho hình ảnh khi lưu tài liệu vào luồng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Chỉ Định Tùy chọn Lưu khi Chuyển đổi thành Markdown

Aspose.Words cung cấp khả năng sử dụng lớp [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) để làm việc với các tùy chọn nâng cao khi lưu tài liệu sang định dạng Markdown. Hầu hết các thuộc tính đều kế thừa hoặc quá tải các thuộc tính đã tồn tại trong các lớp Không gian tên [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) khác. Ngoài chúng, một số thuộc tính dành riêng cho định dạng Markdown cũng đã được thêm vào. Ví dụ: thuộc tính [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) để kiểm soát sự liên kết của nội dung trong bảng hoặc [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) và [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) để kiểm soát cách lưu hình ảnh khi chuyển đổi tài liệu sang định dạng Markdown.

## Hỗ Trợ Markdown Tính Năng

Aspose.Words hiện hỗ trợ các tính năng Markdown sau đây, chủ yếu tuân theo đặc điểm kỹ thuật `CommonMark` trong Aspose.Words API và được biểu diễn dưới dạng các kiểu thích hợp hoặc định dạng trực tiếp:

* Tiêu đề là các đoạn có tiêu Đề 1 – tiêu đề 6 kiểu
* Blockquotes là những đoạn có "Trích dẫn" trong tên kiểu
* IndentedCode là các đoạn có" IndentedCode " trong tên kiểu
* FencedCode là các đoạn có" FencedCode " trong tên kiểu
* InlineCode được chạy với" InlineCode " trong tên kiểu `Font`
* Các quy tắc ngang là các đoạn có hình `HorizontalRule`
* Nhấn mạnh táo bạo
* Nhấn mạnh nghiêng
* StrikeThrough định dạng
* Danh sách được đánh số hoặc dấu đầu dòng đoạn văn
* Các bảng được biểu diễn bằng lớp `Table`
* Các liên kết được biểu diễn dưới dạng lớp `FieldHyperlink`

Ví dụ sau đây cho thấy cách tạo một tài liệu với một số kiểu và lưu nó vào Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Kết quả của ví dụ mã này được hiển thị bên dưới.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Lời Khuyên Hữu Ích

Có một số sắc thái và trường hợp thú vị, khi biết được bạn có thể làm việc với các tệp Markdown linh hoạt và thuận tiện hơn. Ví dụ, có khả năng sử dụng:

* SetextHeading cho phép bạn tạo các tiêu đề nhiều dòng trong Markdown, trong khi các tiêu đề thông thường trong Markdown chỉ có thể là một dòng. SetextHeading dựa trên kiểu" Tiêu Đề N " và mức của nó chỉ có thể là 1 hoặc 2. Nếu N trong "Tiêu đề N" lớn hơn hoặc bằng 2, thì SetextHeading tương ứng dựa trên "Tiêu đề 2", nếu không thì trên "Tiêu đề 1".
* Các điểm đánh dấu khác nhau cho cấp đầu tiên của danh sách dấu đầu dòng ("-", "+" hoặc "*", điểm đánh dấu mặc định là "-".) và các kiểu đánh số khác nhau cho danh sách đã đặt hàng ("." hoặc ")", điểm đánh dấu mặc định là ".").
