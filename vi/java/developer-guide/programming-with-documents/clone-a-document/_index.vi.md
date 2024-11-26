---
title: Sao chép một tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: Sao chép một tài liệu
linktitle: Sao chép một tài liệu
type: docs
description: "Sao chép một tài liệu để có bản sao giống hệt của nó. Khi tạo bản sao các node và thuộc tính của tài liệu gốc được nhồi bằng cách sử dụng Java."
weight: 70
url: /vi/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Sao chép một tài liệu là quá trình tạo ra một bản sao giống hệt của một tài liệu gốc, điều này có thể cải thiện hiệu suất và giúp bạn tránh các rò rỉ bộ nhớ tiềm năng.

Bài viết này sẽ giải thích về trường hợp sử dụng chính của việc sao chép một tài liệu và cách tạo ra một bản sao tài liệu bằng Aspose.Words.

## Thực hiện các thao tác với việc sao chép tài liệu

Bước vận hành nhân bản cho phép bạn làm cho quá trình tạo tài liệu nhanh hơn vì bạn sẽ không cần tải và phân tích một tài liệu từ một tập tin mỗi lần.

Sau khi tạo ra một bản sao của tài liệu, bạn sẽ có thể chỉnh sửa nó và thực hiện các hoạt động khác nhau trên nó, ví dụ như so sánh với tài liệu gốc, ghép nối hoặc chèn nó vào một tài liệu khác. Bạn cũng có thể sửa đổi các yếu tố đã sao chép hoặc nội dung của chúng trước khi chèn chúng vào một tài liệu khác.

## Tạo bản sao của Tài liệu

Aspose.Words cho phép bạn sao chép một tài liệu bằng cách sử dụng phương pháp [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) thực hiện sao chép sâu của tài liệu và trả lại nó. Nói cách khác, nó sẽ nhận được bản sao đầy đủ của DOM. Phương pháp `Clone` giúp tăng tốc độ tạo ra các tài liệu, và bạn chỉ cần một dòng mã để có được bản sao của tài liệu.

Sao chép tạo ra một văn bản mới với cùng nội dung của tài liệu gốc nhưng có mỗi bản sao độc nhất của mỗi phần trong tài liệu gốc [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). Bạn cũng có thể áp dụng việc thực hiện hoạt động nhân bản cho một nút tài liệu bằng cách sử dụng phương thức node [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean), cho phép bạn sao chép các nút tài liệu phức tạp với hoặc không có các nút con của chúng.

{{% alert color="primary" %}}

Lưu ý khi áp dụng phương pháp nhân bản, tất cả các thuộc tính tài liệu sẽ được nhân bản.

{{% /alert %}}

Ví dụ mã sau cho thấy cách sao chép một tài liệu và tạo bản sao của một phần trong tài liệu đó:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
