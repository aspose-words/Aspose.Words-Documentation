---
title: Dọn dẹp tài liệu trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Dọn dẹp một tài liệu
linktitle: Dọn dẹp một tài liệu
description: "Xóa thông tin không sử dụng hoặc trùng lặp để giảm kích thước đầu ra và thời gian xử lý bằng Python. Xóa các kiểu không sử dụng, kiểu tích hợp không sử dụng, kiểu trùng lặp hoặc danh sách không sử dụng."
type: docs
weight: 30
url: /vi/python-net/clean-up-a-document/
---

Đôi khi bạn có thể cần loại bỏ những thông tin không sử dụng hoặc trùng lặp để giảm kích thước của tài liệu đầu ra và thời gian xử lý.

Mặc dù bạn có thể tìm và xóa dữ liệu không sử dụng, chẳng hạn như kiểu hoặc danh sách hoặc thông tin trùng lặp theo cách thủ công, nhưng sẽ thuận tiện hơn nhiều khi thực hiện việc này bằng cách sử dụng các tính năng và khả năng do Aspose.Words cung cấp.

Lớp [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) cho phép bạn chỉ định các tùy chọn để làm sạch tài liệu. Để xóa các kiểu trùng lặp hoặc chỉ các kiểu hoặc danh sách không sử dụng khỏi tài liệu, bạn có thể sử dụng phương pháp [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## Xóa thông tin không sử dụng khỏi tài liệu

Bạn có thể sử dụng thuộc tính [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) và [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) để phát hiện và xóa các kiểu được đánh dấu là "không sử dụng".

Bạn có thể sử dụng thuộc tính [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) để phát hiện và xóa danh sách cũng như định nghĩa danh sách được đánh dấu là "không sử dụng".

Ví dụ về mã sau đây cho thấy cách chỉ xóa các kiểu không sử dụng khỏi tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Xóa thông tin trùng lặp khỏi tài liệu

Bạn cũng có thể sử dụng thuộc tính [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) để thay thế tất cả các kiểu trùng lặp bằng kiểu gốc và xóa các kiểu trùng lặp khỏi tài liệu.

Ví dụ mã sau đây cho thấy cách loại bỏ các kiểu trùng lặp khỏi tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}