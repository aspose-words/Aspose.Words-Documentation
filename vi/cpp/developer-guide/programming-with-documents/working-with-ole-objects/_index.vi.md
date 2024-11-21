---
title: Làm việc với Các Đối tượng OLE trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc với Các Đối tượng OLE
linktitle: Làm việc với Các Đối tượng OLE
description: "Tạo và sửa đổi OLE nhúng vào tài liệu của bạn bằng C++."
type: docs
weight: 360
url: /vi/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Liên kết Và Nhúng Đối tượng) là một công nghệ mà người dùng có thể làm việc với các tài liệu có chứa "đối tượng" được tạo hoặc chỉnh sửa bởi các ứng dụng của bên thứ ba. Đó là, OLE cho phép một ứng dụng chỉnh sửa xuất các "đối tượng" này sang một ứng dụng chỉnh sửa khác và sau đó nhập chúng với nội dung bổ sung.

Trong bài viết này, chúng ta sẽ nói về việc chèn một đối tượng OLE và đặt các thuộc tính của nó vào một tài liệu.

## Chèn Đối Tượng OLE

Nếu bạn muốn Đối tượng OLE, hãy gọi phương thức [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) và chuyển nó một cách rõ ràng **ProgId** với các tham số khác.

Ví dụ mã sau đây cho thấy cách chèn Đối tượng OLE vào tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Đặt Tên Tệp và Phần Mở rộng khi Chèn Đối Tượng OLE

Gói OLE là một cách di sản và "không có giấy tờ" để lưu trữ các đối tượng nhúng nếu trình xử lý OLE không xác định.

Các phiên bản đầu Windows như Windows 3.1, 95 và 98 có Một Packager.ứng dụng exe có thể được sử dụng để nhúng bất kỳ loại dữ liệu nào vào tài liệu. Ứng dụng này hiện bị loại trừ khỏi Windows, nhưng Microsoft Word và các ứng dụng khác vẫn sử dụng nó để nhúng dữ liệu nếu trình xử lý OLE bị thiếu hoặc không xác định. Lớp `OlePackage` cho phép người dùng truy cập Thuộc tính Gói OLE.

Ví dụ mã sau đây cho thấy cách đặt tên tệp, tiện ích mở rộng và tên hiển thị Cho Gói OLE:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Nhận Quyền truy cập vào OLE Đối tượng Dữ liệu Thô

Người dùng có thể truy cập dữ liệu đối tượng OLE bằng các thuộc tính và phương thức khác nhau của lớp `OleFormat`. Ví dụ: có thể lấy dữ liệu thô của đối tượng `OLE` hoặc đường dẫn và tên của tệp nguồn cho đối tượng OLE được liên kết.

Ví dụ mã sau đây cho thấy cách lấy dữ liệu Thô OLE Đối tượng bằng phương thức [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Chèn Đối Tượng Ole làm Biểu tượng

OLE các đối tượng cũng có thể được chèn vào tài liệu dưới dạng hình ảnh.

Ví dụ mã sau đây cho thấy cách chèn Đối tượng OLE dưới dạng biểu tượng. Với mục đích này, lớp [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) hiển thị phương thức [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Ví dụ mã sau đây cho thấy cách chèn một đối tượng OLE được nhúng dưới dạng biểu tượng từ luồng vào tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Chèn Video Trực Tuyến

Video trực tuyến có thể được chèn vào Tài liệu Word từ tab *"Insert" > "Online Video"*. Bạn có thể chèn video trực tuyến vào tài liệu tại vị trí hiện tại bằng cách gọi phương thức [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

Lớp [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) giới thiệu bốn quá tải của phương thức này. Cái đầu tiên hoạt động với các tài nguyên video phổ biến nhất và lấy `URL` của video làm tham số. Ví dụ: quá tải đầu tiên hỗ trợ chèn đơn giản các video trực tuyến từ [YouTube](https://www.youtube.com/) và [Vimeo](https://vimeo.com/) tài nguyên.

Ví dụ mã sau đây cho thấy cách chèn video trực tuyến từ *Vimeo* vào tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

Quá tải thứ hai hoạt động với tất cả các tài nguyên video khác và lấy mã HTML được nhúng làm tham số. Mã HTML để nhúng video có thể khác nhau tùy thuộc vào nhà cung cấp, vì vậy hãy liên hệ với nhà cung cấp tương ứng để biết chi tiết.

{{% alert color="primary" %}}

Xin lưu ý rằng tài liệu sẽ được tự động tối ưu hóa cho MS Word 2013 để hiển thị video.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách chèn video trực tuyến vào tài liệu bằng mã HTML như vậy:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
