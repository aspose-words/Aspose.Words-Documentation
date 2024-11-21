---
title: Sử dụng `DocumentBuilder` Để Chèn Các Phần Tử Tài liệu
second_title: Aspose.Words cho C++
articleTitle: Sử dụng `DocumentBuilder` Để Chèn Các Phần Tử Tài liệu
linktitle: Sử dụng `DocumentBuilder` Để Chèn Các Phần Tử Tài liệu
type: docs
description: "Chèn các phần tử tài liệu bằng trình tạo tài liệu trong C++."
weight: 80
url: /vi/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

`DocumentBuilder` được sử dụng để sửa đổi tài liệu. Bài viết này giải thích và mô tả cách thực hiện một số nhiệm vụ:

## Chèn Một Chuỗi Văn Bản

Chỉ cần chuyển chuỗi văn bản bạn cần chèn vào tài liệu sang phương thức `DocumentBuilder.Write`. Định dạng văn bản được xác định bởi thuộc tính `Font`. Đối tượng này chứa các thuộc tính phông chữ khác nhau (tên phông chữ, kích thước phông chữ, màu sắc, v. v.). Một số thuộc tính phông chữ quan trọng cũng được thể hiện bằng các thuộc tính DocumentBuilder để cho phép bạn truy cập chúng trực tiếp. Đây là Các thuộc tính Boolean `Font.Bold`, `Font.Italic` và `Font.Underline`.

Lưu ý rằng định dạng ký tự bạn đặt sẽ áp dụng cho tất cả văn bản được chèn từ vị trí hiện tại trong tài liệu trở đi.

Ví dụ Dưới Đây Chèn văn bản được định dạng bằng DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Chèn Một Đoạn Văn

 `DocumentBuilder.Writeln` cũng chèn một chuỗi văn bản vào tài liệu nhưng ngoài ra, nó còn thêm một đoạn ngắt. Định dạng phông chữ hiện tại cũng được chỉ định bởi thuộc tính `DocumentBuilder.Font` và định dạng đoạn hiện tại được xác định bởi thuộc tính `DocumentBuilder.ParagraphFormat`. Ví dụ dưới đây cho thấy cách chèn một đoạn vào tài liệu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Chèn Một Bảng

Thuật toán cơ bản để tạo bảng bằng DocumentBuilder rất đơn giản:

1. Bắt đầu bảng bằng `DocumentBuilder.StartTable`.
1. Chèn một ô bằng `DocumentBuilder.InsertCell`. Điều này tự động bắt đầu một hàng mới. Nếu cần, hãy sử dụng thuộc tính `DocumentBuilder.CellFormat` để chỉ định định dạng ô.
1. Chèn nội dung ô bằng phương thức `DocumentBuilder`.
1. Lặp lại các bước 2 và 3 cho đến khi hàng hoàn tất.
1. Gọi `DocumentBuilder.EndRow` để kết thúc hàng hiện tại. Nếu cần, hãy sử dụng thuộc tính `DocumentBuilder.RowFormat` để chỉ định định dạng hàng.
1. Lặp lại các bước 2 - 5 cho đến khi bảng hoàn tất.
1. Gọi `DocumentBuilder.EndTable` để hoàn thành việc xây dựng bảng. Các phương pháp tạo bảng DocumentBuilder thích hợp được mô tả dưới đây.

### Bắt Đầu Một Bảng

Gọi `DocumentBuilder.StartTable` là bước đầu tiên trong việc xây dựng một bảng. Nó cũng có thể được gọi bên trong một ô, trong trường hợp đó nó bắt đầu một bảng lồng nhau. Phương thức tiếp theo để gọi là `DocumentBuilder.InsertCell`.

### Chèn Một Ô

Sau khi bạn gọi `DocumentBuilder->InsertCell`, một ô mới được tạo và bất kỳ nội dung nào bạn thêm bằng các phương thức khác của lớp `DocumentBuilder` sẽ được thêm vào ô hiện tại. Để bắt đầu một ô mới trong cùng một hàng, hãy gọi lại `DocumentBuilder->InsertCell`. Sử dụng thuộc tính `DocumentBuilder.CellFormat` để chỉ định định dạng ô. Nó trả về một đối tượng `CellFormat` đại diện cho tất cả các định dạng cho một ô bảng.

### Kết thúc Một Hàng

Gọi `DocumentBuilder.EndRow` để hoàn thành hàng hiện tại. Nếu bạn gọi `DocumentBuilder->InsertCell` ngay sau đó, thì bảng tiếp tục trên một hàng mới.

Sử dụng thuộc tính `DocumentBuilder.RowFormat` để chỉ định định dạng hàng. Nó trả về một đối tượng `RowFormat` đại diện cho tất cả các định dạng cho một hàng bảng.

### Kết Thúc Một Bảng

Gọi `DocumentBuilder.EndTable` để hoàn thành bảng hiện tại. Phương thức này chỉ nên được gọi một lần sau khi `DocumentBuilder->EndRow` được gọi. Khi được gọi, `DocumentBuilder.EndTable` di chuyển con trỏ ra khỏi ô hiện tại đến một vị trí ngay sau bảng. Ví dụ sau đây cho thấy cách xây dựng một bảng được định dạng có chứa các hàng 2 và các cột 2.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Chèn Một Break

Nếu bạn muốn bắt đầu rõ ràng một dòng, đoạn văn, cột, phần hoặc trang mới, hãy gọi `DocumentBuilder.InsertBreak`. Chuyển đến phương thức này loại ngắt bạn cần chèn được biểu thị bằng liệt kê `BreakType`. Ví dụ dưới đây cho thấy cách chèn ngắt trang vào tài liệu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Chèn Một Hình ảnh

DocumentBuilder cung cấp một số quá tải của phương thức `DocumentBuilder->InsertImage` cho phép bạn chèn một hình ảnh nội tuyến hoặc nổi. Nếu hình ảnh là một metafile EMF hoặc WMF, nó sẽ được chèn vào tài liệu ở định dạng metafile. Tất cả các hình ảnh khác sẽ được lưu trữ ở định dạng PNG. Phương thức `DocumentBuilder->InsertImage` có thể sử dụng hình ảnh từ các nguồn khác nhau:

- Từ một tệp hoặc `URL` bằng cách truyền tham số chuỗi `DocumentBuilder->InsertImage`.
- Từ một luồng bằng cách truyền tham số `Stream` `DocumentBuilder->InsertImage`.
- Từ một Đối tượng Hình ảnh bằng cách chuyển Một Tham số Hình ảnh `DocumentBuilder->InsertImage`.
- Từ một mảng byte bằng cách truyền tham số mảng byte `DocumentBuilder.InsertImage`.Đối với mỗi phương thức `DocumentBuilder->InsertImage`, có những quá tải khác cho phép bạn chèn hình ảnh với các tùy chọn sau:
- Nội tuyến hoặc nổi ở một vị trí cụ thể, ví dụ: `DocumentBuilder->InsertImage`.
- Tỷ lệ phần trăm hoặc kích thước tùy chỉnh, ví dụ: `DocumentBuilder.InsertImage`. Hơn nữa, phương thức `DocumentBuilder->InsertImage` trả về một đối tượng `Shape` vừa được tạo và chèn để bạn có thể sửa đổi thêm các thuộc tính của Hình dạng.

### Chèn Một Hình Ảnh Nội tuyến

Chuyển một chuỗi duy nhất đại diện cho một tệp chứa hình ảnh đến `DocumentBuilder->InsertImage` để chèn hình ảnh vào tài liệu dưới dạng đồ họa nội tuyến. Ví dụ dưới đây cho thấy cách chèn hình ảnh nội tuyến ở vị trí con trỏ vào tài liệu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Chèn Hình Ảnh Nổi (Vị Trí Tuyệt Đối)

Ví dụ này chèn một hình ảnh nổi từ một tệp hoặc `URL` ở một vị trí và kích thước được chỉ định.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Chèn Dấu Trang

Để chèn dấu trang vào tài liệu, bạn nên làm như sau:

1. Gọi `DocumentBuilder->StartBookmark` chuyển cho nó tên mong muốn của dấu trang.
1. Chèn văn bản dấu trang bằng các phương thức DocumentBuilder.
1. Gọi `DocumentBuilder.EndBookmark` chuyển nó cùng tên mà bạn đã sử dụng với **DocumentBuilder->StartBookmark**.
1. Dấu trang có thể chồng chéo và kéo dài bất kỳ phạm vi nào. Để tạo dấu trang hợp lệ, bạn cần gọi cả `DocumentBuilder->StartBookmark` và `DocumentBuilder->EndBookmark` có cùng tên dấu trang.

{{% alert color="primary" %}}

Dấu trang hoặc dấu trang bị lỗi với tên trùng lặp sẽ bị bỏ qua khi tài liệu được lưu.

{{% /alert %}}

Ví dụ dưới đây cho thấy cách chèn dấu trang vào tài liệu bằng trình tạo tài liệu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Chèn Trường `Form`

Các trường biểu mẫu là một trường Hợp Cụ thể của Các trường Từ cho phép "tương tác" với người dùng. Các trường biểu mẫu trong Microsoft Word bao gồm hộp văn bản, hộp tổ hợp và hộp kiểm.DocumentBuilder cung cấp các phương thức đặc biệt để chèn từng loại trường biểu mẫu vào tài liệu: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` và `DocumentBuilder.InsertComboBox`. Lưu ý rằng nếu bạn chỉ định tên cho trường biểu mẫu, thì dấu trang sẽ tự động được tạo với cùng tên.

### Chèn Một Đầu Vào Văn Bản

 `DocumentBuilder.InsertTextInput` để chèn một hộp văn bản vào tài liệu. Ví dụ dưới đây cho thấy cách chèn trường biểu mẫu nhập văn bản vào tài liệu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Chèn Một Hộp Kiểm

Gọi `DocumentBuilder.InsertCheckBox` để chèn hộp kiểm vào tài liệu. Ví dụ dưới đây cho thấy cách chèn trường biểu mẫu hộp kiểm vào tài liệu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Chèn Một Hộp Tổ hợp

Gọi `DocumentBuilder.InsertComboBox` để chèn một hộp tổ hợp vào tài liệu. Ví dụ dưới đây cho thấy cách chèn trường biểu mẫu hộp tổ hợp vào tài liệu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Chèn Ngôn ngữ Ở Cấp Trường

Khách hàng có thể chỉ định Ngôn ngữ ở cấp trường ngay bây giờ và có thể đạt được kiểm soát tốt hơn. Id miền địa phương có thể được liên kết với mỗi trường bên trong DocumentBuilder. Các ví dụ dưới đây minh họa cách sử dụng tùy chọn này.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Chèn Một Siêu Liên kết

Sử dụng `DocumentBuilder.InsertHyperlink` để chèn một siêu liên kết vào tài liệu. Phương pháp này chấp nhận ba tham số: văn bản của liên kết sẽ được hiển thị trong tài liệu, đích liên kết (URL hoặc tên của dấu trang bên trong tài liệu) và tham số boolean phải đúng nếu `URL` là tên của dấu trang bên trong tài liệu.DocumentBuilder.InsertHyperlink gọi nội bộ `DocumentBuilder.InsertField`.Phương pháp này luôn thêm dấu nháy đơn ở đầu và cuối URL. Lưu ý rằng bạn cần chỉ định định dạng phông chữ cho văn bản hiển thị siêu liên kết một cách rõ ràng bằng thuộc tính `Font`. Ví dụ dưới đây chèn một siêu liên kết vào tài liệu bằng DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Chèn Đối Tượng Ole

Nếu bạn muốn Gọi Đối tượng Ole `DocumentBuilder.InsertOleObject`. Chuyển đến phương thức này `ProgId` rõ ràng với các tham số khác. Ví dụ dưới đây cho thấy cách chèn Đối tượng Ole vào tài liệu.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Đặt Tên Tệp và Phần Mở rộng khi Chèn Đối tượng Ole

OLE gói là một cách di sản và "không có giấy tờ" để lưu trữ đối tượng nhúng nếu trình xử lý OLE không xác định. Các phiên bản đầu Windows như Windows 3.1, 95 và 98 có Packager.ứng dụng exe có thể được sử dụng để nhúng bất kỳ loại dữ liệu nào vào tài liệu. Bây giờ, ứng dụng này bị loại trừ khỏi Windows Nhưng MS Word và các ứng dụng khác vẫn sử dụng nó để nhúng dữ liệu nếu trình xử lý OLE bị thiếu hoặc không xác định. Lớp OlePackage cho phép truy cập Thuộc tính Gói OLE. Ví dụ dưới đây cho thấy cách đặt tên tệp, tiện ích mở rộng và tên hiển thị Cho Gói OLE.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Chèn HTML

Bạn có thể dễ dàng chèn một chuỗi HTML có chứa một đoạn HTML hoặc toàn bộ tài liệu HTML vào Tài liệu Word. Chỉ cần chuyển chuỗi này sang phương thức `DocumentBuilder->InsertHtml`. Một trong những triển khai hữu ích của phương thức là lưu trữ chuỗi HTML trong cơ sở dữ liệu và chèn nó vào tài liệu trong mail merge để thêm nội dung được định dạng thay vì xây dựng nó bằng các phương pháp khác nhau của trình tạo tài liệu. Ví dụ dưới đây cho thấy chèn HTML vào tài liệu bằng DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Chèn Quy Tắc Ngang vào Tài Liệu

Ví dụ Be low code cho thấy cách chèn hình dạng quy tắc ngang vào tài liệu bằng phương thức `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
