---
title: Sử dụng `DocumentBuilder` Để Sửa Đổi Tài liệu Một Cách Dễ Dàng
second_title: Aspose.Words cho C++
articleTitle: Sử dụng `DocumentBuilder` Để Sửa Đổi Tài liệu Một Cách Dễ Dàng
linktitle: Sử dụng `DocumentBuilder` Để Sửa Đổi Tài liệu Một Cách Dễ Dàng
type: docs
description: "Sử dụng trình tạo tài liệu để sửa đổi tài liệu một cách dễ dàng trong C++."
weight: 190
url: /vi/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Chỉ Định Định Dạng

### Định Dạng Phông Chữ

Định dạng phông chữ hiện tại được biểu thị bằng một đối tượng `Font` được trả về bởi thuộc tính `DocumentBuilder.Font`. Lớp `Font` chứa nhiều thuộc tính phông chữ có thể có trong Microsoft Word. Ví dụ dưới đây cho thấy cách đặt định dạng phông chữ.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Định Dạng Đoạn Văn

Định dạng đoạn văn hiện tại được biểu diễn bằng một đối tượng `ParagraphFormat` được trả về bởi thuộc tính `DocumentBuilder.ParagraphFormat`. Đối tượng này đóng gói các thuộc tính định dạng đoạn văn khác nhau có sẵn trong Microsoft Word. Bạn có thể dễ dàng đặt lại định dạng đoạn văn thành mặc định Thành kiểu Bình thường, căn trái, không thụt lề, không khoảng cách, không viền và không tô bóng bằng cách gọi `ParagraphFormat.ClearFormatting`. Ví dụ dưới đây cho thấy cách đặt định dạng đoạn văn.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Làm Việc Với Kiểu Chữ Châu Á

#### Tự Động Điều Chỉnh Không gian Giữa Văn Bản châu á và Latin, Số

Nếu bạn đang thiết kế một mẫu có cả văn bản Đông Á và latinh và bạn muốn nâng cao diện mạo của mẫu biểu mẫu bằng cách kiểm soát khoảng cách giữa cả hai loại văn bản, bạn có thể định cấu hình mẫu biểu mẫu của mình để tự động điều chỉnh khoảng cách giữa hai loại văn bản này. Bạn có thể sử dụng thuộc tính AddSpaceBetweenFarEastAndAlpha và AddSpaceBetweenFarEastAndDigit của lớp ParagraphFormat để đạt được điều này.

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` và `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Thay Đổi Khoảng Cách Đoạn Văn Châu á và Thụt Lề

Ví dụ mã sau đây cho thấy cách thay đổi Khoảng Cách Đoạn Văn Và thụt Lề Châu á.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Đặt Tùy Chọn Ngắt Dòng

Tab kiểu chữ châu á của hộp thoại `Paragraph` thuộc tính trong MS Word có nhóm ngắt dòng. Các tùy chọn của nhóm này có thể được thiết lập bằng cách sử dụng FarEastLineBreakControl, WordWrap, HangingPunctuation thuộc tính của lớp ParagraphFormat. Ví dụ Be low code cho thấy cách sử dụng các thuộc tính này.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Định Dạng Ô

Định dạng ô được sử dụng trong quá trình xây dựng bảng. Nó được biểu diễn bằng một đối tượng `CellFormat` được trả về bởi thuộc tính `DocumentBuilder.CellFormat`. CellFormat đóng gói các thuộc tính ô bảng khác nhau như chiều rộng hoặc căn chỉnh dọc. Ví dụ dưới đây cho thấy cách tạo một bảng chứa một ô được định dạng duy nhất.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Định Dạng Hàng

Định dạng hàng hiện tại được xác định bởi một đối tượng `RowFormat` được trả về bởi thuộc tính `DocumentBuilder.RowFormat`. Đối tượng đóng gói thông tin về tất cả các định dạng hàng bảng. Ví dụ dưới đây cho thấy cách tạo một bảng có chứa một ô duy nhất và áp dụng định dạng hàng.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Định Dạng Danh Sách

Aspose.Words cho phép dễ dàng tạo danh sách bằng cách áp dụng định dạng danh sách. DocumentBuilder cung cấp thuộc tính `DocumentBuilder.ListFormat` trả về đối tượng `ListFormat`. Đối tượng này có một số phương thức để bắt đầu và kết thúc một danh sách và để tăng/giảm thụt lề. Có hai loại danh sách chung trong Microsoft Word: dấu đầu dòng và số.

- Để bắt đầu một danh sách dấu đầu dòng, hãy gọi `ListFormat.ApplyBulletDefault`.
- Để bắt đầu một danh sách được đánh số, hãy gọi `ListFormat.ApplyNumberDefault`.

Dấu đầu dòng hoặc số và định dạng được thêm vào đoạn hiện tại và tất cả các đoạn tiếp theo được tạo bằng **DocumentBuilder** cho đến khi `ListFormat.RemoveNumbers` được gọi để dừng định dạng danh sách dấu đầu dòng. Trong Tài liệu Word, danh sách có thể bao gồm tối đa chín cấp độ. Định dạng danh sách cho mỗi cấp chỉ định viên đạn hoặc số nào được sử dụng, thụt lề trái, khoảng trắng giữa viên đạn và văn bản, v. v.

- Để tăng mức danh sách của đoạn hiện tại lên một cấp, hãy gọi `ListFormat.ListIndent`.
- Để giảm mức danh sách của đoạn hiện tại xuống một cấp, hãy gọi `ListFormat.ListOutdent`.

Các phương thức thay đổi cấp danh sách và áp dụng các thuộc tính định dạng của cấp độ mới.

{{% alert color="primary" %}}

Bạn cũng có thể sử dụng thuộc tính `ListFormat.ListLevelNumber` để lấy hoặc đặt mức danh sách cho đoạn văn. Các cấp danh sách được đánh số 0 đến 8.

{{% /alert %}}

Ví dụ dưới đây cho thấy cách xây dựng danh sách đa cấp.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Thiết lập trang Và Định dạng Phần

Các thuộc tính thiết lập trang và phần được đóng gói trong đối tượng `PageSetup` được trả về bởi thuộc tính `DocumentBuilder.PageSetup`. Đối tượng chứa tất cả các thuộc tính thiết lập trang của một phần (lề trái, lề dưới, kích thước giấy, v. v.) làm thuộc tính. Ví dụ dưới đây cho thấy cách đặt các thuộc tính như kích thước trang và hướng cho phần hiện tại.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Áp dụng Một Phong cách

Một số đối tượng định dạng Như phông chữ hoặc kiểu hỗ trợ ParagraphFormat. Một kiểu được tích hợp sẵn hoặc do người dùng xác định được biểu thị bằng một đối tượng `Style` chứa các thuộc tính kiểu tương ứng như tên, kiểu cơ sở, phông chữ và định dạng đoạn văn của kiểu, v. v.

Hơn nữa, một đối tượng **Style** cung cấp thuộc tính `Style.StyleIdentifier` trả về một định danh kiểu độc lập với miền địa phương được biểu thị bằng giá trị liệt kê **Style.StyleIdentifier**. Vấn đề là tên của các kiểu tích hợp trong Microsoft Word được bản địa hóa cho các ngôn ngữ khác nhau. Sử dụng mã định danh kiểu, bạn có thể tìm đúng kiểu bất kể ngôn ngữ tài liệu. Các giá trị liệt kê tương ứng với các kiểu tích hợp Microsoft Word Như Bình thường, Tiêu đề 1, Tiêu đề 2, v. v. Tất cả các kiểu do người dùng xác định được gán **StyleIdentifier.User value**. Ví dụ dưới đây cho thấy cách áp dụng kiểu đoạn văn.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Biên giới và Bóng

Biên giới được đại diện bởi BorderCollection. Đây là tập hợp Các Đối tượng Đường Viền được truy cập theo chỉ mục hoặc theo loại đường viền. Loại đường viền được biểu thị bằng cách liệt kê `BorderType`. Một số giá trị của bảng liệt kê được áp dụng cho một số hoặc chỉ một phần tử tài liệu. Ví dụ: `BorderType.Bottom` được áp dụng cho một ô đoạn văn hoặc ô bảng trong khi `BorderType.DiagonalDown` chỉ định đường viền chéo trong ô bảng.

Cả bộ sưu tập đường viền và mỗi đường viền riêng biệt đều có các thuộc tính tương tự như màu sắc, kiểu đường thẳng, chiều rộng đường thẳng, khoảng cách từ văn bản và bóng tùy chọn. Chúng được đại diện bởi các thuộc tính cùng tên. Bạn có thể đạt được các loại đường viền khác nhau bằng cách kết hợp các giá trị thuộc tính. Ngoài ra, cả hai đối tượng **BorderCollection** và **Border** cho phép bạn đặt lại các giá trị này về mặc định bằng cách gọi phương thức `Border.ClearFormatting`. Lưu ý rằng khi các thuộc tính đường viền được đặt lại về giá trị mặc định, đường viền là vô hình. Lớp `Shading` chứa các thuộc tính đổ bóng cho các phần tử tài liệu. Bạn có thể đặt kết cấu tô bóng mong muốn và màu sắc được áp dụng cho nền và tiền cảnh của phần tử.

Kết cấu tô bóng được đặt với giá trị liệt kê `TextureIndex` cho phép áp dụng các mẫu khác nhau cho đối tượng **Shading**. Ví dụ: để đặt màu nền cho phần tử tài liệu, hãy sử dụng giá trị `TextureIndex.TextureSolid` và đặt màu tô bóng nền trước cho phù hợp. Ví dụ dưới đây cho thấy cách áp dụng đường viền và tô bóng cho một đoạn văn.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Chụp Vào Lưới

Aspose.Words cung cấp hai thuộc tính `ParagraphFormat.SnapToGrid` và `Font.SnapToGrid` để lấy và đặt snap thuộc tính đoạn thành lưới.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Di chuyển Con Trỏ

### Phát hiện Vị trí Con Trỏ Hiện Tại

Bạn có thể lấy nơi con trỏ của người xây dựng hiện đang được định vị bất cứ lúc nào. Thuộc tính `DocumentBuilder.CurrentNode` trả về nút hiện được chọn trong trình xây dựng này. Nút là một con trực tiếp của một đoạn văn. Bất kỳ thao tác chèn nào bạn thực hiện bằng `DocumentBuilder` sẽ chèn trước `DocumentBuilder.CurrentNode`. Khi đoạn hiện tại trống hoặc con trỏ được định vị ngay trước khi kết thúc đoạn, `DocumentBuilder.CurrentNode` trả về null.

Ngoài ra, bạn có thể sử dụng thuộc tính `DocumentBuilder.CurrentParagraph`, nhận đoạn văn hiện được chọn trong **DocumentBuilder** này. Ví dụ dưới đây cho thấy cách truy cập nút hiện tại trong trình tạo tài liệu. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Di Chuyển đến Bất Kỳ Nút Nào (Đoạn văn và Con Cái của Họ)

Nếu bạn có một nút đối tượng tài liệu, là một đoạn văn hoặc một con trực tiếp của một đoạn văn, bạn có thể trỏ con trỏ của người xây dựng đến nút này. Sử dụng phương pháp `DocumentBuilder.MoveTo` để thực hiện việc này. Ví dụ dưới đây cho thấy cách di chuyển vị trí con trỏ đến một nút được chỉ định. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Chuyển Đến Tài Liệu Bắt Đầu/Kết Thúc

Nếu bạn cần di chuyển đến đầu tài liệu, hãy gọi `DocumentBuilder.MoveToDocumentStart`. Nếu bạn cần di chuyển đến cuối tài liệu, hãy gọi `DocumentBuilder.MoveToDocumentEnd`. Ví dụ dưới đây cho thấy cách di chuyển vị trí con trỏ đến đầu hoặc cuối tài liệu. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Di chuyển Đến Một Phần

Nếu bạn đang làm việc với một tài liệu có chứa nhiều phần, bạn có thể di chuyển đến một phần mong muốn bằng cách sử dụng `DocumentBuilder.MoveToSection`. Phương pháp này di chuyển con trỏ đến đầu một phần được chỉ định và chấp nhận chỉ mục của phần bắt buộc. Khi chỉ mục phần lớn hơn hoặc bằng 0, nó chỉ định một chỉ mục từ đầu tài liệu với 0 là phần đầu tiên. Khi chỉ mục phần nhỏ hơn 0, nó chỉ định một chỉ mục từ cuối tài liệu với -1 là phần cuối cùng. Ví dụ dưới đây cho thấy cách di chuyển vị trí con trỏ đến phần được chỉ định. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Chuyển sang Tiêu Đề/Chân Trang

Khi bạn cần đặt một số dữ liệu vào đầu trang hoặc chân trang, trước tiên bạn nên di chuyển đến đó bằng `DocumentBuilder.MoveToHeaderFooter`. Phương thức chấp nhận giá trị liệt kê HeaderFooterType xác định loại đầu trang hoặc chân trang đến nơi con trỏ nên được di chuyển. Nếu bạn muốn tạo tiêu đề và chân trang khác nhau cho trang đầu tiên, bạn cần đặt thuộc tính `PageSetup.DifferentFirstPageHeaderFooter` thành **true**. Nếu bạn muốn tạo tiêu đề và chân trang khác nhau cho các trang chẵn và lẻ, bạn cần đặt `PageSetup.OddAndEvenPagesHeaderFooter` thành **true**.

Nếu bạn cần quay lại câu chuyện chính, hãy sử dụng **DocumentBuilder.MoveToSection** để di chuyển ra khỏi đầu trang hoặc chân trang. Ví dụ dưới đây tạo tiêu đề và chân trang trong tài liệu bằng DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Chuyển sang Một Đoạn Văn

Sử dụng `DocumentBuilder.MoveToParagraph` để di chuyển con trỏ đến một đoạn mong muốn trong phần hiện tại. Bạn nên chuyển hai tham số cho phương thức này: paragraphIndex (chỉ mục của đoạn văn để di chuyển đến) và characterIndex (chỉ mục của ký tự bên trong đoạn văn).

Điều hướng được thực hiện bên trong câu chuyện hiện tại của phần hiện tại. Đó là, nếu bạn di chuyển con trỏ đến tiêu đề chính của phần đầu tiên, thì paragraphIndex chỉ định chỉ mục của đoạn bên trong tiêu đề đó của phần đó.

Khi paragraphIndex lớn hơn hoặc bằng 0, nó chỉ định một chỉ mục từ đầu phần với 0 là đoạn đầu tiên. Khi paragraphIndex nhỏ hơn 0, nó chỉ định một chỉ mục từ cuối phần với -1 là đoạn cuối cùng.

Chỉ mục ký tự hiện chỉ có thể được chỉ định là 0 để di chuyển đến đầu đoạn hoặc -1 để di chuyển đến cuối đoạn. Ví dụ dưới đây cho thấy cách di chuyển vị trí con trỏ đến đoạn được chỉ định. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Di chuyển đến Một Ô Bảng

Sử dụng `DocumentBuilder.MoveToCell` nếu bạn cần di chuyển con trỏ đến một ô bảng trong phần hiện tại. Phương pháp này chấp nhận bốn tham số:

- tableIndex - chỉ số của bảng để di chuyển đến.
- rowIndex - chỉ số của hàng trong bảng.
- columnIndex - chỉ số của cột trong bảng.
- characterIndex - chỉ số của ký tự bên trong ô.

Điều hướng được thực hiện bên trong câu chuyện hiện tại của phần hiện tại. Đối với các tham số chỉ mục, khi chỉ mục lớn hơn hoặc bằng 0, nó chỉ định một chỉ mục ngay từ đầu với 0 là phần tử đầu tiên. Khi chỉ mục nhỏ hơn 0, nó chỉ định một chỉ mục từ cuối với -1 là phần tử cuối cùng.

Ngoài ra, lưu ý rằng characterIndex hiện chỉ có thể chỉ định 0 để di chuyển đến đầu ô hoặc -1 để di chuyển đến cuối ô. Ví dụ dưới đây cho thấy cách di chuyển vị trí con trỏ đến ô bảng được chỉ định. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Di chuyển đến Dấu Trang

Dấu trang được sử dụng thường xuyên để đánh dấu các vị trí cụ thể trong tài liệu nơi các phần tử mới sẽ được chèn. Để di chuyển đến dấu trang, hãy sử dụng `DocumentBuilder.MoveToBookmark`. Phương pháp này có hai quá tải. Cái đơn giản nhất không chấp nhận gì ngoài tên của dấu trang nơi con trỏ sẽ được di chuyển. Ví dụ dưới đây cho thấy cách di chuyển vị trí con trỏ đến dấu trang. Bạn có thể tải xuống tệp mẫu của ví dụ này từ đây.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Quá tải này di chuyển con trỏ đến một vị trí ngay sau khi bắt đầu dấu trang với tên được chỉ định. Một quá tải khác `DocumentBuilder.MoveToBookmark` di chuyển con trỏ đến dấu trang với độ chính xác cao hơn. Nó chấp nhận hai tham số boolean bổ sung:

- isStart xác định xem nên di chuyển con trỏ đến đầu hay đến cuối dấu trang.
- isAfter xác định xem có nên di chuyển con trỏ đến sau vị trí bắt đầu hoặc kết thúc dấu trang hay di chuyển con trỏ đến trước vị trí bắt đầu hoặc kết thúc dấu trang.

Ví dụ dưới đây cho thấy cách di chuyển vị trí con trỏ đến ngay sau khi dấu trang kết thúc.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

So sánh cho cả hai phương pháp không phân biệt chữ hoa chữ thường.

Chèn văn bản mới theo cách này không thay thế văn bản hiện có của dấu trang. Lưu ý rằng một số dấu trang trong tài liệu được gán cho các trường biểu mẫu. Di chuyển đến một dấu trang như vậy và chèn văn bản ở đó chèn văn bản vào mã trường biểu mẫu. Mặc dù điều này sẽ không làm mất hiệu lực trường biểu mẫu, văn bản được chèn sẽ không hiển thị vì nó trở thành một phần của mã trường.

## Cách Chuyển Đổi Giữa Các Đơn Vị Đo Lường

Hầu hết các thuộc tính đối tượng được cung cấp trong Aspose.Words API đại diện cho một số phép đo (chiều rộng/chiều cao, lề và các khoảng cách khác nhau) chấp nhận các giá trị tính bằng điểm (1 inch bằng 72 điểm). Đôi khi điều này không thuận tiện nên có lớp `ConvertUtil` cung cấp các hàm trợ giúp để chuyển đổi giữa các đơn vị đo lường khác nhau. Nó cho phép chuyển đổi inch thành điểm, điểm sang inch, pixel thành điểm và điểm thành pixel. Khi pixel được chuyển đổi thành điểm và ngược lại, nó có thể được thực hiện ở độ phân giải 96 dpi (chấm trên inch) hoặc ở độ phân giải dpi được chỉ định.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
