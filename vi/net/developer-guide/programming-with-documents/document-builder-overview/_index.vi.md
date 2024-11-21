---
title: Tổng quan về Trình tạo tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Tổng quan về Trình tạo tài liệu
linktitle: Tổng quan về Trình tạo tài liệu
type: docs
description: "DocumentBuilder cho phép bạn tạo tài liệu động từ đầu hoặc thêm các phần tử mới vào tài liệu hiện có bằng C#. DocumentBuilder cung cấp các phương thức để chèn văn bản, hộp kiểm, bảng, hình ảnh và các thành phần nội dung khác trong .NET."
weight: 30
url: /vi/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) là một lớp mạnh mẽ liên kết với [Document](https://reference.aspose.com/words/net/aspose.words/document/) và cho phép bạn xây dựng các tài liệu động từ đầu hoặc thêm các phần tử mới vào tài liệu hiện có.

**DocumentBuilder** cung cấp các phương thức để chèn văn bản, hộp kiểm, đối tượng ole, đoạn văn, danh sách, bảng, hình ảnh và các thành phần nội dung khác. Nó cho phép bạn chỉ định phông chữ, định dạng đoạn hoặc phần và thực hiện các thao tác khác.

## Trình tạo tài liệu hoặc Aspose.Words DOM

**DocumentBuilder** bổ sung các lớp và phương thức có sẵn trong Aspose.Words Document Object Model (DOM) để đơn giản hóa các tác vụ xây dựng tài liệu phổ biến nhất. Nghĩa là, bạn có thể tạo và sửa đổi nội dung của tài liệu thông qua Aspose.Words DOM, điều này đòi hỏi sự hiểu biết tốt về cấu trúc cây và sử dụng DocumentBuilder. `DocumentBuilder` là "mặt tiền" cho cấu trúc **Document** phức tạp, cho phép bạn chèn nội dung và định dạng một cách nhanh chóng và dễ dàng.

Các thao tác có thể thực hiện được với **DocumentBuilder** cũng có thể thực hiện được khi sử dụng trực tiếp các lớp của Aspose.Words DOM. Tuy nhiên, việc sử dụng trực tiếp các lớp DOM Aspose.Words thường yêu cầu nhiều dòng mã hơn so với việc sử dụng **DocumentBuilder**.

## Điều hướng tài liệu

Điều hướng tài liệu dựa trên khái niệm con trỏ ảo mà bạn có thể di chuyển đến một vị trí khác trong tài liệu bằng nhiều phương pháp **DocumentBuilder.MoveToXXX** khác nhau như [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) và [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Con trỏ ảo này cho biết vị trí văn bản sẽ được chèn khi gọi các phương thức [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) và các phương thức khác. Xem bài viết sau "Điều hướng bằng con trỏ" để tìm hiểu thêm về con trỏ ảo.

Ví dụ mã sau đây cho biết cách điều hướng đến dấu trang:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Xây dựng và sửa đổi tài liệu

Aspose.Words API cung cấp một số lớp chịu trách nhiệm định dạng các thành phần khác nhau của tài liệu. Mỗi lớp bao gồm các thuộc tính định dạng liên quan đến một thành phần tài liệu cụ thể, chẳng hạn như văn bản, đoạn văn, phần và các thuộc tính khác. Ví dụ: lớp [Font](https://reference.aspose.com/words/net/aspose.words/font/) biểu thị các thuộc tính định dạng ký tự, lớp [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) biểu thị các thuộc tính định dạng đoạn văn, v.v. Đối tượng của các lớp này được trả về bởi các thuộc tính **DocumentBuilder** tương ứng, có cùng tên với các lớp. Do đó, bạn có thể truy cập chúng và đặt định dạng mong muốn trong quá trình xây dựng tài liệu.

Bạn cũng có thể chèn văn bản, hộp kiểm, đối tượng ole, hình ảnh, dấu trang, trường biểu mẫu và các thành phần tài liệu khác vào vị trí con trỏ bằng phương thức `Write` hoặc bất kỳ phương thức **DocumentBuilder.InsertXXX** nào, chẳng hạn như [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) và các phương thức tương tự.

Hãy xem cách tạo một tài liệu đơn giản bằng **DocumentBuilder**.

### Tạo tài liệu bằng DocumentBuilder

Để bắt đầu, bạn cần tạo **DocumentBuilder** và liên kết nó với đối tượng **Document**. Bạn tạo một phiên bản **DocumentBuilder** mới bằng cách gọi hàm tạo của nó và chuyển nó tới đối tượng **Document** để đính kèm vào trình tạo.

Để chèn văn bản, truyền chuỗi văn bản bạn cần chèn vào tài liệu sang phương thức **Write**.

Ví dụ về mã sau đây cho thấy cách tạo một tài liệu đơn giản bằng cách sử dụng trình tạo tài liệu.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Chỉ định định dạng tài liệu

Thuộc tính [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) xác định định dạng văn bản. Đối tượng này chứa các thuộc tính phông chữ khác nhau (tên phông chữ, cỡ chữ, màu sắc, v.v.). Một số thuộc tính phông chữ quan trọng cũng được thể hiện bằng thuộc tính **DocumentBuilder** để cho phép bạn truy cập chúng trực tiếp. Đây là các thuộc tính boolean [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/) và [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/).

Ví dụ mã sau đây cho thấy cách chèn văn bản được định dạng bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) quy định định dạng ký tự sẽ được áp dụng cho toàn bộ văn bản được chèn từ vị trí hiện tại trong tài liệu trở đi.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) chỉ định định dạng đoạn văn cho đoạn văn hiện tại và tất cả các đoạn văn được chèn vào.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) chỉ định thuộc tính trang và phần cho phần hiện tại và toàn bộ phần sẽ được chèn vào.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) và [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) chỉ định các thuộc tính định dạng sẽ được áp dụng cho các ô và hàng của bảng từ vị trí hiện tại trong tài liệu trở đi.

Trong trường hợp này, "hiện tại" có nghĩa là vị trí, đoạn, phần, ô hoặc hàng chứa con trỏ.

{{% /alert %}}

{{% alert color="primary" %}}

Lưu ý rằng các thuộc tính **Font**, **ParagraphFormat** và **PageSetup** được cập nhật bất cứ khi nào bạn điều hướng đến một vị trí khác trong tài liệu để phản ánh các thuộc tính định dạng của vị trí này.

{{% /alert %}}
