---
title: Cập Nhật Các Trường trong C++
second_title: Aspose.Words cho C++
articleTitle: Cập Nhật Các Trường
linktitle: Cập Nhật Các Trường
description: "Tìm hiểu cách cập nhật các trường trong C++. Cập nhật các trường theo chương trình hoặc sử dụng cập nhật trường tự động bằng C++ API."
type: docs
weight: 30
url: /vi/cpp/update-fields/
---

Thông thường, một trường được chèn vào Microsoft Word đã chứa giá trị cập nhật. Ví dụ: nếu trường là công thức hoặc số trang, nó sẽ chứa giá trị được tính toán chính xác cho phiên bản đã cho của tài liệu. Nhưng nếu bạn có một ứng dụng tạo hoặc sửa đổi tài liệu với các trường như hợp nhất hai tài liệu hoặc điền dữ liệu, thì lý tưởng nhất là tất cả các trường phải được cập nhật để tài liệu hữu ích.

## Cách Cập Nhật Các Trường

Khi một tài liệu được tải, Aspose.Words bắt chước hành vi của Microsoft Word với tùy chọn tự động cập nhật các trường được tắt. Hành vi có thể được tóm tắt như sau:

- khi bạn mở / lưu tài liệu, các trường vẫn còn nguyên vẹn
- bạn có thể cập nhật rõ ràng tất cả các trường trong tài liệu, ví dụ: xây dựng lại `TOC`, khi bạn cần
- khi bạn kết xuất đến PDF hoặc XPS các trường liên quan đến đánh số trang trong tiêu đề / chân trang được cập nhật
- khi bạn thực thi mail merge tất cả các trường được cập nhật tự động

### Cập Nhật Các Trường Theo Chương Trình

Để cập nhật rõ ràng các trường trong toàn bộ tài liệu, chỉ cần gọi phương thức [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). Để cập nhật các trường có trong một phần của tài liệu, hãy lấy đối tượng [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) và gọi phương thức [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). Trong Aspose.Words, bạn có thể lấy **Range** cho bất kỳ nút nào trong cây tài liệu, chẳng hạn như [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), v. v. sử dụng thuộc tính [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Bạn có thể cập nhật kết quả của một trường bằng cách gọi phương thức [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Tự Động Cập Nhật Các Trường Liên Quan Đến Trang Trong Quá Trình Kết Xuất

Khi bạn thực hiện chuyển đổi tài liệu sang định dạng trang cố định, ví dụ: thành PDF hoặc XPS, thì Aspose.Words sẽ tự động cập nhật các trường liên quan đến bố cục trang `PAGE`, `PAGEREF` được tìm thấy trong tiêu đề/chân trang của tài liệu. Hành vi này bắt chước hành vi của Microsoft Word khi in tài liệu.

Nếu bạn muốn cập nhật tất cả các trường khác trong tài liệu, thì bạn cần gọi [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) trước khi hiển thị tài liệu.

Ví dụ mã sau đây cho thấy cách cập nhật tất cả các trường trước khi hiển thị tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Cập Nhật Trường Tự Động Trong Mail Merge

Khi bạn thực thi mail merge, tất cả các trường trong tài liệu sẽ được cập nhật tự động. Điều này là do mail merge là trường hợp cập nhật trường. Chương trình gặp trường mail merge và cần cập nhật kết quả của nó, bao gồm việc lấy giá trị từ nguồn dữ liệu và chèn nó vào trường. Logic tất nhiên phức tạp hơn, ví dụ, khi kết thúc vùng tài liệu/mail merge đạt được nhưng vẫn còn dữ liệu tiếp theo được hợp nhất, sau đó vùng cần được sao chép và tập hợp các trường mới được cập nhật.

## Cập Nhật Thuộc Tính LastSavedTime Trước Khi Lưu

Bạn có thể sử dụng thuộc tính [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) cho dù cập nhật thuộc tính tài liệu tích hợp tương ứng [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) khi lưu tài liệu.

Ví dụ mã sau đây cho thấy cách cập nhật thuộc tính này:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


