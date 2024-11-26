---
title: Làm sạch một tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm Sạch Một Tài liệu
linktitle: Làm Sạch Một Tài liệu
description: "Loại bỏ thông tin không sử dụng hoặc trùng lặp để giảm kích thước đầu ra và thời gian xử lý. Xóa các kiểu không được sử dụng, các kiểu tích hợp không được sử dụng, các kiểu trùng lặp hoặc danh sách không được sử dụng bằng Java"
type: docs
weight: 30
url: /vi/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Thỉnh thoảng, bạn có thể cần loại bỏ thông tin không sử dụng hoặc trùng lặp để giảm kích thước của tài liệu đầu ra và thời gian xử lý.

Trong khi bạn có thể tìm thấy và loại bỏ dữ liệu không sử dụng, chẳng hạn như kiểu hoặc danh sách hoặc thông tin trùng lặp bằng cách thủ công, nó sẽ thuận tiện hơn để làm điều này bằng cách sử dụng các tính năng và khả năng được cung cấp bởi Aspose.Words.

Lớp [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) cho phép bạn xác định các tùy chọn để làm sạch tài liệu. Để xóa các kiểu trùng lặp hoặc chỉ là kiểu không dùng đến hay danh sách từ tài liệu, bạn có thể dùng [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) phương pháp.

## Loại bỏ thông tin không được sử dụng từ một tài liệu

Bạn có thể sử dụng thuộc tính [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) và [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) để phát hiện và xóa các kiểu được đánh dấu là "không được sử dụng".

Bạn có thể sử dụng thuộc tính [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) để phát hiện và xóa các danh sách và định nghĩa danh sách được đánh dấu là "không dùng.

Mã ví dụ sau cho thấy cách loại bỏ các kiểu đã không sử dụng khỏi một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Loại bỏ Thông tin Lặp lại từ một Tài liệu

Bạn cũng có thể sử dụng thuộc tính [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) để thay thế tất cả các kiểu trùng lặp bằng kiểu ban đầu và loại bỏ các kiểu trùng từ một tài liệu.

Ví dụ mã sau cho thấy cách loại bỏ các kiểu trùng lặp từ một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
