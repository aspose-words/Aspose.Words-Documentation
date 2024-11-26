---
title: Kết xuất trong C++
second_title: Aspose.Words cho C++
articleTitle: Kết xuất
linktitle: Kết xuất
description: "Sử dụng Aspose.Words cho C++ tính năng kết xuất để định dạng tài liệu bố cục luồng thành các trang và chuyển đổi tài liệu đó hoặc các trang đã chọn sang các tài liệu khác (PDF, HTML, XPS, v. v.) hoặc hình ảnh(TIFF, PNG, SVG, v. v.) các định dạng để xem, chuyển đổi thêm hoặc in."
type: docs
weight: 20
url: /vi/cpp/rendering/
timestamp: 2024-01-30-16-22-34
---

Chúng tôi sử dụng thuật ngữ "kết xuất" trong Aspose.Words để mô tả quá trình chuyển đổi tài liệu thành định dạng tệp hoặc phương tiện được phân trang hoặc có khái niệm trang. Chúng ta đang nói về việc hiển thị một tài liệu thành các trang. Sơ đồ sau đây cho thấy kết xuất là gì trong Aspose.Words.

![rendering-aspose-words-cpp](rendering-1.png)

Các tính năng kết xuất của Aspose.Words cho phép bạn thực hiện như sau:

- Chuyển đổi tài liệu hoặc các trang đã chọn thành PDF, XPS, HTML, XAML, PostScript, và PCL định dạng.
- Chuyển đổi tài liệu thành tài liệu TIFF nhiều trang hoặc chuyển đổi bất kỳ trang nào thành hình ảnh raster và lưu nó dưới dạng BMP, PNG hoặc JPEG.
- Chuyển đổi một trang tài liệu thành Một Hình Ảnh Đồ họa Vector Có Thể Mở rộng (SVG) hoặc chuyển đổi thành một hình ảnh vector và lưu nó dưới dạng EMF.
- Kết xuất (vẽ) một trang tài liệu ở một kích thước hoặc tỷ lệ cụ thể trên đối tượng `Graphics` để tạo hình thu nhỏ, hình ảnh có kích thước đầy đủ hoặc tỷ lệ của các trang tài liệu.
- Kết xuất đối tượng [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) riêng biệt với tài liệu sang bất kỳ định dạng hình ảnh nào hoặc đối tượng `Graphics`.
- Hiển thị bất kỳ trang nào của tài liệu Dưới dạng Windows.

## Bố cục luồng hoặc Định dạng Tài liệu bố Cục Cố định {#flow-layout-or-fixed-layout-document-formats}

Hầu hết các định dạng tài liệu có thể được tải vào Aspose.Words được gọi là định dạng "bố cục luồng". Các định dạng bố cục luồng bao gồm DOC, OOXML, RTF, ODT, và HTML. Các tài liệu ở các định dạng này bao gồm các yếu tố khác nhau như đoạn văn, bảng, tiêu đề, chân trang, hình ảnh, trường và định dạng của chúng, ví dụ: đậm, nghiêng, phông chữ, kích thước. Tuy nhiên, các định dạng bố cục luồng không chứa thông tin về vị trí mà mỗi đoạn hoặc ký tự cụ thể được hiển thị trên một trang.

Ngược lại, các định dạng" bố cục cố định "(còn được gọi là" trang cố định") như PDF và XPS chứa thông tin định vị chính xác cho tất cả các thành phần tài liệu. Các định dạng này giữ nguyên hình dạng ban đầu của tài liệu sau khi nó được đặt thành các trang, cung cấp độ chính xác cao hơn của thông tin được hiển thị.

## Công Cụ Bố Trí Trang {#page-layout-engine}

Aspose.Words triển khai công cụ bố cục trang của riêng mình để định dạng tài liệu bố cục luồng thành các trang. Aspose.Words thực hiện một số trình kết xuất tạo ra một tài liệu bố cục cố định như PDF hoặc XPS hoặc xuất các trang sang một phương tiện khác như in hoặc vẽ. Lưu ý rằng xuất khẩu cũng có thể được phân trang cho HTML và XAML. Điều này có nghĩa là một tài liệu có thể được lưu dưới dạng thông thường HTML hoặc XAML (định dạng bố cục luồng) hoặc dưới dạng "phân trang" HTML và XAML có vị trí tuyệt đối của các phần tử.

Ưu điểm quan trọng nhất của việc sử dụng công cụ bố cục trang Aspose.Words là nó bắt chước cách thức hoạt động của công cụ bố cục trang Microsoft Word. Do đó, khi bạn chuyển đổi tài liệu Microsoft Word thành PDF, XPS hoặc in nó bằng Aspose.Words, đầu ra sẽ xuất hiện gần như chính xác như thể nó được thực hiện bởi Microsoft Word. Lưu ý rằng Aspose.Words không sử dụng Microsoft Word.
