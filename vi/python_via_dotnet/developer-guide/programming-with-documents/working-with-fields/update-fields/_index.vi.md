---
title: Đang cập nhật các trường Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Cập nhật trường
linktitle: Cập nhật trường
description: "Cập nhật các trường trong tài liệu theo nhiều cách khác nhau và sử dụng tùy chọn khác trong Python."
type: docs
weight: 30
url: /vi/python-net/update-fields/
---

Thông thường, trường được chèn vào Microsoft Word đã chứa giá trị cập nhật. Ví dụ: nếu trường là công thức hoặc số trang, nó sẽ chứa giá trị được tính toán chính xác cho phiên bản đã cho của tài liệu. Nhưng nếu bạn có một ứng dụng tạo hoặc sửa đổi tài liệu với các trường như hợp nhất hai tài liệu hoặc điền dữ liệu vào đó, thì lý tưởng nhất là tất cả các trường phải được cập nhật để tài liệu trở nên hữu ích.

## Cách cập nhật trường

Khi một tài liệu được tải, Aspose.Words bắt chước hành vi của Microsoft Word với tùy chọn tự động cập nhật các trường bị tắt. Hành vi này có thể được tóm tắt như sau:

- khi bạn mở/lưu tài liệu, các trường vẫn còn nguyên
- bạn có thể cập nhật rõ ràng tất cả các trường trong tài liệu (ví dụ: xây dựng lại TOC) khi bạn cần
- khi bạn in/kết xuất sang PDF hoặc XPS, các trường liên quan đến đánh số trang ở đầu trang/chân trang sẽ được cập nhật
- khi bạn thực thi mail merge, tất cả các trường sẽ được cập nhật tự động

### Cập nhật các trường theo chương trình

Để cập nhật rõ ràng các trường trong toàn bộ tài liệu, chỉ cần gọi [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Để cập nhật các trường có trong một phần của tài liệu, hãy lấy đối tượng [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) và gọi phương thức [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/). Trong Aspose.Words, bạn có thể lấy **Range** cho bất kỳ nút nào trong cây tài liệu, chẳng hạn như [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), v.v. bằng thuộc tính [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/). Bạn có thể cập nhật kết quả của một trường bằng cách gọi phương thức [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/).

### Tự động cập nhật các trường liên quan đến trang trong khi hiển thị

Khi bạn thực hiện chuyển đổi tài liệu sang định dạng trang cố định, ví dụ: sang PDF hoặc XPS, thì Aspose.Words sẽ tự động cập nhật các trường liên quan đến bố cục trang `PAGE`, `PAGEREF` được tìm thấy trong đầu trang/chân trang của tài liệu. Hành vi này bắt chước hành vi của Microsoft Word khi in tài liệu.

Nếu bạn muốn cập nhật tất cả các trường khác trong tài liệu thì bạn cần gọi [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) trước khi hiển thị tài liệu.

Ví dụ mã sau đây cho biết cách cập nhật tất cả các trường trước khi hiển thị tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Cập nhật trường tự động trong Mail Merge

Khi bạn thực thi mail merge, tất cả các trường trong tài liệu sẽ được cập nhật tự động. Điều này là do mail merge là một trường hợp cập nhật trường. Chương trình gặp trường mail merge và cần cập nhật kết quả của nó, bao gồm việc lấy giá trị từ nguồn dữ liệu và chèn nó vào trường. Tất nhiên, logic phức tạp hơn, chẳng hạn như khi đã đến cuối vùng tài liệu/mail merge nhưng vẫn còn dữ liệu tiếp theo cần được hợp nhất, thì vùng đó cần được sao chép và tập hợp trường mới được cập nhật.

## Cập nhật các trường có thuộc tính bẩn

w:dirty là thuộc tính cấp trường sẽ chỉ làm mới trường bạn chỉ định khi tài liệu được mở. Nó yêu cầu MS Word chỉ làm mới trường này vào lần mở tài liệu tiếp theo. Bạn có thể sử dụng thuộc tính [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) để chỉ định xem có cập nhật các trường có thuộc tính dirty hay không. Khi giá trị của **update_dirty_fields** được đặt thành `True`, tất cả các trường có giá trị `True` cho thuộc tính [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) hoặc [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) sẽ được cập nhật khi tải tài liệu.

Ví dụ mã sau đây cho thấy cách cập nhật các trường có thuộc tính dirty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Cập nhật thuộc tính LastSavedTime trước khi lưu

Bạn có thể sử dụng thuộc tính [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) để cập nhật thuộc tính tài liệu tích hợp tương ứng [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) khi lưu tài liệu.

Ví dụ mã sau đây cho biết cách cập nhật thuộc tính này:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

