---
title: Hiển thị trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Kết xuất
linktitle: Kết xuất
description: "Sử dụng tính năng hiển thị Aspose.Words cho Python via .NET để định dạng tài liệu bố cục luồng thành các trang và chuyển đổi tài liệu đó hoặc các trang đã chọn sang các định dạng tài liệu khác (PDF, HTML, XPS, v.v.) hoặc hình ảnh (TIFF, PNG, SVG, v.v.) cho xem, chuyển đổi thêm hoặc in."
type: docs
weight: 20
url: /vi/python-net/rendering/
---

Chúng tôi sử dụng thuật ngữ "kết xuất" trong Aspose.Words để mô tả quá trình chuyển đổi tài liệu thành định dạng tệp hoặc phương tiện được phân trang hoặc có khái niệm về trang. Chúng ta đang nói về việc hiển thị một tài liệu thành các trang. Sơ đồ sau đây cho biết kết xuất trong Aspose.Words là gì.

![rendering_aspose-words](/words/python-net/rendering/rendering-1.png)

Các tính năng kết xuất của Aspose.Words cho phép bạn thực hiện những việc sau:

- Chuyển đổi tài liệu hoặc các trang đã chọn sang định dạng PDF, XPS, HTML, XAML, PostScript và PCL.
- Chuyển đổi tài liệu thành tài liệu TIFF nhiều trang hoặc chuyển đổi bất kỳ trang nào thành hình ảnh raster và lưu dưới dạng BMP, PNG hoặc JPEG.
- Chuyển đổi một trang tài liệu thành hình ảnh Đồ họa vectơ có thể mở rộng (SVG) hoặc chuyển đổi thành hình ảnh vector và lưu dưới dạng EMF.
- Hiển thị đối tượng [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) riêng biệt với tài liệu sang bất kỳ định dạng hình ảnh nào.

## Định dạng tài liệu bố cục luồng hoặc bố cục cố định

Hầu hết các định dạng tài liệu có thể tải vào Aspose.Words đều được gọi là định dạng "bố cục luồng". Các định dạng bố cục luồng bao gồm DOC, OOXML, RTF, ODT và HTML. Tài liệu ở các định dạng này bao gồm nhiều thành phần khác nhau như đoạn văn, bảng, đầu trang, chân trang, hình ảnh, trường và định dạng của chúng, ví dụ: in đậm, in nghiêng, phông chữ, kích thước. Tuy nhiên, định dạng bố cục luồng không chứa thông tin về vị trí mà mỗi đoạn văn hoặc ký tự cụ thể được hiển thị trên một trang.

Ngược lại, các định dạng "bố cục cố định" (còn được gọi là "trang cố định") như PDF và XPS chứa thông tin định vị chính xác cho tất cả các thành phần tài liệu. Các định dạng này giữ nguyên hình thức ban đầu của tài liệu sau khi nó được trình bày thành các trang, mang lại độ chính xác cao hơn cho thông tin hiển thị.

## Công cụ bố cục trang

Aspose.Words triển khai công cụ bố cục trang của riêng mình để định dạng tài liệu bố cục luồng thành các trang. Aspose.Words triển khai một số trình kết xuất để tạo tài liệu có bố cục cố định như PDF hoặc XPS hoặc xuất các trang sang phương tiện khác như in hoặc vẽ. Lưu ý rằng việc xuất cũng có thể được phân trang cho HTML và XAML. Điều này có nghĩa là tài liệu có thể được lưu dưới dạng HTML hoặc XAML thông thường (định dạng bố cục luồng) hoặc dưới dạng HTML và XAML "phân trang" có vị trí tuyệt đối của các phần tử.

Ưu điểm quan trọng nhất của việc sử dụng công cụ bố cục trang Aspose.Words là nó bắt chước cách hoạt động của công cụ bố cục trang của Microsoft Word. Do đó, khi bạn chuyển đổi tài liệu Microsoft Word thành PDF, XPS hoặc in bằng Aspose.Words, kết quả đầu ra sẽ xuất hiện gần như chính xác như thể nó được thực hiện bởi Microsoft Word. Lưu ý rằng Aspose.Words không sử dụng Microsoft Word.
