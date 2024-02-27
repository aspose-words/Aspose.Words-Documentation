---
title: Cập nhật trường C#
second_title: Aspose.Words cho .NET
articleTitle: Cập nhật trường
linktitle: Cập nhật trường
description: "Tìm hiểu cách cập nhật các trường trong C#. Cập nhật các trường theo chương trình hoặc sử dụng tính năng cập nhật trường tự động bằng .NET API."
type: docs
weight: 30
url: /vi/net/update-fields/
---

Thông thường, trường được chèn vào Microsoft Word đã chứa giá trị cập nhật. Ví dụ: nếu trường là công thức hoặc số trang, nó sẽ chứa giá trị được tính toán chính xác cho phiên bản đã cho của tài liệu. Nhưng nếu bạn có một ứng dụng tạo hoặc sửa đổi tài liệu với các trường như hợp nhất hai tài liệu hoặc điền dữ liệu vào đó, thì lý tưởng nhất là tất cả các trường phải được cập nhật để tài liệu trở nên hữu ích.

## Cách cập nhật trường

Khi một tài liệu được tải, Aspose.Words bắt chước hành vi của Microsoft Word với tùy chọn tự động cập nhật các trường bị tắt. Hành vi này có thể được tóm tắt như sau:

- khi bạn mở/lưu tài liệu, các trường vẫn còn nguyên
- bạn có thể cập nhật rõ ràng tất cả các trường trong tài liệu, ví dụ: xây dựng lại `TOC` khi bạn cần
- khi bạn in/kết xuất sang PDF hoặc XPS, các trường liên quan đến đánh số trang ở đầu trang/chân trang sẽ được cập nhật
- khi bạn thực thi mail merge, tất cả các trường sẽ được cập nhật tự động

### Cập nhật các trường theo chương trình

Để cập nhật rõ ràng các trường trong toàn bộ tài liệu, chỉ cần gọi phương thức [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/). Để cập nhật các trường có trong một phần của tài liệu, hãy lấy đối tượng [Range](https://reference.aspose.com/words/net/aspose.words/range/) và gọi phương thức [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/). Trong Aspose.Words, bạn có thể lấy **Range** cho bất kỳ nút nào trong cây tài liệu, chẳng hạn như [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), v.v. bằng cách sử dụng thuộc tính [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/). Bạn có thể cập nhật kết quả của một trường bằng cách gọi phương thức [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/).

### Tự động cập nhật các trường liên quan đến trang trong khi hiển thị

Khi bạn thực hiện chuyển đổi tài liệu sang định dạng trang cố định, ví dụ: sang PDF hoặc XPS, thì Aspose.Words sẽ tự động cập nhật các trường liên quan đến bố cục trang `PAGE`, `PAGEREF` được tìm thấy trong đầu trang/chân trang của tài liệu. Hành vi này bắt chước hành vi của Microsoft Word khi in tài liệu.

Nếu bạn muốn cập nhật tất cả các trường khác trong tài liệu thì bạn cần gọi [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) trước khi hiển thị tài liệu.

Ví dụ mã sau đây cho biết cách cập nhật tất cả các trường trước khi hiển thị tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Cập nhật trường tự động trong Mail Merge

Khi bạn thực thi mail merge, tất cả các trường trong tài liệu sẽ được cập nhật tự động. Điều này là do mail merge là một trường hợp cập nhật trường. Chương trình gặp trường mail merge và cần cập nhật kết quả của nó, bao gồm việc lấy giá trị từ nguồn dữ liệu và chèn nó vào trường. Tất nhiên, logic phức tạp hơn, chẳng hạn như khi đã đến cuối vùng tài liệu/mail merge nhưng vẫn còn dữ liệu tiếp theo cần được hợp nhất, thì vùng đó cần được sao chép và tập hợp trường mới được cập nhật.

## Cập nhật các trường có thuộc tính bẩn

w:dirty là thuộc tính cấp trường sẽ chỉ làm mới trường bạn chỉ định khi tài liệu được mở. Nó yêu cầu MS Word chỉ làm mới trường này vào lần mở tài liệu tiếp theo. Bạn có thể sử dụng thuộc tính [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) để chỉ định xem có cập nhật các trường có thuộc tính dirty hay không. Khi giá trị của **UpdateDirtyFields** được đặt thành *true*, tất cả các trường có giá trị *true* cho thuộc tính [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) hoặc [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) sẽ được cập nhật khi tải tài liệu.

Ví dụ mã sau đây cho thấy cách cập nhật các trường có thuộc tính dirty:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Cập nhật thuộc tính LastSavedTime trước khi lưu

Bạn có thể sử dụng thuộc tính [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) để cập nhật thuộc tính tài liệu tích hợp tương ứng [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) khi lưu tài liệu.

Ví dụ mã sau đây cho biết cách cập nhật thuộc tính này:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
