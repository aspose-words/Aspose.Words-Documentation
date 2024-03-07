---
title: Chuyển đổi sang PDF/A và PDF/UA
second_title: Aspose.Words cho .NET
articleTitle: Tìm hiểu các tính năng chuyển đổi sang PDF/A và PDF/UA
linktitle: Tìm hiểu các tính năng chuyển đổi sang PDF/A và PDF/UA
description: "Chuyển đổi sang PDF/A-1, PDF/A-2, PDF/A-4 và PDF/UA bằng C#. Chọn tiêu chuẩn PDF tốt nhất để chuyển đổi tài liệu bằng C#."
type: docs
weight: 25
url: /vi/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF là định dạng trang cố định rất phổ biến đối với người dùng và được hỗ trợ rộng rãi bởi nhiều ứng dụng khác nhau, vì tài liệu PDF trông giống nhau trên mọi thiết bị. Vì lý do này, chuyển đổi sang PDF là một tính năng quan trọng của Aspose.Words.

Bản thân PDF là một định dạng phức tạp vì nó có cấu trúc tệp cụ thể, mô hình đồ họa, nhúng phông chữ và một số chức năng đầu ra phức tạp như thẻ cấu trúc tài liệu, mã hóa, chữ ký số và các biểu mẫu có thể chỉnh sửa. Ngoài ra, việc chuyển đổi tài liệu sang PDF yêu cầu nhiều giai đoạn tính toán phức tạp và tốn thời gian.

Trong các bài viết sau, chúng tôi sẽ xem xét các vấn đề chính có thể phát sinh khi làm việc với tài liệu ở các tiêu chuẩn PDF khác nhau và mô tả các tùy chọn để giải quyết chúng.

## Aspose.Words tiêu chuẩn PDF nào hỗ trợ

Aspose.Words hiện cho phép người dùng làm việc với các định dạng PDF/A-1, PDF/A-2 và PDF/A-4, cũng như PDF/UA-1:

* PDF/A-1 có những hạn chế nghiêm trọng như tính minh bạch và một số tùy chọn nén bị cấm
* PDF/A-2 loại bỏ một số hạn chế của PDF/A-1, chẳng hạn như hỗ trợ độ trong suốt và hiệu ứng lớp hoặc nhúng phông chữ OpenType
* PDF/A-4 giả định mức độ tuân thủ đã được sửa đổi: tuân thủ PDF/A-4 thông thường tương đương với tuân thủ cấp U của các phiên bản trước và loại bỏ tuân thủ cấp A
* Nội dung PDF/UA-1 phải được gắn thẻ và chuẩn hóa theo ISO 32000-1: 2008

PDF/A là phiên bản PDF được tiêu chuẩn hóa ISO nhằm mục đích sử dụng để lưu trữ và lưu trữ lâu dài các tài liệu điện tử. Đồng thời, PDF/UA là một phiên bản PDF tiêu chuẩn hóa ISO khác được thiết kế để đảm bảo khả năng tiếp cận cho người khuyết tật sử dụng công nghệ hỗ trợ. Để chỉ định mức độ tuân thủ các tiêu chuẩn PDF, hãy sử dụng thuộc tính [Compliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/compliance/). Do điều kiện lưu trữ, tài liệu PDF/A phải nhúng tất cả phông chữ và tắt mã hóa, trong khi PDF/UA chỉ phải nhúng tất cả phông chữ.

Trong phần này, chúng ta sẽ xem xét kỹ hơn cách làm việc với các tài liệu PDF/A hoặc PDF/UA-1.

## ISO liên quan cho các tiêu chuẩn PDF

Để tìm hiểu thêm về các tiêu chuẩn PDF khác nhau, hãy kiểm tra các ISO sau:

*PDF 1.7 = ISO-32000-1: 2008
* PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
* PDF/A-2 = ISO-19005-2: 2011
* PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1 = ISO-14289: 2014

## Xem thêm

* [Chuyển đổi tài liệu sang PDF](/words/vi/net/convert-a-document-to-pdf/)
* [Cách chỉnh sửa thẻ cấu trúc tài liệu trong Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Cách kiểm tra hoặc chỉnh sửa ngôn ngữ văn bản trong Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Cách thay đổi ngôn ngữ văn bản trong Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Cách thêm văn bản thay thế vào hình, ảnh, biểu đồ, đồ họa SmartArt hoặc đối tượng khác trong Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Cách thêm văn bản thay thế và thông tin bổ sung vào thẻ](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (hoặc đọc thông tin tương tự trong [Hướng dẫn sử dụng Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Cách thiết lập mục nhậpActualText cho văn bản](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), phần "Thêm văn bản thực tế cho cụm từ viết tắt, công thức hoặc ký hiệu không phải Unicode"
* [Ánh xạ Unicode cho các phông chữ biểu tượng Windows phổ biến](http://www.alanwood.net/demos/webdings.html)
