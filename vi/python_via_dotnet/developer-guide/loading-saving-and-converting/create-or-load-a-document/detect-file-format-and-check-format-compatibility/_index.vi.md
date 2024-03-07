---
title: Phát hiện định dạng tệp khi tải
second_title: Aspose.Words cho Python via .NET
articleTitle: Phát hiện định dạng tệp và kiểm tra tính tương thích của định dạng
linktitle: Phát hiện định dạng tệp và kiểm tra tính tương thích của định dạng
description: "Xác định định dạng tệp trong Python nếu bạn không chắc chắn nội dung thực sự của tệp là gì hoặc để kiểm tra tính tương thích của định dạng."
type: docs
weight: 20
url: /vi/python-net/detect-file-format-and-check-format-compatibility/
---

Đôi khi cần phải xác định định dạng của tài liệu trước khi mở vì phần mở rộng của tệp không đảm bảo rằng nội dung của tệp là phù hợp. Ví dụ: được biết Crystal Reports thường xuất tài liệu ở định dạng RTF nhưng lại cung cấp cho chúng phần mở rộng .doc.

Aspose.Words cung cấp khả năng lấy thông tin về loại tệp để tránh ngoại lệ nếu bạn không chắc chắn nội dung thực sự của tệp là gì.

## Phát hiện định dạng tệp mà không có ngoại lệ

Khi bạn đang xử lý nhiều tài liệu ở các định dạng tệp khác nhau, bạn có thể cần tách những tệp mà Aspose.Words có thể xử lý khỏi những tệp không thể xử lý. Bạn cũng có thể muốn biết tại sao một số tài liệu không thể được xử lý.

Nếu bạn cố tải tệp vào đối tượng [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) và Aspose.Words không thể nhận dạng định dạng tệp hoặc định dạng đó không được hỗ trợ, Aspose.Words sẽ đưa ra một ngoại lệ. Bạn có thể nắm bắt những ngoại lệ đó và phân tích chúng, nhưng Aspose.Words cũng cung cấp phương thức [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) cho phép chúng tôi nhanh chóng xác định định dạng tệp mà không cần tải tài liệu có thể có các ngoại lệ. Phương thức này trả về một đối tượng [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) chứa thông tin được phát hiện về loại tệp.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) chỉ kiểm tra định dạng tệp nhưng không xác thực định dạng tệp. Không có gì đảm bảo rằng tệp sẽ được mở thành công, ngay cả khi [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) trả về rằng đó là một trong những định dạng được hỗ trợ. Điều này là do phương pháp [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) chỉ đọc một phần dữ liệu định dạng tệp, đủ để kiểm tra định dạng tệp nhưng không đủ để xác thực hoàn toàn.

{{% /alert %}}

## Kiểm tra khả năng tương thích định dạng tệp

Chúng ta có thể kiểm tra tính tương thích định dạng của tất cả các tệp trong thư mục đã chọn và sắp xếp chúng theo định dạng vào các thư mục con tương ứng.

Vì chúng ta đang xử lý nội dung trong một thư mục, điều đầu tiên chúng ta cần làm là lấy một bộ sưu tập tất cả các tệp trong thư mục này bằng phương pháp **danh sách thư mục** của mô-đun **hệ điều hành**.

Ví dụ mã sau đây cho thấy cách lấy danh sách tất cả các tệp trong thư mục:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Khi tất cả các tệp được thu thập, phần còn lại của công việc được thực hiện bằng phương pháp [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), phương pháp này sẽ kiểm tra định dạng tệp.

Ví dụ về mã sau đây cho thấy cách lặp qua danh sách tệp đã thu thập, kiểm tra định dạng của từng tệp và di chuyển từng tệp vào thư mục thích hợp:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Các tệp được chuyển vào các thư mục con thích hợp bằng phương pháp **tập tin sao chép** của mô-đun **im lặng**.

Các tập tin sau được sử dụng trong ví dụ trên. Tên tệp ở bên trái và mô tả của nó ở bên phải:

| Group của tập tin | Tài liệu đầu vào | Kiểu |
|  :-  |  :-  |  :-  |
| Các định dạng tập tin được hỗ trợ | Tệp thử nghiệm (Doc).doc | Tài liệu Microsoft Word 95/6.0 hoặc Microsoft Word 97 – 2003. |
| | Tệp thử nghiệm (`Dot`).dot | Mẫu Microsoft Word 95/6.0 hoặc Microsoft Word 97 – 2003. |
| | Tệp thử nghiệm (Docx).docx | Tài liệu Office Open XML WordprocessingML không có macro. |
| | Tệp thử nghiệm (Docm).docm | Office Open XML Tài liệu WordprocessingML có macro. |
| | Tệp thử nghiệm (Dotx).dotx | Mẫu XML WordprocessingML của Office Open. |
| | Tệp kiểm tra (Dotm).dotm | Mẫu Office Open XML WordprocessingML có macro. |
| | Tệp kiểm tra (XML).xml | Tài liệu OOXML FlatOPC. |
| | Tệp kiểm tra (RTF).rtf | Tài liệu định dạng văn bản phong phú. |
| | Tệp thử nghiệm (WordML).xml | Tài liệu WordprocessingML Microsoft Word 2003. |
| | Tệp thử nghiệm (HTML).html | Tài liệu HTML. |
| | Tệp thử nghiệm (MHTML).mhtml | Tài liệu MHTML (Web archive). |
| | Tệp kiểm tra (Odt).odt | Văn bản OpenDocument (OpenOffice Writer). |
| | Tệp thử nghiệm (Ott).ott | Mẫu tài liệu OpenDocument. |
| | Tệp thử nghiệm (DocPreWord60).doc | Tài liệu Microsoft Word 2.0. |
| Tài liệu được mã hóa | Tệp thử nghiệm (Enc).doc | Tài liệu Microsoft Word 95/6.0 hoặc Microsoft Word 97 – 2003 được mã hóa. |
| | Tệp thử nghiệm (Enc).docx | Văn phòng được mã hóa Tài liệu XML WordprocessingML mở. |
| Định dạng tệp không được hỗ trợ | Tệp thử nghiệm (JPG).jpg | tập tin hình ảnh JPEG. |

