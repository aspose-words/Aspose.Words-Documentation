---
title: Sử dụng DocumentBuilder để Sửa đổi Tài liệu
second_title: Aspose.Words cho Java
articleTitle: Sử dụng DocumentBuilder để Sửa đổi Tài liệu
linktitle: Sử dụng DocumentBuilder để Sửa đổi Tài liệu
type: docs
description: "Sử dụng trình xây dựng tài liệu để sửa đổi một tài liệu dễ dàng trong Java."
weight: 20
url: /vi/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Định dạng cụ thể

### Định dạng Phông chữ

Định dạng phông chữ hiện tại được đại diện bởi một `Font` đối tượng trả lại bởi thuộc tính `DocumentBuilder.Font`. Lớp `Font` chứa một loạt các thuộc tính phông chữ có thể được thực hiện trong Microsoft Word.

| ![font-formatting-aspose-words-java](documentbuilder-to-modify-document-1.png) |
| :- |
Mã đoạn cho thấy cách đặt định dạng phông chữ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Định dạng ô

Định dạng tế bào được sử dụng trong quá trình xây dựng bảng. Nó được thể hiện bởi một đối tượng `CellFormat` trả về bởi thuộc tính `DocumentBuilder.CellFormat`. CellFormat bao gồm các thuộc tính của ô như chiều rộng hay căn chỉnh thẳng đứng.

| ![cell-formatting-aspose-words-java](documentbuilder-to-modify-document-2.png) |
| :- |
Mã ví dụ sau cho thấy cách tạo một bảng chứa một ô duy nhất được định dạng.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Định Dạng Hàng

Định dạng hàng hiện tại được xác định bởi một `RowFormat` đối tượng được trả về bởi thuộc tính `DocumentBuilder.RowFormat`. Đối tượng bao gồm thông tin về tất cả các định dạng hàng bảng.

| ![row-formatting-aspose-words-java](documentbuilder-to-modify-document-3.png) |
| :- |
Ví dụ về be low code cho thấy cách tạo bảng chứa một ô duy nhất và áp dụng định dạng hàng.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Định dạng Danh sách

Aspose.Words cho phép tạo danh sách dễ dàng bằng cách áp dụng định dạng danh sách. DocumentBuilder cung cấp thuộc tính `DocumentBuilder.ListFormat` trả về một `ListFormat` đối tượng. Đối tượng này có một vài phương pháp để bắt đầu và kết thúc danh sách và tăng/giảm lề.

| ![list-fformatting-aspose-words-java](documentbuilder-to-modify-document-4.png) |
| :- |
Có hai loại danh sách chính trong Microsoft Word: có dấu đầu dòng và có số.

- Để bắt đầu một danh sách có dấu chấm tròn, gọi [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Để bắt đầu một danh sách có số, gọi [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Điểm hoặc số và định dạng được thêm vào đoạn văn hiện tại và tất cả các đoạn văn tiếp theo được tạo bằng **DocumentBuilder** cho đến khi [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) được gọi để dừng định dạng danh sách dấu chấm.

Trong các tài liệu word, danh sách có thể bao gồm tối đa chín cấp độ. Định dạng danh sách cho mỗi cấp độ chỉ ra loại dấu chấm tròn hay số được sử dụng, lề trái, khoảng trống giữa dấu chấm tròn và văn bản v.v...

- Để tăng mức liệt kê của đoạn văn hiện tại lên một mức, hãy gọi [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
"- Giảm mức danh sách của đoạn văn hiện tại xuống một mức, gọi [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)."

Các phương thức thay đổi mức danh sách và áp dụng các thuộc tính định dạng của mức mới.

{{% alert color="primary" %}}

Bạn cũng có thể sử dụng thuộc tính [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) để lấy hoặc đặt mức danh sách cho đoạn văn. Các cấp danh sách được đánh số từ 0 đến 8.

{{% /alert %}}

Mã ví dụ sau cho thấy cách xây dựng danh sách nhiều cấp.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Cài đặt trang và định dạng phần

Cài đặt trang và các thuộc tính của phần là bao bọc trong đối tượng `PageSetup` được trả lại bởi thuộc tính `DocumentBuilder.PageSetup`. Đối tượng chứa tất cả các thuộc tính của bố cục trang của một phần (lề trái, lề dưới, kích thước giấy và vân vân) như là thuộc tính.

| ![section-formatting-aspose-words-java](documentbuilder-to-modify-document-5.png) |
| :- |
Mã ví dụ sau cho thấy cách đặt những thuộc tính như kích thước trang và định hướng cho phần hiện tại.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Áp dụng một kiểu

Một số đối tượng định dạng như Phông chữ hoặc Định Dạng Câu (ParagraphFormat) hỗ trợ các kiểu (styles). Một phong cách được xây dựng sẵn hoặc người dùng định nghĩa được biểu thị bằng một `Style` đối tượng chứa các thuộc tính phong cách tương ứng như tên, phong cách cơ sở, phông chữ và định dạng đoạn văn của phong cách, v.v...

Ngoài ra, một **Style** đối tượng cung cấp thuộc tính [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) trả về một bộ phân biệt phong cách không phụ thuộc vào địa phương được đại diện bởi một giá trị số **Style.StyleIdentifier**. Điểm chính là các tên của các kiểu được xây dựng sẵn trong Microsoft Word là được bản địa hóa cho các ngôn ngữ khác nhau. Sử dụng một mã nhận dạng kiểu, bạn có thể tìm đúng kiểu bất kể ngôn ngữ tài liệu. Giá trị liệt kê tương ứng với các kiểu được xây dựng sẵn như Microsoft Word Normal, Heading 1, Heading 2 v.v... Tất cả kiểu do người dùng định nghĩa được gán cho **Giá trị StyleIdentifier.User**.

| ![apply-style-aspose-words-java](documentbuilder-to-modify-document-6.png) |
| :- |
Mã ví dụ sau cho thấy cách áp dụng kiểu đoạn.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Lề và Bóng

Các đường viền được biểu diễn bởi BorderCollection. Đây là một tập hợp các đối tượng Border được truy cập bằng chỉ mục hoặc theo kiểu biên giới. Loại biên là được đại diện bởi `BorderType` enumaration. Một số giá trị của biểu thức là áp dụng cho nhiều hoặc chỉ một phần tử tài liệu. Ví dụ, `BorderType.Bottom` áp dụng cho một đoạn văn hoặc một ô trong bảng trong khi `BorderType.DiagonalDown` chỉ định đường viền chéo trong một ô bảng.

Cả bộ sưu tập biên giới và từng biên giới riêng biệt đều có các thuộc tính tương tự như màu sắc, kiểu đường viền, độ rộng đường viền, khoảng cách từ văn bản và bóng tùy chọn. Họ được đại diện bởi những thuộc tính cùng tên. Bạn có thể đạt được các kiểu đường viền khác nhau bằng cách kết hợp các giá trị thuộc tính. Ngoài ra, cả hai **BorderCollection** và **Border** đối tượng cho phép bạn đặt lại những giá trị đó về mặc định bằng cách gọi phương thức [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) Lưu ý khi các thuộc tính biên giới được đặt lại vào giá trị mặc định thì đường viền là vô hình.

| ![set-borders-shading-aspose-words-java](documentbuilder-to-modify-document-7.png) |
| :- |
Lớp [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) chứa các thuộc tính màu cho các phần tử tài liệu. Bạn có thể đặt kết cấu pha màu mong muốn và màu sắc được áp dụng cho nền và trước mặt của phần tử.

Tần số bóng đổ được đặt với một giá trị [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) đếm cho phép áp dụng các mẫu khác nhau vào đối tượng **Shading**. Ví dụ, để đặt màu nền cho một phần tử tài liệu, sử dụng giá trị [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) và đặt màu sắc lót phía trước như phù hợp.

| ![borders-and-shading-aspose-words-java](documentbuilder-to-modify-document-8.png) |
| :- |
Dưới đây là ví dụ cho thấy cách áp dụng đường viền và bóng đến một đoạn văn.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words cung cấp hai thuộc tính `ParagraphFormat.SnapToGrid` và `Font.SnapToGrid` để lấy và đặt thuộc tính đoạn văn bật theo lưới

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Di chuyển con trỏ

### Xác định Vị trí Con Trỏ Hiện tại

Bạn có thể nhận biết nơi con trỏ của người xây dựng đang ở hiện tại bất cứ lúc nào. Tính [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) thuộc tính trả lại nút hiện đang được chọn trong người xây dựng này. Điểm này là con trực tiếp của một đoạn văn. Bất kỳ thao tác chèn nào bạn thực hiện bằng cách sử dụng `DocumentBuilder` sẽ chèn trước `DocumentBuilder.CurrentNode`. Khi đoạn văn hiện tại là trống hoặc con trỏ đang được đặt ngay trước cuối của đoạn văn, `DocumentBuilder.CurrentNode` trả về null.

Cũng vậy, bạn có thể dùng thuộc tính [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph), được lấy ra đoạn văn bản hiện đang được chọn trong **DocumentBuilder** này. Ví dụ low code cho thấy cách truy cập vào nút hiện tại trong một bộ xây dựng tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Chuyển đến Bất kỳ nút nào (Các đoạn văn và con của chúng)

Nếu bạn có một nút đối tượng tài liệu, là một đoạn văn hoặc một con trực tiếp của một đoạn văn, bạn có thể chỉ mục con trỏ xây dựng đến nút này. Sử dụng [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) phương pháp để thực hiện điều đó.
Mã ví dụ sau cho thấy cách di chuyển vị trí con trỏ đến một nút đã chỉ định.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Di chuyển đến Document Start/End

Nếu bạn cần di chuyển đến đầu của tài liệu, gọi [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Nếu bạn muốn di chuyển đến cuối tài liệu, gọi [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Di chuyển đến một phần

Nếu bạn đang làm việc với một tài liệu chứa nhiều phần, bạn có thể chuyển đến phần mong muốn bằng [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Phương pháp này di chuyển con trỏ đến đầu một phần được chỉ định và chấp nhận chỉ số của phần được yêu cầu. Khi phần chỉ mục lớn hơn hoặc bằng 0, nó xác định một chỉ mục từ đầu của tài liệu với 0 là phần đầu tiên. Khi chỉ mục phần là nhỏ hơn 0, nó chỉ định một chỉ mục từ cuối tài liệu với -1 là phần cuối cùng. Ví dụ về "the below code" cho thấy cách di chuyển vị trí con trỏ đến phần được chỉ định. Bạn có thể tải xuống tập tin mẫu của ví dụ này từ [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Di chuyển đến Phần tiêu đề/chân trang

Khi bạn cần đặt một số dữ liệu vào tiêu đề hoặc chân trang, bạn nên di chuyển đến đó trước bằng cách sử dụng [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). Phương pháp chấp nhận giá trị của sự ghi danh HeaderFooterType xác định loại tiêu đề hoặc chân trang mà con trỏ nên được di chuyển.

Nếu bạn muốn tạo tiêu đề và chân trang khác nhau cho trang đầu tiên, bạn cần đặt thuộc tính [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) là **true**. Nếu bạn muốn tạo các tiêu đề và chân trang khác nhau cho các trang chẵn và lẻ, bạn cần đặt [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) là **true**.

Nếu bạn cần trở lại câu chuyện chính, hãy sử dụng [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) để di chuyển ra khỏi tiêu đề hoặc chân trang. Dưới đây là ví dụ tạo ra các tiêu đề và chân trang trong một tài liệu sử dụng DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Di chuyển sang một đoạn văn

Sử dụng [DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) để di chuyển con trỏ đến đoạn văn mong muốn trong phần hiện tại. Bạn nên truyền hai tham số vào phương thức này: paragraphIndex (chỉ mục của đoạn văn để di chuyển đến) và characterIndex (chỉ mục của ký tự bên trong đoạn văn).

Điều hướng được thực hiện bên trong câu chuyện hiện tại của phần hiện tại. Đó là, nếu bạn di chuyển con trỏ đến tiêu đề chính của phần đầu tiên, sau đó paragraphIndex chỉ ra chỉ số của đoạn văn trong tiêu đề đó của phần đó.

Khi "paragraphIndex" lớn hơn hoặc bằng 0, nó chỉ ra một chỉ số bắt đầu từ đầu phần với số 0 là đoạn văn đầu tiên. Khi số đoạn văn (paragraphIndex) nhỏ hơn 0, nó chỉ ra một chỉ mục từ cuối phần với -1 là đoạn văn cuối cùng. Chỉ mục ký tự hiện tại chỉ có thể chỉ định là 0 để di chuyển đến đầu đoạn văn hoặc -1 để di chuyển đến cuối đoạn văn. Mã đoạn ví dụ cho thấy cách di chuyển vị trí con trỏ đến đoạn văn được chỉ định. Bạn có thể tải xuống tệp mẫu của ví dụ này từ [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Di chuyển đến một Cell Bảng

Sử dụng [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) nếu bạn cần di chuyển con trỏ đến một ô bảng trong phần hiện tại. Phương pháp này chấp nhận bốn tham số:

- tableIndex - chỉ mục bảng để di chuyển đến.
- rowIndex - chỉ số của hàng trong bảng.
- columnIndex - chỉ mục của cột trong bảng.
- characterIndex - chỉ mục của ký tự bên trong ô.

Điều hướng được thực hiện trong phần truyện hiện tại của phần mục hiện tại.

Đối với các tham số chỉ mục, khi chỉ mục lớn hơn hoặc bằng 0, nó xác định một chỉ mục từ đầu, bắt đầu bằng 0 là phần tử đầu tiên. Khi chỉ số nhỏ hơn 0, nó chỉ định một chỉ số từ cuối với -1 là phần tử cuối cùng.

Ngoài ra, hãy lưu ý rằng chỉ số ký tự hiện tại chỉ có thể chỉ định 0 để di chuyển đến đầu tế bào hoặc -1 để di chuyển đến cuối tế bào. Mã ví dụ sau cho thấy cách di chuyển vị trí con trỏ đến một tế bào bảng được chỉ định. Bạn có thể tải về tập tin mẫu của ví dụ này từ [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Di chuyển đến một Bookmark

Đánh dấu được dùng thường xuyên để đánh dấu những nơi cụ thể trong tài liệu nơi các phần tử mới cần phải chèn vào. Để di chuyển đến một dấu đánh dấu trang, sử dụng [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Phương pháp này có hai biến thể quá tải. Cái đơn giản nhất không chấp nhận bất cứ điều gì ngoài tên của dấu đánh nhỏ nơi con trỏ phải di chuyển đến. Ví dụ mã sau cho thấy cách di chuyển vị trí con trỏ đến một đánh dấu trang.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Lệnh này di chuyển con trỏ đến vị trí sau khi bắt đầu dấu đánh dấu với tên đã chỉ định. Một quá tải khác [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) di chuyển con trỏ đến một dấu đánh dấu trang với độ chính xác cao hơn. Nó chấp nhận hai tham số boolean bổ sung:

- isStart quyết định di chuyển con trỏ đến đầu hay cuối của dấu đánh dấu trang.
- isAfter xác định liệu phải di chuyển con trỏ đến sau vị trí đánh dấu bắt đầu hay kết thúc, hoặc di chuyển con trỏ để nó nằm trước vị trí đánh dấu bắt đầu hay kết thúc.

Mã ví dụ sau cho thấy cách di chuyển vị trí con trỏ đến ngay sau khi kết thúc dấu đặt trang.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Chèn văn bản mới theo cách này không thay thế văn bản hiện có trong dấu sách. Hãy lưu ý rằng một số bookmark trong tài liệu này được gán cho các trường biểu mẫu. Di chuyển đến dấu đánh dấu và chèn văn bản ở đó sẽ chèn văn bản vào mã trường biểu mẫu. Mặc dù điều này sẽ không vô hiệu hóa trường biểu mẫu, nhưng văn bản chèn sẽ không hiển thị vì nó trở thành một phần mã trường.

### Chuyển đến một `Merge` Field

Đôi khi bạn cần phải thực hiện một "hành động thủ công" Mail Merge bằng cách sử dụng `DocumentBuilder` hoặc điền vào một trường hợp hợp nhất theo một cách thức đặc biệt bên trong một sự kiện xử lý mail merge. Đó là lúc mà [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) có thể hữu ích. Phương pháp chấp nhận tên trường kết hợp. Nó di chuyển con trỏ đến một vị trí ngay sau trường kết hợp được chỉ định và loại bỏ trường kết hợp đó. Mã ví dụ sau cho thấy cách di chuyển con trỏ đến vị trí chỉ xa hơn trường hợp kết hợp được chỉ định.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Làm thế nào để chuyển đổi giữa các đơn vị đo lường

Phần lớn thuộc tính của đối tượng được cung cấp trong Aspose.Words API mà đại diện cho một số phép đo (chiều rộng / chiều cao, lề và các khoảng cách khác) chấp nhận giá trị trong điểm (1 inch bằng 72 điểm). Thỉnh thoảng điều này không thuận tiện vì có lớp `ConvertUtil` cung cấp các hàm trợ giúp để chuyển đổi giữa nhiều đơn vị đo lường khác nhau. Nó cho phép chuyển đổi inch sang điểm, điểm sang inch, pixel sang điểm và điểm sang pixel. Khi các pixel được chuyển đổi thành điểm và ngược lại, nó có thể được thực hiện tại độ phân giải 96 dpi (điểm trên inch) hoặc ở độ phân giải dpi được chỉ định.

**ConvertUtil** rất hữu ích khi thiết lập các thuộc tính trang khác nhau vì ví dụ inch là đơn vị đo lường thông dụng hơn điểm. Ví dụ sau cho thấy cách thiết lập thuộc tính trang bằng đơn vị inch.

Mẫu mã sau cho thấy cách chỉ định các thuộc tính trang bằng inch.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
