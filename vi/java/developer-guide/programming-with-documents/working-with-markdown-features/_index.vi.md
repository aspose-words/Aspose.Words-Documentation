---
title: Làm việc với Markdown tính năng trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Markdown Tính năng
linktitle: Làm việc với Markdown Tính năng
description: "Cách thực hiện các tính năng Markdown bằng cách sử dụng Java. Tất cả các tính năng được thể hiện như các kiểu tương ứng hoặc định dạng trực tiếp."
type: docs
weight: 420
url: /vi/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Bài viết này thảo luận về cách thực hiện các tính năng Markdown bằng cách sử dụng Aspose.Words. Markdown là một cách thức đơn giản để định dạng văn bản thuần túy và có thể chuyển đổi dễ dàng sang HTML. Aspose.Words hỗ trợ các tính năng sau của Markdown:

- Tiêu đề
- Blockquote
"- Quy tắc ngang"
- Chữ in đậm
- In đậm nhấn mạnh

Tính năng Markdown thực hiện theo phần lớn thông số kỹ thuật `CommonMark` trong Aspose.Words API và tất cả các tính năng được đại diện dưới dạng phong cách tương ứng hoặc định dạng trực tiếp. Điều này có nghĩa là

- Bold và Italic được biểu diễn bằng `Font.Bold` và `Font.Italic`
- Tiêu đề là các đoạn văn có kiểu heading 1 và heading 6
- Câu trích dẫn là những đoạn văn với "Trích dẫn" trong tên kiểu
- HorizontalRule là một đoạn văn với hình dạng `HorizontalRule`.

{{% alert color="primary" %}}

Có những sự nuan chu của việc dịch Markdown thành Aspose.Words Document Object Model (DOM), được mô tả trong bài viết [Translate Markdown to Document Object Model (DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Tài liệu với Nên đậm

Phần này sẽ hướng dẫn bạn cách tạo ra một văn bản markdown với những nhấn mạnh như dưới đây:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Mảnh mã sau đây có thể dùng để tạo ra tài liệu trên là markdown

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Tài liệu với Tiêu đề

Phần này chứng minh cách tạo ra một tài liệu markdown với các tiêu đề như dưới đây:

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

Mảnh mã sau có thể được dùng để tạo ra tài liệu đã cho ở trên markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Tài liệu Markdown với trích dẫn khối

Phần này cho bạn thấy cách tạo ra một markdown tài liệu với các trích dẫn khối như đã đưa ra bên dưới:

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

Mảnh mã sau đây có thể được dùng để sản xuất tài liệu đã cho: markdown

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Tài liệu với Đường kẻ ngang

Phần này sẽ hướng dẫn bạn cách tạo ra một tài liệu markdown với Quy tắc Đường ngang như sau:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Phần mã đoạn này có thể được dùng để tạo ra tài liệu trên đây markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Đọc một Markdown Tài liệu

Mã đoạn sau cho bạn thấy cách đọc một markdown tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Chỉ định Markdown Tùy chọn Lưu

Aspose.Words API cung cấp [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) lớp để chỉ định các tùy chọn bổ sung trong khi lưu tài liệu ở định dạng Markdown.

Mã ví dụ dưới đây đã thể hiện cách chỉ định nhiều tùy chọn lưu Markdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Cách căn chỉnh nội dung bên trong bảng khi xuất sang Markdown

Aspose.Words API cung cấp [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) phân loại, xác định hướng căn chỉnh để căn chỉnh nội dung trong bảng khi xuất ra tài liệu Markdown. Mã ví dụ sau đây cho thấy cách sắp xếp nội dung bên trong bảng.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
