---
title: Viết lại trong Java
second_title: Aspose.Words cho Java
articleTitle: Hình thành
linktitle: Hình thành
description: "Sử dụng Aspose.Words cho tính năng hiển thị Java để định dạng một tài liệu bố cục luồng thành các trang và chuyển đổi một tài liệu hoặc các trang được chọn như vậy sang một tài liệu khác (PDF, HTML, XPS, v.v.) hoặc hình ảnh (TIFF, PNG, SVG, v.v.) cho việc xem, các chuyển đổi tiếp theo hay in ấn."
type: docs
weight: 30
url: /vi/java/rendering/
timestamp: 2024-01-27-14-07-04
---

Chúng tôi sử dụng thuật ngữ "hiển thị" trong Aspose.Words để mô tả quá trình chuyển đổi một tài liệu thành định dạng tập tin hoặc phương tiện truyền tải có trang hoặc có khái niệm về các trang. Chúng ta đang nói về việc đưa một tài liệu thành các trang. Biểu đồ sau cho thấy việc trình bày như thế nào trong Aspose.Words.

![rendering-aspose-words-java](rendering-1.png)

Tính năng hiển thị của Aspose.Words cho phép bạn thực hiện các hoạt động sau:

- Chuyển đổi một tài liệu hoặc các trang được chọn sang định dạng PDF, XPS, HTML, XAML, PostScript và PCL.
"- Chuyển đổi một tài liệu thành một tập tin TIFF nhiều trang, hoặc chuyển đổi bất kỳ trang nào thành một hình ảnh raster và lưu nó dưới dạng BMP, PNG hay JPEG"
"- Chuyển đổi một trang tài liệu thành hình ảnh Scalable Vector Graphics (SVG), hoặc chuyển đổi thành hình ảnh vector và lưu nó dưới dạng EMF."
"- Render (vẽ) một trang tài liệu ở kích thước hoặc quy mô cụ thể trên đối tượng `Graphics` để tạo ra hình thu nhỏ, hình ảnh cỡ đầy đủ hoặc hình ảnh đã thay đổi quy mô của các trang tài liệu."
- Render một [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) đối tượng riêng biệt với tài liệu đến bất kỳ định dạng ảnh hoặc để một `Graphics` đối tượng.
- Hiển thị bất kỳ trang nào của một tài liệu trong một Swing Component.
- In hoặc xem trước các trang tài liệu bằng cơ sở hạ tầng in ấn tiêu chuẩn Java

## Các định dạng tài liệu Flow-layout hoặc Fixed-layout {#flow-layout-or-fixed-layout-document-formats}

Hầu hết các định dạng tài liệu có thể được tải vào Aspose.Words đều được biết đến là "định dạng bố cục theo dòng. Định dạng Flow-layout bao gồm DOC, OOXML, RTF, ODT và HTML. Các tài liệu trong các định dạng này bao gồm các yếu tố khác nhau như đoạn văn, bảng, tiêu đề, chân trang, hình ảnh, trường và các định dạng, ví dụ như đậm, nghiêng, phông chữ, kích cỡ. Tuy nhiên các định dạng bố cục dòng không chứa thông tin về vị trí mà mỗi đoạn văn cụ thể hoặc ký tự được hiển thị trên một trang.

Trái lại, các định dạng có "mẫu cố định" (còn gọi là "mẫu trang") như PDF và XPS chứa thông tin vị trí chính xác cho tất cả các phần tử tài liệu. Các định dạng này bảo tồn sự xuất hiện ban đầu của một tài liệu sau khi nó được bố trí vào trang, cung cấp độ chính xác cao hơn của thông tin hiển thị.

## Page Layout Engine {#page-layout-engine}

Aspose.Words thực hiện công nghệ bố cục trang của riêng mình để định dạng một tài liệu bố cục dòng thành các trang. Aspose.Words thực hiện một số bộ tạo ra một tài liệu có bố cục cố định như PDF hoặc XPS, hoặc đầu ra các trang vào một phương tiện khác như in hoặc vẽ. Lưu ý rằng xuất cũng có thể được trang cho HTML và XAML. Điều này có nghĩa là một tài liệu có thể được lưu như "hàm thông thường" HTML hoặc XAML (quá trình bố cục) hoặc là "trang" HTML và XAML có tính chất vị trí tuyệt đối của các phần tử.

Ưu điểm quan trọng nhất của việc sử dụng Aspose.Words trang bố cục là nó bắt chước cách hoạt động của Microsoft Word 'bộ máy bố cục trang. Vì vậy, khi bạn chuyển đổi một Microsoft Word tài liệu thành PDF, XPS hoặc in nó bằng Aspose.Words, kết quả sẽ xuất hiện gần như chính xác như nếu nó đã được thực hiện bởi Microsoft Word. Lưu ý là Aspose.Words không sử dụng Microsoft Word.
