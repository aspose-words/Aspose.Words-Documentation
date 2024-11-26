---
title: Kích hoạt tính năng OpenType trong C#
second_title: Aspose.Words cho .NET
articleTitle: Kích hoạt tính năng OpenType
linktitle: Kích hoạt tính năng OpenType
description: "Tính năng kiểu chữ nâng cao sử dụng C#."
type: docs
weight: 25
url: /vi/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType là một định dạng phông chữ, được giới thiệu để hỗ trợ tốt hơn cho các ngôn ngữ và hệ thống chữ viết quốc tế so với PostScript và TrueType. Các tính năng bố cục của OpenType thường được gọi là tính năng OpenType. Gói Aspose.Words.Shaping.HarfBuzz cung cấp hỗ trợ cho các tính năng OpenType trong Aspose.Words bằng công cụ định hình văn bản HarfBuzz.

Aspose.Words có khả năng sử dụng các đối tượng định dạng văn bản được cung cấp bên ngoài. Trình định hình văn bản đại diện cho một phông chữ và tính toán thông tin định hình cho văn bản. Một tài liệu thường đề cập đến nhiều phông chữ, do đó cần có một nhà máy tạo văn bản. Gói này chứa phần triển khai của một nhà máy tạo hình văn bản được sử dụng bởi thuộc tính Aspose.Words.Layout.LayoutOptions.TextShaperFactory.

{{% alert color="primary" %}}

Việc định hình văn bản chỉ được thực hiện khi xuất sang định dạng PDF hoặc XPS.

{{% /alert %}}

Trong một ứng dụng điển hình, một phiên bản duy nhất của nhà máy tạo hình văn bản được chia sẻ giữa tất cả các phiên bản tài liệu. Bất cứ khi nào trình tạo văn bản được tạo, một tệp phông chữ sẽ được truy cập. Phân tích tệp phông chữ là một thao tác tốn kém, do đó nên lưu vào bộ nhớ đệm. Aspose.Words triển khai lớp BasicTextShaperCache bao bọc quá trình triển khai của nhà máy tạo hình văn bản và lưu vào bộ nhớ đệm các phiên bản của trình tạo hình văn bản được nhà máy được bao bọc trả về.

Ví dụ về mã sau đây cho bạn biết cách bật hỗ trợ các tính năng OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
