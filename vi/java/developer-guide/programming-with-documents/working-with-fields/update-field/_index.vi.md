---
title: Cập nhật các trường trong Java
second_title: Aspose.Words cho Java
articleTitle: Cập nhật các trường
linktitle: Cập nhật các trường
description: "Học cách cập nhật trường trong Java. Cập nhật các trường một cách lập trình hoặc sử dụng cập nhật tự động các trường bằng Java API"
type: docs
weight: 30
url: /vi/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Thông thường, một trường được chèn vào Microsoft Word đã chứa một giá trị cập nhật. Ví dụ nếu trường là một công thức hoặc số trang, nó sẽ chứa giá trị tính toán chính xác cho phiên bản của tài liệu. Nhưng nếu bạn có một ứng dụng tạo hoặc sửa đổi một tài liệu với các trường như hợp nhất hai tài liệu hoặc điền nó bằng dữ liệu, thì lý tưởng là tất cả các trường phải được cập nhật cho tài liệu để hữu ích.

## Cách Cập Nhật Trường

Khi một tài liệu được tải lên, Aspose.Words bắt chước hành vi của Microsoft Word, với tùy chọn cập nhật tự động các trường bị tắt. Hành vi có thể tóm tắt như sau:

- khi bạn mở/lưu một tài liệu các trường vẫn nguyên vẹn
"- bạn có thể cập nhật rõ ràng tất cả các trường trong một tài liệu, ví dụ, tái thiết lập `TOC` khi bạn cần"
- khi bạn in ra PDF hoặc XPS các trường liên quan đến số trang trong tiêu đề/thư ký được cập nhật
- khi bạn thực thi mail merge tất cả các trường được cập nhật tự động

### Cập nhật trường tự động

Để cập nhật các trường trong toàn bộ tài liệu rõ ràng chỉ cần gọi phương thức [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields). Để cập nhật các trường được chứa trong một phần của tài liệu, hãy lấy một [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) đối tượng và gọi phương pháp [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields). Trong Aspose.Words, bạn có thể nhận được một **Range** cho bất kỳ nút nào trong cây tài liệu, chẳng hạn như [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), v.v. bằng thuộc tính [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange). Bạn có thể cập nhật kết quả của một trường duy nhất bằng cách gọi phương thức [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update).

### Tự động cập nhật trường liên quan trang trong khi hiển thị

Khi bạn thực hiện chuyển đổi một tài liệu sang định dạng trang cố định ví dụ như PDF hoặc XPS, thì Aspose.Words sẽ tự động cập nhật các trường liên quan đến bố cục trang `PAGE`, `PAGEREF` được tìm thấy trong tiêu đề/ chân trang của tài liệu. Hành vi này mô phỏng hành vi của Microsoft Word khi in một tài liệu.

Nếu bạn muốn cập nhật các trường khác trong tài liệu, sau đó bạn cần gọi [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) trước khi hiển thị tài liệu.

Ví dụ sau cho thấy cách cập nhật tất cả các trường trước khi tạo tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Cập nhật tự động trong Mail Merge

Khi bạn chạy một mail merge, tất cả các trường trong tài liệu sẽ được cập nhật tự động. Điều này là do trường mail merge là một trường cập nhật. Chương trình gặp phải một trường mail merge và cần cập nhật kết quả, điều này liên quan đến việc lấy giá trị từ nguồn dữ liệu và chèn nó vào trường. Logic có vẻ phức tạp hơn, ví dụ khi kết thúc vùng của tài liệu/ mail merge được tiếp cận nhưng vẫn còn dữ liệu khác cần được gộp lại thì vùng cần phải được nhân đôi và tập các trường mới được cập nhật.

## Cập nhật các trường có thuộc tính bị bẩn

dirty là một thuộc tính cấp trường mà sẽ làm mới chỉ trường bạn chỉ định khi tài liệu được mở. Nó nói với MS Word để làm mới chỉ trường này lần tiếp theo khi tài liệu được mở. Bạn có thể sử dụng LoadOptions.setUpdateDirtyFields() thuộc tính để chỉ định xem bạn có cập nhật các trường với thuộc tính bị bẩn hay không. Khi giá trị của LoadOptions.setUpdateDirtyFields() được đặt thành *true*, tất cả các trường có *true* cho thuộc tính `Field.IsDirty` hoặc `FieldChar.IsDirty` đều được cập nhật khi tải tài liệu

Mã ví dụ sau cho thấy cách cập nhật các trường có thuộc tính "dirt":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Cập nhật thuộc tính LastSavedTime trước khi lưu

Bạn có thể sử dụng thuộc tính [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) để cập nhật thuộc tính tài liệu được xây dựng sẵn tương ứng là [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) khi lưu tài liệu.

Mã ví dụ dưới đây cho thấy cách cập nhật thuộc tính này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
