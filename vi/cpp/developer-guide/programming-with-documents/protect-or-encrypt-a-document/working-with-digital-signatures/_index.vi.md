---
title: Làm việc Với Chữ Ký Số trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Chữ Ký Số
linktitle: Làm việc Với Chữ Ký Số
description: "Kỹ thuật số ký tài liệu và phát hiện, đếm, xác minh, và loại bỏ chữ ký số hiện có."
type: docs
weight: 160
url: /vi/cpp/working-with-digital-signatures/
---

Chữ ký số là việc triển khai công nghệ chữ ký điện tử để ký tài liệu và xác thực người ký để đảm bảo rằng tài liệu chưa được sửa đổi kể từ khi nó được ký. Mỗi chữ ký số là duy nhất cho mỗi người ký vì tuân theo giao thức PKI để tạo cả khóa công khai và khóa riêng. Ký tài liệu kỹ thuật số có nghĩa là tạo chữ ký bằng khóa riêng của người ký trong đó thuật toán toán học được sử dụng để mã hóa hàm băm được tạo.

Aspose.Words cho phép bạn phát hiện, đếm hoặc xác minh chữ ký số hiện có và cũng thêm chữ ký mới vào tài liệu của bạn để tìm hiểu bất kỳ sự giả mạo nào trong đó. Bạn cũng có thể xóa tất cả chữ ký số khỏi tài liệu. Sử dụng lớp [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) để làm việc với chữ ký số.

Bài viết này giải thích cách thực hiện tất cả những điều trên để xác thực tính xác thực và tính toàn vẹn của tài liệu kỹ thuật số.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với chúng tôi [Chữ ký trực tuyến miễn phí](https://products.aspose.app/words/signature).

{{% /alert %}}

## Các Định Dạng Được Hỗ Trợ

Aspose.Words cho phép bạn làm việc với chữ ký số trên DOC, OOXML và ODT tài liệu và ký tài liệu được tạo ở định dạng PDF hoặc XPS.

## Hạn chế Của Chữ Ký Số

Bảng dưới đây mô tả một số hạn chế mà bạn có thể gặp phải khi làm việc với chữ ký số thông qua Aspose.Words, cũng như một số tùy chọn thay thế.

| Giới hạn | Tùy chọn thay thế |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Mất chữ ký số trên tài liệu sau khi tải và lưu nó. Do đó, việc xử lý tài liệu đến máy chủ có thể gây mất tất cả các chữ ký số mà không cần thông báo. | Kiểm tra xem tài liệu có chữ ký số hay không và thực hiện hành động thích hợp nếu có. Ví dụ: gửi cảnh báo cho khách hàng thông báo cho họ rằng tài liệu họ đang tải lên có chứa chữ ký số sẽ bị mất nếu nó được xử lý. |
| Aspose.Words hỗ trợ làm việc với macro trong tài liệu. Nhưng Aspose.Words vẫn chưa hỗ trợ chữ ký số trên macro. | Xuất tài liệu trở lại bất kỳ Định dạng Word nào và sử dụng Microsoft Word để thêm chữ ký số vào macro. |

## Phát hiện, Đếm Và Xác Minh Chữ Ký Số

Aspose.Words cho phép bạn phát hiện chữ ký số trong tài liệu bằng phương thức [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) và thuộc tính [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Điều đáng chú ý là một kiểm tra như vậy sẽ chỉ phát hiện thực tế của chữ ký, nhưng không phải là hiệu lực của nó.

Một tài liệu có thể được ký nhiều lần và điều này có thể được thực hiện bởi nhiều người dùng khác nhau. Để kiểm tra tính hợp lệ của chữ ký số, bạn cần tải chúng từ tài liệu bằng phương thức [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) và sử dụng thuộc tính [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). Ngoài ra Aspose.Words cho phép bạn đếm một tập hợp tất cả các chữ ký số trong tài liệu bằng thuộc tính [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Tất cả điều này cung cấp một cách hiệu quả và an toàn để kiểm tra một tài liệu cho chữ ký trước khi xử lý nó.

Ví dụ mã sau đây cho thấy cách phát hiện sự hiện diện của chữ ký số và xác minh chúng:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Tạo Chữ Ký số {#create-a-digital-signature}

Để tạo chữ ký số, bạn sẽ yêu cầu tải chứng chỉ ký xác nhận danh tính. Khi bạn gửi một tài liệu có chữ ký số, bạn cũng gửi chứng chỉ và khóa công khai của mình.

Aspose.Words cho phép bạn tạo chứng chỉ X. 509, chứng chỉ kỹ thuật số sử dụng Tiêu chuẩn x. 509 PKI được quốc tế chấp nhận để xác minh rằng khóa công khai thuộc về người ký có trong chứng chỉ. Để thực hiện việc này, hãy sử dụng phương thức [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) trong lớp [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

Các phần tiếp theo giải thích cách thêm chữ ký số, dòng chữ ký và cách ký tài liệu PDF đã tạo.

### Ký Một Tài liệu

Aspose.Words cho phép bạn ký một tài liệu DOC, DOCX hoặc ODT bằng kỹ thuật số bằng phương thức [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) và thuộc tính [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

Ví dụ mã sau đây cho thấy cách ký tài liệu bằng cách sử dụng chủ sở hữu chứng chỉ và các tùy chọn ký:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Thêm Một Dòng Chữ Ký

Một dòng chữ ký là một đại diện trực quan của một chữ ký số trong một tài liệu. Aspose.Words cho phép bạn chèn một dòng chữ ký bằng phương thức [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). Bạn cũng có thể đặt các tham số cho biểu diễn này bằng cách sử dụng lớp [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Ví dụ: hình dưới đây cho thấy chữ ký hợp lệ và không hợp lệ có thể được hiển thị như thế nào.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Ngoài ra, nếu tài liệu chứa dòng chữ ký và không có chữ ký số, có một tính năng để yêu cầu người dùng thêm chữ ký.

Ví dụ mã sau đây cho thấy cách ký một tài liệu với chứng chỉ cá nhân và một dòng chữ ký cụ thể:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Ký Một Tài Liệu PDF Được Tạo {#sign-a-generated-pdf-document}

Aspose.Words cho phép bạn ký và nhận tất cả các chi tiết của tài liệu PDF bằng cách sử dụng thuộc tính [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

Ví dụ mã sau đây cho thấy cách ký một PDFđược tạo:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Lấy Giá Trị Chữ Ký Số

Aspose.Words cũng cung cấp khả năng truy xuất giá trị chữ ký số từ tài liệu được ký điện tử dưới dạng mảng byte bằng thuộc tính [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

Ví dụ mã sau đây cho thấy cách lấy giá trị chữ ký số dưới dạng mảng byte từ tài liệu:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Xóa Chữ Ký Số

Aspose.Words cho phép bạn xóa tất cả chữ ký số khỏi tài liệu đã ký bằng phương thức [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

Ví dụ mã sau đây cho thấy cách tải và xóa chữ ký số khỏi tài liệu:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Lưu ý rằng bạn không thể chỉ xóa một chữ ký số trong tài liệu của mình.

{{% /alert %}}
