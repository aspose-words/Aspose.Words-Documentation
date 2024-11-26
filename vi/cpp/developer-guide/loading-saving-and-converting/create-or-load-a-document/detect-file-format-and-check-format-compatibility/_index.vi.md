---
title: Phát hiện Định dạng Tệp Và Kiểm Tra Khả năng Tương Thích Định dạng
second_title: Aspose.Words cho C++
articleTitle: Phát hiện Định dạng Tệp Và Kiểm Tra Khả năng Tương Thích Định dạng
linktitle: Phát hiện Định dạng Tệp Và Kiểm Tra Khả năng Tương Thích Định dạng
description: "Xác định định dạng tệp trong C++ nếu bạn không chắc nội dung thực tế của tệp là gì hoặc để kiểm tra khả năng tương thích định dạng."
type: docs
weight: 20
url: /vi/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Đôi khi cần xác định định dạng của tài liệu trước khi mở vì phần mở rộng tệp không đảm bảo rằng nội dung của tệp là phù hợp. Ví dụ, người ta biết Rằng Crystal Reports thường xuất tài liệu ở định dạng RTF, nhưng cung cấp cho họ .phần mở rộng doc.

Aspose.Words cung cấp khả năng lấy thông tin về loại tệp để tránh ngoại lệ nếu bạn không chắc nội dung thực tế của tệp là gì.

## Phát hiện Định dạng Tệp mà không Có Ngoại Lệ

Khi bạn đang xử lý nhiều tài liệu ở nhiều định dạng tệp khác nhau, bạn có thể cần tách các tệp có thể được Aspose.Words xử lý khỏi các tệp không thể. Bạn cũng có thể muốn biết tại sao một số tài liệu không thể được xử lý.

Nếu bạn cố gắng tải một tệp vào một đối tượng [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) và Aspose.Words không thể nhận ra định dạng tệp hoặc định dạng không được hỗ trợ, Aspose.Words sẽ ném một ngoại lệ. Bạn có thể bắt các ngoại lệ đó và phân tích chúng, nhưng Aspose.Words cũng cung cấp phương thức [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) cho phép chúng tôi nhanh chóng xác định định dạng tệp mà không cần tải tài liệu với các ngoại lệ có thể. Phương thức này trả về một đối tượng [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) chứa thông tin được phát hiện về loại tệp.

{{% alert color="primary" %}}

DetectFileFormat chỉ kiểm tra định dạng tệp nhưng không xác thực định dạng tệp. Không có gì đảm bảo rằng tệp sẽ được mở thành công, ngay cả khi **DetectFileFormat** trả về rằng nó là một trong những định dạng được hỗ trợ. Điều này là do phương thức **DetectFileFormat** chỉ đọc dữ liệu định dạng tệp một phần, đủ để kiểm tra định dạng tệp, nhưng không đủ để xác thực hoàn toàn.

{{% /alert %}}

## Kiểm Tra Khả Năng Tương Thích Định Dạng Tệp

Chúng tôi có thể kiểm tra khả năng tương thích định dạng của tất cả các tệp trong thư mục đã chọn và sắp xếp chúng theo định dạng vào các thư mục con tương ứng.

Vì chúng ta đang xử lý nội dung trong một thư mục, điều đầu tiên chúng ta cần làm là lấy một tập hợp tất cả các tệp trong thư mục này bằng phương thức **GetFiles** của lớp `Directory` (từ không gian tên `System.IO`).

Ví dụ mã sau đây cho thấy cách lấy danh sách tất cả các tệp trong thư mục:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Khi tất cả các tệp được thu thập, phần còn lại của công việc được thực hiện bằng phương thức **DetectFileFormat**, kiểm tra định dạng tệp.

Ví dụ mã sau đây cho thấy cách lặp lại danh sách các tệp đã thu thập, kiểm tra định dạng của từng tệp và di chuyển từng tệp vào thư mục thích hợp:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Các tệp được chuyển vào các thư mục con thích hợp bằng phương thức `Move` của lớp `File`, từ cùng một không gian tên `System.IO`.

Các tệp sau được sử dụng trong ví dụ trên. Tên tệp ở bên trái và mô tả của nó ở bên phải:

| Nhóm Các Tập Tin | Tài Liệu Đầu Vào | Loại |
| :- | :- | :- |
| Các định dạng tệp được hỗ trợ | Test File (DOC).doc | Tài liệu Microsoft Word 95/6.0 hoặc Microsoft Word 97 – 2003. |
|  | Test File (DOT).dot | Microsoft Word 95/6.0 hoặc Microsoft Word 97 – 2003 mẫu. |
|  | Test File (DOCX).docx | Office Open XML WordprocessingML tài liệu không có macro. |
|  | Test File (DOCM).docm | Office Open XML wordprocessingml tài liệu với macro. |
|  | Test File (DOTX).dotx | Văn Phòng Mở XML wordprocessingml mẫu. |
|  | Test File (DOTM).dotm | Văn Phòng Mở XML wordprocessingml mẫu với macro. |
|  | Test File (XML).xml | FlatOPC OOXML Tài Liệu. |
|  | Test File (RTF).rtf | Tài liệu định dạng văn bản phong phú. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML tài liệu. |
|  | Test File (HTML).html | HTML tài liệu. |
|  | Test File (MHTML).mhtml | MHTML (Lưu Trữ Web) tài liệu. |
|  | Test File (ODT).odt | OpenDocument Văn Bản (OpenOffice Nhà Văn). |
|  | Test File (OTT).ott | OpenDocument Mẫu Tài Liệu. |
|  | Tập Tin Kiểm Tra (DocPreWord60).bác sĩ | Microsoft Word 2.0 tài liệu. |
| Tài liệu được mã hóa | Test File (Enc).doc | Tài liệu được mã hóa Microsoft Word 95/6.0 hoặc Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Văn phòng được mã Hóa Mở XML Tài liệu WordprocessingML. |
| Định dạng tệp không được hỗ trợ | Test File (JPG).jpg | JPEG tập tin hình ảnh. |

