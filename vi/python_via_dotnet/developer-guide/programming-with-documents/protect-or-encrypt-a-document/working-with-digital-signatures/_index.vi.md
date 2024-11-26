---
title: Làm việc với chữ ký số
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với chữ ký số
linktitle: Làm việc với chữ ký số
description: "Ký điện tử các tài liệu và phát hiện, đếm, xác minh và xóa chữ ký điện tử hiện có bằng Python."
type: docs
weight: 40
url: /vi/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Chữ ký điện tử được sử dụng để xác thực một tài liệu nhằm chứng minh rằng người gửi tài liệu đúng như họ nói và nội dung của tài liệu không bị giả mạo.

Aspose.Words hỗ trợ các tài liệu có chữ ký số và cung cấp quyền truy cập vào chúng cho phép bạn phát hiện và xác thực chữ ký số trên tài liệu cũng như ký vào tài liệu PDF được tạo bằng chứng chỉ được cung cấp. Hiện tại chữ ký số được hỗ trợ trên các tài liệu DOC, OOXML và ODT. Việc ký các tài liệu được tạo được hỗ trợ ở định dạng PDF.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với [Chữ ký trực tuyến miễn phí](https://products.aspose.app/words/signature) của chúng tôi.

{{% /alert %}}

## Chữ ký số không được bảo toàn khi mở và lưu

Một điểm quan trọng cần lưu ý là tài liệu được tải và sau đó được lưu bằng Aspose.Words sẽ mất mọi chữ ký điện tử được ký trên tài liệu. Theo thiết kế, đây là chữ ký số đảm bảo rằng nội dung không bị sửa đổi và hơn nữa còn xác thực danh tính của người đã ký tài liệu. Những nguyên tắc này sẽ bị vô hiệu nếu chữ ký gốc được chuyển sang tài liệu kết quả.

Do đó, nếu bạn xử lý các tài liệu được tải lên máy chủ, điều này có thể có nghĩa là bạn có thể làm hỏng tài liệu được tải lên máy chủ của mình theo cách này mà không biết. Do đó, tốt nhất nên kiểm tra chữ ký điện tử trên tài liệu và thực hiện hành động thích hợp nếu tìm thấy, ví dụ: có thể gửi cảnh báo đến khách hàng để thông báo rằng tài liệu họ đang chuyển có chứa chữ ký điện tử sẽ bị mất nếu có. xử lý. Bạn có thể tải xuống tệp mẫu của ví dụ này từ [đây](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Đoạn mã trên sử dụng phương pháp [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) để phát hiện xem tài liệu có chứa chữ ký điện tử mà không cần tải tài liệu trước hay không. Điều này cung cấp một cách hiệu quả và an toàn để kiểm tra chữ ký trong tài liệu trước khi xử lý chúng. Khi được thực thi, phương thức này trả về một đối tượng [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) cung cấp thuộc tính [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Thuộc tính này trả về true nếu tài liệu chứa một hoặc nhiều chữ ký số. Điều quan trọng cần lưu ý là phương pháp này không xác thực chữ ký, nó chỉ xác định xem có chữ ký hay không. Việc xác thực chữ ký số sẽ được đề cập trong phần tiếp theo.

{{% alert color="primary" %}}

Bạn cũng có thể kiểm tra xem tài liệu có chữ ký điện tử sau khi tải hay không bằng cách kiểm tra thuộc tính `Count` của bộ sưu tập [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Chữ ký số trên macro (Dự án VBA)

Chữ ký số trên macro không thể được truy cập hoặc ký. Điều này là do Aspose.Words không xử lý trực tiếp các macro trong tài liệu. Tuy nhiên, chữ ký số trên macro vẫn được giữ nguyên khi xuất tài liệu trở lại bất kỳ định dạng word nào. Những chữ ký này có thể được giữ nguyên trên mã VBA vì nội dung nhị phân của macro không bị thay đổi ngay cả khi bản thân tài liệu bị sửa đổi.

### Truy cập và xác minh chữ ký số

Một tài liệu có thể có nhiều chữ ký số. Tất cả các chữ ký này đều có thể được truy cập thông qua bộ sưu tập [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Mỗi đối tượng được trả về là một [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) đại diện cho một chữ ký số duy nhất thuộc về tài liệu. Điều này cung cấp cho các thành viên khả năng kiểm tra tính hợp lệ của chữ ký.

Thuộc tính quan trọng nhất để kiểm tra chữ ký số là tính hợp lệ của từng chữ ký trong tài liệu. Tất cả chữ ký trong tài liệu có thể được xác thực cùng một lúc bằng cách gọi thuộc tính [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Điều này sẽ trả về true nếu tất cả chữ ký trong tài liệu hợp lệ hoặc nếu tài liệu không có chữ ký và false nếu ít nhất một chữ ký số không hợp lệ.

Mỗi chữ ký cũng có thể được xác thực riêng bằng cách gọi [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Chữ ký có thể trả về không hợp lệ vì một số lý do, chẳng hạn như tài liệu đã bị thay đổi kể từ khi ký hoặc chứng chỉ đã hết hạn. Ngoài ra, các chi tiết bổ sung của chữ ký cũng có thể được truy cập. Mẫu mã bên dưới cho biết cách xác thực từng chữ ký trong tài liệu và hiển thị thông tin cơ bản về chữ ký. Bạn có thể tải xuống tệp mẫu của ví dụ này từ [đây](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Ký tài liệu Word

Lớp [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) cung cấp các phương thức ký tài liệu. Phương thức [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) ký tài liệu nguồn bằng cách sử dụng [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) đã cho bằng chữ ký số và ghi tài liệu đã ký vào luồng đích

Ví dụ dưới đây cho thấy cách ký tài liệu đơn giản

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Ví dụ dưới đây cho thấy cách ký tài liệu được mã hóa

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Ký văn bản Word bằng dòng chữ ký

Bạn có thể ký tài liệu nguồn bằng cách sử dụng [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) và [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) đã cho bằng chữ ký số và ghi tài liệu đã ký vào tệp đích. Sử dụng lớp [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/), bạn có thể chỉ định các tùy chọn để ký tài liệu. Ví dụ dưới đây cho thấy cách tạo dòng chữ ký mới và ký tài liệu

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Ví dụ dưới đây cho thấy cách sửa đổi dòng chữ ký hiện có và ký tài liệu

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Ký tài liệu Word bằng Mã định danh nhà cung cấp chữ ký

Ví dụ dưới đây cho thấy cách ký tài liệu Word bằng mã định danh nhà cung cấp chữ ký. Nhà cung cấp dịch vụ mật mã (CSP) là một mô-đun phần mềm độc lập thực sự thực hiện các thuật toán mã hóa để xác thực, mã hóa và mã hóa. MS Office bảo lưu giá trị {00000000-0000-0000-0000-000000000000} cho nhà cung cấp chữ ký mặc định của nó.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Tạo tài liệu Word ký dòng chữ ký mới bằng cách sử dụng Mã định danh nhà cung cấp

Ví dụ dưới đây cho thấy cách tạo dòng chữ ký và ký tài liệu Word bằng mã định danh nhà cung cấp chữ ký.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Truy xuất giá trị chữ ký số

Aspose.Words cũng cung cấp khả năng truy xuất giá trị chữ ký số từ tài liệu được ký điện tử dưới dạng mảng byte bằng thuộc tính [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

Ví dụ mã sau đây cho thấy cách lấy giá trị chữ ký số dưới dạng mảng byte từ tài liệu:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
