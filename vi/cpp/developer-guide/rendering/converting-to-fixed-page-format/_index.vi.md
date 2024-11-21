---
title: Chuyển Đổi Sang Định dạng trang Cố định trong C++
second_title: Aspose.Words cho C++
articleTitle: Chuyển đổi Sang Định dạng trang Cố định
linktitle: Chuyển đổi Sang Định dạng trang Cố định
description: "Lưu tài liệu vào PDF, XPS, HTML, XAML, PostScript, và PCL định dạng."
type: docs
weight: 10
url: /vi/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words triển khai công cụ bố cục trang của riêng nó. Trước khi đi sâu vào các thông số kỹ thuật của nó, trước tiên cần thảo luận về tài liệu ở cấp độ cao.

## Tài liệu là Gì?

Khi nghĩ về một tài liệu, người dùng thường tưởng tượng một số tờ giấy có chứa các từ, hình ảnh, bảng và biểu đồ. Tài liệu có thể thuộc nhiều loại khác nhau, chẳng hạn như văn bản, bảng tính, trang trình bày, CAD bản vẽ, sơ đồ và do đó, về cơ bản có thể có các bố cục khác nhau. Hầu hết các ứng dụng cho phép gửi tài liệu đến máy in; đây là khi người dùng thực sự có thể xem giao diện dự định cuối cùng của tài liệu.

## Hiển thị Một Tài liệu Trong Các Ứng dụng Khác nhau

Các ứng dụng xem hoặc xuất bản tài liệu khác nhau cho phép người dùng mở (Adobe Acrobat, XPS Viewer) và đôi khi chỉnh sửa (Adobe InDesign) các tài liệu có định dạng cụ thể. Các ứng dụng này thường tạo ra cái gọi là tài liệu định dạng "trang cố định". Định dạng tài liệu như vậy mô tả chính xác nơi nội dung của tài liệu được đặt trên mỗi trang. Trong nội bộ, định dạng PDF hoặc XPS chứa mô tả về mọi trang, cũng như hướng dẫn vẽ, chỉ định bố cục của nội dung trên trang. Điều này tương tự như các định dạng hình ảnh, mô tả nơi nội dung được hiển thị ở dạng raster hoặc vector.

Ngược lại, một số ứng dụng chỉnh sửa văn bản không hỗ trợ xem các trang của tài liệu. Ví dụ: Microsoft Notepad hỗ trợ rất ít chức năng khác ngoài việc chỉ hiển thị, chỉnh sửa và in văn bản. Quan sát quan trọng ở đây là các ứng dụng như vậy không thể hiển thị các trang của tài liệu cũng như không cho người dùng biết có bao nhiêu trong số chúng sẽ được in, chỉ cho phép xem nội dung tài liệu. Tài liệu có thể được lưu ở định dạng văn bản thuần túy và có thể được mở bởi nhiều ứng dụng khác. Sử dụng một ứng dụng cho phép xem nội dung nhị phân của một tệp tùy ý, người ta có thể thấy những gì được lưu trữ trong tệp tài liệu – nó chỉ là văn bản thuần túy, không có gì khác trong đó.

Các ứng dụng chỉnh sửa văn bản phức tạp hơn một chút, chẳng hạn như Microsoft WordPad, lưu tài liệu Ở Định dạng Văn bản Phong phú (RTF), hỗ trợ nhiều chức năng định dạng hơn, chẳng hạn như chèn hình ảnh, định dạng ký tự, lề đoạn văn và khoảng cách. Tuy nhiên, định dạng RTF cũng chỉ chứa nội dung của tài liệu, không có thông tin về các trang.

Microsoft Word là ứng dụng chỉnh sửa văn bản tiên tiến nhất trong Windows hiện nay. Nó định dạng các tệp ở định dạng DOCX, mô tả nội dung của tài liệu một cách linh hoạt và rộng rãi, cho phép người dùng chỉ định kích thước trang, hướng cho phần tài liệu và, là một ứng dụng WYSIWYG thậm chí hiển thị các trang tài liệu trên màn hình. Tuy nhiên, vẫn chưa có thông tin liên quan đến cách nội dung của tài liệu được hiển thị trên các trang có sẵn trong tệp tài liệu. Tệp tài liệu chỉ mô tả chính nội dung và mối quan hệ của các đối tượng tài liệu với nhau, cùng với một số ràng buộc hình học. Kết quả là, trước khi hiển thị một tài liệu, Microsoft Word tự tính toán thông tin đó. Đây là nơi bố cục trang phát huy tác dụng.

## Xem Thêm

* [Bố Cục Trang Là gì](/words/cpp/what-is-a-page-layout/)
* [Tạo Bố Cục Trang](/words/cpp/creating-a-page-layout/)
* [Lưu Tài liệu sang Định dạng trang Cố định](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Chỉ Định Tùy Chọn Bố Cục](/words/cpp/specify-layout-options/)
