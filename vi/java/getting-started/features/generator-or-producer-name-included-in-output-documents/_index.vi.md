---
title: Tên nhà sản xuất trong các đầu ra
second_title: Aspose.Words cho Java
articleTitle: Tên Generator hoặc Nhà Sản xuất Bao gồm trong Tài liệu Đầu ra
linktitle: Tên Generator hoặc Nhà Sản xuất Bao gồm trong Tài liệu Đầu ra
description: "Cài đặt Aspose.Words cho Java thêm tên và số phiên bản của trình tạo tài liệu được sử dụng để tạo ra nó. Dữ liệu này có thể được tìm thấy trong tài liệu theo những cách phụ thuộc vào định dạng tệp đầu ra."
type: docs
weight: 70
url: /vi/java/generator-or-producer-name-included-in-output-documents/
timestamp: 2024-10-21-11-17-44
---

Bạn có thể dễ dàng biết nếu một tài liệu là được sản xuất bằng cách sử dụng Aspose.Words cho Java. Bạn cũng có thể tìm số phiên bản của Aspose.Words cho Java đã được dùng để tạo ra một tài liệu đầu ra cụ thể. Aspose.Words ghi trực tiếp thông tin này vào tài liệu đã tạo.

Số phiên bản được chỉ định trong định dạng *YYYY.MM.N* hoặc *YYYY.MM.N*, ví dụ như 23.12.0 hoặc 24.1.0.<br />
Ở đây *YY* là hai chữ số cuối cùng của năm phát hành, *M* hoặc *MM* là tháng phát hành (từ 1 đến 12) và *N* là số thứ cấp. Thông thường, *n* bằng "0".

{{% alert color="primary" %}}

Hãy lưu ý rằng bạn không thể hướng dẫn Aspose.Words để thay đổi hoặc loại bỏ thông tin này khỏi các tài liệu đầu ra.

{{% /alert %}}

Phụ thuộc vào định dạng tệp đầu ra, bảng sau liệt kê các cách bạn có thể sử dụng để biết tên và số phiên bản của bộ tạo.

| Save Format Giá trị | Chuỗi, Bình luận hoặc Trường Được Viết trong Tập tin | Cách Tìm |
| :- | :- | :- |
| `Doc` | `AWJ.YY.M.N` <br /> Ví dụ," <br /> `AWJ.24.1.0` | DOC được tạo ra bởi Aspose.Words có 8 byte được ghi. Bạn có thể kiểm tra nó bằng cách mở tập tin trong một trình chỉnh sửa nhị phân nào đó. |
| `Dot` | `AWJ.YY.M.N`<br />Ví dụ,<br />`AWJ.24.1.0` | DOT được tạo ra bởi Aspose.Words nhận được 8 byte được ghi. Bạn có thể kiểm tra bằng cách mở tập tin trong trình biên tập nhị phân nào đó. |
| `Docx` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N --> " <br /> Ví dụ, "<br /> " <!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | Đổi tên tập tin thành ".zip". Đột xuất ra ZIP. Mở "~/Word/Document.xml" để xem bình luận này. |
| `Docm` | <!-- Tạo ra bởi Aspose.Words cho Java YY.M.N --> <br />Ví dụ, <br />" <!-- Tạo ra bởi Aspose.Words cho Java 24.1.0 --> | Đổi tên tập tin thành .zip. Giải nén tệp ZIP. Mở ~/Word/Document.xml để xem bình luận này. |
| `Dotx` | <!-- Được tạo ra bởi Aspose.Words cho Java YY.M.N --> <br />Ví dụ như:<br /><!-- Được tạo ra bởi Aspose.Words cho Java 24.1.0 --> | Đổi tên tập tin thành .zip. Chiết xuất ZIP. Mở "~/Document.xml" để xem chú thích này. |
| `Dotm` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N -->" <br /> "Ví dụ," "<br /> "<!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | Đổi tên tệp thành .zip. Chiết xuất ZIP. Mở ~/Word/Document.xml để xem bình luận này. |
| `FlatOpc` | <!-- Được tạo ra bởi Aspose.Words cho Java YY.M.N -->" <br /> "Ví dụ," <br /> "<!-- Được tạo ra bởi Aspose.Words cho Java 24.1.0 --> | ".xml file chứa chú thích này." Bạn có thể mở nó bằng Notepad để thấy bình luận này. |
| `FlatOpcMacroEnabled` | `<!-- Tạo ra bởi Aspose.Words cho Java YY.M.N --> `<br />`Ví dụ, `<br />` `<!-- Tạo ra bởi Aspose.Words cho Java 24.1.0 --> | .xml tệp chứa chú thích này. Bạn có thể mở nó trong Notepad để xem dòng chú thích này. |
| `FlatOpcTemplate` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N --> <br /> Ví dụ, <br /> <!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | .xml file có chứa chú thích này. Bạn có thể mở nó trong Notepad để xem bình luận này. |
| `FlatOpcTemplateMacroEnabled` | `<!-- Sinh ra bởi Aspose.Words cho Java YY.M.N -->" <br /> "Ví dụ," <br /> "<!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | .xml file chứa chú thích này. Bạn có thể mở nó bằng Notepad để xem chú thích này. |
| `Rtf` | `{\*\generator {0} cho {1} YY.M.N;}` <br /> Ví dụ, <br /> ` {\*\generator {0} cho {1} 24.1.0;}` | .rtf file chứa bình luận này. Bạn có thể mở nó trong Notepad để xem chú thích này. |
| `WordML` | `<!-- Sinh ra bởi Aspose.Words cho Java YY.M.N -->`<br />Ví dụ,<br />`<!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> ` | .xml file có chứa chú thích này. Bạn có thể mở nó trong Notepad để xem nhận xét này. |
| Pdf | <ul><li>**Ứng dụng:** Aspose.Words</li> <li>**PDF Producer:**'s `Aspose.Words for Java YY.M.N`, for example, `<br />` `Aspose.Words for Java 24.1.0`</li></ul> | ![todo: hình ảnh_thay thế_text](generator-or-producer-name-included-in-output-documents_1) |
| `Xps` | <!-- Được tạo ra bởi Aspose.Words cho Java YY.M.N --> <br /> Ví dụ, <br /> <!-- Được tạo ra bởi Aspose.Words cho Java 24.1.0 --> | Đổi tên tập tin thành .zip. Chiết xuất ZIP. Trong XPS, nhận xét này có thể được tìm thấy ở trong ~/Documents/1/Pages/1.fpm |
| `XamlFixed` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N -->" <br /> "Ví dụ," <br /> "<!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | .xml file có chứa chú thích này. Bạn có thể mở nó trong Notepad để thấy chú thích này. |
| `Svg` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N --> <br /> Ví dụ, <br />" <!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | .file XML chứa chú thích này. Bạn có thể mở nó bằng Notepad để xem nhận xét này. |
| `HtmlFixed` | `<meta name="generator" content="Aspose.Words cho Java Y.M.N" /> `<br />`Ví dụ:<br />`meta name="generator" content="Aspose.Words cho Java 24.1.0" />` | Tập tin HTML chứa thẻ này. Anh có thể mở nó trong Notepad để xem. |
| `OpenXps` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N --> <br /> Ví dụ, <br /> <!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | Đổi tên tệp thành .zip. Chiết xuất ZIP. Trong OpenXps, nhận xét này có thể được tìm thấy trong ~/Documents/1/Pages/1.epage |
| `Ps` | Tạo bởi Aspose.Words cho Java.YY.M.N"<br />Ví dụ," "<br />"Tạo bởi Aspose.Words cho Java 24.1.0" | .ps file chứa bình luận này Bạn mở nó trong Notepad để xem chú thích này. |
| `Pcl` | – | – |
| `Html` | <meta name="generator" content="Aspose.Words cho Java Y.Y.M" /> <br /> Ví dụ như, <br /> "meta name="generator" content="Aspose.Words cho Java 24.1.0" /> | Tập tin HTML chứa thẻ này. Bạn có thể mở nó trong Notepad để xem. |
| `Mhtml` | <meta name="generator" content="Aspose.Words cho JavaYY.M.N"/>'" <br /> "Ví dụ:<br />" meta name="generator" content="Aspose.Words cho Java 24.1.0"/> | Tập tin MHTML chứa thẻ này. Bạn có thể mở nó trong Notepad để xem. |
| `Epub` | <meta name="generator" content="Aspose.Words cho JavaYY.M.N" /> <br /> Ví dụ như <br />" meta name="generator" content="Aspose.Words cho Java 24.1.0" /> | Đổi tên tập tin thành .zip Chiết xuất thành ZIP.  |
| `Odt` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N --> "<br />"Ví dụ, '<br />'<!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | Đổi tên tệp thành .zip. Chiết xuất ZIP. Kiểm tra nó trong ~/content.xml |
| `Ott` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N -->" <br /> "Ví dụ," "<br />"<!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | "Đổi tên tập tin thành .zip." Giải nén tệp ZIP. Kiểm tra nó trong ~/content.xml |
| `Text` | – | – |
| `XamlFlow` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N --> <br />Ví dụ, <br /><!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | .xml file chứa chú thích này. Bạn có thể mở nó trong Notepad để thấy nhận xét này. |
| `XamlFlowPack` | <!-- Sinh ra bởi Aspose.Words cho Java YY.M.N --> <br />Ví dụ, <br /> <!-- Sinh ra bởi Aspose.Words cho Java 24.1.0 --> | .xml file chứa chú thích này. Bạn có thể mở nó trong Notepad để thấy chú thích này. |
| `Markdown` | – | – |
| `Tiff` | – | – |
| `Png` | – | – |
| `Bmp` | – | – |
| `Emf` | – | – |
| `Jpeg` | – | – |
| `Gif` | – | – |

{{% alert color="primary" %}}

Cũng có thêm một số biến thể được trình bày trong bảng. Số phiên bản của Aspose.Words có thể được viết ở nhiều chỗ khác nhau đối với một số định dạng. Tùy thuộc vào cài đặt xuất khẩu.

Những tình huống bổ sung này không được mô tả trong bảng ở trên.

{{% /alert %}}

