---
title: Lưu Vào Định dạng trang Cố định trong C++
second_title: Aspose.Words cho C++
articleTitle: Lưu Tài liệu sang Định dạng trang Cố định
linktitle: Lưu Tài liệu sang Định dạng trang Cố định
description: "Cách lưu tài liệu sang định dạng trang cố định– PDF, XPS, HTML, XAML, PostScript, và PCL? Xem hướng dẫn."
type: docs
weight: 15
url: /vi/cpp/saving-a-document-to-fixed-page-format/
---

Sau khi bố cục trang được xây dựng và hình dạng của các đối tượng và vị trí của chúng trên trang được tính toán, tài liệu có thể được lưu ở định dạng trang cố định được Aspose.Words hỗ trợ.

Khi lưu tài liệu sang định dạng trang cố định, các tùy chọn kết xuất chung cho tất cả các định dạng này có thể được sử dụng. Họ cho phép kiểm soát:

- Số lượng và phạm vi của các trang có trong tài liệu đầu ra ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Tiến trình lưu tài liệu từng trang ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Một tập hợp các ký tự được sử dụng để hiển thị số ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Một trình phát metafile ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Để biết thêm chi tiết, hãy xem [Xử Lý Windows Metafiles](/words/cpp/handling-windows-metafiles/) bài viết.
- Tỷ lệ chất lượng để nén lại hình ảnh JPEG, giá trị của hình ảnh này có thể hơi khác nhau, tùy thuộc vào định dạng lưu đã chọn ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Tối ưu hóa đồ họa vector trong Aspose.Words đầu ra ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Tùy chọn đồ họa khi lưu Vào Các định dạng Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Lưu tài liệu ở thang độ xám ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Chuyển đổi giữa kết xuất Hình Dạng DrawingML và hình dạng dự phòng ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Chuyển đổi giữa DML chế độ kết xuất hiệu ứng ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Ví dụ dưới đây trình bày cách lưu tài liệu sang định dạng JPEG bằng phương thức `Save` và các tùy chọn kết xuất:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
