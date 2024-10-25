---
title: Làm sạch Một Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Dọn Dẹp Tài liệu
linktitle: Dọn Dẹp Tài liệu
description: "Xóa thông tin không sử dụng hoặc trùng lặp để giảm kích thước đầu ra và thời gian xử lý bằng C++. Xóa các kiểu không sử dụng, các kiểu tích hợp không sử dụng, các kiểu trùng lặp hoặc danh sách không sử dụng."
type: docs
weight: 30
url: /vi/cpp/clean-up-a-document/
---

Đôi khi bạn có thể cần xóa thông tin không sử dụng hoặc trùng lặp để giảm kích thước của tài liệu đầu ra và thời gian xử lý.

Mặc dù bạn có thể tìm và xóa dữ liệu không sử dụng, chẳng hạn như kiểu hoặc danh sách hoặc thông tin trùng lặp theo cách thủ công, nhưng sẽ thuận tiện hơn nhiều khi thực hiện việc này bằng cách sử dụng các tính năng và khả năng do Aspose.Words cung cấp.

Lớp [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) cho phép bạn chỉ định các tùy chọn để làm sạch tài liệu. Để xóa các kiểu trùng lặp hoặc chỉ các kiểu hoặc danh sách không sử dụng khỏi tài liệu, bạn có thể sử dụng phương thức [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Xóa Thông tin Không Sử dụng Khỏi Tài liệu

Bạn có thể sử dụng thuộc tính [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) và [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) để phát hiện và xóa các kiểu được đánh dấu là "không sử dụng".

Bạn có thể sử dụng thuộc tính [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) để phát hiện và xóa danh sách và định nghĩa danh sách được đánh dấu là "không sử dụng".

Ví dụ mã sau đây cho thấy cách chỉ xóa các kiểu không sử dụng khỏi tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Xóa Thông tin Trùng lặp khỏi Tài liệu

Bạn cũng có thể sử dụng thuộc tính [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) để thay thế tất cả các kiểu trùng lặp bằng kiểu ban đầu và xóa các bản sao khỏi tài liệu.

Ví dụ mã sau đây cho thấy cách xóa các kiểu trùng lặp khỏi tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
