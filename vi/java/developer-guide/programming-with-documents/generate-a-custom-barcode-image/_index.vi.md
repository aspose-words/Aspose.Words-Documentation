---
title: Tạo mã vạch trong Java
second_title: Aspose.Words cho Java
articleTitle: Tạo một hình mã vạch tùy chỉnh
linktitle: Tạo một hình mã vạch tùy chỉnh
description: "Ví dụ về việc tạo hình mã vạch sử dụng Java."
type: docs
weight: 350
url: /vi/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Mã vạch là sự thể hiện thị giác của dữ liệu dưới dạng các đường song song hoặc mô hình. Mã vạch được sử dụng phổ biến trong nhiều ngành công nghiệp khác nhau như bán lẻ, hậu cần, y tế, ngân hàng và nhiều ngành khác.

Microsoft Word cho phép người dùng nhúng mã vạch trực tiếp vào tài liệu bằng cách sử dụng các trường. Người dùng có thể chèn một loại mã vạch cụ thể, chẳng hạn như mã QR hoặc mã vạch tuyến tính, bằng trường [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

Trong bài viết này, chúng ta sẽ xem cách thực hiện trường mã vạch trong Aspose.Words và cách Aspose.Words cho phép người dùng làm việc với các tài liệu Word đã có mã vạch đã được thêm vào.

## Loại mã vạch được hỗ trợ bởi Aspose.Words

Aspose.Words hỗ trợ các loại mã vạch khác nhau. Loại mã vạch được truyền dưới dạng giá trị chuỗi trong thuộc tính [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Vì việc làm việc với mã vạch trong chức năng của Aspose.Words là hạn chế, người dùng có thể sử dụng bất kỳ thư viện nào, bao gồm cả Aspose.Barcode hoặc viết lại bản vẽ của riêng mình để làm việc với mã vạch. Bạn có thể tìm hiểu thêm về các loại mã vạch [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Khi lưu sang các định dạng Word hỗ trợ mã vạch, bạn có thể sử dụng mọi loại mã vạch là [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Nếu một loại mã vạch không chính xác được truyền, Word sẽ hiển thị lỗi.

Khi lưu sang các định dạng khác, như PDF, Aspose.Words ủy quyền cho mã người dùng xử lý mã vạch, vì vậy người dùng bị giới hạn với loại mã vạch của thực hiện hoặc thư viện của họ.

## Chèn mã vạch vào tài liệu hoặc tải một tài liệu với mã vạch đã thêm

Aspose.Words cung cấp khả năng:

1. Chèn mã vạch vào một tài liệu bằng cách sử dụng các mã [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) và [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. Hoặc tải một tài liệu word với mã vạch đã được chèn sẵn để làm việc thêm

Aspose.Words có một giao diện để tạo mã vạch tùy chỉnh mà làm cho nó dễ dàng để sử dụng [Aspose.Words](https://products.aspose.com/words/java/) và [Aspose.BarCode](https://products.aspose.com/barcode/java/) cùng nhau để hiển thị hình ảnh mã vạch trong các tài liệu đầu ra. Ví dụ, bạn có thể tạo một tài liệu DOC, OOXML hoặc RTF và thêm trường DISPLAYBARCODE bằng cách sử dụng Aspose.Words. Hoặc bạn có thể tải một tài liệu DOC, OOXML hoặc RTF với trường "DISPLAYBARCODE" đã tồn tại trong nó và cung cấp thực hiện của bạn về bộ mã tạo mã thông báo tùy chỉnh.

Một trường DISPLAYBARCODE điển hình có cú pháp sau:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Dưới đây là ví dụ về bộ tạo mã sử dụng các API Aspose.Words và Aspose.BarCode. Ví dụ này cho thấy cách chèn ảnh mã vạch vào vị trí trường DISPLAYBARCODE trong tài liệu Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Bạn cũng có thể lưu tài liệu với mã vạch đã tải hoặc đã chèn mới trong các định dạng trang cố định như PDF, XPS, v.v... Ví dụ mã sau cho thấy cách lưu một tài liệu Word sang định dạng PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Để biết thêm chi tiết về việc chuyển đổi các tài liệu từ một định dạng sang định dạng khác, hãy xem [Convert a Document](/words/java/convert-a-document/) phần tài liệu.

{{% /alert %}}

{{% alert color="primary" %}}

Bạn cũng có thể sử dụng giao diện [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) để chuyển đổi các mã vạch được nhúng trong tài liệu Word thành hình ảnh. Hình ảnh kết quả có thể được chiết xuất từ tài liệu - xem bài viết Làm việc với Hình ảnh cho chi tiết.

{{% /alert %}}

## Chỉ định các tùy chọn mã vạch

Khi làm việc với mã vạch bạn có thể thiết lập một số thuộc tính bổ sung. Aspose.Words cung cấp cho bạn lớp [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - lớp cho các tham số mã vạch để truyền qua BarcodeGenerator".

Aspose.Words hỗ trợ độ phân giải nhúng 96 ppi cho hình ảnh được tạo ra với [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), điều này giới hạn kích thước tối thiểu của một hình ảnh mã vạch. Để giải quyết vấn đề này, các nhà phát triển có thể chèn thủ công hình ảnh mã vạch với độ phân giải mục tiêu vào tài liệu Word và lưu chúng ở định dạng cần thiết. Để biết thêm chi tiết và ví dụ về cách làm việc với mã vạch, xem bài viết [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
