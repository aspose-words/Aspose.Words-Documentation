---
title: Làm việc với các đoạn văn trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với đoạn văn
linktitle: Làm việc với đoạn văn
description: "Chèn đoạn văn và chỉ định định dạng của nó trong tài liệu bằng Python."
type: docs
weight: 210
url: /vi/python-net/working-with-paragraphs/
---

Đoạn văn là một tập hợp các ký tự được kết hợp thành một khối logic và kết thúc bằng một ký tự đặc biệt – *ngắt đoạn*. Trong Aspose.Words, một đoạn văn được thể hiện bằng lớp [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Chèn một đoạn văn

Để chèn một đoạn văn mới vào tài liệu, trên thực tế, bạn cần chèn ký tự ngắt đoạn vào đó. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) cũng chèn một chuỗi văn bản vào tài liệu nhưng ngoài ra, nó còn thêm dấu ngắt đoạn.

Định dạng phông chữ hiện tại cũng được xác định bởi thuộc tính [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) và định dạng đoạn văn hiện tại được xác định bởi thuộc tính [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

Ví dụ mã sau đây cho thấy cách chèn một đoạn văn vào tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Định dạng đoạn

Định dạng đoạn văn hiện tại được thể hiện bằng đối tượng [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) được thuộc tính [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) trả về. Đối tượng này đóng gói các thuộc tính định dạng đoạn văn khác nhau có sẵn trong Microsoft Word. Bạn có thể dễ dàng đặt lại định dạng đoạn văn về mặc định thành Kiểu bình thường, căn trái, không thụt lề, không khoảng cách, không viền và không đổ bóng bằng cách gọi [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

Ví dụ mã sau đây cho biết cách đặt định dạng đoạn văn:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Áp dụng kiểu đoạn văn

Một số đối tượng định dạng như kiểu hỗ trợ [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) hoặc [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/). Một kiểu dựng sẵn hoặc do người dùng xác định được thể hiện bằng một đối tượng [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) chứa các thuộc tính kiểu tương ứng như tên, kiểu cơ sở, phông chữ và định dạng đoạn văn của kiểu đó, v.v.

Hơn nữa, đối tượng [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) cung cấp thuộc tính [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) trả về mã định danh kiểu độc lập với miền địa phương được biểu thị bằng giá trị liệt kê [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). Vấn đề là tên của các kiểu tích hợp trong Microsoft Word được bản địa hóa cho các ngôn ngữ khác nhau. Bằng cách sử dụng mã định danh kiểu, bạn có thể tìm thấy kiểu chính xác bất kể ngôn ngữ tài liệu. Các giá trị liệt kê tương ứng với các kiểu dựng sẵn Microsoft Word như Bình thường, Tiêu đề 1, Tiêu đề 2, v.v. Tất cả các kiểu do người dùng xác định đều được gán giá trị [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user)

Ví dụ mã sau đây cho thấy cách áp dụng kiểu đoạn văn:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Chèn dấu phân cách kiểu để đặt các kiểu đoạn văn khác nhau

Có thể thêm dấu phân cách kiểu vào cuối đoạn văn bằng cách sử dụng phím tắt Ctrl + Alt + Enter trong MS Word. Tính năng này cho phép sử dụng hai kiểu đoạn văn khác nhau trong một đoạn văn được in logic. Nếu bạn muốn một số văn bản ở đầu một tiêu đề cụ thể xuất hiện trong Mục lục nhưng không muốn toàn bộ tiêu đề đó trong Mục lục, bạn có thể sử dụng tính năng này

Ví dụ mã sau đây cho thấy cách chèn dấu phân cách kiểu để phù hợp với các kiểu đoạn văn khác nhau:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Xác định dấu phân cách kiểu đoạn văn

Aspose.Words cung cấp một thuộc tính công khai [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) thành một lớp [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) cho phép xác định Đoạn phân cách kiểu dáng như trong ví dụ đưa ra dưới đây:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Áp dụng viền và tô bóng cho đoạn văn

Biên giới được đại diện bởi [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Đây là tập hợp các đối tượng [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) được truy cập theo chỉ mục hoặc theo loại đường viền. Kiểu đường viền được thể hiện bằng bảng liệt kê [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Một số giá trị của bảng liệt kê có thể áp dụng cho một số hoặc chỉ một phần tử tài liệu. Ví dụ: [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) có thể áp dụng cho một đoạn văn hoặc ô bảng trong khi [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) chỉ chỉ định đường viền chéo trong ô bảng.

Cả bộ sưu tập đường viền và mỗi đường viền riêng biệt đều có các thuộc tính tương tự như màu sắc, kiểu đường kẻ, độ rộng đường kẻ, khoảng cách từ văn bản và bóng tùy chọn. Chúng được đại diện bởi các thuộc tính cùng tên. Bạn có thể đạt được các loại đường viền khác nhau bằng cách kết hợp các giá trị thuộc tính. Ngoài ra, cả hai đối tượng [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) và [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) đều cho phép bạn đặt lại các giá trị này về mặc định bằng cách gọi phương thức [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Lưu ý rằng khi thuộc tính đường viền được đặt lại về giá trị mặc định, đường viền sẽ trở nên ẩn.

{{% /alert %}}

Aspose.Words còn có lớp [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) chứa các thuộc tính đổ bóng cho các thành phần tài liệu. Bạn có thể đặt kết cấu bóng mong muốn và màu sắc được áp dụng cho nền và nền trước của phần tử.

Kết cấu bóng được đặt bằng giá trị liệt kê [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) cho phép áp dụng các mẫu khác nhau cho đối tượng [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). Ví dụ: để đặt màu nền cho thành phần tài liệu, hãy sử dụng giá trị [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) và đặt màu bóng nền trước cho phù hợp. Ví dụ dưới đây cho thấy cách áp dụng đường viền và bóng cho một đoạn văn.

Ví dụ mã sau đây cho thấy cách áp dụng đường viền và tô bóng cho một đoạn văn:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
