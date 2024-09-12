---
title: Tạo mã vạch trong Java
second_title: Aspose.Words cho Java
articleTitle: Tạo một hình ảnh mã vạch tùy chỉnh
linktitle: Tạo một hình ảnh mã vạch tùy chỉnh
description: "Ví dụ về việc tạo hình mã vạch sử dụng Java."
type: docs
weight: 350
url: /vi/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

{{% alert color="primary" %}}

Aspose.Words có giao diện để tạo mã vạch tùy chỉnh mà làm cho nó rất dễ sử dụng [Aspose.Words](https://products.aspose.com/words/java/) và [Aspose.BarCode](https://products.aspose.com/barcode/java/) cùng nhau để hiển thị hình ảnh mã vạch trong các tài liệu đầu ra. Ví dụ, bạn có thể tải một tài liệu DOC, OOXML hoặc RTF chứa `DISPLAYBARCODE` trường vào Aspose.Words, cung cấp thực hiện của riêng bạn về bộ tạo mã vạch tùy chỉnh và lưu định dạng trang cố định như PDF, XPS v.v... Một trường điển hình `DISPLAYBARCODE` có cú pháp sau:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

{{% /alert %}}

Dưới đây là một bộ tạo mã mẫu tận dụng `Aspose.BarCode` API. Ví dụ này cho thấy cách chèn hình ảnh mã vạch tại `DISPLAYBARCODE` vị trí trong tài liệu Word bằng Aspose.Words và `Aspose.BarCode` APIs.

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}
