---
title: Làm việc với các đối tượng Ole
second_title: Aspose.Words cho Java
articleTitle: Làm việc với các đối tượng Ole
linktitle: Làm việc với các đối tượng Ole
description: "Tạo và sửa đổi đính kèm OLE trong tài liệu của bạn bằng Java."
type: docs
weight: 360
url: /vi/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE nghĩa là "Liên kết và nhúng đối tượng. Đây là công nghệ mà người dùng có thể làm việc với các tài liệu chứa "đối tượng" được tạo ra hoặc chỉnh sửa bởi các ứng dụng của bên thứ ba. Đó là, OLE cho phép một ứng dụng xuất các "đối tượng" sang một ứng dụng khác để chỉnh sửa, và sau đó nhập chúng lại với một số nội dung bổ sung.

Trong bài viết này chúng ta sẽ nói về việc chèn một đối tượng OLE và thiết lập thuộc tính của nó vào tài liệu.

## Chèn đối tượng Ole

Nếu bạn muốn OLE Object, gọi phương pháp [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) và truyền nó **ProgId** rõ ràng với các tham số khác.

Mảnh mã sau đây cho thấy cách chèn một đối tượng OLE vào một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Đặt Tên Tập tin và Mở rộng khi Nhập đối tượng OLE

Gói OLE là một cách thức "di sản" và "không được tài liệu" để lưu trữ các đối tượng nhúng nếu bộ xử lý OLE không được biết đến.

Sớm Windows các phiên bản như Windows 3.1, 95 và 98 có một ứng dụng Packager.exe có thể được sử dụng để nhúng bất kỳ loại dữ liệu nào vào tài liệu. Ứng dụng này hiện đã bị loại trừ khỏi Windows, nhưng Microsoft Word và các ứng dụng khác vẫn sử dụng nó để nhúng dữ liệu nếu bộ xử lý OLE bị thiếu hoặc không biết. Lớp `OlePackage` cho phép người dùng truy cập các thuộc tính Gói OLE.

Mã ví dụ sau cho thấy cách đặt tên tập tin, phần mở rộng và tên hiển thị cho Gói OLE:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Truy cập dữ liệu thô đối tượng OLE

Người dùng có thể truy cập dữ liệu đối tượng OLE sử dụng các thuộc tính và phương pháp khác nhau của lớp `OleFormat`. Ví dụ có thể lấy dữ liệu thô của đối tượng `OLE` hoặc đường dẫn và tên của một tập tin nguồn cho đối tượng OLE liên kết.

Mã ví dụ sau cho thấy cách lấy dữ liệu mác thô của đối tượng OLE bằng phương pháp [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Chèn đối tượng OLE dưới dạng biểu tượng

Các đối tượng OLE cũng có thể chèn vào tài liệu dưới dạng hình ảnh.

Mã đoạn sau cho thấy cách chèn đối tượng OLE như một biểu tượng. Vì mục đích này, lớp **DocumentBuilder** phơi bày phương pháp [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Mã ví dụ sau cho thấy cách chèn một đối tượng OLE nhúng dưới dạng biểu tượng từ một luồng vào tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Chèn video trực tuyến

Video trực tuyến có thể chèn vào tài liệu từ mục " *Chèn* " > "Video trực tuyến. Bạn có thể chèn một video trực tuyến vào tài liệu tại vị trí hiện tại bằng cách gọi phương thức [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double):

Lớp [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) giới thiệu bốn quá tải của phương pháp này. Đơn đầu tiên hoạt động với các nguồn video phổ biến nhất và lấy `URL` của video làm tham số. Ví dụ, quá tải đầu tiên hỗ trợ chèn đơn giản của video trực tuyến từ [YouTube](https://www.youtube.com/) và [Vimeo](https://vimeo.com/) nguồn tài nguyên.

Mã ví dụ sau cho thấy cách chèn một video trực tuyến từ *Vimeo* vào tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Quá tải thứ hai hoạt động với tất cả các nguồn video khác và lấy mã nhúng HTML là tham số. Mã HTML cho việc nhúng một video có thể khác nhau tùy thuộc vào nhà cung cấp, vì vậy hãy liên hệ với nhà cung cấp tương ứng để biết chi tiết.

{{% alert color="primary" %}}

Xin lưu ý rằng tài liệu sẽ được tối ưu hóa tự động cho MS Word 2013 để hiển thị video.

{{% /alert %}}

Phần mã sau đây cho thấy cách chèn một đoạn phim trực tuyến vào tài liệu bằng cách dùng mã HTML như sau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
