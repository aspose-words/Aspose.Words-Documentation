---
title: Làm việc với các đoạn văn trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với các đoạn văn
linktitle: Làm việc với các đoạn văn
description: "Thực hành thao tác các nút đoạn văn sử dụng Java."
type: docs
weight: 210
url: /vi/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Một đoạn văn là một tập hợp các ký tự kết hợp thành một khối logic và kết thúc với một ký tự đặc biệt - *một dấu chấm câu đoạn*. Trong Aspose.Words, một đoạn văn là đại diện bởi lớp [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

## Chèn một đoạn văn

Để chèn một đoạn mới vào tài liệu, thực ra bạn cần phải chèn ký tự ngắt đoạn vào nó. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) không chỉ chèn một chuỗi văn bản vào tài liệu mà còn thêm một dấu ngắt đoạn.

Định dạng phông chữ hiện tại cũng được chỉ định bởi thuộc tính [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont), và định dạng đoạn văn hiện tại được xác định bởi thuộc tính [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) Trong phần tiếp theo, chúng ta sẽ đi vào chi tiết hơn về định dạng đoạn văn.

Ví dụ mã sau cho thấy cách chèn một đoạn văn vào tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Định dạng đoạn

Định dạng đoạn văn hiện tại được đại diện bởi đối tượng [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) trả về thuộc tính [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat). Đối tượng này bao bọc nhiều thuộc tính định dạng đoạn văn có sẵn trong Microsoft Word. Bạn có thể dễ dàng đặt lại định dạng của một đoạn văn bản về kiểu mặc định – kiểu bình thường, lề trái, không nhô lồi, không khoảng cách, không viền, không bóng – bằng cách gọi [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

Mã ví dụ sau cho thấy cách thiết lập định dạng đoạn văn":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Áp dụng kiểu đoạn

Một số đối tượng định dạng như phông chữ hoặc Định dạng đoạn văn hỗ trợ kiểu dáng. Một kiểu duy nhất được xây dựng sẵn hoặc được định nghĩa bởi người dùng được đại diện bởi một [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) chứa các thuộc tính của phong cách tương ứng như tên, phong cách cơ sở, phông chữ và định dạng đoạn văn của phong cách, v.v.

Ngoài ra một **Style** đối tượng cung cấp thuộc tính [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) trả về một địa phương không độc lập kiểu nhận dạng được đại diện bởi một giá trị enum **StyleIdentifier**. Điểm mấu chốt là tên của các kiểu được xây dựng sẵn trong Microsoft Word được bản địa hóa cho các ngôn ngữ khác nhau. Sử dụng một định danh phong cách, bạn có thể tìm đúng phong cách bất kể ngôn ngữ tài liệu. Giá trị liệt kê tương ứng với các kiểu được xây dựng sẵn như Microsoft Word, *Normal*, *Heading 1*, *Heading 2*, v.v. Tất cả các kiểu được định nghĩa bởi người dùng đều được gán cho **StyleIdentifier.User giá trị**.

Mẫu mã sau cho thấy cách áp dụng kiểu đoạn văn

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Chèn Dấu phân cách Phong cách để Đặt các Phong cách đoạn khác nhau

Bao tách có thể được thêm vào cuối một đoạn văn bằng cách sử dụng phím tắt Ctrl + Alt + Enter trong MS Word. Tính năng này cho phép sử dụng hai kiểu đoạn văn khác nhau trong một đoạn văn được in hợp lý. Nếu bạn muốn một số văn bản từ đầu của một tiêu đề cụ thể xuất hiện trong Mục lục nhưng không muốn toàn bộ tiêu đề trong Mục lục, bạn có thể sử dụng tính năng này.

Mã ví dụ sau cho thấy cách chèn một dấu phân cách kiểu để chứa các kiểu đoạn khác nhau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Áp dụng đường viền và bóng cho một đoạn văn

Các đường viền trong Aspose.Words được thể hiện bởi lớp [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) – đây là một tập hợp các đối tượng [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) được truy cập bằng chỉ mục hoặc theo kiểu đường viền. Loại `Border` được đại diện bởi [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) enumaration. Một số giá trị của sự liệt kê áp dụng cho một vài hoặc chỉ có một phần tử tài liệu. Ví dụ, **BorderType.Bottom** áp dụng cho đoạn văn hoặc ô trong bảng, trong khi **BorderType.DiagonalDown** chỉ định đường viền đường chéo trong ô bảng.

Cả bộ sưu tập đường viền và từng đường viền riêng biệt đều có những thuộc tính tương tự như màu sắc, kiểu đường viền, độ rộng của đường viền, khoảng cách từ văn bản, và bóng tùy chọn. Họ được đại diện bởi các thuộc tính cùng tên. Bạn có thể đạt được các kiểu đường viền khác nhau bằng cách kết hợp giá trị thuộc tính. Ngoài ra, cả hai **BorderCollection** và **Border** đối tượng cho phép bạn đặt lại các giá trị này về mặc định bằng cách gọi phương thức [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting).

{{% alert color="primary" %}}

Lưu ý khi các thuộc tính biên giới được đặt lại về giá trị mặc định thì đường viền là vô hình.

{{% /alert %}}

Aspose.Words cũng có lớp [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) chứa các thuộc tính làm bóng cho các phần tử tài liệu. Bạn có thể đặt hiệu ứng bóng đổ mong muốn và màu sắc được áp dụng cho phần nền và phần trước của yếu tố này.

Mặt bóng được thiết lập với giá trị enum [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) cho phép áp dụng các mẫu khác nhau vào đối tượng **Shading**. Ví dụ để thiết lập màu nền cho một phần tử tài liệu, sử dụng giá trị `TextureIndex.TextureSolid` và đặt màu bóng như phù hợp. Mã ví dụ dưới đây cho thấy cách áp dụng đường viền và bóng đến một đoạn văn.

Ví dụ sau cho thấy cách áp dụng đường viền và bóng vào một đoạn văn":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
