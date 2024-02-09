---
title: Làm việc với chữ ký số trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với chữ ký số
linktitle: Làm việc với chữ ký số
description: "Ký điện tử các tài liệu và phát hiện, đếm, xác minh và xóa chữ ký điện tử hiện có bằng C#."
type: docs
weight: 40
url: /vi/net/working-with-digital-signatures/
---

Chữ ký số là việc triển khai công nghệ chữ ký điện tử để ký các tài liệu và xác thực người ký để đảm bảo rằng tài liệu không bị sửa đổi kể từ khi được ký. Mỗi chữ ký số là duy nhất cho mỗi người ký vì tuân theo giao thức PKI để tạo cả khóa chung và khóa riêng. Ký một tài liệu kỹ thuật số có nghĩa là tạo chữ ký bằng khóa riêng của người ký trong đó thuật toán toán học được sử dụng để mã hóa hàm băm được tạo.

Aspose.Words cho phép bạn phát hiện, đếm hoặc xác minh chữ ký số hiện có, đồng thời thêm chữ ký mới vào tài liệu của bạn để phát hiện bất kỳ hành vi giả mạo nào trong đó. Bạn cũng có thể xóa tất cả chữ ký điện tử khỏi tài liệu. Sử dụng lớp [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) để làm việc với chữ ký số.

Bài viết này giải thích cách thực hiện tất cả những điều trên để xác thực tính xác thực và tính toàn vẹn của tài liệu kỹ thuật số.

{{% alert color="primary" %}}

Lưu ý rằng bạn chỉ có thể truy cập chữ ký số cho tài liệu của mình khi chạy phiên bản .NET Framework 2.0 trở lên.

{{% /alert %}}

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với [Chữ ký trực tuyến miễn phí](https://products.aspose.app/words/signature) của chúng tôi.

{{% /alert %}}

## Các định dạng được hỗ trợ

Aspose.Words cho phép bạn làm việc với chữ ký số trên các tài liệu DOC, OOXML và ODT cũng như ký vào tài liệu được tạo ở định dạng PDF hoặc XPS.

## Hạn chế của chữ ký số

Bảng bên dưới mô tả một số hạn chế mà bạn có thể gặp phải khi làm việc với chữ ký điện tử thông qua Aspose.Words, cũng như một số tùy chọn thay thế.

|  giới hạn |  Lựa chọn thay thế |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Mất chữ ký số trên tài liệu sau khi tải và lưu nó. Do đó, việc xử lý tài liệu lên máy chủ có thể gây mất toàn bộ chữ ký số mà không cần thông báo trước |  Kiểm tra xem tài liệu có chữ ký điện tử hay không và thực hiện hành động thích hợp nếu tìm thấy. Ví dụ: gửi thông báo cho khách hàng rằng tài liệu họ đang tải lên có chứa chữ ký điện tử sẽ bị mất nếu được xử lý |
|  Aspose.Words hỗ trợ làm việc với macro trong tài liệu. Nhưng Aspose.Words chưa hỗ trợ chữ ký số trên macro |  Xuất tài liệu trở lại bất kỳ định dạng Word nào và sử dụng Microsoft Word để thêm chữ ký số vào macro |

## Phát hiện, đếm và xác minh chữ ký số

Aspose.Words cho phép bạn phát hiện chữ ký số trong tài liệu bằng phương pháp [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) và thuộc tính [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/). Điều đáng chú ý là việc kiểm tra như vậy sẽ chỉ phát hiện tính xác thực của chữ ký chứ không phát hiện tính hợp lệ của nó.

Một tài liệu có thể được ký nhiều lần và điều này có thể được thực hiện bởi những người dùng khác nhau. Để kiểm tra tính hợp lệ của chữ ký số, bạn cần tải chúng từ tài liệu bằng phương pháp [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) và sử dụng thuộc tính [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). Ngoài ra Aspose.Words còn cho phép bạn đếm một tập hợp tất cả các chữ ký điện tử trong một tài liệu bằng thuộc tính [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

Tất cả những điều này cung cấp một cách hiệu quả và an toàn để kiểm tra chữ ký của tài liệu trước khi xử lý nó.

Ví dụ mã sau đây cho thấy cách phát hiện sự hiện diện của chữ ký số và xác minh chúng:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Tạo chữ ký số {#create-a-digital-signature}

Để tạo chữ ký điện tử, bạn sẽ cần tải chứng chỉ ký xác nhận danh tính. Khi bạn gửi tài liệu được ký điện tử, bạn cũng gửi chứng chỉ và khóa chung của mình.

Aspose.Words cho phép bạn tạo chứng chỉ X.509, chứng chỉ kỹ thuật số sử dụng tiêu chuẩn PKI X.509 được quốc tế chấp nhận để xác minh rằng khóa chung thuộc về người ký có trong chứng chỉ. Để thực hiện việc này, hãy sử dụng phương thức [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) trong lớp [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/).

Các phần tiếp theo giải thích cách thêm chữ ký điện tử, dòng chữ ký và cách ký vào tài liệu PDF được tạo.

### Ký một tài liệu

Aspose.Words cho phép bạn ký tài liệu DOC, DOCX, XPS hoặc ODT bằng kỹ thuật số bằng phương thức [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) và thuộc tính [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/).

Ví dụ mã sau đây cho biết cách ký tài liệu bằng chủ sở hữu chứng chỉ và các tùy chọn ký:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Thêm dòng chữ ký

Dòng chữ ký là sự thể hiện trực quan của chữ ký số trong tài liệu. Aspose.Words cho phép bạn chèn dòng chữ ký bằng phương pháp [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/). Bạn cũng có thể đặt các tham số cho cách biểu diễn này bằng cách sử dụng lớp [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/).

Ví dụ: hình ảnh bên dưới cho thấy cách hiển thị chữ ký hợp lệ và không hợp lệ.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="vẽ" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="vẽ" style="width:300px"/>

Ngoài ra, nếu tài liệu có dòng chữ ký và không có chữ ký số thì còn có tính năng yêu cầu người dùng thêm chữ ký.

Ví dụ mã sau đây cho biết cách ký tài liệu bằng chứng chỉ cá nhân và một dòng chữ ký cụ thể:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Ký vào tài liệu PDF đã tạo {#sign-a-generated-pdf-document}

Aspose.Words cho phép bạn ký và nhận tất cả thông tin chi tiết của tài liệu PDF bằng thuộc tính [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/).

Ví dụ mã sau đây cho thấy cách ký một tệp PDF được tạo:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Truy xuất giá trị chữ ký số

Aspose.Words cũng cung cấp khả năng truy xuất giá trị chữ ký số từ tài liệu được ký điện tử dưới dạng mảng byte bằng thuộc tính [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

Ví dụ mã sau đây cho thấy cách lấy giá trị chữ ký số dưới dạng mảng byte từ tài liệu:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Xóa chữ ký số

Aspose.Words cho phép bạn xóa tất cả chữ ký điện tử khỏi tài liệu đã ký bằng phương pháp [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

Ví dụ mã sau đây cho biết cách tải và xóa chữ ký số khỏi tài liệu:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Lưu ý rằng bạn không thể xóa chỉ một chữ ký điện tử trong tài liệu của mình.

{{% /alert %}}
