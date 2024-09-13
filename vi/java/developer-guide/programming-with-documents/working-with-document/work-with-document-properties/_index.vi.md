---
title: Làm việc với Tài sản Tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: Chỉnh sửa thuộc tính tài liệu
linktitle: Chỉnh sửa thuộc tính tài liệu
description: "Aspose.Words cho Java cho phép lưu trữ một số thông tin hữu ích về tài liệu của bạn, chẳng hạn như API và Số Phiên bản hoặc Được ủy quyền Date trong thuộc tính tài liệu tích hợp hoặc tùy chỉnh."
type: docs
weight: 10
url: /vi/java/work-with-document-properties/
---

Thuộc tính tài liệu cho phép lưu trữ một số thông tin hữu ích về tài liệu của bạn. Những tính chất này có thể chia thành hai nhóm:

* Hệ thống hoặc nội bộ chứa giá trị như tiêu đề tài liệu, tên tác giả, thống kê tài liệu và những người khác.
* Người dùng hoặc tùy chỉnh, được cung cấp dưới dạng cặp tên giá trị nơi người dùng có thể xác định cả tên và giá trị.

Điều hữu ích biết rằng thông tin về API và số phiên bản là được viết trực tiếp vào các tài liệu đầu ra. Ví dụ, khi chuyển đổi một tài liệu sang PDF thì Aspose.Words sẽ điền vào trường "Application" với "Aspose.Words", và trường "PDF Producer" với "Aspose.Words for Java YY.M.N", trong đó *YY.M.N* là phiên bản của Aspose.Words được dùng cho việc chuyển đổi. Để biết thêm chi tiết, xem [Generator or Producer Name Included in Output Documents](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Chú ý rằng bạn **không thể chỉ trực tiếp** Aspose.Words để thay đổi hoặc xóa thông tin này từ các tài liệu đầu ra.

{{% /alert %}}

## Truy cập các thuộc tính của tài liệu

Để truy cập thuộc tính tài liệu trong Aspose.Words sử dụng:

.* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) để có các thuộc tính được xây dựng sẵn.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) để lấy các thuộc tính tùy chỉnh.

**BuiltInDocumentProperties** và **CustomDocumentProperties** là tập hợp của [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) đối tượng. Những đối tượng này có thể được truy cập thông qua thuộc tính indexer bằng cách dùng tên hoặc chỉ số.

**BuiltInDocumentProperties** cung cấp thêm quyền truy cập vào các thuộc tính tài liệu thông qua một tập hợp các thuộc tính được nhập mà trả về các giá trị của loại phù hợp. **CustomDocumentProperties** cho phép bạn thêm hoặc xóa các thuộc tính tài liệu từ một tài liệu.

Lớp [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) cho phép bạn nhận được tên, giá trị và kiểu của một thuộc tính tài liệu. [Value]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) returns an object, but there is a set of methods allowing you to get the property value converted to a specific type. After you get to know what type the property is, you can use one of the {0} methods, such as {1}[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) và **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), để có được giá trị của loại thích hợp.

Mã ví dụ sau cho thấy cách liệt kê tất cả các thuộc tính tích hợp và tùy chỉnh trong một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Trong Microsoft Word có thể truy cập thuộc tính tài liệu bằng cách sử dụng trình đơn "Tệp → Thuộc tính.

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Thêm hoặc Loại bỏ Thuộc tính Tài liệu

Bạn không thể thêm hay xóa các thuộc tính tài liệu được xây dựng sẵn bằng cách sử dụng Aspose.Words. Bạn chỉ có thể thay đổi hoặc cập nhật giá trị của họ.

Để thêm thuộc tính tài liệu tùy chỉnh với Aspose.Words, sử dụng phương thức [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) truyền tên thuộc tính mới và giá trị loại thích hợp. Phương pháp trả về đối tượng mới được tạo **DocumentProperty**.

Để loại bỏ các thuộc tính tùy chỉnh, hãy sử dụng [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) phương pháp, truyền tên thuộc tính để loại bỏ, hoặc [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) phương pháp để loại bỏ thuộc tính bằng chỉ số. Bạn cũng có thể loại bỏ tất cả các thuộc tính bằng cách sử dụng [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) phương pháp.

Mã ví dụ sau kiểm tra xem một thuộc tính tùy chỉnh với tên đã cho có tồn tại trong tài liệu và thêm vài thuộc tính tài liệu tùy chỉnh khác:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Ví dụ mã sau cho thấy cách loại bỏ một thuộc tính tài liệu tùy chỉnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Cập nhật các thuộc tính tài liệu được xây dựng sẵn

Aspose.Words không tự động cập nhật các thuộc tính tài liệu như Microsoft Word đã làm với một số thuộc tính nhất định, nhưng cung cấp một phương pháp để cập nhật một số thuộc tính tích hợp về tài liệu. Gọi phương thức [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) để tính toán lại và cập nhật các thuộc tính sau:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Tạo một thuộc tính tùy chỉnh mới liên kết với Nội dung

Aspose.Words cung cấp phương pháp [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) để tạo một thuộc tính tài liệu tùy chỉnh liên kết với nội dung. Tính năng này trả về đối tượng thuộc tính đã được tạo mới hoặc null nếu [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) không hợp lệ.

Ví dụ mã sau cho thấy cách thiết lập liên kết đến thuộc tính tùy chỉnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Lấy biến tài liệu

Bạn có thể nhận được một tập hợp các biến tài liệu bằng cách sử dụng thuộc tính [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables). Tên biến và giá trị là chuỗi.

Ví dụ sau cho thấy cách liệt kê các biến tài liệu như thế nào:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Loại bỏ Thông tin Cá nhân từ Tài liệu

Nếu bạn muốn chia sẻ một tài liệu word với người khác, bạn có thể muốn loại bỏ thông tin cá nhân như tên tác giả và công ty. Để làm điều này hãy dùng thuộc tính [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) để đặt cờ cho biết rằng Microsoft Word sẽ loại bỏ tất cả thông tin người dùng từ các bình luận, sửa đổi và tài sản tài liệu khi lưu tài liệu.

{{% alert color="primary" %}}

Thiết lập tùy chọn này không thực sự loại bỏ thông tin cá nhân trong khi xử lý một tài liệu trong Aspose.Words và chỉ ảnh hưởng đến Microsoft Word hành vi.

{{% /alert %}}
