---
title: Làm việc với các đoạn văn trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với đoạn văn
linktitle: Làm việc với đoạn văn
description: "Chèn một đoạn văn vào tài liệu C#. Đặt kiểu đoạn văn trong C#. Làm việc với dấu phân cách kiểu đoạn văn C#. Thao tác nút đoạn văn bằng C#."
type: docs
weight: 210
url: /vi/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Đoạn văn là một tập hợp các ký tự được kết hợp thành một khối logic và kết thúc bằng một ký tự đặc biệt – *ngắt đoạn*. Trong Aspose.Words, một đoạn văn được thể hiện bằng lớp [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

## Chèn một đoạn văn

Để chèn một đoạn văn mới vào tài liệu, trên thực tế, bạn cần chèn ký tự ngắt đoạn vào đó. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) không chỉ chèn một chuỗi văn bản vào tài liệu mà còn thêm dấu ngắt đoạn.

Định dạng phông chữ hiện tại cũng được xác định bởi thuộc tính [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) và định dạng đoạn văn hiện tại được xác định bởi thuộc tính [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Trong phần tiếp theo, chúng ta sẽ đi vào chi tiết hơn về định dạng đoạn văn.

Ví dụ mã sau đây cho thấy cách chèn một đoạn văn vào tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Định dạng đoạn

Định dạng đoạn văn hiện tại được thể hiện bằng đối tượng [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) được trả về bởi thuộc tính [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Đối tượng này đóng gói các thuộc tính định dạng đoạn văn khác nhau có sẵn trong Microsoft Word. Bạn có thể dễ dàng đặt lại định dạng của đoạn văn về mặc định – Kiểu bình thường, căn trái, không thụt lề, không khoảng cách, không viền, không đổ bóng – bằng cách gọi [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

Ví dụ mã sau đây cho biết cách đặt định dạng đoạn văn:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Áp dụng kiểu đoạn văn

Một số đối tượng định dạng, chẳng hạn như **Font** hoặc **ParagraphFormat**, hỗ trợ kiểu. Một kiểu dựng sẵn hoặc do người dùng xác định được thể hiện bằng một đối tượng [Style](https://reference.aspose.com/words/net/aspose.words/style/), chứa các thuộc tính kiểu thích hợp như tên, kiểu cơ sở, phông chữ, định dạng đoạn kiểu, v.v.

Ngoài ra, đối tượng **Style** còn hiển thị thuộc tính [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/), thuộc tính này trả về mã định danh kiểu độc lập với miền địa phương được biểu thị bằng giá trị liệt kê [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/). Thực tế là tên của các kiểu tích hợp trong Microsoft Word đã được bản địa hóa cho các ngôn ngữ khác nhau. Bằng cách sử dụng mã định danh kiểu, bạn có thể tìm thấy kiểu chính xác bất kể ngôn ngữ tài liệu. Các giá trị liệt kê tương ứng với các kiểu Microsoft Word tích hợp sẵn như *Normal*, *Heading 1*, *Heading 2*, v.v. Tất cả các kiểu do người dùng xác định được đặt thành giá trị liệt kê **StyleIdentifier.User**.

Ví dụ mã sau đây cho thấy cách áp dụng kiểu đoạn văn:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Chèn dấu phân cách kiểu để đặt các kiểu đoạn văn khác nhau

Bạn có thể thêm dấu phân cách kiểu vào cuối đoạn bằng phím tắt Ctrl+Alt+Enter trong Microsoft Word. Tính năng này cho phép bạn sử dụng hai kiểu đoạn văn khác nhau trong cùng một đoạn văn được in logic. Nếu bạn muốn một số văn bản ở đầu một tiêu đề cụ thể xuất hiện trong mục lục nhưng không muốn toàn bộ tiêu đề hiển thị trong mục lục, bạn có thể sử dụng chức năng này.

Ví dụ mã sau đây cho thấy cách chèn dấu phân cách kiểu để phù hợp với các kiểu đoạn văn khác nhau:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Xác định dấu phân cách kiểu đoạn văn

Aspose.Words hiển thị thuộc tính công khai [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) trên lớp `Paragraph` để xác định một đoạn văn có dấu phân cách kiểu, như trong ví dụ bên dưới:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Áp dụng viền và tô bóng cho đoạn văn

Các đường viền trong Aspose.Words được biểu thị bằng lớp [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) - đây là tập hợp các đối tượng [Border](https://reference.aspose.com/words/net/aspose.words/border/) được truy cập theo chỉ mục hoặc theo loại đường viền. Loại đường viền lần lượt được biểu thị bằng bảng liệt kê [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/). Một số giá trị liệt kê áp dụng cho nhiều hoặc chỉ một phần tử tài liệu. Ví dụ: **BorderType.Bottom** áp dụng cho một đoạn văn hoặc ô bảng, trong khi **BorderType.DiagonalDown** chỉ xác định đường viền chéo trong ô bảng.

Cả bộ sưu tập đường viền và mỗi đường viền riêng biệt đều có các thuộc tính tương tự như màu sắc, kiểu đường kẻ, độ rộng đường kẻ, khoảng cách từ văn bản và bóng tùy chọn. Chúng được đại diện bởi các thuộc tính cùng tên. Bạn có thể nhận được các loại đường viền khác nhau bằng cách kết hợp các giá trị thuộc tính. Ngoài ra, các đối tượng **BorderCollection** và **Border** cho phép bạn đặt lại các giá trị này về giá trị mặc định của chúng bằng cách gọi phương thức [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Lưu ý rằng khi thuộc tính đường viền được đặt lại về giá trị mặc định, đường viền sẽ trở nên ẩn.

{{% /alert %}}

Aspose.Words cũng có lớp [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) chứa các thuộc tính tô bóng cho các thành phần tài liệu. Bạn có thể đặt kết cấu bóng và màu sắc mong muốn được áp dụng cho nền và nền trước của một phần tử bằng cách sử dụng giá trị liệt kê [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/). **TextureIndex** cũng cho phép bạn áp dụng các mẫu khác nhau cho đối tượng **Shading**. Ví dụ: để đặt màu nền cho thành phần tài liệu, hãy sử dụng giá trị **TextureIndex.TextureSolid** và đặt màu bóng nền trước cho phù hợp.

Ví dụ mã sau đây cho thấy cách áp dụng đường viền và tô bóng cho một đoạn văn:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Đếm số dòng đoạn văn

Nếu bạn muốn đếm số dòng trong một đoạn văn cho bất kỳ tài liệu Word nào, có thể sử dụng mẫu mã sau:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
