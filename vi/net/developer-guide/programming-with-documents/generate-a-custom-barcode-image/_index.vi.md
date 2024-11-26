---
title: Làm sao để Tạo mã vạch
second_title: Aspose.Words cho .NET
articleTitle: Tạo mã Barcode tùy chỉnh
linktitle: Tạo mã Barcode tùy chỉnh
description: "Ví dụ về tạo hình mã vạch sử dụng C#."
type: docs
weight: 350
url: /vi/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Mã vạch là biểu hiện trực quan của dữ liệu dưới dạng đường song song hoặc hình mẫu. Mã vạch được sử dụng rộng rãi trong nhiều ngành công nghiệp khác nhau như bán lẻ, hậu cần, y tế, ngân hàng và nhiều ngành khác.

Microsoft Word cho phép người dùng nhúng mã vạch trực tiếp vào tài liệu bằng cách sử dụng trường. Người dùng có thể chèn một loại mã vạch cụ thể, chẳng hạn như mã QR hoặc mã vạch thẳng, bằng trường [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

Trong bài viết này, chúng ta sẽ xem xét cách thức thực hiện trường BARCODE trong Aspose.Words, và cách thức mà Aspose.Words cho phép người dùng làm việc với các tài liệu Word đã thêm mã vạch vào.

## Các loại mã vạch được hỗ trợ bởi Aspose.Words

Aspose.Words hỗ trợ nhiều loại mã vạch. Loại mã vạch được truyền dưới dạng giá trị chuỗi trong thuộc tính [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Vì làm việc với mã vạch trong phạm vi chức năng của Aspose.Words bị hạn chế, người dùng có thể sử dụng bất kỳ thư viện nào, bao gồm Aspose.Barcode, hoặc viết mã của riêng mình để làm việc với mã vạch. Bạn có thể tìm hiểu thêm về các loại mã vạch [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Khi lưu vào các định dạng Word hỗ trợ mã vạch, bạn có thể dùng mọi loại mã vạch nào là [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Nếu một loại mã vạch không chính được đưa vào, Word sẽ hiển thị lỗi.

Khi lưu sang các định dạng khác như PDF, Aspose.Words ủy quyền cho mã người dùng xử lý mã vạch, vì vậy người dùng bị giới hạn đến các loại mã vạch của thực hiện hoặc thư viện họ sử dụng.

## Chèn mã vạch vào tài liệu hoặc tải một tài liệu có mã vạch đã thêm

Aspose.Words cung cấp khả năng để:

1. Lập trình chèn mã vạch vào tài liệu bằng cách sử dụng mã [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) và [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. Hoặc tải một tài liệu Word có các mã vạch đã được chèn sẵn vào để làm việc tiếp theo

Aspose.Words có một giao diện để tạo mã vạch tùy chỉnh giúp việc sử dụng [Aspose.Words](https://products.aspose.com/words/net/) và [Aspose.BarCode](https://products.aspose.com/barcode/net/) cùng nhau dễ dàng hơn để tạo hình ảnh mã vạch trong các tài liệu đầu ra. Ví dụ, bạn có thể tạo một tài liệu DOC, OOXML hoặc RTF và thêm trường DISPLAYBARCODE vào nó bằng cách sử dụng Aspose.Words. Hoặc bạn có thể tải một tài liệu DOC, OOXML hoặc RTF với trường DISPLAYBARCODE đã tồn tại trong đó và cung cấp thực hiện của bạn cho bộ tạo mã vạch tùy chỉnh.

Một trường DISPLAYBARCODE điển hình có cú pháp sau:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Dưới đây là một ví dụ về trình tạo mã sử dụng Aspose.Words và Aspose.BarCode API. Ví dụ này cho thấy cách chèn hình ảnh mã vạch vào vị trí trường DISPLAYBARCODE trong tài liệu từ Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Bạn cũng có thể lưu tài liệu với mã vạch đã tải hoặc mới chèn vào trong các định dạng trang cố định như PDF, XPS v.v... Ví dụ sau cho thấy cách để lưu một tài liệu Word sang định dạng PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Để biết thêm thông tin về việc chuyển đổi tài liệu từ một định dạng sang một định dạng khác, hãy xem phần tài liệu [Convert a Document](/words/net/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Bạn cũng có thể dùng giao diện [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) để chuyển đổi các mã vạch được nhúng trong các tài liệu Word thành hình ảnh. Các hình ảnh kết quả có thể được trích xuất từ tài liệu – xem bài viết Làm việc với Hình ảnh để biết chi tiết.

{{% /alert %}}

## Chỉ định Tùy chọn Barcode

Khi làm việc với mã vạch, bạn có thể đặt thêm một số thuộc tính. Aspose.Words cung cấp cho bạn lớp [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) – lớp cho các tham số mã vạch để truyền qua BarcodeGenerator.

Aspose.Words hỗ trợ độ phân giải nhúng 96 ppi cho các hình ảnh được tạo ra bằng [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), điều này giới hạn kích thước tối thiểu của một hình ảnh mã vạch. Để giải quyết vấn đề này, các nhà phát triển có thể chèn thủ công hình ảnh mã vạch với độ phân giải mục tiêu vào tài liệu Word và lưu chúng ở định dạng yêu cầu. Để biết thêm chi tiết và ví dụ về cách làm việc với các mã vạch, vui lòng xem bài viết [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).
