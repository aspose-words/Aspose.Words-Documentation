---
title: Làm việc với Các Đoạn trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Các Đoạn Văn
linktitle: Làm việc Với Các Đoạn Văn
description: "Thực hành thao tác nút đoạn bằng cách sử dụng C++."
type: docs
weight: 210
url: /vi/cpp/working-with-paragraphs/
---

Đoạn văn là một tập hợp các ký tự được kết hợp thành một khối logic và kết thúc bằng một ký tự đặc biệt – a *paragraph break*. Trong Aspose.Words, một đoạn được biểu thị bằng lớp [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Chèn Một Đoạn Văn

Để chèn một đoạn mới vào tài liệu, trên thực tế, bạn cần chèn một ký tự ngắt đoạn vào đó. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) chèn không chỉ một chuỗi văn bản vào tài liệu mà còn thêm dấu ngắt đoạn.

Định dạng phông chữ hiện tại cũng được chỉ định bởi thuộc tính [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) và định dạng đoạn hiện tại được xác định bởi thuộc tính [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). Trong phần tiếp theo, chúng ta sẽ đi vào chi tiết hơn về định dạng đoạn văn.

Ví dụ mã sau đây cho thấy cách chèn một đoạn vào tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Định Dạng Đoạn Văn

Định dạng đoạn văn hiện tại được biểu diễn bằng một đối tượng **ParagraphFormat** được trả về bởi thuộc tính **ParagraphFormat**. Đối tượng này đóng gói các thuộc tính định dạng đoạn văn khác nhau có sẵn trong Microsoft Word. Bạn có thể dễ dàng đặt lại định dạng đoạn văn thành mặc định Thành kiểu Bình thường, căn trái không thụt lề, không khoảng cách, không viền và không tô bóng bằng cách gọi [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

Ví dụ mã sau đây cho thấy cách đặt định dạng đoạn văn:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Áp Dụng Kiểu Đoạn Văn

Một số đối tượng định dạng Như phông chữ hoặc kiểu hỗ trợ ParagraphFormat. Một kiểu được tích hợp sẵn hoặc do người dùng xác định được biểu thị bằng một đối tượng `Style` chứa các thuộc tính kiểu tương ứng như tên, kiểu cơ sở, phông chữ và định dạng đoạn văn của kiểu, v. v.

Hơn nữa, một đối tượng **Style** cung cấp thuộc tính [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) trả về một định danh kiểu độc lập với miền địa phương được biểu thị bằng giá trị liệt kê **StyleIdentifier**. Vấn đề là tên của các kiểu tích hợp trong Microsoft Word được bản địa hóa cho các ngôn ngữ khác nhau. Sử dụng mã định danh kiểu, bạn có thể tìm đúng kiểu bất kể ngôn ngữ tài liệu. Các giá trị liệt kê tương ứng với các kiểu tích hợp Microsoft Word như *Normal*, *Heading 1*, *Heading 2* v. v. Tất cả các kiểu do người dùng xác định được gán giá trị **StyleIdentifier.User**.

Ví dụ mã sau đây cho thấy cách áp dụng kiểu đoạn văn:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Chèn Dấu Phân Cách Kiểu Để Đặt Các Kiểu Đoạn Văn Khác nhau

Dấu phân cách kiểu có thể được thêm vào cuối đoạn văn bằng Phím Tắt Ctrl + Alt + Enter Vào Từ MS. Tính năng này cho phép hai kiểu đoạn văn khác nhau được sử dụng trong một đoạn văn in logic. Nếu bạn muốn một số văn bản từ đầu một tiêu đề cụ thể xuất hiện Trong Mục Lục nhưng không muốn toàn bộ tiêu đề Trong Mục Lục, bạn có thể sử dụng tính năng này.

Ví dụ mã sau đây cho thấy cách chèn dấu phân cách kiểu để chứa các kiểu đoạn văn khác nhau:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Xác Định Dấu Phân Cách Kiểu Đoạn Văn

` ` Aspose.Words cung cấp một thuộc tính công cộng [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) thành một lớp `Paragraph` cho phép xác định Đoạn Phân Cách Kiểu như được hiển thị trong ví dụ được đưa ra dưới đây:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Áp dụng Đường Viền và Tô Bóng cho Một Đoạn văn

Các đường viền trong Aspose.Words được biểu thị bằng lớp [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) – đây là tập hợp các đối tượng [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) được truy cập theo chỉ mục hoặc theo loại đường viền. Loại đường viền được biểu thị bằng cách liệt kê `BorderType`. Một số giá trị của bảng liệt kê được áp dụng cho một số hoặc chỉ một phần tử tài liệu. Ví dụ: **BorderType.Bottom** được áp dụng cho một ô đoạn văn hoặc ô bảng trong khi **BorderType.DiagonalDown** chỉ định đường viền chéo trong ô bảng.

Cả bộ sưu tập đường viền và mỗi đường viền riêng biệt đều có các thuộc tính tương tự như màu sắc, kiểu đường thẳng, chiều rộng đường thẳng, khoảng cách từ văn bản và bóng tùy chọn. Chúng được đại diện bởi các thuộc tính cùng tên. Bạn có thể đạt được các loại đường viền khác nhau bằng cách kết hợp các giá trị thuộc tính. Ngoài ra, cả hai đối tượng **BorderCollection** và **Border** cho phép bạn đặt lại các giá trị này về mặc định bằng cách gọi phương thức [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Lưu ý rằng khi các thuộc tính đường viền được đặt lại về giá trị mặc định của chúng, đường viền sẽ trở nên vô hình.

{{% /alert %}}

Aspose.Words cũng có lớp [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) chứa các thuộc tính đổ bóng cho các phần tử tài liệu. Bạn có thể đặt kết cấu tô bóng mong muốn và màu sắc được áp dụng cho nền và tiền cảnh của phần tử.

Kết cấu tô bóng được đặt với giá trị liệt kê [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) cho phép áp dụng các mẫu khác nhau cho đối tượng **Shading**. Ví dụ: để đặt màu nền cho phần tử tài liệu, hãy sử dụng giá trị [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) và đặt màu tô bóng nền trước cho phù hợp.

Ví dụ mã sau đây cho thấy cách áp dụng đường viền và tô bóng cho một đoạn văn:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
