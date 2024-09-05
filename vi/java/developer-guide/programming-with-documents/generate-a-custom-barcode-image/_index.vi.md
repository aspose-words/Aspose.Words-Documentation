---
title: Tạo mã vạch trong Java
second_title: Aspose.Words đối với Java
articleTitle: Tạo một hình ảnh Mã vạch Tùy chỉnh
linktitle: Tạo một hình ảnh Mã vạch Tùy chỉnh
description: "Ví dụ về tạo hình mã vạch sử dụng Java."
type: docs
weight: 350
url: /vi/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Mã vạch là sự thể hiện trực quan của dữ liệu dưới dạng các đường song song hoặc các mẫu. Mã vạch được sử dụng rộng rãi trong nhiều ngành công nghiệp khác nhau như bán lẻ, hậu cần, y tế, ngân hàng và nhiều hơn nữa.

Microsoft Word cho phép người dùng nhúng mã vạch trực tiếp vào tài liệu bằng cách sử dụng các trường. Người dùng có thể chèn một loại mã vạch cụ thể, chẳng hạn như mã QR hoặc mã vạch tuyến tính, bằng trường [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

Trong bài viết này chúng ta sẽ xem xét cách thực hiện trường BARCODE trong Aspose.Words và cách Aspose.Words cho phép người dùng làm việc với các tài liệu Word mà đã có mã vạch đã được thêm vào.

## Loại mã vạch được hỗ trợ bởi Aspose.Words

Aspose.Words hỗ trợ nhiều loại mã vạch khác nhau. Loại mã vạch được truyền dưới dạng giá trị chuỗi trong thuộc tính [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType)

{{% alert color="primary" %}}

Vì làm việc với các mã vạch trong chức năng của Aspose.Words là giới hạn, người dùng có thể sử dụng bất kỳ thư viện nào bao gồm Aspose.Barcode hoặc viết mã của riêng mình để làm việc với các mã vạch. Bạn có thể tìm hiểu thêm về các loại mã vạch [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Khi lưu các định dạng của Word hỗ trợ mã vạch, bạn có thể sử dụng bất kỳ loại mã vạch nào là [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Nếu một loại mã vạch không đúng đã được truyền đi, Word sẽ hiển thị thông báo lỗi.

Khi lưu sang các định dạng khác, chẳng hạn như PDF, Aspose.Words ủy thác việc xử lý mã vạch cho mã người dùng, vì vậy người dùng bị giới hạn ở các loại mã vạch của thực hiện hoặc thư viện họ sử dụng.

## Chèn mã vạch vào một tài liệu hoặc tải một tài liệu có mã vạch đã được thêm vào

Aspose.Words cung cấp khả năng để:

1. Lập trình chèn mã vạch vào tài liệu sử dụng mã [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) và [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. hoặc tải một tài liệu word có mã vạch đã được chèn vào để làm việc tiếp theo

Aspose.Words có một giao diện để tạo mã vạch tùy chỉnh khiến nó dễ dàng sử dụng [Aspose.Words](https://products.aspose.com/words/java/) và [Aspose.BarCode](https://products.aspose.com/barcode/java/) cùng nhau để hiển thị hình ảnh mã vạch trong các tài liệu đầu ra. Ví dụ, bạn có thể tạo một DOC, OOXML hoặc RTF và thêm trường DISPLAYBARCODE vào nó bằng cách sử dụng Aspose.Words. Hoặc bạn có thể tải một tài liệu DOC, OOXML hoặc RTF với trường DISPLAYBARCODE đã tồn tại và cung cấp thực hiện tùy chỉnh của bộ tạo mã vạch.

Một trường tiêu chuẩn DISPLAYBARCODE có cú pháp sau:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Dưới đây là một ví dụ về mã sinh bằng cách sử dụng Aspose.Words và Aspose.BarCode API. Ví dụ này cho thấy cách chèn hình ảnh mã vạch ở vị trí trường DISPLAYBARCODE trong tài liệu từ Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Bạn cũng có thể lưu tài liệu với mã vạch đã tải hoặc chèn mới trong các định dạng trang cố định như PDF, XPS, vv. Ví dụ sau cho thấy cách lưu một tài liệu Word sang định dạng PDF

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Để biết thêm thông tin về chuyển đổi các tài liệu từ một định dạng sang một định dạng khác, hãy xem phần [Convert a Document](/words/java/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Bạn cũng có thể sử dụng giao diện [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) để chuyển đổi mã vạch tích hợp trong các tài liệu Word thành hình ảnh. Hình ảnh kết quả có thể được chiết xuất từ tài liệu – xem bài viết Làm việc với hình ảnh cho chi tiết.

{{% /alert %}}

## Chỉ định các tùy chọn mã vạch

Khi làm việc với mã vạch, bạn có thể đặt thêm một số thuộc tính. " Aspose.Words cung cấp cho bạn lớp [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) – lớp cho các tham số mã vạch để truyền qua BarcodeGenerator".

Aspose.Words hỗ trợ độ phân giải tích hợp 96 ppi cho hình ảnh được tạo ra với [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), giới hạn kích thước tối thiểu của một hình ảnh mã vạch. Để giải quyết vấn đề này, các nhà phát triển có thể chèn thủ công hình ảnh mã vạch với độ phân giải mục tiêu vào một tài liệu Word và lưu chúng trong định dạng yêu cầu. Để biết thêm chi tiết và ví dụ về cách làm việc với mã vạch, vui lòng xem bài viết [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
