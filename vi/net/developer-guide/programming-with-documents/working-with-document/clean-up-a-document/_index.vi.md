---
title: Dọn dẹp tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Dọn dẹp một tài liệu
linktitle: Dọn dẹp một tài liệu
description: "Xóa thông tin không sử dụng hoặc trùng lặp để giảm kích thước đầu ra và thời gian xử lý bằng C#. Xóa các kiểu không sử dụng, kiểu tích hợp không sử dụng, kiểu trùng lặp hoặc danh sách không sử dụng."
type: docs
weight: 30
url: /vi/net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Đôi khi bạn có thể cần loại bỏ những thông tin không sử dụng hoặc trùng lặp để giảm kích thước của tài liệu đầu ra và thời gian xử lý.

Mặc dù bạn có thể tìm và xóa dữ liệu không sử dụng, chẳng hạn như kiểu hoặc danh sách hoặc thông tin trùng lặp theo cách thủ công, nhưng sẽ thuận tiện hơn nhiều khi thực hiện việc này bằng cách sử dụng các tính năng và khả năng do Aspose.Words cung cấp.

Lớp [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) cho phép bạn chỉ định các tùy chọn để làm sạch tài liệu. Để xóa các kiểu trùng lặp hoặc chỉ các kiểu hoặc danh sách không sử dụng khỏi tài liệu, bạn có thể sử dụng phương pháp [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/).

## Xóa thông tin không sử dụng khỏi tài liệu

Bạn có thể sử dụng thuộc tính [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) và [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) để phát hiện và xóa các kiểu được đánh dấu là "không sử dụng".

Bạn có thể sử dụng thuộc tính [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) để phát hiện và xóa danh sách cũng như định nghĩa danh sách được đánh dấu là "không sử dụng".

Ví dụ về mã sau đây cho thấy cách chỉ xóa các kiểu không sử dụng khỏi tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Xóa thông tin trùng lặp khỏi tài liệu

Bạn cũng có thể sử dụng thuộc tính [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) để thay thế tất cả các kiểu trùng lặp bằng kiểu gốc và xóa các kiểu trùng lặp khỏi tài liệu.

Ví dụ mã sau đây cho thấy cách loại bỏ các kiểu trùng lặp khỏi tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
