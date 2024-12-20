---
title: Tên nhà sản xuất Trong Đầu ra
second_title: Aspose.Words cho C++
articleTitle: Máy phát Điện Hoặc Tên Nhà sản xuất Trong Tài liệu Đầu Ra
linktitle: Tên nhà sản xuất Trong Tài liệu Đầu Ra
description: "Aspose.Words cho C++ thêm vào tài liệu tên trình tạo và số phiên bản đã được sử dụng để tạo nó. Dữ liệu này có thể được tìm thấy trong tài liệu theo những cách phụ thuộc vào định dạng tệp đầu ra."
type: docs
weight: 90
url: /vi/cpp/generator-or-producer-name-included-in-output-documents/
timestamp: 2024-10-21-11-17-44
---

Bạn có thể dễ dàng biết nếu một tài liệu được sản xuất bằng cách sử dụng Aspose.Words cho C++. Bạn cũng có thể tìm thấy số phiên bản của Aspose.Words cho C++ điều đó đã được sử dụng để tạo một tài liệu đầu ra cụ thể. Aspose.Words trực tiếp ghi thông tin này vào tài liệu được tạo.

Số phiên bản được chỉ định ở định dạng *YY.MM.N* hoặc *YY.M.N*, ví dụ: 23.12.0 hoặc 24.1.0.<br />
Ở đây *YY* là hai chữ số cuối cùng của năm phát hành, *M* hoặc *MM* là tháng phát hành (1-12) và *N* là số phát hành nhỏ. Thông thường, *N* là "0".

{{% alert color="primary" %}}

Lưu ý rằng bạn không thể hướng dẫn Aspose.Words thay đổi hoặc xóa thông tin này khỏi tài liệu đầu ra.

{{% /alert %}}

Tùy thuộc vào định dạng tệp đầu ra, bảng sau liệt kê các cách bạn có thể sử dụng để biết tên trình tạo và số phiên bản.

| SaveFormat Giá trị | Chuỗi, Nhận xét Hoặc Trường Được Viết Trong Tệp | Cách Tìm |
| :- | :- | :- |
| `Doc` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | DOC được tạo bởi Aspose.Words được viết 8 byte. Bạn có thể kiểm tra nó bằng cách mở tệp trong một số trình soạn thảo nhị phân. |
| `Dot` | `AWC.YY.M.N`<br />For example,<br />`AWC.24.1.0` | DOT được tạo bởi Aspose.Words được viết 8 byte. Bạn có thể kiểm tra nó bằng cách mở tệp trong một số trình soạn thảo nhị phân. |
| `Docx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Đổi tên tệp thành .zip. Trích xuất ZIP. Mở ~ / Word / Tài Liệu.xml để xem bình luận này. |
| `Docm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Đổi tên tệp thành .zip. Trích xuất ZIP. Mở ~ / Word / Tài Liệu.xml để xem bình luận này. |
| `Dotx` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Đổi tên tệp thành .zip. Trích xuất ZIP. Mở ~ / Tài Liệu.xml để xem bình luận này. |
| `Dotm` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Đổi tên tệp thành .zip. Trích xuất ZIP. Mở ~ / Word / Tài Liệu.xml để xem bình luận này. |
| `FlatOpc` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .tệp xml chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `FlatOpcMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .tệp xml chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `FlatOpcTemplate` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .tệp xml chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `FlatOpcTemplateMacroEnabled` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .tệp xml chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `Rtf` | `{\*\generator Aspose.Words for C++ YY.M.N;}`<br />Ví dụ,<br />`{\*\generator Aspose.Words for C++ 24.1.0;}` | .tệp rtf chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `WordML` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .tệp xml chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| Pdf | <ul><li>**Application:** Aspose.Words</li><li>**PDF Producer:** `Aspose.Words for C++ YY.M.N`, ví dụ,<br />`Aspose.Words for C++ 24.1.0`</li></ul> | ![công việc cần làm: image_alt_text](generator-or-producer-name-included-in-output-documents_1) |
| `Xps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Đổi tên tệp thành .zip. Trích xuất ZIP. Trong XPS nhận xét này có thể được tìm thấy trong ~/Documents/1/Pages/1.trang |
| `XamlFixed` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .tệp xml chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `Svg` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .tệp xml chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `HtmlFixed` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />Ví dụ,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | Tệp HTML chứa thẻ này. Bạn có thể mở Nó Trong Notepad để xem. |
| `OpenXps` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Đổi tên tệp thành .zip. Trích xuất ZIP. Trong OpenXps nhận xét này có thể được tìm thấy trong ~/Documents/1/Pages/1.trang |
| `Ps` | `%Generated by Aspose.Words for C++ YY.M.N`<br />Ví dụ,<br />`%Generated by Aspose.Words for C++ 24.1.0` | . tệp ps chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `Pcl` |  |  |
| `Html` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />Ví dụ,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | Tệp HTML chứa thẻ này. Bạn có thể mở Nó Trong Notepad để xem. |
| `Mhtml` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />Ví dụ,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | Tệp MHTML chứa thẻ này. Bạn có thể mở Nó Trong Notepad để xem. |
| `Epub` | `<meta name="generator" content="Aspose.Words for C++ YY.M.N" />`<br />Ví dụ,<br />`<meta name="generator" content="Aspose.Words for C++ 24.1.0" />` | Đổi tên tệp thành .zip. Trích xuất ZIP. Đi tới ~/OEBPS/<file_name>.html. |
| `Odt` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Đổi tên tệp thành .zip. Trích xuất ZIP. Kiểm tra nó trong ~/nội dung.xl |
| `Ott` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | Đổi tên tệp thành .zip. Trích xuất ZIP. Kiểm tra nó trong ~/nội dung.xl |
| `Text` |  |  |
| `XamlFlow` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .tệp xml chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `XamlFlowPack` | `<!-- Generated by Aspose.Words for C++ YY.M.N -->`<br />Ví dụ,<br />`<!-- Generated by Aspose.Words for C++ 24.1.0 -->` | .tệp xml chứa nhận xét này. Bạn có thể mở Nó Trong Notepad để xem nhận xét này. |
| `Markdown` |  |  |
| `Tiff` |  |  |
| `Png` |  |  |
| `Bmp` |  |  |
| `Emf` |  |  |
| `Jpeg` |  |  |
| `Gif` |  |  |

{{% alert color="primary" %}}

Ngoài ra còn có một bổ sung cho các biến thể được hiển thị trong bảng. Số phiên bản của Aspose.Words có thể được viết ở một số nơi khác cho một số định dạng. Nó phụ thuộc vào cài đặt xuất.

Những tình huống bổ sung này không được mô tả trong bảng trên.

{{% /alert %}}
