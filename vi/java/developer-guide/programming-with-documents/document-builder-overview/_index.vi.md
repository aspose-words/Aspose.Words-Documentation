---
title: Tổng quan về Document Builder trong Java
second_title: Aspose.Words cho Java
articleTitle: Tổng quan về Document Builder
linktitle: Tổng quan về Document Builder
type: docs
description: "DocumentBuilder cho phép bạn xây dựng các tài liệu động từ đầu hoặc thêm các phần tử mới vào những tài liệu hiện có. DocumentBuilder cung cấp các phương pháp để chèn văn bản, hộp kiểm, bảng, hình ảnh và các phần tử nội dung khác trong Java."
weight: 30
url: /vi/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) là một lớp mạnh mẽ kết hợp với [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) và cho phép bạn xây dựng tài liệu động từ đầu hoặc thêm các phần tử mới vào một tài liệu hiện có.

**DocumentBuilder** cung cấp các phương pháp để chèn văn bản, hộp kiểm, đối tượng Ole, đoạn văn, danh sách, bảng, hình ảnh và các phần tử nội dung khác. Nó cho phép bạn chỉ định kiểu chữ, định dạng đoạn văn hoặc phần, và thực hiện các hoạt động khác.

## Builder hoặc Aspose.Words DOM

**DocumentBuilder** bổ sung các lớp và phương thức có sẵn trong bộ Aspose.Words Document Object Model (DOM) để đơn giản hóa các nhiệm vụ xây dựng tài liệu thông thường nhất. Đó là, bạn có thể tạo ra và sửa đổi nội dung của các tài liệu cả thông qua Aspose.Words DOM, đòi hỏi một sự hiểu biết tốt về cấu trúc cây, và sử dụng DocumentBuilder. `DocumentBuilder` là một "phố" cho cấu trúc phức tạp **Document** mà cho phép bạn nhanh chóng và dễ dàng chèn nội dung và định dạng.

Các hoạt động có thể thực hiện với **DocumentBuilder** cũng có thể thực hiện được khi sử dụng các lớp của Aspose.Words DOM trực tiếp. Tuy nhiên việc sử dụng trực tiếp các lớp Aspose.Words DOM thường đòi hỏi nhiều dòng mã hơn là sử dụng **DocumentBuilder**.

## Điều hướng tài liệu

Điều hướng tài liệu dựa trên khái niệm của một con trỏ ảo, với bạn có thể di chuyển đến một vị trí khác trong tài liệu sử dụng các phương pháp khác nhau **DocumentBuilder.MoveToXXX** như [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) và [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Con trỏ ảo này cho biết nơi sẽ chèn văn bản khi gọi các phương thức [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) và những người khác. Xem bài viết sau "Điều hướng với con trỏ" để tìm hiểu thêm về con trỏ ảo.

Ví dụ mã sau cho thấy cách điều hướng đến một mục đánh dấu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Xây dựng và Chỉnh sửa Tài liệu

Aspose.Words API cung cấp một số lớp chịu trách nhiệm định dạng các phần tử khác nhau trong một tài liệu. Mỗi lớp đóng gói các thuộc tính định dạng liên quan đến một phần tử tài liệu cụ thể, chẳng hạn như văn bản, đoạn văn, phần và những thứ khác. Ví dụ, "class [Font](https://reference.aspose.com/words/java/com.aspose.words/font/)" đại diện cho các thuộc tính định dạng ký tự, "class [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)" đại diện cho các thuộc tính định dạng đoạn văn và như vậy. Các đối tượng của các lớp này được trả về bởi các thuộc tính **DocumentBuilder** tương ứng, có cùng tên với các lớp đó. Vì vậy, bạn có thể truy cập chúng và đặt định dạng mong muốn trong quá trình xây dựng tài liệu.

Bạn cũng có thể chèn văn bản, hộp kiểm, đối tượng ole, hình ảnh, dấu sách, trường biểu mẫu và các phần tử tài liệu khác ở vị trí con trỏ bằng phương pháp `Write` hoặc bất kỳ một trong các phương pháp **DocumentBuilder.InsertXXX** như [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) và các phương pháp tương tự.

Hãy xem cách tạo một tài liệu đơn giản bằng **DocumentBuilder** này nào.

### Tạo một tài liệu bằng cách sử dụng DocumentBuilder

Để bắt đầu, bạn cần tạo một **DocumentBuilder** và liên kết nó với một **Document** đối tượng. Bạn tạo một trường hợp mới của **DocumentBuilder** bằng cách gọi hàm khởi tạo và truyền nó đến một đối tượng **Document** để gắn với trình xây dựng.

Để chèn một văn bản, hãy truyền chuỗi văn bản bạn cần chèn vào tài liệu đến phương thức **Write**.

Mã ví dụ sau cho thấy cách tạo một tài liệu đơn giản bằng cách sử dụng trình xây dựng tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Chỉ định định dạng tài liệu

Tính chất [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) xác định định dạng văn bản. Đối tượng này chứa các thuộc tính kiểu chữ khác nhau (tên phông chữ, kích thước phông chữ, màu sắc và như vậy). Một số thuộc tính phông chữ quan trọng cũng được đại diện bởi các thuộc tính **DocumentBuilder** để cho phép bạn truy cập trực tiếp vào chúng. Đây là các thuộc tính [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) và [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) của kiểu boolean.

Mã ví dụ sau cho thấy cách chèn văn bản có định dạng bằng cách sử dụng **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) chỉ định kiểu chữ sẽ được áp dụng cho tất cả văn bản nhập từ vị trí hiện tại trong tài liệu trở đi.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) chỉ định kiểu đoạn cho các đoạn văn hiện tại và tất cả các đoạn văn để chèn.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) chỉ định các thuộc tính trang và phần cho phần hiện tại và toàn bộ phần sẽ được chèn.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) và [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) chỉ định các thuộc tính định dạng sẽ được áp dụng cho các ô và hàng bảng từ vị trí hiện tại trong tài liệu trở đi.

Trong tình huống này, "hiện tại" có nghĩa là vị trí, đoạn văn, phần, ô hoặc hàng mà con trỏ đang ở.

{{% /alert %}}

{{% alert color="primary" %}}

Lưu ý rằng các thuộc tính **Font**, **ParagraphFormat**, và **PageSetup** được cập nhật mỗi khi bạn di chuyển đến một vị trí khác trong tài liệu để phản ánh các thuộc tính định dạng của vị trí đó.

{{% /alert %}}
