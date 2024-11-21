---
title: Thay thế trường Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Thay thế các trường bằng văn bản tĩnh
linktitle: Thay thế các trường bằng văn bản tĩnh
description: "Tìm hiểu cách thay thế các trường bằng văn bản trong Python. Thay thế các trường bằng dữ liệu tĩnh bằng Python via .NET API."
type: docs
weight: 37
url: /vi/python-net/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Việc thay thế các trường thường được yêu cầu khi bạn muốn lưu tài liệu của mình dưới dạng bản sao tĩnh. Ví dụ: khi gửi dưới dạng tệp đính kèm trong e-mail. Việc chuyển đổi các trường như `DATE` hoặc `TIME` thành văn bản tĩnh sẽ cho phép tài liệu hiển thị cùng ngày với ngày được gửi. Ngoài ra, trong một số trường hợp, bạn có thể cần xóa các trường `IF` có điều kiện khỏi tài liệu của mình và thay thế chúng bằng kết quả văn bản gần đây nhất. Ví dụ: chuyển đổi kết quả của trường `IF` thành văn bản tĩnh để nó không còn thay đổi giá trị động khi các trường trong tài liệu được cập nhật.

Sơ đồ bên dưới cho thấy cách trường `IF` được lưu trữ trong tài liệu:

* văn bản được bao quanh bởi các nút trường đặc biệt – [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) và [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* nút [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) phân tách văn bản trong trường thành mã trường và kết quả trường
* mã trường xác định hành vi chung của trường, trong khi kết quả trường giữ lại kết quả gần đây nhất khi trường này được cập nhật bằng Microsoft Word hoặc Aspose.Words
* kết quả trường là những gì được lưu trữ trong trường và hiển thị trong tài liệu khi được xem

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

Cấu trúc cũng có thể được nhìn thấy bên dưới ở dạng phân cấp bằng cách sử dụng [dự án demo *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## Các trường không thể thay thế bằng văn bản

Việc thay thế một trường bằng văn bản tĩnh không hoạt động bình thường đối với một số trường ở đầu trang hoặc chân trang.

Ví dụ: cố gắng chuyển đổi trường `PAGE` ở đầu trang hoặc chân trang thành văn bản tĩnh sẽ dẫn đến cùng một giá trị được hiển thị trên tất cả các trang. Điều này là do đầu trang và chân trang được lặp lại trên nhiều trang và khi chúng vẫn ở dạng trường, chúng sẽ được xử lý đặc biệt để hiển thị kết quả chính xác cho mỗi trang.

Tuy nhiên, trong tiêu đề, trường `PAGE` chuyển tốt sang dạng văn bản tĩnh. Dòng văn bản này sẽ được đánh giá như thể nó là trang cuối cùng trong phần này, điều này sẽ khiến bất kỳ trường `PAGE` nào trong tiêu đề hiển thị trang cuối cùng trên tất cả các trang.

Ví dụ mã sau đây cho thấy cách thay thế trường bằng kết quả gần đây nhất của nó:

VÍ DỤ

## Chuyển đổi một số loại trường nhất định trong các phần tài liệu cụ thể

Vì phương thức **ConvertFieldsToStaticText** chấp nhận hai tham số – thuộc tính [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) và bảng liệt kê [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/), nên có thể chuyển bất kỳ nút tổng hợp nào sang phương thức này. Điều này cho phép các trường chỉ được chuyển đổi thành văn bản tĩnh trong các phần cụ thể của tài liệu.

Ví dụ: bạn có thể chuyển đối tượng [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) và chuyển đổi các trường thuộc loại được chỉ định từ toàn bộ tài liệu sang văn bản tĩnh hoặc bạn có thể chuyển đối tượng [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) của một phần và chỉ chuyển đổi các trường được tìm thấy trong nội dung đó.

{{% alert color="primary" %}}

Khi chuyển một nút cấp khối chẳng hạn như [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), hãy lưu ý rằng trong một số trường hợp, các trường có thể trải dài trên nhiều đoạn văn. Nếu điều này xảy ra, bạn nên chuyển phần tử gốc của tổ hợp để tránh điều này.

{{% /alert %}}

Bảng liệt kê [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) được truyền cho phương thức **ConvertFieldsToStaticText** chỉ định loại trường nào sẽ được chuyển đổi thành văn bản tĩnh. Bất kỳ loại trường nào khác được tìm thấy trong tài liệu sẽ không thay đổi.

Ví dụ mã sau đây cho thấy cách chọn các trường thuộc loại cụ thể – *targetFieldType* trong một nút cụ thể – *compositeNode* và sau đó chuyển đổi chúng thành văn bản tĩnh:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Ví dụ mã sau đây cho biết cách chuyển đổi tất cả các trường `IF` trong tài liệu thành văn bản tĩnh:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách chuyển đổi tất cả các trường `PAGE` trong Nội dung tài liệu thành văn bản tĩnh:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

Ví dụ mã sau đây cho thấy cách chuyển đổi tất cả các trường `IF` trong đoạn cuối thành văn bản tĩnh:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}
