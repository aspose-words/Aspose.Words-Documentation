---
title: Chèn trường trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chèn trường
linktitle: Chèn trường
description: "Cách chèn trường vào tài liệu bằng C# – tìm hiểu các cách khác nhau với các ví dụ về mã."
type: docs
weight: 20
url: /vi/net/inserting-fields/
---

Có một số cách khác nhau để chèn các trường vào tài liệu:

* sử dụng [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* sử dụng [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* sử dụng [Aspose.Words Document Object Model (DOM)](/words/vi/net/aspose-words-document-object-model/)

Trong bài viết này, chúng tôi sẽ xem xét từng cách chi tiết hơn và phân tích cách chèn các trường nhất định bằng các tùy chọn này.

## Chèn trường vào tài liệu bằng DocumentBuilder

Trong Aspose.Words, phương thức [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) được sử dụng để chèn các trường mới vào tài liệu. Tham số đầu tiên chấp nhận mã trường đầy đủ của trường sẽ được chèn vào. Tham số thứ hai là tùy chọn và cho phép đặt kết quả trường của trường theo cách thủ công. Nếu điều này không được cung cấp thì trường này sẽ được cập nhật tự động. Bạn có thể chuyển null hoặc trống cho tham số này để chèn trường có giá trị trường trống. Nếu bạn không chắc chắn về cú pháp mã trường cụ thể, trước tiên hãy tạo trường bằng Microsoft Word và chuyển sang xem mã trường của nó.

{{% alert color="primary" %}}

Nếu mã trường của bạn có tham số chứa khoảng trắng thì mã đó phải được đặt trong dấu giọng nói. Nếu không, trường trong cả Microsoft Word và Aspose.Words có thể không hoạt động như mong đợi vì cả hai đều coi tham số là bị cắt bớt.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách chèn trường hợp nhất vào tài liệu bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Kỹ thuật tương tự được sử dụng để chèn các trường lồng trong các trường khác.

Ví dụ về mã sau đây cho thấy cách chèn các trường lồng nhau trong một trường khác bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Chỉ định ngôn ngữ ở cấp trường

Mã định danh ngôn ngữ là chữ viết tắt bằng số quốc tế tiêu chuẩn cho ngôn ngữ ở một quốc gia hoặc khu vực địa lý. Với Aspose.Words, bạn có thể chỉ định Ngôn ngữ ở cấp trường bằng thuộc tính [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/), thuộc tính này nhận hoặc đặt ID ngôn ngữ của trường.

Ví dụ mã sau đây cho thấy cách sử dụng tùy chọn này:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Chèn trường chưa gõ/trống

Nếu bạn muốn chèn các trường không được gõ/trống ({}) giống như Microsoft Word cho phép, bạn có thể sử dụng phương thức [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) với tham số [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/). Để chèn một trường vào tài liệu Word, bạn có thể nhấn tổ hợp phím "Ctrl + F9".

Ví dụ mã sau đây cho thấy cách chèn một trường trống vào tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Chèn trường vào tài liệu bằng FieldBuilder
Cách khác để chèn các trường trong Aspose.Words là lớp [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/). Nó cung cấp giao diện trôi chảy để chỉ định các chuyển đổi trường và giá trị đối số dưới dạng văn bản, nút hoặc thậm chí các trường lồng nhau.

Ví dụ mã sau đây cho biết cách chèn một trường vào tài liệu bằng **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Chèn trường bằng DOM

Bạn cũng có thể chèn nhiều loại trường khác nhau bằng [Aspose.Words Document Object Model (DOM)](/words/vi/net/aspose-words-document-object-model/). Trong phần này, chúng ta sẽ xem xét một vài ví dụ.

### Chèn trường hợp nhất vào tài liệu bằng DOM

Trường `MERGEFIELD` trong tài liệu Word có thể được biểu thị bằng lớp [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/). Bạn có thể sử dụng lớp **FieldMergeField** để thực hiện các thao tác sau:

- chỉ định tên của trường hợp nhất
- chỉ định định dạng của trường hợp nhất
- chỉ định văn bản nằm giữa dấu phân cách trường và phần cuối trường của trường hợp nhất
- chỉ định văn bản sẽ được chèn sau trường hợp nhất nếu trường không trống
- chỉ định văn bản sẽ được chèn trước trường hợp nhất nếu trường không trống

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách thêm trường `MERGE` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Chèn trường Mail Merge `ADDRESSBLOCK` vào Tài liệu bằng DOM

Trường `ADDRESSBLOCK` được sử dụng để chèn khối địa chỉ mail merge trong tài liệu Word. Trường `ADDRESSBLOCK` trong tài liệu Word có thể được biểu diễn bằng lớp [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/). Bạn có thể sử dụng lớp **FieldAddressBlock** để thực hiện các thao tác sau:

- chỉ định xem có đưa tên quốc gia/khu vực vào trường này hay không
- chỉ định có định dạng địa chỉ theo quốc gia/khu vực của người nhận như được xác định bởi POST*CODE (Universal Postal Union 2006)
- chỉ định tên quốc gia/khu vực bị loại trừ
- chỉ định định dạng tên và địa chỉ
- chỉ định ID ngôn ngữ được sử dụng để định dạng địa chỉ

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách thêm Trường Mail Merge `ADDRESSBLOCK` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Chèn trường `ADVANCE` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `ADVANCE` được sử dụng để bù văn bản tiếp theo trong một dòng sang trái, phải, lên hoặc xuống. Trường `ADVANCE` trong tài liệu Word có thể được biểu thị bằng lớp [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/). Bạn có thể sử dụng lớp **FieldAdvance** để thực hiện các thao tác sau:

- chỉ định số điểm mà văn bản theo sau trường sẽ được di chuyển theo chiều dọc từ cạnh trên của trang
- chỉ định số điểm mà văn bản theo sau trường sẽ được di chuyển theo chiều ngang từ cạnh trái của cột, khung hoặc hộp văn bản
- chỉ định số điểm mà văn bản theo sau trường sẽ được di chuyển sang trái, phải, lên hoặc xuống

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách thêm Trường `ADVANCE` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Chèn trường `ASK` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `ASK` được sử dụng để nhắc người dùng gán văn bản cho Dấu trang trong tài liệu Word. Trường `ASK` trong tài liệu Word có thể được biểu thị bằng lớp [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/). Bạn có thể sử dụng lớp **FieldAsk** để thực hiện các thao tác sau:

- chỉ định tên của dấu trang
- chỉ định phản hồi mặc định của người dùng (giá trị ban đầu có trong cửa sổ nhắc)
- chỉ định xem có nên nhận phản hồi của người dùng một lần cho mỗi thao tác mail merge hay không
- chỉ định văn bản nhắc (tiêu đề của cửa sổ nhắc)

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) API.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách thêm Trường `ASK` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Chèn trường `AUTHOR` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `AUTHOR` được sử dụng để chỉ định tên tác giả của Tài liệu từ thuộc tính `Document`. Trường `AUTHOR` trong tài liệu Word có thể được biểu thị bằng lớp [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/). Bạn có thể sử dụng lớp **FieldAuthor** để thực hiện các thao tác sau:

- chỉ định tên tác giả tài liệu

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách thêm Trường `AUTHOR` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Chèn trường `INCLUDETEXT` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `INCLUDETEXT` chèn văn bản và đồ họa có trong tài liệu có tên trong mã trường. Bạn có thể chèn toàn bộ tài liệu hoặc một phần tài liệu được tham chiếu bằng dấu trang. Trường này trong tài liệu Word được biểu thị bằng INCLUDEEXT. Bạn có thể sử dụng lớp [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) để thực hiện các thao tác sau:

- chỉ định tên dấu trang của tài liệu đi kèm
- xác định vị trí của tài liệu

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách thêm trường `INCLUDETEXT` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Chèn trường `TOA` vào Tài liệu mà không cần sử dụng DocumentBuilder

Trường `TOA` (*Bảng cơ quan có thẩm quyền*) xây dựng và chèn một bảng cơ quan có thẩm quyền. Trường `TOA` thu thập các mục nhập được đánh dấu bằng các trường `TA` (*Bảng mục nhập chính quyền*). Microsoft Office Word chèn trường `TOA` khi bạn nhấp vào *Chèn bảng quyền hạn* trong nhóm **Bảng quyền hạn** trên tab **References**. Khi bạn xem trường `TOA` trong tài liệu của mình, cú pháp sẽ như sau:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Để biết thêm chi tiết, hãy xem lớp [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách thêm trường `TOA` bằng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
