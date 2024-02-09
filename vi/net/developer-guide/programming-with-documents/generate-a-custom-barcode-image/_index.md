---
title: Cách tạo mã vạch
second_title: Aspose.Words cho .NET
articleTitle: Tạo hình ảnh mã vạch tùy chỉnh
linktitle: Tạo hình ảnh mã vạch tùy chỉnh
description: "Ví dụ về tạo hình dạng mã vạch bằng C#."
type: docs
weight: 350
url: /vi/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words có giao diện tạo mã vạch tùy chỉnh giúp dễ dàng sử dụng Aspose.Words và [Aspose.BarCode](https://products.aspose.com/barcode/net/) cùng nhau để hiển thị hình ảnh mã vạch trong tài liệu đầu ra. Ví dụ: bạn có thể tải tài liệu DOC, OOXML hoặc RTF chứa Trường `DISPLAYBARCODE` vào Aspose.Words, cung cấp triển khai trình tạo mã vạch tùy chỉnh và lưu vào các định dạng trang cố định như PDF, XPS, v.v.

Trường `DISPLAYBARCODE` điển hình có cú pháp sau:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Dưới đây là trình tạo mã mẫu tận dụng `Aspose.BarCode` API. Ví dụ này cho thấy cách chèn hình ảnh mã vạch vào vị trí của Trường `DISPLAYBARCODE` trong tài liệu Word bằng Aspose.Words và `Aspose.BarCode` API:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
