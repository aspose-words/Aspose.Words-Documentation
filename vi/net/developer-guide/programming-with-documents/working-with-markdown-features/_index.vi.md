---
title: Làm việc với các tính năng Markdown trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với các tính năng của Markdown
linktitle: Làm việc với các tính năng của Markdown
description: "Cách triển khai các tính năng Markdown bằng C#. Tất cả các tính năng được thể hiện dưới dạng kiểu tương ứng hoặc định dạng trực tiếp."
type: docs
weight: 420
url: /vi/net/working-with-markdown-features/
---

Chủ đề này thảo luận cách triển khai các tính năng Markdown bằng Aspose.Words. Markdown là một cách đơn giản để định dạng văn bản thuần túy có thể dễ dàng chuyển đổi sang HTML. Aspose.Words hỗ trợ các tính năng Markdown sau:

- Tiêu đề
- Trích dẫn khối
- Quy tắc ngang
- Nhấn mạnh đậm
- Nhấn mạnh chữ nghiêng

Việc triển khai tính năng Markdown chủ yếu tuân theo đặc tả `CommonMark` trong Aspose.Words API và tất cả các tính năng được biểu diễn dưới dạng kiểu tương ứng hoặc định dạng trực tiếp. Có nghĩa là

- Chữ đậm và chữ nghiêng được thể hiện dưới dạng `Font.Bold` và `Font.Italic`
- Heading là những đoạn văn có kiểu Heading 1 - Heading 6
- Trích dẫn là những đoạn văn có chữ "Trích dẫn" trong tên kiểu
- HorizontalRule là đoạn văn có hình dạng HorizontalRule.

{{% alert color="primary" %}}

Có nhiều sắc thái khi dịch Markdown sang Aspose.Words Document Object Model (DOM), được mô tả trong bài viết [Dịch Markdown sang Document Object Model (DOM)](/words/vi/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Tài liệu Markdown có điểm nhấn

Phần này hướng dẫn bạn cách tạo tài liệu markdown với các điểm nhấn như dưới đây:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Đoạn mã sau có thể được sử dụng để tạo tài liệu markdown đã cho ở trên.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## Tài liệu Markdown có tiêu đề

Phần này hướng dẫn bạn cách tạo tài liệu markdown với các tiêu đề như bên dưới:

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## Tài liệu Markdown có trích dẫn khối

Phần này hướng dẫn bạn cách tạo tài liệu markdown có dấu ngoặc kép như dưới đây:

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Tài liệu Markdown có quy tắc ngang

Phần này hướng dẫn bạn cách tạo tài liệu markdown với Quy tắc ngang như dưới đây:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Đoạn mã sau có thể được sử dụng để tạo tài liệu markdown đã cho ở trên.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Đọc tài liệu Markdown

Đoạn mã sau đây hướng dẫn bạn cách đọc tài liệu markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Chỉ định tùy chọn lưu Markdown

Aspose.Words API cung cấp lớp [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) để chỉ định các tùy chọn bổ sung trong khi lưu tài liệu sang định dạng Markdown.

Ví dụ mã sau đây trình bày cách chỉ định các tùy chọn lưu Markdown khác nhau.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Cách căn chỉnh nội dung bên trong bảng khi xuất sang Markdown

Aspose.Words API cung cấp bảng liệt kê [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) xác định hướng căn chỉnh để căn chỉnh nội dung trong bảng trong khi xuất sang tài liệu Markdown. Ví dụ mã sau đây minh họa cách căn chỉnh nội dung bên trong bảng.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
