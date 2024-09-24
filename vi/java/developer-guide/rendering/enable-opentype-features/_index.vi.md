---
title: Kích hoạt các tính năng OpenType trong Java
second_title: Aspose.Words cho Java
articleTitle: Kích hoạt tính năng OpenType
linktitle: Kích hoạt tính năng OpenType
description: "Các tính năng kiểu chữ nâng cao trong Aspose.Words cho Java."
type: docs
weight: 25
url: /vi/java/enable-opentype-features/
---



OpenType là định dạng phông chữ, được giới thiệu để cung cấp sự hỗ trợ tốt hơn cho các ngôn ngữ và hệ thống viết quốc tế so với PostScript và TrueType. Các tính năng bố cục của OpenType thông thường được biết đến như các tính năng OpenType. Aspose.Words. Shaping. HarfBuzz gói cung cấp hỗ trợ cho các tính năng OpenType trong Aspose.Words sử dụng động cơ tạo hình văn bản `HarfBuzz`.

Aspose.Words có khả năng sử dụng các đối tượng hình dạng văn bản được cung cấp từ bên ngoài Một trình tạo văn bản đại diện cho một phông chữ và tính toán thông tin tạo kiểu cho một văn bản. Một văn bản thường đề cập đến nhiều phông chữ, vì vậy một nhà máy tạo chữ hình cần thiết. Gói này chứa một thực hiện của một nhà máy tạo hình văn bản được sử dụng bởi Aspose.Words.Layout.LayoutOptions.TextShaperFactory thuộc tính.

{{% alert color="primary" %}}

Đặt chữ là chỉ thực hiện khi xuất sang PDF hoặc XPS định dạng.

{{% /alert %}}

Trong một ứng dụng điển hình, một trường hợp duy nhất của một nhà máy tạo hình văn bản được chia sẻ giữa tất cả các trường hợp tài liệu. Mỗi khi một hình dạng văn bản được tạo ra, một tập tin phông chữ cũng được truy cập. Phân tích một tập tin phông chữ là một thao tác tốn kém, do đó bộ nhớ đệm được khuyến nghị. Aspose.Words thực hiện lớp BasicTextShaperCache, bao bọc thực hiện nhà máy hình thức văn bản và bộ nhớ đệm các đối tượng hình thức văn bản trả về bởi nhà máy được bao bọc.

Mã ví dụ sau cho bạn thấy cách bật hỗ trợ tính năng của OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
