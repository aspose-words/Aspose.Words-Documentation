---
title: Làm việc với Thuộc tính Tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với thuộc tính tài liệu
linktitle: Làm việc với thuộc tính tài liệu
description: "Aspose.Words cho .NET cho phép lưu trữ một số thông tin hữu ích về tài liệu của bạn, chẳng hạn như API và Số phiên bản hoặc Date được ủy quyền, trong các thuộc tính tài liệu tùy chỉnh hoặc tích hợp sẵn bằng C#."
type: docs
weight: 10
url: /vi/net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Thuộc tính tài liệu cho phép lưu trữ một số thông tin hữu ích về tài liệu của bạn. Những thuộc tính này có thể được chia thành hai nhóm:

* Hệ thống hoặc phần mềm tích hợp chứa các giá trị như tiêu đề tài liệu, tên tác giả, số liệu thống kê tài liệu và các giá trị khác.
* Do người dùng xác định hoặc tùy chỉnh, được cung cấp dưới dạng cặp tên-giá trị trong đó người dùng có thể xác định cả tên và giá trị.

Sẽ rất hữu ích khi biết rằng thông tin về API và Số phiên bản được ghi trực tiếp vào tài liệu đầu ra. Ví dụ: khi chuyển đổi tài liệu sang PDF, Aspose.Words sẽ điền vào trường "Ứng dụng" bằng "Aspose.Words" và trường "Nhà sản xuất PDF" bằng "Aspose.Words cho .NET YY.MN", trong đó *YY.M.N* là phiên bản Aspose.Words được sử dụng để chuyển đổi. Để biết thêm chi tiết, xem [Tên người tạo hoặc nhà sản xuất có trong tài liệu đầu ra](/words/vi/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Lưu ý rằng bạn **không thể chỉ đạo** Aspose.Words phải thay đổi hoặc xóa thông tin này khỏi tài liệu đầu ra.

{{% /alert %}}

## Truy cập thuộc tính tài liệu

Để truy cập các thuộc tính tài liệu trong Aspose.Words, hãy sử dụng:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) để có được các thuộc tính tích hợp.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) để có được các thuộc tính tùy chỉnh.

**BuiltInDocumentProperties** và **CustomDocumentProperties** là tập hợp các đối tượng [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/). Những đối tượng này có thể được lấy thông qua thuộc tính bộ chỉ mục theo tên hoặc theo chỉ mục.

**BuiltInDocumentProperties** còn cung cấp quyền truy cập vào các thuộc tính tài liệu thông qua một tập hợp các thuộc tính đã nhập để trả về các giá trị thuộc loại thích hợp. **CustomDocumentProperties** cho phép bạn thêm hoặc xóa thuộc tính tài liệu khỏi tài liệu.

Lớp [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) cho phép bạn lấy tên, giá trị và loại thuộc tính tài liệu. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) trả về một đối tượng, nhưng có một tập hợp các phương thức cho phép bạn chuyển đổi giá trị thuộc tính thành một loại cụ thể. Sau khi bạn biết loại thuộc tính là gì, bạn có thể sử dụng một trong các phương thức **DocumentProperty.ToXXX**, chẳng hạn như **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) và **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), để thu được giá trị của loại thích hợp.

Ví dụ về mã sau đây cho biết cách liệt kê tất cả các thuộc tính tùy chỉnh và tích hợp sẵn trong tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Trong Microsoft Word, bạn có thể truy cập các thuộc tính tài liệu bằng menu "Tệp → Thuộc tính".

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="làm việc với tài liệu-property-1.png" style="width:400px"/>

## Thêm hoặc xóa thuộc tính tài liệu

Bạn không thể thêm hoặc xóa các thuộc tính tài liệu tích hợp bằng Aspose.Words. Bạn chỉ có thể thay đổi hoặc cập nhật giá trị của chúng.

Để thêm thuộc tính tài liệu tùy chỉnh bằng Aspose.Words, hãy sử dụng phương thức [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/), chuyển tên thuộc tính mới và giá trị của loại thích hợp. Phương thức trả về đối tượng **DocumentProperty** mới được tạo.

Để xóa thuộc tính tùy chỉnh, hãy sử dụng phương thức [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/), chuyển cho nó tên thuộc tính cần xóa hoặc phương thức [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) để xóa thuộc tính theo chỉ mục. Bạn cũng có thể xóa tất cả thuộc tính bằng phương thức [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/).

Ví dụ về mã sau đây kiểm tra xem thuộc tính tùy chỉnh có tên cụ thể có tồn tại trong tài liệu hay không và thêm một vài thuộc tính tài liệu tùy chỉnh khác:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách xóa thuộc tính tài liệu tùy chỉnh:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Cập nhật thuộc tính tài liệu tích hợp

Aspose.Words không tự động cập nhật các thuộc tính tài liệu, như Microsoft Word thực hiện với một số thuộc tính, nhưng cung cấp phương pháp cập nhật một số thuộc tính tài liệu thống kê tích hợp. Gọi phương thức [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) để tính toán lại và cập nhật các thuộc tính sau:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Tạo một thuộc tính tùy chỉnh mới được liên kết với nội dung

Aspose.Words cung cấp phương pháp [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) để tạo thuộc tính tài liệu tùy chỉnh mới được liên kết với nội dung. Thuộc tính này trả về đối tượng thuộc tính mới được tạo hoặc trả về null nếu [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) không hợp lệ.

Ví dụ về mã sau đây cho biết cách định cấu hình liên kết đến thuộc tính tùy chỉnh:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Nhận các biến tài liệu

Bạn có thể lấy tập hợp các biến tài liệu bằng thuộc tính [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/). Tên và giá trị biến là chuỗi.

Ví dụ mã sau đây cho thấy cách liệt kê các biến tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Xóa thông tin cá nhân khỏi tài liệu

Nếu bạn muốn chia sẻ tài liệu Word với người khác, bạn có thể muốn xóa thông tin cá nhân như tên tác giả và công ty. Để thực hiện việc này, hãy sử dụng thuộc tính [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) để đặt cờ cho biết Microsoft Word sẽ xóa tất cả thông tin người dùng khỏi nhận xét, bản sửa đổi và thuộc tính tài liệu khi lưu tài liệu.

Ví dụ mã sau đây cho thấy cách xóa thông tin cá nhân:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Việc đặt tùy chọn này không thực sự xóa thông tin cá nhân trong khi xử lý tài liệu ở định dạng Aspose.Words và chỉ ảnh hưởng đến hành vi Microsoft Word.

{{% /alert %}}
