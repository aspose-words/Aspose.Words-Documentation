---
title: Điều hướng bằng con trỏ trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Điều hướng bằng con trỏ
linktitle: Điều hướng bằng con trỏ
description: "Điều hướng giữa các nút khác nhau trong tài liệu, chẳng hạn như đoạn văn, dấu trang hoặc ký tự cụ thể bằng Python."
type: docs
weight: 10
url: /vi/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Trong khi làm việc với một tài liệu, ngay cả khi nó ngắn hay dài, bạn sẽ cần điều hướng qua tài liệu của mình. Điều hướng bằng con trỏ ảo thể hiện khả năng điều hướng giữa các nút khác nhau trong tài liệu.

Trong một tài liệu ngắn, việc di chuyển trong tài liệu rất đơn giản vì bạn có thể di chuyển điểm chèn thậm chí bằng cách sử dụng các phím mũi tên của bàn phím hoặc bằng cách nhấp chuột để định vị điểm chèn ở bất cứ đâu bạn muốn. Nhưng một khi bạn có một tài liệu lớn có nhiều trang thì những kỹ thuật cơ bản này sẽ không đủ.

Bài viết này giải thích cách di chuyển trong tài liệu và điều hướng bằng con trỏ ảo đến các phần khác nhau của tài liệu.

## Phát hiện vị trí con trỏ hiện tại

Trước khi bắt đầu quá trình điều hướng qua tài liệu của bạn, bạn sẽ cần lấy nút hiện được chọn. Bạn có thể lấy vị trí chính xác của con trỏ tại nút đã chọn bằng cách sử dụng thuộc tính [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Ngoài ra, thay vì lấy nút hiện tại, bạn có thể lấy đoạn hiện được chọn hoặc phần hiện được chọn bằng cách sử dụng thuộc tính [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) và [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Mọi thao tác chèn bạn thực hiện bằng [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sẽ được chèn trước [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Khi đoạn văn hiện tại trống hoặc con trỏ được đặt ngay trước cuối đoạn văn, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) trả về Không có.

## Phương pháp điều hướng trong tài liệu

Khi bạn chỉnh sửa văn bản, điều quan trọng là phải biết cách điều hướng tài liệu và vị trí chính xác để di chuyển trong đó. Aspose.Words cho phép bạn di chuyển trong tài liệu và điều hướng đến các phần và phần khác nhau của nó - điều này tương tự như chức năng của Ngăn Điều hướng trong Microsoft Word để đi đến một trang hoặc tiêu đề trong tài liệu Word mà không cần cuộn.

Phương pháp chính là có thể di chuyển vị trí con trỏ đến một nút cụ thể trong tài liệu của bạn, bạn có thể đạt được điều này bằng cách sử dụng phương pháp [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

Ví dụ về mã sau đây cho thấy cách di chuyển [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sang các nút khác nhau trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Nhưng bên cạnh phương pháp [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) cơ bản, còn có những phương pháp cụ thể hơn.

### Điều hướng đến phần đầu hoặc phần cuối của tài liệu

Bạn có thể đi đến đầu hoặc cuối tài liệu của mình bằng phương pháp [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) và [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

Ví dụ mã sau đây cho thấy cách di chuyển vị trí con trỏ đến đầu hoặc cuối tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Điều hướng bằng dấu trang

Bạn có thể đánh dấu một địa điểm mà bạn muốn tìm và di chuyển đến đó một cách dễ dàng. Bạn có thể chèn bao nhiêu dấu trang vào tài liệu của mình tùy thích, sau đó điều hướng qua chúng bằng cách xác định các dấu trang có tên duy nhất. Bạn có thể di chuyển đến dấu trang bằng cách sử dụng phương pháp [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

Các ví dụ mã sau đây cho thấy cách di chuyển vị trí con trỏ tới dấu trang:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Điều hướng đến các ô trong bảng

Bạn có thể di chuyển đến một ô trong bảng bằng cách sử dụng phương pháp [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Phương pháp này sẽ cho phép bạn điều hướng con trỏ vào bất kỳ ô nào trong một bảng cụ thể. Ngoài ra, bạn có thể chỉ định một chỉ mục để di chuyển con trỏ đến bất kỳ vị trí hoặc ký tự được chỉ định nào trong một ô trong phương thức [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

Ví dụ mã sau đây cho thấy cách di chuyển vị trí con trỏ đến một ô trong bảng được chỉ định:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Điều hướng đến một trường

Bạn có thể di chuyển đến một trường cụ thể trong tài liệu của mình bằng cách sử dụng phương pháp [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Ngoài ra, bạn có thể di chuyển đến trường hợp nhất cụ thể bằng cách sử dụng phương pháp [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

Ví dụ mã sau đây cho biết cách di chuyển con trỏ của trình tạo tài liệu đến một trường cụ thể:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Điều hướng đến Đầu trang hoặc Chân trang

Bạn có thể di chuyển đến đầu đầu trang hoặc chân trang bằng cách sử dụng phương pháp [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)

Ví dụ về mã sau đây cho biết cách di chuyển con trỏ của trình tạo tài liệu đến đầu trang hoặc chân trang của tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Điều hướng đến một Phần hoặc Đoạn

Bạn có thể di chuyển đến một phần hoặc đoạn cụ thể bằng cách sử dụng phương pháp [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) hoặc [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). Ngoài ra, bạn có thể chỉ định một chỉ mục để di chuyển con trỏ đến bất kỳ vị trí nào hoặc một ký tự được chỉ định trong một đoạn văn trong phương thức [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

Ví dụ về mã sau đây cho biết cách di chuyển đến một phần cụ thể và một đoạn văn cụ thể trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
