---
title: Làm việc với Danh sách trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với danh sách
linktitle: Làm việc với danh sách
description: "Tạo, chỉ định định dạng và khởi động lại danh sách trong tài liệu bằng Python."
type: docs
weight: 200
url: /vi/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Danh sách trong tài liệu Microsoft Word là tập hợp các thuộc tính định dạng danh sách. Danh sách có thể được sử dụng trong tài liệu của bạn để định dạng, sắp xếp và nhấn mạnh văn bản. Danh sách là một cách tuyệt vời để sắp xếp dữ liệu trong tài liệu và giúp người đọc hiểu các điểm chính dễ dàng hơn

Mỗi danh sách có thể có tối đa 9 cấp độ và các thuộc tính định dạng, chẳng hạn như kiểu số, giá trị bắt đầu, thụt lề, vị trí tab, v.v. được xác định riêng cho từng cấp độ.

Trong Aspose.Words, làm việc với danh sách được biểu thị bằng mô-đun [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/). Tuy nhiên, đối tượng [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) luôn thuộc về bộ sưu tập [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/).

Chủ đề này mô tả cách làm việc theo chương trình với các danh sách bằng Aspose.Words

## Tạo danh sách bằng cách áp dụng định dạng danh sách

Aspose.Words cho phép tạo danh sách dễ dàng bằng cách áp dụng định dạng danh sách. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) cung cấp thuộc tính [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) trả về đối tượng [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/). Đối tượng này có một số phương thức để bắt đầu và kết thúc danh sách cũng như tăng/giảm mức thụt lề. Có hai loại danh sách chung trong Microsoft Word: có dấu đầu dòng và được đánh số.

- Để bắt đầu danh sách có dấu đầu dòng, hãy gọi [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- Để bắt đầu một danh sách đánh số, hãy gọi [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Dấu đầu dòng hoặc số và định dạng được thêm vào đoạn hiện tại và tất cả các đoạn tiếp theo được tạo bằng [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) cho đến khi [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) được gọi để dừng định dạng danh sách dấu đầu dòng.

Trong tài liệu Word, danh sách có thể bao gồm tối đa chín cấp độ. Định dạng danh sách cho từng cấp chỉ định dấu đầu dòng hoặc số nào được sử dụng, thụt lề trái, khoảng cách giữa dấu đầu dòng và văn bản, v.v. Các phương pháp sau đây thay đổi cấp độ danh sách và áp dụng các thuộc tính định dạng của cấp độ mới:

- Để tăng cấp danh sách của đoạn văn hiện tại lên một cấp, hãy gọi [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- Để giảm cấp độ danh sách của đoạn văn hiện tại xuống một cấp, hãy gọi [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Các phương pháp này thay đổi cấp độ danh sách và áp dụng các thuộc tính định dạng của cấp độ mới.

{{% alert color="primary" %}}

Bạn cũng có thể sử dụng thuộc tính [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) để lấy hoặc đặt cấp độ danh sách cho đoạn văn. Các cấp độ danh sách được đánh số từ 0 đến 8.

{{% /alert %}}

Ví dụ dưới đây cho thấy cách xây dựng danh sách đa cấp.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Chỉ định định dạng cho cấp độ danh sách

Các đối tượng cấp danh sách được tạo tự động khi danh sách được tạo. Sử dụng các thuộc tính và phương thức của lớp [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) để kiểm soát việc định dạng các cấp độ riêng lẻ của danh sách.

## Danh sách khởi động lại cho từng phần

Bạn có thể khởi động lại danh sách cho từng phần bằng thuộc tính [thuộc tính is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/). Lưu ý rằng tùy chọn này chỉ được hỗ trợ ở các định dạng tài liệu RTF, DOC và DOCX. Tùy chọn này sẽ chỉ được ghi vào DOCX nếu OoxmlCompliance cao hơn Ecma376.

Ví dụ về mã sau đây cho biết cách tạo danh sách và khởi động lại danh sách đó cho từng phần:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
