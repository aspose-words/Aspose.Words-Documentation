---
title: Chèn các trường trong Java
second_title: Aspose.Words cho Java
articleTitle: Chèn Trường
linktitle: Chèn Trường
description: "Các cách khác nhau để chèn các trường vào tài liệu của bạn bằng Java."
type: docs
weight: 20
url: /vi/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Có nhiều cách khác nhau để chèn các trường vào một tài liệu:

- sử dụng [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- dùng [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- dùng [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/)

Trong bài viết này, chúng ta sẽ xem xét từng cách chi tiết hơn và phân tích cách chèn các lĩnh vực cụ thể sử dụng các tùy chọn này.

## Chèn trường vào tài liệu bằng cách sử dụng DocumentBuilder

Trong Aspose.Words phương pháp [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean) được dùng để chèn các trường mới vào một tài liệu. Tham số đầu tiên nhận mã toàn bộ của trường sẽ được chèn. Tham số thứ hai là tùy chọn và cho phép trường kết quả của trường được đặt thủ công. Nếu không cung cấp thì trường được cập nhật tự động. Bạn có thể truyền giá trị là null hoặc rỗng cho tham số này để chèn một trường với giá trị trường trống. Nếu bạn chưa chắc chắn về cú pháp mã trường cụ thể, hãy tạo trường ở Microsoft Word trước và chuyển đổi để xem mã trường của nó.

{{% alert color="primary" %}}

Nếu mã trường của bạn có một tham số chứa khoảng cách thì nó phải được bao quanh trong dấu nháy kép. Nếu không, trường trong cả Microsoft Word và Aspose.Words có thể không hoạt động như mong đợi vì tham số được xử lý bởi cả hai như là bị cắt bỏ.

{{% /alert %}}

Mã ví dụ sau cho thấy cách chèn một trường hợp gộp vào một tài liệu bằng **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Cùng một kỹ thuật được dùng để chèn các trường nằm bên trong các trường khác.

Phần mã ví dụ sau trình diễn cách chèn các trường nằm trong một trường khác bằng cách sử dụng **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Chỉ định khu vực cụ thể tại mức trường

Một bộ nhận dạng ngôn ngữ là một hình thức viết tắt số quốc tế tiêu chuẩn cho ngôn ngữ trong một quốc gia hoặc khu vực địa lý. Với Aspose.Words, bạn có thể chỉ định Locale ở cấp trường sử dụng thuộc tính [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId), nhận hoặc đặt ID Locale của trường đó.

Ví dụ sau cho thấy cách sử dụng tùy chọn này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Chèn trường trống

Nếu bạn muốn chèn các trường không kiểu hoặc trống ( {} ) như Microsoft Word cho phép, bạn có thể sử dụng phương pháp [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) với tham số [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/). Để chèn một trường vào tài liệu Word, bạn có thể nhấn tổ hợp phím "Ctrl + F9".

Mảnh mã ví dụ sau cho thấy cách chèn một trường trống vào tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Chèn `COMPARE` Trường

Trường `COMPARE` so sánh hai giá trị và trả về giá trị số 1 nếu sự so sánh là true hoặc 0 nếu sự so sánh là false.

Mã ví dụ dưới đây cho thấy cách thêm `COMPARE` trường sử dụng DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Chèn `IF` Trường

Cấu trúc `IF` có thể dùng để đánh giá các đối số một cách điều kiện.

Mã ví dụ sau cho thấy cách thêm các trường `IF` sử dụng DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Chèn trường vào một tài liệu bằng FieldBuilder

Phương cách thay thế để chèn trường trong Aspose.Words là lớp [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/). Nó cung cấp giao diện thông thạo để chỉ định các công tắc trường và giá trị lập luận là văn bản, nút hoặc thậm chí các trường lồng nhau.

Mẫu mã sau đây cho thấy cách chèn một trường vào tài liệu bằng cách sử dụng **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Chèn Trường sử dụng DOM

Bạn cũng có thể chèn các loại trường khác nhau bằng cách dùng [Aspose.Words Document Object Model (DOM)](/words/java/aspose-words-document-object-model/). Trong phần này chúng ta sẽ xem xét một vài ví dụ.

### Chèn Merge Field vào một tài liệu bằng cách sử dụng DOM

"Trường `MERGEFIELD` trong tài liệu Word có thể được đại diện bởi lớp [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/)." Bạn có thể sử dụng lớp **FieldMergeField** để thực hiện các thao tác sau:

- chỉ định tên của trường kết hợp
- chỉ định kiểu định dạng của lĩnh vực hợp nhất
- quy định văn bản nằm giữa phân cách trường và kết thúc trường của trường nhập liệu
- chỉ rõ văn bản sẽ được chèn vào sau trường hợp nếu trường không trống
- chỉ định văn bản sẽ được chèn trước trường kết hợp nếu trường không trống

{{% alert color="primary" %}}

Để biết thêm chi tiết, xem [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) lớp API.

{{% /alert %}}

Mã ví dụ sau cho thấy cách thêm trường `MERGE` bằng DOM vào một đoạn văn trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Chèn Mail Merge `ADDRESSBLOCK` trường vào một Tài liệu bằng cách sử dụng DOM

Trường `ADDRESSBLOCK` được dùng để chèn khối địa chỉ mail merge trong tài liệu Word. Trường `ADDRESSBLOCK` trong tài liệu Word có thể được đại diện bằng lớp [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) Bạn có thể sử dụng **FieldAddressBlock** lớp để thực hiện các hoạt động sau đây:

"- xác định xem có bao gồm tên của quốc gia/vùng trong trường không"
- chỉ định việc định dạng địa chỉ theo quốc gia / khu vực của người nhận như được xác định bởi POST*CODE (Liên minh Bưu chính Toàn cầu năm 2006)
- chỉ rõ tên quốc gia bị loại trừ
- chỉ rõ tên và định dạng địa chỉ
- chỉ rõ mã ngôn ngữ được dùng để định dạng địa chỉ

{{% alert color="primary" %}}

Để chi tiết hơn, hãy xem [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) lớp API.

{{% /alert %}}

Ví dụ mã sau cho thấy cách thêm Mail Merge `ADDRESSBLOCK` Field sử dụng DOM vào một đoạn trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Chèn `ADVANCE` trường vào một Tài liệu mà không sử dụng DocumentBuilder

`ADVANCE` trường được dùng để chênh lệch văn bản tiếp theo trong một dòng sang trái, phải, lên hay xuống. Trường `ADVANCE` trong tài liệu Word có thể được đại diện bởi lớp [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/). Bạn có thể sử dụng lớp **FieldAdvance** để thực hiện các phép toán sau:

"- chỉ định số điểm mà văn bản theo sau trường nên di chuyển thẳng đứng từ cạnh trên cùng của trang"
- chỉ định số điểm mà văn bản sau trường nên di chuyển ngang từ viền trái của cột, khung hoặc hộp văn bản
"- chỉ định số điểm mà văn bản sau trường này nên được di chuyển sang trái, phải, lên hoặc xuống"

{{% alert color="primary" %}}

Để biết chi tiết hơn xem [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) lớp API.

{{% /alert %}}

Mã ví dụ sau cho thấy cách thêm trường `ADVANCE` bằng DOM vào một đoạn văn trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Điền vào trường `ASK` trong một Tài liệu mà không cần sử dụng DocumentBuilder

Trường `ASK` được dùng để nhắc người dùng nhập văn bản vào một dấu đánh dấu trong tài liệu Word. Trường `ASK` trong tài liệu Word có thể được biểu diễn bởi lớp [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/). Bạn có thể sử dụng **FieldAsk** lớp để thực hiện các hoạt động sau:

- chỉ định tên của dấu đánh dấu
- chỉ rõ phản hồi mặc định của người dùng (giá trị ban đầu chứa trong cửa sổ nhắc nhở)
- chỉ định xem liệu phản hồi của người dùng có nên được nhận một lần mỗi một mail merge hoạt động không
"- chỉ định văn bản nhắc (tên của cửa sổ nhắc hoat)"

{{% alert color="primary" %}}

Để biết chi tiết hơn, xem [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) lớp API.

{{% /alert %}}

Mã ví dụ sau cho thấy cách thêm trường `ASK` sử dụng DOM vào một đoạn văn bản trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Chèn `AUTHOR` trường vào một tài liệu mà không cần sử dụng DocumentBuilder

Trường `AUTHOR` dùng để xác định tên của tác giả tài liệu từ các thuộc tính trong trường `Document`. Trường `AUTHOR` trong tài liệu Word có thể được đại diện bởi lớp [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/). Bạn có thể sử dụng **FieldAuthor** lớp để thực hiện các hoạt động sau:

- xác định tên tác giả tài liệu

{{% alert color="primary" %}}

Để biết thêm chi tiết, xem [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) lớp API.

{{% /alert %}}

Mã ví dụ sau cho thấy cách thêm `AUTHOR` Trường bằng DOM vào một đoạn văn bản trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Chèn `INCLUDETEXT` trường vào một Tài liệu mà không cần sử dụng DocumentBuilder

Viết trong trường `INCLUDETEXT` chèn văn bản và đồ họa chứa trong tài liệu được đặt tên trong mã trường. Bạn có thể chèn toàn bộ tài liệu hoặc một phần tài liệu được chỉ định bởi một dấu đánh dấu trang. Cái trường này trong tài liệu word là biểu diễn bằng INCLUDETEXT. Bạn có thể sử dụng [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) lớp để thực hiện các hoạt động sau:

- chỉ định tên của một tài liệu được bao gồm
- chỉ định vị trí của tài liệu

{{% alert color="primary" %}}

Để biết chi tiết, xem [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) lớp API.

{{% /alert %}}

Ví dụ về mã sau cho thấy cách thêm trường `INCLUDETEXT` bằng DOM vào một đoạn văn trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Chèn `TOA` trường vào một tài liệu mà không dùng DocumentBuilder

The `TOA` (*Bảng mục lục*) trường xây dựng và chèn một bảng mục lục. The `TOA` trường thu thập các mục được đánh dấu bởi `TA` (*Table of Authorities Entry*) các trường. Microsoft Office Word chèn trường `TOA` khi bạn nhấp vào *Insert Table of Authorities* trong nhóm **Bảng mục lục** trên tab **References**. Khi bạn xem trường `TOA` trong tài liệu của mình thì cú pháp trông như thế này:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Để biết chi tiết, hãy xem [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) lớp API.

{{% /alert %}}

Ví dụ mã sau cho thấy cách thêm trường `TOA` bằng cách sử dụng DOM vào một đoạn văn trong tài liệu.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
