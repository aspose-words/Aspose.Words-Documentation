---
title: Làm việc với các Tính năng Markdown trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc với các Tính năng Markdown
linktitle: Làm việc với các Tính năng Markdown
description: "Cách triển khai các tính năng Markdown bằng C++. Tất cả các tính năng được thể hiện dưới dạng các kiểu tương ứng hoặc định dạng trực tiếp."
type: docs
weight: 420
url: /vi/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Chủ đề này thảo luận về cách triển khai các tính năng Markdown bằng cách sử dụng Aspose.Words. Markdown là một cách đơn giản để định dạng văn bản thuần túy có thể dễ dàng chuyển đổi thành HTML. Aspose.Words hỗ trợ các tính năng Markdown sau:

- Tiêu đề
- Báo giá
- Quy tắc ngang
- Nhấn mạnh táo bạo
- Nhấn mạnh nghiêng

Việc triển khai tính năng Markdown chủ yếu tuân theo đặc tả `CommonMark` trong Aspose.Words API và tất cả các tính năng được biểu diễn dưới dạng các kiểu tương ứng hoặc định dạng trực tiếp. Có nghĩa là

- In đậm và In Nghiêng được biểu diễn dưới dạng `Font.Bold` và `Font.Italic`.
- Tiêu đề là các đoạn có tiêu Đề 1 - tiêu đề 6 kiểu.
- Trích dẫn là các đoạn có "Trích dẫn"trong tên kiểu.
- HorizontalRule là một đoạn có hình HorizontalRule.

{{% alert color="primary" %}}

Có các sắc thái của việc dịch Markdown Sang Mô hình Đối tượng Tài liệu Aspose.Words (DOM), được mô tả trong bài viết [Dịch Markdown Sang Mô Hình Đối tượng Tài liệu (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Tài liệu Với Các Điểm Nhấn

Phần này cho bạn thấy cách tạo tài liệu markdown với các điểm nhấn như được đưa ra dưới đây:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Đoạn mã sau có thể được sử dụng để tạo tài liệu markdown đã cho ở trên.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown Tài liệu Với Tiêu đề

Phần này cho bạn thấy cách tạo tài liệu markdown với các tiêu đề như được đưa ra dưới đây:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

Đoạn mã sau có thể được sử dụng để tạo tài liệu markdown đã cho ở trên.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown Tài liệu Với Dấu Ngoặc Kép Khối

Phần này cho bạn thấy làm thế nào để sản xuất một tài liệu markdown với dấu ngoặc kép khối như được đưa ra dưới đây:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

Đoạn mã sau có thể được sử dụng để tạo tài liệu markdown đã cho ở trên.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown Tài liệu Với Quy Tắc Ngang

Phần Này cho bạn thấy cách tạo tài liệu markdown Với Quy Tắc Ngang như được đưa ra dưới đây:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Đoạn mã sau có thể được sử dụng để tạo tài liệu markdown đã cho ở trên.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Đọc tài liệu Markdown

Đoạn mã sau đây hướng dẫn bạn cách đọc tài liệu markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Chỉ Định Markdown Lưu Tùy Chọn

Aspose.Words API cung cấp lớp [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) để chỉ định các tùy chọn bổ sung trong khi lưu tài liệu vào định dạng Markdown.

Ví dụ mã sau đây đã chứng minh cách chỉ định các tùy chọn lưu Markdown khác nhau.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Cách Căn Chỉnh Nội Dung Bên Trong Bảng trong khi Xuất thành Markdown

Aspose.Words API cung cấp liệt kê TableContentAlignment xác định hướng căn chỉnh để căn chỉnh nội dung trong bảng trong khi xuất vào tài liệu Markdown. Ví dụ mã sau đây trình bày cách căn chỉnh nội dung bên trong bảng.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
