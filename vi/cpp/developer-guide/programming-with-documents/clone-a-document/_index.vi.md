---
title: Sao chép Một Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Sao chép Tài liệu
linktitle: Sao chép Tài liệu
type: docs
description: "Sao chép một tài liệu để có được bản sao giống hệt của nó bằng C++. Khi tạo một bản sao, các nút và thuộc tính của tài liệu gốc được nhân bản."
weight: 70
url: /vi/cpp/clone-a-document/
---

Nhân bản tài liệu là quá trình tạo một bản sao giống hệt của tài liệu gốc, có thể cải thiện hiệu suất và cứu bạn khỏi rò rỉ bộ nhớ tiềm ẩn.

Bài viết này sẽ giải thích các trường hợp sử dụng chính của việc nhân bản tài liệu và cách tạo bản sao tài liệu bằng Aspose.Words.

## Hoạt động Với Các Tài liệu Nhân Bản

Thao tác sao chép cho phép bạn thực hiện quá trình tạo tài liệu nhanh hơn vì bạn sẽ không cần tải và phân tích tài liệu từ tệp mỗi lần.

Sau khi tạo một bản sao của tài liệu của bạn, bạn sẽ có thể chỉnh sửa nó và thực hiện các thao tác khác nhau trên đó, ví dụ, so sánh nó với tài liệu gốc, nối thêm hoặc chèn nó vào một tài liệu khác. Bạn cũng có thể sửa đổi các phần tử nhân bản hoặc nội dung của chúng trước khi chèn chúng vào một tài liệu khác.

## Tạo Một Bản Sao Tài liệu

Aspose.Words cho phép bạn sao chép một tài liệu bằng phương thức [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) thực hiện một bản sao sâu của tài liệu và trả về nó. Nói cách khác, nó sẽ nhận được một bản sao đầy đủ của DOM. Phương thức `Clone` tăng tốc độ tạo tài liệu và bạn chỉ cần một dòng mã để lấy bản sao tài liệu của mình.

Nhân bản tạo ra một tài liệu mới có cùng nội dung với bản gốc, nhưng với một bản sao duy nhất của mỗi tài liệu gốc [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node). Bạn cũng có thể áp dụng thao tác sao chép vào nút tài liệu bằng cách sử dụng phương thức node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/), cho phép bạn sao chép các nút tài liệu tổng hợp có và không có các nút con của chúng.

{{% alert color="primary" %}}

Lưu ý rằng khi áp dụng phương pháp nhân bản, tất cả các thuộc tính tài liệu sẽ được nhân bản.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách sao chép tài liệu và tạo bản sao của một phần trong tài liệu đó:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
