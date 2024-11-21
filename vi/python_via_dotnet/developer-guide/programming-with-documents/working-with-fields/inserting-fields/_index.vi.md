---
title: Chèn trường trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Chèn trường
linktitle: Chèn trường
description: "Chèn các trường vào tài liệu trong Python theo nhiều cách khác nhau: sử dụng `DocumentBuilder` hoặc DOM (Document Object Model)."
type: docs
weight: 20
url: /vi/python-net/inserting-fields/
timestamp: 2024-09-25-11-08-55
---

Có một số cách khác nhau để chèn các trường vào tài liệu:

- sử dụng [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- sử dụng [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- sử dụng [Aspose.Words Document Object Model (DOM)](/words/vi/python-net/aspose-words-document-object-model/)

Trong bài viết này, chúng tôi sẽ xem xét từng cách chi tiết hơn và phân tích cách chèn các trường nhất định bằng các tùy chọn này.

## Chèn trường vào tài liệu bằng DocumentBuilder

Trong Aspose.Words, phương thức [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) được sử dụng để chèn các trường mới vào tài liệu. Tham số đầu tiên chấp nhận mã trường đầy đủ của trường sẽ được chèn vào. Tham số thứ hai là tùy chọn và cho phép đặt kết quả trường của trường theo cách thủ công. Nếu điều này không được cung cấp thì trường này sẽ được cập nhật tự động. Bạn có thể chuyển null hoặc trống cho tham số này để chèn trường có giá trị trường trống. Nếu bạn không chắc chắn về cú pháp mã trường cụ thể, trước tiên hãy tạo trường bằng Microsoft Word và chuyển sang xem mã trường của nó.

{{% alert color="primary" %}}

Nếu mã trường của bạn có tham số chứa khoảng trắng thì mã đó phải được đặt trong dấu giọng nói. Nếu không, trường trong cả Microsoft Word và Aspose.Words có thể không hoạt động như mong đợi vì cả hai đều coi tham số là bị cắt bớt.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách chèn trường hợp nhất vào tài liệu bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

Ví dụ về mã sau đây cho biết cách chèn trường hợp nhất với ngôn ngữ tiếng Đức vào tài liệu bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

Kỹ thuật tương tự được sử dụng để chèn các trường lồng trong các trường khác.

Ví dụ về mã sau đây cho thấy cách chèn các trường lồng nhau trong một trường khác bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Chỉ định ngôn ngữ ở cấp trường

Mã định danh ngôn ngữ là chữ viết tắt bằng số quốc tế tiêu chuẩn cho ngôn ngữ ở một quốc gia hoặc khu vực địa lý. Với Aspose.Words, bạn có thể chỉ định Ngôn ngữ ở cấp trường. Thuộc tính [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) nhận hoặc đặt ID ngôn ngữ của trường.

Ví dụ mã sau đây cho thấy cách sử dụng tùy chọn này:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Chèn trường chưa gõ/trống

Nếu bạn muốn chèn các trường không được gõ/trống ({}) giống như Microsoft Word cho phép, bạn có thể sử dụng phương thức [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) với tham số [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none). Để chèn một trường vào tài liệu Word, bạn có thể nhấn tổ hợp phím "Ctrl + F9".

Ví dụ mã sau đây cho thấy cách chèn một trường trống vào tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## Chèn trường vào tài liệu bằng FieldBuilder

Cách khác để chèn các trường trong Aspose.Words là lớp [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/). Nó cung cấp giao diện trôi chảy để chỉ định các chuyển đổi trường và giá trị đối số dưới dạng văn bản, nút hoặc thậm chí các trường lồng nhau.

Ví dụ mã sau đây cho biết cách chèn một trường vào tài liệu bằng **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## Chèn trường bằng DOM

Bạn cũng có thể chèn nhiều loại trường khác nhau bằng [Aspose.Words Document Object Model (DOM)](/words/vi/python-net/aspose-words-document-object-model/). Trong phần này, chúng ta sẽ xem xét một vài ví dụ.

### Chèn trường hợp nhất vào tài liệu bằng DOM

Trường `MERGEFIELD` trong tài liệu Word có thể được biểu thị bằng lớp [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/). Bạn có thể sử dụng lớp [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) để thực hiện các thao tác sau:

- chỉ định tên của trường hợp nhất
- chỉ định định dạng của trường hợp nhất
- chỉ định văn bản nằm giữa dấu phân cách trường và phần cuối trường của trường hợp nhất
- chỉ định văn bản sẽ được chèn sau trường hợp nhất nếu trường không trống
- chỉ định văn bản sẽ được chèn trước trường hợp nhất nếu trường không trống

Ví dụ về mã sau đây cho biết cách thêm Trường `Merge` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Chèn trường Mail Merge `ADDRESSBLOCK` vào Tài liệu bằng DOM

Trường `ADDRESSBLOCK` được sử dụng để chèn khối địa chỉ mail merge trong tài liệu Word. Trường `ADDRESSBLOCK` trong tài liệu Word có thể được biểu diễn bằng lớp [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/). Bạn có thể sử dụng lớp [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) để thực hiện các thao tác sau:

- chỉ định xem có đưa tên quốc gia/khu vực vào trường này hay không
- chỉ định có định dạng địa chỉ theo quốc gia/khu vực của người nhận như được xác định bởi POST*CODE (Universal Postal Union 2006)
- chỉ định tên quốc gia/khu vực bị loại trừ
- chỉ định định dạng tên và địa chỉ
- chỉ định ID ngôn ngữ được sử dụng để định dạng địa chỉ

Ví dụ về mã sau đây cho biết cách thêm Trường Mail Merge `ADDRESSBLOCK` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### Chèn trường `ADVANCE` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `ADVANCE` được sử dụng để bù văn bản tiếp theo trong một dòng sang trái, phải, lên hoặc xuống. Trường `ADVANCE` trong tài liệu Word có thể được biểu thị bằng lớp [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/). Bạn có thể sử dụng lớp [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) để thực hiện các thao tác sau:

- chỉ định số điểm mà văn bản theo sau trường sẽ được di chuyển theo chiều dọc từ cạnh trên của trang
- chỉ định số điểm mà văn bản theo sau trường sẽ được di chuyển theo chiều ngang từ cạnh trái của cột, khung hoặc hộp văn bản
- chỉ định số điểm mà văn bản theo sau trường sẽ được di chuyển sang trái, phải, lên hoặc xuống

Ví dụ về mã sau đây cho biết cách thêm Trường `ADVANCE` bằng DOM vào một đoạn trong tài liệu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### Chèn trường `ASK` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `ASK` được sử dụng để nhắc người dùng gán văn bản cho Dấu trang trong tài liệu Word. Trường `ASK` trong tài liệu Word có thể được biểu thị bằng lớp [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/). Bạn có thể sử dụng lớp **FieldAsk** để thực hiện các thao tác sau:

- chỉ định tên của dấu trang
- chỉ định phản hồi mặc định của người dùng (giá trị ban đầu có trong cửa sổ nhắc)
- chỉ định xem có nên nhận phản hồi của người dùng một lần cho mỗi thao tác mail merge hay không
- chỉ định văn bản nhắc (tiêu đề của cửa sổ nhắc)

Ví dụ về mã sau đây cho biết cách thêm Trường `ASK` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### Chèn trường `AUTHOR` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `AUTHOR` được sử dụng để chỉ định tên tác giả của Tài liệu từ thuộc tính `Document`. Trường `AUTHOR` trong tài liệu Word có thể được biểu diễn bằng lớp [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/). Bạn có thể sử dụng lớp **FieldAuthor** để thực hiện các thao tác sau:

- chỉ định tên tác giả tài liệu

Ví dụ về mã sau đây cho biết cách thêm Trường `AUTHOR` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### Chèn trường `INCLUDETEXT` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `INCLUDETEXT` chèn văn bản và đồ họa có trong tài liệu có tên trong mã trường. Bạn có thể chèn toàn bộ tài liệu hoặc một phần tài liệu được tham chiếu bằng dấu trang. Trường này trong tài liệu Word được biểu thị bằng INCLUDEEXT. Bạn có thể sử dụng lớp [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) để thực hiện các thao tác sau:

- chỉ định tên dấu trang của tài liệu đi kèm
- xác định vị trí của tài liệu

Ví dụ về mã sau đây cho biết cách thêm trường `INCLUDETEXT` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### Chèn trường `TOA` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `TOA` (*Bảng cơ quan có thẩm quyền*) xây dựng và chèn một bảng cơ quan có thẩm quyền. Trường `TOA` thu thập các mục nhập được đánh dấu bằng các trường `TA` (*Bảng mục nhập chính quyền*). Microsoft Office Word chèn trường `TOA` khi bạn nhấp vào *Chèn bảng quyền hạn* trong nhóm **Bảng quyền hạn** trên tab **References**. Khi bạn xem trường `TOA` trong tài liệu của mình, cú pháp sẽ như sau:

{ `TOA` [Switches ] }

Bạn có thể sử dụng lớp [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) để thực hiện các thao tác với trường `TOA`.

Ví dụ về mã sau đây cho biết cách thêm trường `TOA` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}
