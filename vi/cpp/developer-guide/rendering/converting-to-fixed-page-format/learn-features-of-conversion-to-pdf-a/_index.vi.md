---
title: Chuyển đổi thành PDF/A và PDF/UA
second_title: Aspose.Words cho C++
articleTitle: Tìm Hiểu Các Tính năng Của Chuyển đổi thành PDF/A và PDF/UA
linktitle: Tìm Hiểu Các Tính năng Của Chuyển đổi thành PDF/A và PDF/UA
description: "Chuyển đổi sang PDF/A-1, PDF/A-2, PDF/A-4 và PDF/UA sử dụng C++. Chọn tiêu chuẩn PDF tốt nhất để chuyển đổi tài liệu bằng С."
type: docs
weight: 35
url: /vi/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF là một định dạng trang cố định rất phổ biến đối với người dùng và được hỗ trợ rộng rãi bởi các ứng dụng khác nhau, vì tài liệu PDF trông giống nhau trên mọi thiết bị. Vì lý do này, chuyển đổi thành PDF là một tính năng quan trọng của Aspose.Words.

PDF tự nó là một định dạng phức tạp, vì nó có cấu trúc tệp cụ thể, mô hình đồ họa, nhúng phông chữ và một số chức năng đầu ra phức tạp như thẻ cấu trúc tài liệu, mã hóa, chữ ký số và các biểu mẫu có thể chỉnh sửa. Ngoài ra, việc chuyển đổi tài liệu thành PDF đòi hỏi một số giai đoạn tính toán, rất phức tạp và tốn thời gian.

Trong phần này, chúng tôi sẽ xem xét các vấn đề chính có thể phát sinh khi làm việc với các tài liệu theo các tiêu chuẩn PDF khác nhau và mô tả các tùy chọn để giải quyết chúng.

## Mà PDF Tiêu Chuẩn Aspose.Words Hỗ Trợ

Aspose.Words bây giờ cho phép người dùng làm việc với các định dạng PDF/A-1, PDF/A-2 và PDF/A-4, cũng như PDF/UA-1:

* PDF/A-1 có những hạn chế nghiêm trọng như độ trong suốt và một số tùy chọn nén bị cấm
* PDF/A-2 loại bỏ một số hạn chế của PDF/A-1, chẳng hạn như hỗ trợ độ trong suốt và hiệu ứng lớp hoặc nhúng phông chữ OpenType
* PDF/A-4 giả định mức độ phù hợp đã sửa đổi: mức độ phù hợp PDF/A-4 thông thường tương đương với mức Độ Phù hợp u của các phiên bản trước và mức Độ Phù Hợp Được loại bỏ
* PDF/UA-1 nội dung nên được gắn thẻ và tiêu chuẩn hóa theo ISO 32000-1: 2008

PDF/A là phiên bản ISO-được tiêu chuẩn hóa của PDF nhằm mục đích sử dụng trong lưu trữ và lưu trữ lâu dài các tài liệu điện tử. Đồng thời, PDF/UA là một phiên bản ISO tiêu chuẩn hóa khác của PDF được thiết kế để đảm bảo khả năng tiếp cận cho người khuyết tật sử dụng công nghệ hỗ trợ. Để xác định mức độ tuân thủ các tiêu chuẩn PDF, hãy sử dụng thuộc tính [Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/). Do điều kiện lưu trữ, tài liệu PDF/A phải nhúng tất cả các phông chữ và vô hiệu hóa mã hóa, trong khi PDF/UA chỉ phải nhúng tất cả các phông chữ.

Trong phần này, chúng ta sẽ xem xét kỹ hơn về việc làm việc với các tài liệu PDF/A hoặc PDF/UA-1.

## Có liên quan ISO Cho PDF Tiêu Chuẩn

Để tìm hiểu thêm về các tiêu chuẩn PDF khác nhau, hãy kiểm tra các tiêu chuẩn ISOsau:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Xem Thêm

* [Cách chỉnh sửa thẻ cấu trúc tài liệu trong Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Cách kiểm tra hoặc chỉnh sửa ngôn ngữ văn bản trong Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Cách thay đổi ngôn ngữ văn bản trong Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Cách thêm văn bản thay thế vào hình dạng, hình ảnh, biểu đồ, SmartArt đồ họa hoặc đối tượng khác trong Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Cách thêm văn bản thay thế và thông tin bổ sung vào thẻ](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (hoặc đọc cùng một thông tin trong [Adobe Acrobat Hướng Dẫn Sử Dụng](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Cách thiết lập mục nhập ActualText cho văn bản](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), Phần" Thêm Văn Bản Thực tế Cho Một Thuật Ngữ Viết Tắt, Công thức hoặc Biểu tượng Không Phải Unicode"
* [Ánh xạ Unicode cho các phông chữ tượng trưng Windows phổ biến](http://www.alanwood.net/demos/webdings.html)

