---
title: Tổng quan về trình Tạo tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Tổng Quan Về Trình Tạo Tài Liệu
linktitle: Tổng Quan Về Trình Tạo Tài Liệu
type: docs
description: "DocumentBuilder cho phép bạn xây dựng các tài liệu động từ đầu hoặc thêm các phần tử mới vào các phần tử hiện có bằng C++. DocumentBuilder cung cấp các phương thức để chèn văn bản, hộp kiểm, bảng, hình ảnh và các thành phần nội dung khác trong C++."
weight: 30
url: /vi/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) là một lớp mạnh mẽ liên kết với [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) và cho phép bạn xây dựng các tài liệu động từ đầu hoặc thêm các yếu tố mới vào một tài liệu hiện có.

**DocumentBuilder**

## Trình Tạo tài liệu hoặc Aspose.Words DOM

**DocumentBuilder**

Các phép toán có thể thực hiện được với **DocumentBuilder** cũng có thể thực hiện được khi sử dụng trực tiếp các lớp của Aspose.Words DOM. Tuy nhiên, sử dụng các lớp Aspose.Words DOM trực tiếp thường yêu cầu nhiều dòng mã hơn sử dụng **DocumentBuilder**.

## Điều Hướng Tài Liệu

Điều hướng tài liệu dựa trên khái niệm con trỏ ảo, bạn có thể di chuyển đến một vị trí khác trong tài liệu bằng các phương thức **DocumentBuilder.MoveToXXX** khác nhau như [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) và [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Con trỏ ảo này cho biết nơi văn bản sẽ được chèn khi gọi các phương thức [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), và những người khác.

Ví dụ mã sau đây cho thấy cách điều hướng đến dấu trang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Xây dựng và Sửa đổi tài liệu

Aspose.Words API cung cấp một số lớp chịu trách nhiệm định dạng các phần tử khác nhau của tài liệu. Mỗi lớp đóng gói các thuộc tính định dạng liên quan đến một phần tử tài liệu cụ thể, chẳng hạn như văn bản, đoạn văn, phần và các thuộc tính khác. Ví dụ: lớp [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) đại diện cho các thuộc tính định dạng ký tự, lớp [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) đại diện cho các thuộc tính định dạng đoạn văn, v. v. Các đối tượng của các lớp này được trả về bởi các thuộc tính **DocumentBuilder** tương ứng, có cùng tên với các lớp. Do đó, bạn có thể truy cập chúng và đặt định dạng mong muốn trong quá trình xây dựng tài liệu.

Bạn cũng có thể chèn văn bản, hộp kiểm, đối tượng ole, hình ảnh, dấu trang, trường biểu mẫu và các thành phần tài liệu khác ở vị trí con trỏ bằng phương thức `Write` hoặc bất kỳ phương thức **DocumentBuilder.InsertXXX** nào, chẳng hạn như [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) và các phương thức tương tự.

Hãy xem cách tạo một tài liệu đơn giản bằng **DocumentBuilder**.

### Tạo Tài liệu bằng DocumentBuilder

Để bắt đầu, bạn cần tạo **DocumentBuilder** và liên kết nó với đối tượng **Document**. Bạn tạo một thể hiện mới của **DocumentBuilder** bằng cách gọi hàm tạo của nó và chuyển nó đến một đối tượng **Document** để đính kèm với trình xây dựng.

Để chèn một văn bản, hãy chuyển chuỗi văn bản bạn cần chèn vào tài liệu sang phương thức **Write**.

Ví dụ mã sau đây cho thấy cách tạo một tài liệu đơn giản bằng trình tạo tài liệu.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Chỉ Định Định Dạng Tài Liệu

Thuộc tính [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) xác định định dạng văn bản. Đối tượng này chứa các thuộc tính phông chữ khác nhau (tên phông chữ, kích thước phông chữ, màu sắc, v. v.). Một số thuộc tính phông chữ quan trọng cũng được thể hiện bằng các thuộc tính **DocumentBuilder** để cho phép bạn truy cập chúng trực tiếp. Đây là các thuộc tính boolean [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) và [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

Ví dụ mã sau đây cho thấy cách chèn văn bản được định dạng bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) chỉ định định dạng ký tự sẽ được áp dụng cho tất cả văn bản được chèn từ vị trí hiện tại trong tài liệu trở đi.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) chỉ định định dạng đoạn văn cho dòng điện và tất cả các đoạn văn sẽ được chèn.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) chỉ định thuộc tính trang và phần cho phần hiện tại và toàn bộ phần sẽ được chèn.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) và [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) chỉ định các thuộc tính định dạng sẽ được áp dụng cho các ô và hàng của bảng từ vị trí hiện tại trong tài liệu trở đi.

Trong tình huống này, "hiện tại" có nghĩa là vị trí, đoạn văn, phần, ô hoặc hàng trong đó con trỏ.

{{% /alert %}}

{{% alert color="primary" %}}

Lưu ý rằng các thuộc tính **Font**, **ParagraphFormat** và **PageSetup** được cập nhật bất cứ khi nào bạn điều hướng đến một vị trí khác trong tài liệu để phản ánh các thuộc tính định dạng của vị trí này.

{{% /alert %}}
