---
title: Làm việc với các đối tượng OLE và video trực tuyến trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với các đối tượng OLE và video trực tuyến
linktitle: Làm việc với các đối tượng OLE và video trực tuyến
description: "Tạo và sửa đổi việc nhúng OLE vào tài liệu của bạn bằng C#."
type: docs
weight: 360
url: /vi/net/working-with-ole-objects/
---

OLE (Liên kết và nhúng đối tượng) là công nghệ giúp người dùng có thể làm việc với các tài liệu có chứa "đối tượng" được tạo hoặc chỉnh sửa bởi các ứng dụng của bên thứ ba. Nghĩa là, OLE cho phép một ứng dụng chỉnh sửa xuất những "đối tượng" này sang một ứng dụng chỉnh sửa khác và sau đó nhập chúng cùng với nội dung bổ sung.

Trong bài viết này, chúng ta sẽ nói về cách chèn một đối tượng OLE và thiết lập các thuộc tính của nó, cũng như chèn video trực tuyến vào tài liệu.

## Chèn đối tượng OLE

Nếu bạn muốn Đối tượng OLE, hãy gọi phương thức [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) và truyền cho nó **ProgId** một cách rõ ràng cùng với các tham số khác.

Ví dụ mã sau đây cho thấy cách chèn Đối tượng OLE vào tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Đặt tên tệp và phần mở rộng khi chèn đối tượng OLE

Gói OLE là một cách kế thừa và "không có giấy tờ" để lưu trữ các đối tượng được nhúng nếu không xác định được trình xử lý OLE.

Các phiên bản Windows đầu tiên như Windows 3.1, 95 và 98 có ứng dụng Packager.exe có thể được sử dụng để nhúng bất kỳ loại dữ liệu nào vào tài liệu. Ứng dụng này hiện bị loại khỏi Windows, nhưng Microsoft Word và các ứng dụng khác vẫn sử dụng nó để nhúng dữ liệu nếu trình xử lý OLE bị thiếu hoặc không xác định. Lớp `OlePackage` cho phép người dùng truy cập các thuộc tính của Gói OLE.

Ví dụ mã sau đây cho biết cách đặt tên tệp, phần mở rộng và tên hiển thị cho Gói OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Có quyền truy cập vào dữ liệu thô của đối tượng OLE

Người dùng có thể truy cập dữ liệu đối tượng OLE bằng nhiều thuộc tính và phương thức khác nhau của lớp `OleFormat`. Ví dụ: có thể lấy dữ liệu thô của đối tượng `OLE` hoặc đường dẫn và tên của tệp nguồn cho đối tượng OLE được liên kết.

Ví dụ về mã sau đây cho thấy cách lấy dữ liệu thô của Đối tượng OLE bằng phương pháp [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Chèn đối tượng OLE làm biểu tượng

Các đối tượng OLE cũng có thể được chèn vào tài liệu dưới dạng hình ảnh.

Ví dụ mã sau đây cho thấy cách chèn Đối tượng OLE làm biểu tượng. Với mục đích này, lớp [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) hiển thị phương thức [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Ví dụ mã sau đây cho biết cách chèn đối tượng OLE được nhúng dưới dạng biểu tượng từ luồng vào tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Kích thước tối đa của biểu tượng phải là 32x32 để hiển thị chính xác.

{{% /alert %}}

## Chèn video trực tuyến

Có thể chèn video trực tuyến vào tài liệu Word từ tab *"Chèn" &gt; "Video trực tuyến"*. Bạn có thể chèn video trực tuyến vào tài liệu tại vị trí hiện tại bằng cách gọi phương thức [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/).

Lớp [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) giới thiệu bốn tình trạng quá tải của phương thức này. Cái đầu tiên hoạt động với các tài nguyên video phổ biến nhất và lấy `URL` của video làm tham số. Ví dụ: quá tải đầu tiên hỗ trợ chèn đơn giản các video trực tuyến từ tài nguyên [YouTube](https://www.youtube.com/) và [vimeo](https://vimeo.com/).

Ví dụ về mã sau đây cho biết cách chèn video trực tuyến từ *Vimeo* vào tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Quá tải thứ hai hoạt động với tất cả các tài nguyên video khác và lấy mã HTML nhúng làm tham số. Mã HTML để nhúng video có thể khác nhau tùy thuộc vào nhà cung cấp, vì vậy hãy liên hệ với nhà cung cấp tương ứng để biết chi tiết.

{{% alert color="primary" %}}

Xin lưu ý rằng tài liệu sẽ được tự động tối ưu hóa cho MS Word 2013 để hiển thị video.

{{% /alert %}}

Ví dụ về mã sau đây cho thấy cách chèn video trực tuyến vào tài liệu bằng mã HTML đó:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}