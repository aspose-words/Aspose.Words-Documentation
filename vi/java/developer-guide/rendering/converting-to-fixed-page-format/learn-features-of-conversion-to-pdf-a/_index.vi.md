---
title: Chuyển đổi sang PDF/A và PDF/UA
second_title: Aspose.Words cho Java
articleTitle: Học các tính năng của chuyển đổi sang PDF/A và PDF/UA
linktitle: Học các tính năng của chuyển đổi sang PDF/A và PDF/UA
description: "Chuyển đổi sang định dạng PDF/A-1, PDF/A-2, PDF/A-4 và PDF/UA bằng cách sử dụng Java. Chọn tiêu chuẩn PDF tốt nhất để chuyển đổi một tài liệu bằng Java."
type: docs
weight: 25
url: /vi/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF là một định dạng trang cố định rất phổ biến trong người dùng và được hỗ trợ rộng rãi bởi các ứng dụng khác nhau, vì tài liệu PDF trông giống nhau trên bất kỳ thiết bị nào. Vì lý do này, chuyển đổi sang PDF là một tính năng quan trọng của Aspose.Words.

Định dạng PDF là một định dạng phức tạp vì nó có cấu trúc tập tin, mô hình đồ họa, nhúng phông chữ và một số chức năng đầu ra phức tạp như thẻ cấu trúc tài liệu, mã hóa, chữ ký số, và biểu mẫu có thể chỉnh sửa. Ngoài ra việc chuyển đổi một tài liệu sang định dạng pdf yêu cầu nhiều giai đoạn tính toán phức tạp và mất rất nhiều thời gian.

Trong phần này, chúng ta sẽ xem xét những vấn đề chính có thể xảy ra khi làm việc với các tài liệu theo các tiêu chuẩn PDF khác nhau và mô tả các lựa chọn để giải quyết chúng.

## Tiêu chuẩn PDF nào Aspose.Words Hỗ trợ

Aspose.Words bây giờ cho phép người dùng làm việc với các định dạng PDF/A-1, PDF/A-2 và PDF/A-4, cũng như PDF/UA-1:

* PDF/A-1 có những hạn chế nghiêm trọng như tính trong suốt và một số tùy chọn nén bị cấm
"* PDF/A-2 loại bỏ một số hạn chế của PDF/A-1, chẳng hạn như hỗ trợ tính trong suốt và các hiệu ứng lớp hoặc nhúng phông chữ OpenType"
* PDF/A-4 giả định mức tuân thủ đã sửa đổi: Tuân thủ PDF/A-4 thông thường tương đương với mức tuân thủ U của các phiên bản trước và mức tuân thủ A bị loại bỏ
* Nội dung PDF/UA-1 phải được đánh dấu và tiêu chuẩn hóa theo ISO 32000-1: 2008

PDF/A là một ISO - chuẩn hóa phiên bản của PDF được thiết kế để sử dụng trong lưu trữ và bảo quản các tài liệu điện tử lâu dài. Trong khi đó, PDF/UA là một phiên bản ISO chuẩn hóa khác của PDF được thiết kế để đảm bảo khả năng tiếp cận cho những người khuyết tật dùng công nghệ hỗ trợ. Để chỉ định mức độ tuân thủ với các tiêu chuẩn PDF, hãy sử dụng thuộc tính [Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance). Do các điều kiện lưu trữ, tài liệu PDF/A phải nhúng tất cả phông chữ và vô hiệu hóa mã hóa, trong khi PDF/UA chỉ cần nhúng tất cả phông chữ.

Trong phần này, chúng ta sẽ xem xét kỹ hơn việc làm việc với các tài liệu PDF/A hoặc PDF/UA-1.

## Có liên quan ISO cho các tiêu chuẩn PDF

Để biết thêm về các tiêu chuẩn khác nhau của PDF, hãy kiểm tra những điều sau đây: ISO

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
"- PDF/A-1 = ISO-19005-1: 2005"
- PDF/A-2 = ISO-19005-2: 2011
"- PDF/A4 = ISO-19005-4: 2020"
- PDF/UA-1 = ISO-14289: 2014

## Xem Thêm

* [How to edit document structure tags in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [How to check or edit text language in Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [How to change text language in Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [How to add alternative text to a shape, picture, chart, SmartArt graphic, or other object in Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [How to add alternate text and supplementary information to tags](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (hoặc đọc thông tin giống nhau trong phần [Adobe Acrobat User Guide](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [How to set up ActualText entry for text](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), phần 'Thêm văn bản thực cho từ viết tắt, công thức hoặc ký hiệu không Unicode
* [Unicode mapping for common Windows symbolic fonts](http://www.alanwood.net/demos/webdings.html)
