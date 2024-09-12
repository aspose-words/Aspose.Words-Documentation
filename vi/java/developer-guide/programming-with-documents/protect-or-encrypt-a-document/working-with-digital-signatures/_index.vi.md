---
title: Làm việc với chữ ký số trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với chữ ký số
linktitle: Làm việc với chữ ký số
description: "Đánh dấu chữ ký số trên các tài liệu và phát hiện, đếm, xác minh, hoặc xóa chữ ký số hiện có bằng Java."
type: docs
weight: 30
url: /vi/java/working-with-digital-signatures/
---

Một chữ ký số là một thực hiện công nghệ của chữ ký điện tử để ký các tài liệu và xác thực người ký để đảm bảo rằng một tài liệu đã không được sửa đổi kể từ khi ký. Mỗi chữ ký số là duy nhất cho mỗi người ký vì tuân theo giao thức PKI để tạo ra cả khóa công khai và khóa riêng tư. Ký số vào một tài liệu bằng kỹ thuật số có nghĩa là tạo ra chữ ký sử dụng khóa riêng của người ký nơi mà một thuật toán toán học được sử dụng để mã hóa giá trị băm được tạo.

Aspose.Words cho phép bạn phát hiện, đếm hoặc xác minh các chữ ký số hiện có và cũng thêm một chữ ký mới vào tài liệu của bạn để tìm ra bất kỳ sự thay đổi nào trong đó. Bạn cũng có thể xóa hết các chữ ký số từ một tài liệu. Dùng lớp [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) để làm việc với chữ ký số.

Bài viết này giải thích cách thực hiện tất cả các trên để xác minh tính xác thực và toàn vẹn của một tài liệu kỹ thuật số.

{{% alert color="primary" %}}

Lưu ý rằng bạn có thể truy cập các chữ ký số của tài liệu chỉ khi chạy phiên bản Java 6 và cao hơn.

{{% /alert %}}

{{% alert color="primary" %}}

**Thử dùng trực tuyến**

Bạn có thể thử chức năng này với [Free online signature](https://products.aspose.app/words/signature) của chúng tôi.

{{% /alert %}}

## Các định dạng hỗ trợ

Aspose.Words cho phép bạn làm việc với chữ ký số trên các tài liệu DOC, OOXML và ODT và ký vào tài liệu được tạo ra ở định dạng PDF hoặc XPS.

## Hạn chế của chữ ký số

Bảng dưới đây mô tả một vài giới hạn mà bạn có thể gặp phải khi làm việc với chữ ký số thông qua Aspose.Words, cũng như một số lựa chọn thay thế.

| Hạn chế | Tùy chọn thay thế |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| "Mất chữ ký số trên một tài liệu sau khi tải và lưu nó." Vì vậy, xử lý một tài liệu đến máy chủ có thể gây ra mất tất cả các chữ ký số mà không có thông báo. | Kiểm tra xem một tài liệu có chữ ký số và thực hiện hành động thích hợp nếu phát sinh bất kỳ chữ ký nào. Ví dụ, gửi cảnh báo cho khách hàng thông báo rằng tài liệu họ đang tải lên có chữ ký số mà sẽ bị mất nếu nó được xử lý. |
| Aspose.Words hỗ trợ làm việc với các macro trong một tài liệu. Nhưng Aspose.Words hiện chưa hỗ trợ chữ ký số trên macro. | Xuất tài liệu trở lại bất kỳ định dạng nào của Word và dùng Microsoft Word để thêm chữ ký số vào macro. |

## Phát hiện, đếm và xác nhận chữ ký số

Aspose.Words cho phép bạn phát hiện chữ ký số trong một tài liệu bằng phương pháp [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) và thuộc tính [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature). Điều đáng chú ý là kiểm tra như vậy chỉ phát hiện được thực tế chữ ký, nhưng không phát hiện được tính hợp lệ của nó.

Một tài liệu có thể được ký nhiều lần và điều này có thể thực hiện bởi các người dùng khác nhau. Để kiểm tra tính hợp lệ của chữ ký số thì bạn cần phải tải chúng từ tài liệu bằng phương pháp [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) và sử dụng thuộc tính [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid). Ngoài ra, Aspose.Words cũng cho phép bạn đếm một tập hợp tất cả các chữ ký số trong một tài liệu bằng thuộc tính [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount).

Việc này cung cấp cách hiệu quả và an toàn để kiểm tra một văn bản cho chữ ký trước khi xử lý nó.

Ví dụ sau cho thấy cách phát hiện sự có mặt của chữ ký số và xác minh chúng:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Tạo chữ ký số {#create-a-digital-signature}

Để tạo chữ ký số, bạn cần phải tải một chứng thư xác thực mà xác nhận danh tính. Khi bạn gửi một văn bản đã ký số, bạn cũng gửi chứng chỉ và khóa công khai của mình.

Aspose.Words cho phép bạn tạo ra chứng chỉ X.509, một chứng chỉ số sử dụng tiêu chuẩn X.509 PKI được chấp nhận quốc tế để xác minh rằng khóa công khai thuộc về người ký được bao gồm bên trong chứng chỉ. Để làm điều này, hãy sử dụng phương pháp [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) trong lớp [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/).

Các phần tiếp theo giải thích cách thêm chữ ký số, dòng chữ ký, và làm thế nào để ký một tài liệu PDF đã được tạo ra.

### Ký một tài liệu

Aspose.Words cho phép bạn ký một tài liệu DOC, DOCX hoặc ODT bằng phương pháp [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) và thuộc tính [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/).

Ví dụ mã sau cho thấy cách ký các tài liệu bằng một chứng nhận và tùy chọn ký:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Thêm Dòng Chữ ký

Dòng chữ ký là một hình thức trực quan của chữ ký số trong một văn bản. Aspose.Words cho phép bạn chèn một dòng chữ ký bằng phương pháp [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions). Bạn cũng có thể thiết lập các tham số cho đại diện này bằng lớp [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/).

Ví dụ, hình dưới đây cho thấy cách hiển thị chữ ký hợp lệ và không hợp lệ như thế nào.

<img src="valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Ngoài ra, nếu một tài liệu chứa một dòng chữ ký và không có chữ ký số, có một tính năng yêu cầu người dùng thêm chữ ký.

Mã ví dụ sau cho thấy cách ký một tài liệu bằng chứng chỉ cá nhân và dòng chữ ký cụ thể:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Đánh dấu tài liệu PDF đã tạo ra {#sign-a-generated-pdf-document}

Aspose.Words cho phép bạn ký và nhận được tất cả chi tiết của một tài liệu PDF bằng thuộc tính [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/).

Mã ví dụ dưới đây cho thấy cách ký một tập tin PDF được tạo ra:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

Hình ảnh dưới đây chứng minh rằng tài liệu PDF được tạo ra đã mở trong Adobe Acrobat và chữ ký số được xác nhận là hiện diện và hợp lệ.

![create-digital-signed-pdf-aspose-words-java](signed-pdf-aspose-words-java.png)

## Lấy lại giá trị chữ ký số

Aspose.Words cũng cung cấp khả năng lấy giá trị chữ ký số từ một tài liệu được chữ ký số dưới dạng mảng byte bằng thuộc tính [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue).

Mã ví dụ sau cho thấy cách lấy giá trị chữ ký số dưới dạng mảng byte từ một tài liệu:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Loại bỏ chữ ký số

Aspose.Words cho phép bạn xóa tất cả chữ ký số từ một tài liệu đã ký bằng phương pháp [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream).

Mã ví dụ sau cho thấy cách tải và loại bỏ các chữ ký số từ một tài liệu:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Hãy lưu ý rằng bạn không thể loại bỏ chỉ một chữ ký số trong tài liệu của bạn.

{{% /alert %}}
