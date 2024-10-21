---
title: Phát hiện định dạng tập tin
second_title: Aspose.Words cho Java
articleTitle: Phát hiện Định dạng Tập tin và Kiểm tra Sự tương thích Định dạng
linktitle: Phát hiện Định dạng Tập tin và Kiểm tra Sự tương thích Định dạng
description: "Nhận thông tin về định dạng tài liệu trước khi mở nó để tránh ngoại lệ nếu bạn không chắc chắn nội dung thực tế của tập tin là gì sử dụng Java."
type: docs
weight: 20
url: /vi/java/detect-file-format-and-check-format-compatibility/
---

Đôi khi cần xác định định dạng của một tài liệu trước khi mở vì phần mở rộng của tệp không đảm bảo rằng nội dung của tệp là phù hợp. Ví dụ, người ta biết rằng Crystal Report thường đưa ra các tài liệu ở định dạng RTF nhưng cho chúng phần mở rộng .doc.

Aspose.Words cung cấp khả năng để có được thông tin về loại tập tin để tránh một ngoại lệ nếu bạn không chắc về nội dung thực của tập tin.

## Phát hiện định dạng tập tin mà không có ngoại lệ

Khi bạn đang xử lý nhiều tài liệu ở các định dạng khác nhau, bạn có thể cần phải phân tách những tập tin mà có thể được xử lý bởi Aspose.Words từ những tập tin không thể xử lý được. Bạn cũng có thể muốn biết tại sao một số tài liệu không thể được xử lý.

Nếu bạn cố gắng tải một tập tin vào một [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) đối tượng và Aspose.Words không thể nhận ra định dạng tập tin hoặc định dạng đó không được hỗ trợ, Aspose.Words sẽ ném một ngoại lệ. Bạn có thể bắt được những ngoại lệ đó và phân tích chúng, nhưng Aspose.Words cũng cung cấp phương pháp [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) cho phép chúng ta nhanh chóng xác định định dạng tệp mà không cần tải một tài liệu với những ngoại lệ có thể xảy ra. Phương pháp này trả về một [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) đối tượng chứa thông tin được phát hiện về loại tệp.

{{% alert color="primary" %}}

DetectFileFormat chỉ kiểm tra định dạng tập tin nhưng không xác thực định dạng tập tin. Chưa có đảm bảo rằng tập tin sẽ mở thành công ngay cả khi **DetectFileFormat** trả lời rằng đây là một trong các định dạng được hỗ trợ. Đây là vì phương pháp **DetectFileFormat** chỉ đọc dữ liệu định dạng tập tin một phần, đủ để kiểm tra định dạng tập tin nhưng không đủ cho việc xác nhận hoàn chỉnh.

{{% /alert %}}

## Kiểm tra Định dạng Tệp Tương Thích

Chúng ta có thể kiểm tra sự tương thích định dạng của tất cả các tập tin trong thư mục đã chọn và sắp xếp chúng theo định dạng trong các tập con tương ứng.

Do chúng ta đang giải quyết nội dung trong một thư mục, bước đầu tiên mà chúng ta cần làm là nhận được một tập hợp tất cả các tệp trong thư mục này bằng cách sử dụng phương pháp **GetFiles** của lớp `Directory` (từ không gian tên `System.IO`).

Ví dụ mã sau cho thấy cách lấy danh sách tất cả các tập tin trong thư mục:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Khi tất cả các tập tin đã được thu thập thì phần còn lại của việc làm là bằng phương pháp **DetectFileFormat**, kiểm tra định dạng tập tin.

Dưới đây là một ví dụ về cách lặp lại danh sách tập tin thu thập được, kiểm tra định dạng của mỗi tệp và di chuyển từng tệp đến thư mục thích hợp:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Các tập tin được di chuyển vào các thư mục con phù hợp bằng phương pháp `Move` của lớp `File`, từ cùng không gian tên `System.IO`.

Các tập tin sau đây được sử dụng trong ví dụ trên. Tên tệp là trên bên trái và mô tả của nó là ở bên phải:

| Group của Tập tin | Tài liệu nhập vào | Loại |
| :- | :- | :- |
| Định dạng tập tin được hỗ trợ | Tập tin thử nghiệm (Doc)".doc | Microsoft Word 95/6.0 hoặc Microsoft Word 97 – 2003 tài liệu. |
|  | Test File (Điểm). dot | Microsoft Word 95/6.0 hoặc Microsoft Word 97 - 2003 mẫu. |
|  | File thử nghiệm (Docx)".docx | Tài liệu Word của Office Open XML mà không có macro. |
|  | File thử nghiệm (Docm). docm | Tài liệu Office Open XML WordprocessingML với các macro. |
|  | Test File (Dotx).dotx | Office Open XML WordprocessingML mẫu. |
|  | Tệp thử nghiệm (Đótm) .đútm | Office Open XML WordprocessingML mẫu với macro. |
|  | Test File (XML)".xml | Tài liệu FlatOPC OOXML. |
|  | File thử nghiệm (RTF)".rtf | Tài liệu Rich Text Format. |
|  | Tập tin thử nghiệm (WordML).xml | Microsoft Word 2003 WordprocessingML tài liệu. |
|  | Test File (HTML).html | Tài liệu HTML. |
|  | Test File (MHTML).mhtml | Tài liệu lưu trữ web MHTML. |
|  | File Thử (Odt)".odt | OpenDocument Text (OpenOffice Writer). |
|  | Thử nghiệm tập tin (Ott)". ott | Mẫu tài liệu OpenDocument. |
|  | Tệp thử nghiệm (DocPreWord60).doc | Microsoft Word 2.0 tài liệu. |
| Tài liệu mã hóa | Test File (Enc).doc | Đã mã hóa Microsoft Word 95/6.0 hoặc Microsoft Word 97 – 2003 tài liệu. |
|  | Test File (Enc) .docx | Tài liệu Microsoft Office Open XML WordprocessingML đã được mã hóa. |
| Các định dạng tập tin không được hỗ trợ | Tệp thử nghiệm (JPG)".jpg | Tập tin hình ảnh JPEG. |

