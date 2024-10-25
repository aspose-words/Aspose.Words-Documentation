---
title: Làm Việc với Danh sách trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Danh Sách
linktitle: Làm Việc Với Danh Sách
description: "Giới thiệu về tính năng định dạng đánh số trong Aspose.Words cho C++."
type: docs
weight: 200
url: /vi/cpp/working-with-lists/
---

Danh sách trong tài liệu Microsoft Word là một tập hợp các thuộc tính định dạng danh sách. Danh sách có thể được sử dụng trong tài liệu của bạn để định dạng, sắp xếp và nhấn mạnh văn bản. Danh sách là một cách tuyệt vời để sắp xếp dữ liệu trong tài liệu và chúng giúp người đọc hiểu các điểm chính dễ dàng hơn.

Mỗi danh sách có thể có tối đa 9 cấp độ và thuộc tính định dạng, chẳng hạn như kiểu số, giá trị bắt đầu, thụt lề, vị trí tab, v. v. được xác định riêng cho từng cấp độ.

Trong Aspose.Words, làm việc với danh sách được thể hiện bằng không gian tên [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Tuy nhiên, đối tượng [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) luôn thuộc bộ sưu tập [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

Chủ đề này mô tả cách làm việc theo chương trình với danh sách bằng Aspose.Words.

## Chỉ Định Định dạng Cho Cấp Danh sách

Các đối tượng cấp danh sách được tạo tự động khi danh sách được tạo. Sử dụng các thuộc tính và phương thức của lớp [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) để kiểm soát định dạng các cấp độ riêng lẻ của danh sách.

## Danh sách khởi động lại cho Từng Phần

Bạn có thể khởi động lại danh sách cho từng phần bằng thuộc tính [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Lưu ý rằng tùy chọn này chỉ được hỗ trợ ở các định dạng tài liệu RTF, DOC và DOCX. Tùy chọn này sẽ chỉ được ghi vào DOCX nếu OoxmlCompliance cao hơn Thì Ecma376.

Ví dụ mã sau đây cho thấy cách tạo danh sách và khởi động lại nó cho mỗi phần:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
