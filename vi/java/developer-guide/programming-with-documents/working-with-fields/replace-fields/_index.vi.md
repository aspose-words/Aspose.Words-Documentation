---
title: Thay thế các trường bằng văn bản Java
second_title: Aspose.Words cho Java
articleTitle: Thay thế Trường với Văn bản tĩnh
linktitle: Thay thế Trường với Văn bản tĩnh
description: "Học cách thay thế trường với văn bản trong Java. Thay thế các trường với dữ liệu tĩnh bằng cách sử dụng Java API."
type: docs
weight: 37
url: /vi/java/replace-fields/
---

Thay thế các trường thường được yêu cầu khi bạn muốn lưu tài liệu của bạn dưới dạng bản sao tĩnh. Ví dụ, khi gửi đính kèm trong một email. Chuyển đổi các trường như `DATE` hoặc `TIME` thành văn bản tĩnh sẽ cho phép tài liệu hiển thị cùng ngày khi nó được gửi. Cũng vậy, trong một số tình huống, bạn có thể cần phải loại bỏ các trường điều kiện `IF` từ tài liệu của bạn và thay thế chúng bằng kết quả văn bản mới nhất. Ví dụ như chuyển đổi kết quả của trường `IF` thành văn bản tĩnh để không còn thay đổi giá trị tự động khi các trường trong tài liệu được cập nhật.

Biểu đồ dưới đây cho thấy cách lưu trữ `IF` trong tài liệu như thế nào:

* văn bản bị bao quanh bởi các nút trường đặc biệt – [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) và [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* nút [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) tách văn bản trong trường thành mã trường và kết quả trường
"* mã trường xác định hành vi chung của trường, trong khi kết quả trường duy trì kết quả mới nhất khi trường được cập nhật bằng cách sử dụng Microsoft Word hoặc Aspose.Words"
* trường kết quả là những gì được lưu trữ trong trường và hiển thị trong tài liệu khi xem

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Cấu trúc cũng có thể được thấy dưới dạng phân cấp sử dụng dự án demo **“DocumentExplorer”**, đi kèm với trình cài đặt **Aspose.Words**.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Những lĩnh vực không thể thay thế bằng văn bản

Thay thế một trường với văn bản tĩnh không hoạt động đúng đối với một số trường trong tiêu đề hoặc chân trang.

Ví dụ, việc cố gắng chuyển đổi trường `PAGE` trong tiêu đề hoặc chân trang thành văn bản tĩnh sẽ dẫn đến cùng một giá trị hiển thị trên tất cả các trang. Đây là vì tiêu đề và chân trang được lặp lại trên nhiều trang, và khi chúng vẫn còn là các trường, chúng được xử lý đặc biệt để hiển thị kết quả chính xác cho mỗi trang.

Tuy nhiên, trong phần tiêu đề, `PAGE` dịch khá dễ thành đoạn văn tĩnh. Phần văn bản này sẽ được đánh giá như thể nó là trang cuối cùng trong phần, điều này sẽ khiến bất kỳ trường nào `PAGE` ở tiêu đề hiển thị trang cuối cùng trên tất cả các trang.

Mã ví dụ sau cho thấy cách thay thế trường bằng kết quả mới nhất của nó:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Chuyển đổi Loại Trường nhất định ở các Phần Tài liệu cụ thể

Từ **ConvertFieldsToStaticText** phương pháp chấp nhận hai tham số - các thuộc tính [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) và [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) enum, nó là có thể để truyền bất kỳ nút tổng hợp nào đến phương pháp này. Điều này cho phép các trường được chuyển đổi thành văn bản tĩnh chỉ trong các phần cụ thể của tài liệu.

Ví dụ, bạn có thể truyền một [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) đối tượng và chuyển đổi các lĩnh vực của loại được chỉ định từ toàn bộ tài liệu thành văn bản tĩnh, hoặc bạn có thể truyền một [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) đối tượng của một phần và chuyển đổi chỉ các lĩnh vực tìm thấy trong cơ thể đó.

{{% alert color="primary" %}}

Khi đi qua một nút block-level như [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), hãy biết rằng trong một số trường hợp, các trường có thể trải rộng trên nhiều đoạn văn. Nếu điều này xảy ra, được khuyến nghị để truyền cha của hợp thành thay vì để tránh điều này.

{{% /alert %}}

Việc liệt kê [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) được truyền vào phương thức **ConvertFieldsToStaticText** xác định loại trường nào nên chuyển đổi thành văn bản tĩnh. Bất kỳ loại trường nào khác được tìm thấy trong tài liệu sẽ vẫn không thay đổi.

Mã ví dụ sau cho thấy cách chọn các trường của một loại cụ thể - *targetFieldType* trên một nút cụ thể - *compositeNode* và sau đó chuyển đổi chúng thành văn bản tĩnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

Mã ví dụ sau cho thấy cách chuyển đổi tất cả các trường `IF` trong tài liệu sang văn bản tĩnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

Mã ví dụ sau cho thấy cách chuyển đổi tất cả các `PAGE` trường trong cơ thể của một tài liệu thành văn bản tĩnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

Mã ví dụ sau đây cho thấy cách chuyển đổi tất cả các `IF` trường trong đoạn cuối cùng thành văn bản tĩnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
