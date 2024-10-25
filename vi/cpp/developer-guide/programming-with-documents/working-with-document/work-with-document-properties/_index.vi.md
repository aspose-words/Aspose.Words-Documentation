---
title: Làm việc Với Các Thuộc tính Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Thuộc Tính Tài Liệu
linktitle: Làm việc Với Thuộc Tính Tài Liệu
description: "Aspose.Words cho C++ cho phép lưu trữ một số thông tin hữu ích về tài liệu của bạn, chẳng hạn như API Và Số Phiên bản hoặc Ngày Được Ủy quyền, trong các thuộc tính tài liệu tích hợp hoặc tùy chỉnh."
type: docs
weight: 10
url: /vi/cpp/work-with-document-properties/
---

Thuộc tính tài liệu cho phép lưu trữ một số thông tin hữu ích về tài liệu của bạn. Các thuộc tính này có thể được chia thành hai nhóm:

* Hệ thống hoặc tích hợp có chứa các giá trị như tiêu đề tài liệu, tên tác giả, thống kê tài liệu và các giá trị khác.
* Người dùng xác định hoặc tùy chỉnh, được cung cấp dưới dạng các cặp giá trị tên nơi người dùng có thể xác định cả tên và giá trị.

Thật hữu ích khi biết rằng thông tin về API Và Số Phiên bản được ghi trực tiếp vào các tài liệu đầu ra. Ví dụ: khi chuyển đổi tài liệu thành PDF, Aspose.Words điền vào trường "Ứng dụng" bằng "Aspose.Words" và trường "PDF Nhà sản xuất" với "Aspose.Words cho C++ YY.M. n", trong đó *YY.M.N* là phiên bản của Aspose.Words được sử dụng để chuyển đổi. Để biết thêm chi tiết, hãy xem [Máy phát Điện Hoặc Tên Nhà Sản xuất Bao gồm Trong Tài liệu Đầu Ra](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Lưu ý rằng bạn **cannot direct** Aspose.Words để thay đổi hoặc xóa thông tin này khỏi tài liệu đầu ra.

{{% /alert %}}

## Truy Cập Thuộc Tính Tài Liệu

Để truy cập thuộc tính tài liệu trong Aspose.Words sử dụng:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) để có được các thuộc tính tích hợp.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) để có được các thuộc tính tùy chỉnh.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Lớp [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) cho phép bạn lấy tên, giá trị và loại thuộc tính tài liệu. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) trả về một đối tượng, nhưng có một tập hợp các phương thức cho phép bạn chuyển đổi giá trị thuộc tính thành một loại cụ thể. Sau khi bạn biết thuộc tính là loại nào, bạn có thể sử dụng một trong các phương thức **DocumentProperty.ToXXX**, chẳng hạn như **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) và **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), để có được giá trị của loại thích hợp.

Ví dụ mã sau đây cho thấy cách liệt kê tất cả các thuộc tính tích hợp và tùy chỉnh trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Trong Microsoft Word, bạn có thể truy cập thuộc tính tài liệu bằng menu "Tệp → Thuộc tính".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Thêm Hoặc Xóa Thuộc Tính Tài Liệu

Bạn không thể thêm hoặc xóa các thuộc tính tài liệu tích hợp bằng Aspose.Words. Bạn chỉ có thể thay đổi hoặc cập nhật các giá trị của chúng.

Để thêm thuộc tính tài liệu tùy chỉnh với Aspose.Words, hãy sử dụng phương thức [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), chuyển tên thuộc tính mới và giá trị của loại thích hợp. Phương thức trả về đối tượng **DocumentProperty** mới được tạo.

Để xóa các thuộc tính tùy chỉnh, hãy sử dụng phương thức [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), chuyển tên thuộc tính để xóa hoặc phương thức [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) để xóa thuộc tính theo chỉ mục. Bạn cũng có thể xóa tất cả các thuộc tính bằng phương thức [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

Ví dụ mã sau đây kiểm tra xem một thuộc tính tùy chỉnh có tên đã cho có tồn tại trong tài liệu hay không và thêm một vài thuộc tính tài liệu tùy chỉnh khác:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách xóa thuộc tính tài liệu tùy chỉnh:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Cập Nhật Thuộc Tính Tài Liệu Tích Hợp

Aspose.Words không tự động cập nhật thuộc tính tài liệu, như Microsoft Word làm với một số thuộc tính, nhưng cung cấp một phương pháp để cập nhật một số thuộc tính tài liệu tích hợp thống kê. Gọi phương thức [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) để tính toán lại và cập nhật các thuộc tính sau:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Tạo Một Thuộc Tính Tùy Chỉnh Mới Được Liên Kết Với Nội dung

Aspose.Words cung cấp phương thức [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) để tạo thuộc tính tài liệu tùy chỉnh mới được liên kết với nội dung. Thuộc tính này trả về đối tượng thuộc tính mới được tạo hoặc null nếu [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) không hợp lệ.

Ví dụ mã sau đây cho thấy cách định cấu hình liên kết đến thuộc tính tùy chỉnh:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Nhận Các Biến Tài Liệu

Bạn có thể nhận được một tập hợp các biến tài liệu bằng thuộc tính [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Tên và giá trị biến là chuỗi.

Ví dụ mã sau đây cho thấy cách liệt kê các biến tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Xóa Thông tin Cá nhân khỏi Tài Liệu

Nếu bạn muốn chia sẻ Tài liệu Word với người khác, bạn có thể muốn xóa thông tin cá nhân như tên tác giả và công ty. Để thực hiện việc này, hãy sử dụng thuộc tính [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) để đặt cờ cho biết Microsoft Word sẽ xóa tất cả thông tin người dùng khỏi các thuộc tính nhận xét, sửa đổi và tài liệu khi lưu tài liệu.

Ví dụ mã sau đây cho thấy cách xóa thông tin cá nhân:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Đặt tùy chọn này không thực sự xóa thông tin cá nhân trong khi xử lý tài liệu trong Aspose.Words và chỉ ảnh hưởng đến hành vi Microsoft Word.

{{% /alert %}}
