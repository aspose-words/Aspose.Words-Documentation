---
title: Chèn Các Trường vào C++
second_title: Aspose.Words cho C++
articleTitle: Chèn Trường
linktitle: Chèn Trường
description: "Các cách khác nhau để chèn các trường vào tài liệu của bạn bằng C++."
type: docs
weight: 20
url: /vi/cpp/inserting-fields/
---

Có một số cách khác nhau để chèn các trường vào tài liệu:

- sử dụng [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- sử dụng [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- sử dụng [Aspose.Words Mô Hình Đối Tượng Tài Liệu (DOM)](/words/cpp/aspose-words-document-object-model/)

Trong bài viết này, chúng tôi sẽ xem xét từng cách chi tiết hơn và phân tích cách chèn các trường nhất định bằng các tùy chọn này.

## Chèn Các Trường Vào Tài liệu bằng DocumentBuilder

Trong Aspose.Words phương thức [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) được sử dụng để chèn các trường mới vào tài liệu. Tham số đầu tiên chấp nhận mã trường đầy đủ của trường sẽ được chèn. Tham số thứ hai là tùy chọn và cho phép kết quả trường của trường được đặt thủ công. Nếu điều này không được cung cấp thì trường sẽ được cập nhật tự động. Bạn có thể chuyển null hoặc rỗng cho tham số này để chèn một trường có giá trị trường trống. Nếu bạn không chắc chắn về cú pháp mã trường cụ thể, hãy tạo trường trong Microsoft Word trước và chuyển sang xem mã trường của nó.

{{% alert color="primary" %}}

Nếu mã trường của bạn có một tham số chứa khoảng trắng thì nó phải được đặt trong dấu lời nói. Nếu không, trường trong cả Microsoft Word và Aspose.Words có thể không hoạt động như mong đợi vì tham số được xử lý bởi cả hai như bị cắt ngắn

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách chèn trường hợp nhất vào tài liệu bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Kỹ thuật tương tự được sử dụng để chèn các trường lồng nhau trong các trường khác.

Ví dụ mã sau đây cho thấy cách chèn các trường lồng nhau trong một trường khác bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Chỉ Định Miền Địa phương Ở Cấp Trường

Mã định danh ngôn ngữ là một chữ viết tắt số quốc tế tiêu chuẩn cho ngôn ngữ ở một quốc gia hoặc khu vực địa lý. Với Aspose.Words, bạn có thể chỉ định Miền địa phương ở cấp trường bằng thuộc tính [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), được hoặc đặt miền địa phương của trường ID.

Ví dụ mã sau đây cho thấy cách sử dụng tùy chọn này:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Chèn Trường Chưa Nhập/Trống

Nếu bạn muốn chèn các trường chưa được nhập/trống ({}) giống như Microsoft Word cho phép, bạn có thể sử dụng phương thức [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) với tham số [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). Để chèn một trường vào Tài liệu Word, bạn có thể nhấn tổ hợp phím "Ctrl + F9".

Ví dụ mã sau đây cho thấy cách chèn một trường trống vào tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Chèn Các Trường Vào Tài liệu bằng FieldBuilder

Cách thay thế để chèn các trường trong Aspose.Words là lớp [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Nó cung cấp giao diện trôi chảy để chỉ định các công tắc trường và giá trị đối số dưới dạng văn bản, nút hoặc thậm chí các trường lồng nhau.

Ví dụ mã sau đây cho thấy cách chèn một trường vào tài liệu bằng **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Chèn Các Trường bằng DOM

Bạn cũng có thể chèn các loại trường khác nhau bằng cách sử dụng [Aspose.Words Mô Hình Đối Tượng Tài Liệu (DOM)](/words/cpp/aspose-words-document-object-model/). Trong phần này, chúng ta sẽ xem xét một vài ví dụ.

### Chèn Trường Hợp Nhất vào Tài liệu bằng DOM

Trường `MERGEFIELD` trong Tài liệu Word có thể được biểu diễn bằng lớp [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Bạn có thể sử dụng lớp **FieldMergeField** để thực hiện các thao tác sau:

- chỉ định tên của trường hợp nhất
- chỉ định định dạng của trường hợp nhất
- chỉ định văn bản nằm giữa dấu phân cách trường và cuối trường của trường hợp nhất
- chỉ định văn bản sẽ được chèn sau trường hợp nhất nếu trường không trống
- chỉ định văn bản sẽ được chèn trước trường hợp nhất nếu trường không trống

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm trường `MERGE` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Chèn trường Khối Địa Chỉ Mail Merge Vào Tài liệu bằng DOM

Trường `ADDRESSBLOCK` được sử dụng để chèn khối địa chỉ mail merge trong Tài liệu Word. Trường `ADDRESSBLOCK` trong Tài liệu Word có thể được biểu diễn bằng lớp [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Bạn có thể sử dụng lớp **FieldAddressBlock** để thực hiện các thao tác sau:

- chỉ định có nên bao gồm tên của quốc gia/khu vực trong trường hay không
- xác định xem có định dạng địa chỉ theo quốc gia/khu vực của người nhận theo quy định của POST * CODE (Universal Postal Union 2006)
- chỉ định tên quốc gia/khu vực bị loại trừ
- chỉ định định dạng tên và địa chỉ
- chỉ định ngôn ngữ ID được sử dụng để định dạng địa chỉ

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm Trường Mail Merge `ADDRESSBLOCK` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Chèn Trường Trước vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `ADVANCE` được sử dụng để bù văn bản tiếp theo trong một dòng ở bên trái, bên phải, lên hoặc xuống. Trường `ADVANCE` trong Tài liệu Word có thể được biểu diễn bằng lớp [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Bạn có thể sử dụng lớp FieldAdvance để thực hiện các thao tác sau:

- chỉ định số điểm mà văn bản theo sau trường sẽ được di chuyển theo chiều dọc từ cạnh trên cùng của trang
- chỉ định số điểm mà văn bản theo sau trường phải được di chuyển theo chiều ngang từ cạnh trái của cột, khung hoặc hộp văn bản
- chỉ định số điểm mà văn bản theo trường sẽ được di chuyển sang trái, phải, lên hoặc xuống

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm Trường `ADVANCE` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Chèn trường `ASK` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `ASK` được sử dụng để nhắc người dùng gán văn bản cho Dấu Trang trong Tài liệu Word. Trường `ASK` trong Tài liệu Word có thể được biểu diễn bằng lớp [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Bạn có thể sử dụng lớp **FieldAsk** để thực hiện các thao tác sau:

- chỉ định tên của dấu trang
- chỉ định phản hồi mặc định của người dùng (giá trị ban đầu có trong cửa sổ nhắc)
- chỉ định xem phản hồi của người dùng có được nhận một lần cho mỗi thao tác mail merge hay không
- chỉ định văn bản nhắc (tiêu đề của cửa sổ nhắc)

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) API.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm Trường `ASK` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Chèn trường `AUTHOR` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `AUTHOR` được sử dụng để chỉ định tên tác giả Của Tài liệu từ thuộc tính `Document`. Trường `AUTHOR` trong Tài liệu Word có thể được biểu diễn bằng lớp [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Bạn có thể sử dụng lớp **FieldAuthor** để thực hiện các thao tác sau:

- chỉ định tên tác giả tài liệu

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm Trường `AUTHOR` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Chèn trường `INCLUDETEXT` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `INCLUDETEXT` chèn văn bản và đồ họa có trong tài liệu có tên trong mã trường. Bạn có thể chèn toàn bộ tài liệu hoặc một phần của tài liệu được gọi bằng dấu trang. Trường Này trong Tài liệu Word được đại diện bởi INCLUDETEXT. Bạn có thể sử dụng lớp [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) để thực hiện các thao tác sau:

- chỉ định tên dấu trang của tài liệu đi kèm
- chỉ định vị trí của tài liệu

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm trường `INCLUDETEXT` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Chèn trường `TOA` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `TOA` (*Table of Authorities*) xây dựng và chèn một bảng các cơ quan chức năng. Trường `TOA` thu thập các mục được đánh dấu bằng các trường `TA` (*Table of Authorities Entry*). Microsoft Office Word chèn trường `TOA` khi bạn nhấp vào *Insert Table of Authorities* trong nhóm **Table of Authorities** trên tab **References**. Khi bạn xem trường `TOA` trong tài liệu của mình, cú pháp trông như thế này:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm trường `TOA` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
