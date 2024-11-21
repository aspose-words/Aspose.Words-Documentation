---
title: Thay Thế Các Trường C++
second_title: Aspose.Words cho C++
articleTitle: Thay Thế Các Trường Bằng Văn Bản Tĩnh
linktitle: Thay Thế Các Trường Bằng Văn Bản Tĩnh
description: "Tìm hiểu cách thay thế các trường bằng văn bản trong C++. Thay thế các trường bằng dữ liệu tĩnh bằng C++ API."
type: docs
weight: 37
url: /vi/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Thay thế các trường thường được yêu cầu khi bạn muốn lưu tài liệu của mình dưới dạng bản sao tĩnh. Ví dụ: khi gửi dưới dạng tệp đính kèm trong e-mail. Chuyển đổi các trường như `DATE` hoặc `TIME` thành văn bản tĩnh sẽ cho phép tài liệu hiển thị cùng ngày với ngày được gửi. Ngoài ra, trong một số trường hợp, bạn có thể cần xóa các trường `IF` có điều kiện khỏi tài liệu của mình và thay thế chúng bằng kết quả văn bản gần đây nhất. Ví dụ: chuyển đổi kết quả của trường `IF` thành văn bản tĩnh để nó sẽ không còn tự động thay đổi giá trị của nó khi các trường trong tài liệu được cập nhật.

Sơ đồ dưới đây cho thấy trường `IF` được lưu trữ trong tài liệu như thế nào:

* văn bản được bao quanh bởi các nút trường đặc biệt – [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) và [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* nút [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) phân tách văn bản trong trường thành mã trường và kết quả trường
* mã trường xác định hành vi chung của trường, trong khi kết quả trường giữ lại kết quả gần đây nhất khi trường này được cập nhật bằng Microsoft Word hoặc Aspose.Words
* kết quả trường là những gì được lưu trữ trong trường và hiển thị trong tài liệu khi xem

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Cấu trúc cũng có thể được nhìn thấy dưới đây ở dạng phân cấp bằng cách sử dụng dự án demo *"DocumentExplorer"*.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Các trường Không Thể Thay Thế Bằng Văn Bản

Thay thế một trường bằng văn bản tĩnh không hoạt động đúng đối với một số trường trong tiêu đề hoặc chân trang.

Ví dụ: cố gắng chuyển đổi trường `PAGE` trong tiêu đề hoặc chân trang thành văn bản tĩnh sẽ dẫn đến cùng một giá trị được hiển thị trên tất cả các trang. Điều này là do các tiêu đề và chân trang được lặp lại trên nhiều trang và khi chúng vẫn ở dạng trường, chúng được xử lý đặc biệt để chúng hiển thị kết quả chính xác cho mỗi trang.

Tuy nhiên, trong tiêu đề, trường `PAGE` dịch tốt sang chạy văn bản tĩnh. Việc chạy văn bản này sẽ được đánh giá như thể nó là trang cuối cùng trong phần, điều này sẽ khiến bất kỳ trường `PAGE` nào trong tiêu đề hiển thị trang cuối cùng trên tất cả các trang.

Ví dụ mã sau đây cho thấy cách thay thế trường bằng kết quả gần đây nhất của nó:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Chuyển Đổi Các Loại Trường nhất định Trong Các Phần Tài liệu Cụ thể

Vì phương thức **ConvertFieldsToStaticText** chấp nhận hai tham số – thuộc tính [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) và liệt kê [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/), nên có thể chuyển bất kỳ nút tổng hợp nào cho phương thức này. Điều này cho phép các trường chỉ được chuyển đổi thành văn bản tĩnh trong các phần cụ thể của tài liệu.

Ví dụ: bạn có thể chuyển một đối tượng [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) và chuyển đổi các trường thuộc loại được chỉ định từ toàn bộ tài liệu sang văn bản tĩnh hoặc bạn có thể chuyển một đối tượng [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) của một phần và chỉ chuyển đổi các trường được tìm thấy trong phần nội dung đó.

{{% alert color="primary" %}}

Khi chuyển một nút cấp khối như [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), hãy lưu ý rằng trong một số trường hợp, các trường có thể trải dài trên nhiều đoạn văn. Nếu điều này xảy ra, nên vượt qua cha mẹ của composite để tránh điều này.

{{% /alert %}}

Phép liệt kê [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) được truyền cho phương thức **ConvertFieldsToStaticText** chỉ định loại trường nào sẽ được chuyển đổi thành văn bản tĩnh. Bất kỳ loại trường nào khác được tìm thấy trong tài liệu sẽ không thay đổi.

Ví dụ mã sau đây cho thấy cách chọn các trường có kiểu cụ thể – *targetFieldType* trong một nút cụ thể – *compositeNode* rồi chuyển đổi chúng thành văn bản tĩnh:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

Ví dụ mã sau đây cho thấy cách chuyển đổi tất cả các trường `IF` trong tài liệu thành văn bản tĩnh:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Ví dụ mã sau đây cho thấy cách chuyển đổi tất cả các trường `PAGE` trong Phần Nội dung của tài liệu thành văn bản tĩnh:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Ví dụ mã sau đây cho thấy cách chuyển đổi tất cả các trường `IF` trong đoạn cuối thành văn bản tĩnh:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
