---
title: Hãy dùng `DocumentBuilder` để chèn các phần tử tài liệu
second_title: Aspose.Words cho Java
articleTitle: Hãy dùng `DocumentBuilder` để chèn các phần tử tài liệu
linktitle: Hãy dùng `DocumentBuilder` để chèn các phần tử tài liệu
type: docs
description: "Chèn các thành phần tài liệu bằng trình tạo tài liệu trong Java."
weight: 10
url: /vi/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)" dùng để sửa đổi tài liệu. Bài viết này giải thích và miêu tả cách thực hiện một số nhiệm vụ.

## Chèn một chuỗi văn bản

Chỉ cần truyền chuỗi văn bản bạn cần chèn vào tài liệu qua phương thức [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String). Định dạng văn bản được xác định bởi thuộc tính `Font`. Đối tượng này chứa các thuộc tính phông chữ khác nhau (tên phông chữ, kích thước phông chữ, màu sắc và v.v...). Một số thuộc tính phông chữ quan trọng cũng được đại diện bởi các [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) thuộc tính để cho phép bạn truy cập trực tiếp chúng. Đây là các thuộc tính kiểu boolean [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) và [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Hãy lưu ý rằng định dạng ký tự bạn đặt sẽ áp dụng cho tất cả văn bản chèn từ vị trí hiện tại trong tài liệu trở đi.

{{% /alert %}}

Mã ví dụ sau chèn văn bản đã định dạng sử dụng DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Chèn một đoạn văn

DocumentBuilder.writeln chèn một chuỗi văn bản vào tài liệu nhưng ngoài ra nó thêm ngắt đoạn. Định dạng phông chữ hiện tại cũng được xác định bởi thuộc tính DocumentBuilder.getFont và định dạng đoạn văn hiện tại được xác định bởi thuộc tính DocumentBuilder.getParagraphFormat

Mã ví dụ cho thấy cách chèn đoạn văn vào tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Chèn một Bảng

Thuật toán cơ bản để tạo một bảng sử dụng `DocumentBuilder` là đơn giản:

1. Khởi động bảng bằng cách sử dụng [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Chèn một ô bằng cách sử dụng [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Điều này bắt đầu tự động một hàng mới. Nếu cần thiết, hãy dùng thuộc tính [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) để chỉ định việc định dạng ô.
1. Chèn nội dung của ô bằng cách sử dụng các phương thức `DocumentBuilder`.
1. Lặp lại các bước 2 và 3 cho đến khi hàng được hoàn tất.
1. Gọi [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) để kết thúc hàng hiện tại. Nếu cần, dùng thuộc tính [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) để chỉ định cách định dạng hàng.
1. Lặp lại bước 2 - 5 cho đến khi bảng đã hoàn tất.
1. Gọi [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) để hoàn thành việc xây dựng bàn. Các phương pháp tạo bảng thích hợp được mô tả ở dưới đây.

### Khởi đầu một Bảng

Gọi DocumentBuilder.startTable là bước đầu tiên khi xây dựng một bảng. Nó cũng có thể được gọi bên trong một ô, trong trường hợp đó nó bắt đầu một bảng lồng nhau. Phương pháp tiếp theo để gọi là "DocumentBuilder.insertCell".

### Chèn một ô

Sau khi bạn gọi DocumentBuilder.insertCell, một tế bào mới được tạo ra và bất kỳ nội dung nào bạn thêm bằng cách sử dụng các phương pháp khác của lớp `DocumentBuilder` sẽ được thêm vào tế bào hiện tại. Để bắt đầu một ô mới trong cùng một hàng, gọi lại DocumentBuilder.insertCell. Sử dụng thuộc tính "DocumentBuilder.getCellFormat" để chỉ định định dạng ô. Nó trả về một [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) đối tượng đại diện cho tất cả các định dạng cho một tế bào bảng.

### Kết thúc một Hàng

Gọi DocumentBuilder.endRow để kết thúc dòng hiện tại. Nếu bạn gọi DocumentBuilder.insertCell ngay sau đó, thì bảng sẽ tiếp tục trên một hàng mới. Sử dụng thuộc tính `DocumentBuilder.RowFormat` để chỉ định cách định dạng hàng. Nó trả về một [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) đối tượng mà đại diện cho tất cả các định dạng cho một hàng bảng.

### Kết thúc một Bảng

Gọi DocumentBuilder.endTable để kết thúc bảng hiện tại. Phương pháp này chỉ nên được gọi một lần sau khi DocumentBuilder.endRow được gọi. Khi được gọi, DocumentBuilder.endTable di chuyển con trỏ ra khỏi ô hiện tại về một vị trí ngay sau bảng. Ví dụ sau cho thấy cách xây dựng một bảng được định dạng có 2 hàng và 2 cột.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Chèn một đường ngắt

Nếu bạn muốn bắt đầu một dòng mới, đoạn văn, cột, phần hoặc trang cụ thể, gọi DocumentBuilder.insertBreak. Truyền cho phương thức này kiểu của sự phân chia mà bạn cần chèn đó là được biểu diễn bởi enum `BreakType`
Mã ví dụ sau cho thấy cách chèn các đoạn ngắt trang vào tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Chèn một hình ảnh

DocumentBuilder cung cấp một số phiên bản quá tải của phương thức [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) cho phép bạn chèn hình ảnh nổi hoặc trôi nổi. Nếu hình ảnh là một tệp metafile EMF hoặc WMF, nó sẽ được chèn vào tài liệu theo định dạng tệp metafile. Tất cả hình ảnh khác sẽ được lưu trữ ở định dạng PNG. Phương pháp DocumentBuilder.insertImage có thể sử dụng các hình ảnh từ các nguồn khác nhau:

- Từ một tập tin hoặc `URL` bằng cách truyền tham số chuỗi
- Từ một dòng chảy bằng cách truyền một `Stream` tham số
- Từ một đối tượng Hình ảnh bằng cách truyền tham số Hình ảnh
- Từ một mảng byte bằng cách truyền một tham số mảng byte
- Và những người khác

Đối với từng phương thức DocumentBuilder.insertImage, có những biến thể cho phép bạn chèn hình ảnh với các tùy chọn sau:

- Trực tuyến hoặc trôi nổi ở một vị trí cụ thể
- Thang tỷ lệ phần trăm hoặc kích thước tùy chỉnh

Ngoài ra, phương thức DocumentBuilder.insertImage trả về một [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) đối tượng mới được tạo và chèn để bạn có thể thay đổi thêm các thuộc tính của Shape.

### Chèn hình ảnh inline

Chuyển một chuỗi duy nhất đại diện cho một tệp chứa hình ảnh sang DocumentBuilder.insertImage để chèn hình ảnh vào tài liệu dưới dạng đồ họa inline. Phần mã ví dụ dưới đây cho thấy cách chèn một hình ảnh nhúng vào vị trí con trỏ trong tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Chèn một hình ảnh nổi (đặt tuyệt đối)

Ví dụ này chèn một hình ảnh nổi từ tập tin hoặc `URL` vào một vị trí và kích thước cụ thể nào đó.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Chèn Bookmark

Để chèn dấu đánh dấu trang vào tài liệu bạn nên làm như sau:

1. Gọi [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) và truyền cho nó tên đánh dấu trang mong muốn.
1. Chèn văn bản dấu trang bằng cách sử dụng `DocumentBuilder` phương pháp.
1. Gọi [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) truyền cho nó cùng một tên mà bạn đã dùng với DocumentBuilder.startBookmark.

Dấu trang có thể chồng chéo và trải dài trên bất kỳ phạm vi nào. Để tạo bookmark hợp lệ, bạn cần gọi cả DocumentBuilder.startBookmark và DocumentBuilder.endBookmark với cùng một tên bookmark.

Những dấu đánh dấu không được định dạng hoặc những dấu đánh dấu có tên trùng lặp sẽ bị bỏ qua khi tài liệu lưu lại.

Mã ví dụ dưới đây cho thấy cách chèn một dấu đánh dấu vào tài liệu sử dụng bộ xây dựng tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Chèn một Trường

Các trường trong Microsoft Word tài liệu gồm mã trường và kết quả trường. Mã trường giống như một công thức và giá trị trường là giá trị mà công thức tạo ra. Trường mã cũng có thể chứa các công tắc trường là các hướng dẫn bổ sung để thực hiện một hành động cụ thể. Bạn có thể chuyển đổi giữa hiển thị mã trường và kết quả trong tài liệu của bạn Microsoft Word bằng cách sử dụng phím tắt bàn phím Alt+F9. Mã trường xuất hiện giữa dấu ngoặc nhọn ( { } ). Sử dụng [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) để tạo trường trong tài liệu. Bạn cần chỉ định loại trường, mã trường và giá trị trường. Nếu bạn không chắc về cú pháp mã trường cụ thể, hãy tạo trường trong Microsoft Word trước và chuyển đổi để xem mã trường của nó
Mã ví dụ sau chèn một lĩnh vực kết hợp vào một tài liệu bằng cách sử dụng DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Chèn một `Form` Trường

Các trường (bảng) biểu mẫu là một trường hợp đặc biệt của các trường từ (word field) cho phép " tương tác" với người dùng. Các trường trong Microsoft Word bao gồm textbox, combobox và checkbox. DocumentBuilder cung cấp các phương pháp đặc biệt để chèn mỗi loại trường vào tài liệu: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), và [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Lưu ý rằng nếu bạn chỉ định tên cho trường biểu mẫu thì một dấu trang sẽ được tạo ra tự động với cùng tên đó.

### Chèn Input văn bản

DocumentBuilder.insertTextInput chèn một ô hộp văn bản vào tài liệu. Mã đoạn sau cho thấy cách chèn trường văn bản vào một tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Chèn một `CheckBox`

Gọi Call DocumentBuilder.insertCheckBox để chèn một hộp kiểm vào tài liệu. Ví dụ mã sau cho thấy cách chèn một trường hộp kiểm vào tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Chèn ComboBox

Gọi Call DocumentBuilder.insertComboBox để chèn một hộp kết hợp vào tài liệu. Mã ví dụ sau đây cho thấy cách chèn trường hộp kết hợp vào tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Chèn Locale tại Cấp Trường

Khách hàng có thể chỉ định Locale tại cấp trường hiện nay và có thể đạt được kiểm soát tốt hơn. Locale Ids có thể được liên kết với mỗi trường bên trong DocumentBuilder. Các ví dụ bên dưới minh họa cách sử dụng tùy chọn này.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Chèn vào HTML

Bạn có thể dễ dàng chèn một chuỗi HTML chứa một phần của tài liệu HTML hoặc toàn bộ tài liệu HTML vào tài liệu Word. Chỉ cần truyền chuỗi này vào phương thức insertHtml của DocumentBuilder. Một trong những thực hiện hữu ích của phương pháp là lưu trữ một chuỗi HTML trong cơ sở dữ liệu và chèn nó vào tài liệu trong mail merge để nhận được nội dung đã định dạng thêm thay vì xây dựng nó bằng các phương pháp khác nhau của trình tạo tài liệu. Mã ví dụ sau cho thấy chèn HTML vào một tài liệu sử dụng DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Chèn một liên kết siêu văn bản

Sử dụng "DocumentBuilder.insertHyperlink" để chèn liên kết siêu văn bản vào tài liệu. Phương pháp này chấp nhận ba tham số: văn bản của liên kết sẽ được hiển thị trong tài liệu, điểm đến của liên kết (URL hoặc tên một dấu đánh dấu trong tài liệu), và một tham số boolean nên là true nếu `URL` là một tên của dấu đánh dấu trong tài liệu.DocumentBuilder.insertHyperlink gọi nội bộ DocumentBuilder.insertField. Phương pháp luôn thêm dấu phẩy ở đầu và cuối URL. Lưu ý rằng bạn cần phải chỉ rõ định dạng phông chữ cho văn bản hiển thị liên kết siêu văn bản bằng thuộc tính `Font`. Mã đoạn sau chèn một liên kết siêu văn bản vào tài liệu sử dụng DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Chèn mục lục

Bạn có thể chèn một `TOC` (Bảng mục lục) vào tài liệu tại vị trí hiện tại bằng cách gọi phương thức [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String). Phương thức 'DocumentBuilder.insertTableOfContents' chỉ sẽ chèn một trường `TOC` vào tài liệu. Để lập bản đồ mục lục và hiển thị chúng theo số trang, phương pháp **Document.UpdateFields** phải được gọi sau khi chèn trường. Mã ví dụ sau cho thấy cách chèn một trường Mục lục vào tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Chèn đối tượng Ole

Nếu bạn muốn gọi đối tượng Ole thì gọi [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Đặt Tên Tập tin và Mở rộng khi Nhập đối tượng OLE

Gói OLE là một cách thức "lỗi thời" và chưa được ghi chép rõ ràng để lưu trữ các đối tượng nhúng nếu trình xử lý OLE không được biết tới. Thời kỳ đầu Windows như Windows 3.1, 95 và 98 có ứng dụng Packager.exe có thể được sử dụng để nhúng bất kỳ loại dữ liệu nào vào tài liệu. Bây giờ, ứng dụng này bị loại trừ khỏi Windows nhưng Microsoft Word và các ứng dụng khác vẫn sử dụng nó để nhúng dữ liệu nếu trình xử lý OLE bị thiếu hoặc không biết đến. Lớp OlePackage cho phép truy cập vào các thuộc tính gói OLE.Ví dụ mã sau cho thấy cách thiết lập tên tệp, phần mở rộng và tên hiển thị cho Gói OLE.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Nhận dữ liệu thô của đối tượng OLE

Mã ví dụ sau trình diễn cách lấy dữ liệu nguyên thủy của đối tượng OLE bằng phương pháp `OleFormat.GetRawData`().

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Chèn Dải ngang vào Tài liệu

Mã ví dụ sau cho thấy cách chèn hình dạng quy tắc ngang vào một tài liệu bằng phương thức `DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Làm việc với hình dạng

### Chèn hình inline và free-floating

Bạn có thể chèn một hình dạng kiểu trực tuyến với loại và kích thước được chỉ định và một hình dạng nổi tự do với vị trí, kích thước và loại văn bản được chỉ định vào một tài liệu bằng phương thức `DocumentBuilder.InsertShape`. Phương pháp `DocumentBuilder.InsertShape` cho phép chèn DML vào mô hình tài liệu. Tài liệu phải được lưu trong một định dạng hỗ trợ hình dạng DML, nếu không thì các nút này sẽ được chuyển đổi thành hình dạng VML khi lưu tài liệu. Mã ví dụ sau cho thấy cách chèn các hình dạng này vào tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Tạo hình chữ nhật góc cạnh

Bạn có thể tạo một hình chữ nhật góc vuông sử dụng Aspose.Words. Các dạng hình là: SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded và DiagonalCornersRounded. Hình dạng DML được tạo bằng cách sử dụng phương pháp `DocumentBuilder.InsertShape` với các kiểu hình dạng này. Những kiểu này không thể dùng để tạo hình VML. Việc cố gắng tạo hình dạng bằng cách sử dụng constructor công khai của lớp "Shape" sẽ gây ra ngoại lệ "NotSupportedException. Ví dụ về mã sau cho thấy cách chèn các hình dạng này vào tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Nhập các hình dạng với Math XML dưới dạng hình dạng vào DOM

Bạn có thể sử dụng thuộc tính `LoadOptions.ConvertShapeToOfficeMath` để chuyển đổi các hình dạng với EquationXML sang đối tượng Office Math. Giá trị mặc định của thuộc tính này tương ứng với hành vi MS Word nghĩa là các hình dạng có phương trình XML không được chuyển đổi thành đối tượng toán học Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
