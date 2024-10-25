---
title: Điều hướng với Con Trỏ trong C++
second_title: Aspose.Words cho C++
articleTitle: Điều hướng với Con Trỏ
linktitle: Điều hướng với Con Trỏ
description: "Điều hướng giữa các nút khác nhau trong tài liệu, chẳng hạn như đoạn văn, dấu trang hoặc một ký tự cụ thể bằng C++."
type: docs
weight: 10
url: /vi/cpp/navigation-with-cursor/
---

Trong khi làm việc với một tài liệu, ngay cả khi nó là một tài liệu ngắn hoặc dài, bạn sẽ cần phải điều hướng qua tài liệu của mình. Điều hướng bằng con trỏ ảo thể hiện khả năng điều hướng giữa các nút khác nhau trong tài liệu.

Trong một tài liệu ngắn, di chuyển xung quanh trong một tài liệu rất đơn giản vì bạn có thể di chuyển điểm chèn ngay cả bằng cách sử dụng các phím mũi tên của bàn phím hoặc bằng cách nhấp chuột để xác định vị trí điểm chèn bất cứ nơi nào bạn muốn. Nhưng một khi bạn có một tài liệu lớn có nhiều trang, những kỹ thuật cơ bản này sẽ không đủ.

Bài viết này giải thích cách di chuyển trong tài liệu và điều hướng bằng con trỏ ảo đến các phần khác nhau của nó.

## Phát Hiện Vị Trí Con Trỏ Hiện Tại

Trước khi bắt đầu quá trình điều hướng qua tài liệu của bạn, bạn sẽ cần lấy nút hiện đang được chọn. Bạn có thể lấy vị trí chính xác của con trỏ tại một nút đã chọn bằng cách sử dụng thuộc tính [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Ngoài ra, thay vì lấy nút hiện tại, bạn có thể lấy đoạn hiện được chọn hoặc phần hiện được chọn bằng cách sử dụng thuộc tính [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) và [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Bất kỳ thao tác chèn nào bạn thực hiện bằng [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) sẽ được chèn trước [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Khi đoạn hiện tại trống hoặc con trỏ được định vị ngay trước khi kết thúc đoạn, **CurrentNode** trả về nullptr.

## Điều Hướng Các Phương thức Trong Tài liệu

Khi bạn đang chỉnh sửa văn bản, điều quan trọng là phải biết cách điều hướng tài liệu của bạn và nơi chính xác để di chuyển trong đó. Aspose.Words cho phép bạn di chuyển xung quanh trong một tài liệu và điều hướng đến các phần và phần khác nhau của nó – điều này tương tự như chức năng của Ngăn Điều hướng trong Microsoft Word để chuyển đến một trang hoặc tiêu đề trong Tài liệu Word mà không cần cuộn.

Phương pháp chính là có thể di chuyển vị trí con trỏ đến một nút cụ thể trong tài liệu của bạn, bạn có thể đạt được điều này bằng cách sử dụng phương thức [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

Ví dụ mã sau đây cho thấy cách di chuyển **DocumentBuilder** đến các nút khác nhau trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Nhưng bên cạnh phương pháp **MoveTo** cơ bản, còn có những phương pháp cụ thể hơn.

### Điều hướng Đến Đầu Hoặc Cuối Tài liệu

Bạn có thể đi đến đầu hoặc cuối tài liệu của mình bằng các phương thức [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) và [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

Ví dụ mã sau đây cho thấy cách di chuyển vị trí con trỏ đến đầu hoặc cuối tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Điều Hướng Với Dấu Trang

Bạn có thể đánh dấu một nơi mà bạn muốn tìm và di chuyển đến đó một cách dễ dàng. Bạn có thể chèn bao nhiêu dấu trang vào tài liệu của mình tùy thích, sau đó điều hướng qua chúng bằng cách xác định các dấu trang có tên duy nhất. Bạn có thể di chuyển đến dấu trang bằng cách sử dụng phương thức [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

Các ví dụ mã sau đây cho thấy cách di chuyển vị trí con trỏ đến dấu trang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Điều hướng Đến Các Ô Bảng

Bạn có thể di chuyển đến một ô bảng bằng cách sử dụng phương thức [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Phương pháp này sẽ cho phép bạn điều hướng con trỏ của mình vào bất kỳ ô nào trong một bảng cụ thể. Ngoài ra, bạn có thể chỉ định một chỉ mục để di chuyển con trỏ đến bất kỳ vị trí hoặc ký tự được chỉ định nào trong một ô trong phương thức **MoveToCell**.

Ví dụ mã sau đây cho thấy cách di chuyển vị trí con trỏ đến một ô bảng được chỉ định:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Điều hướng Đến Một Lĩnh vực

Bạn có thể di chuyển đến một trường cụ thể trong tài liệu của mình bằng cách sử dụng phương thức [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Ngoài ra, bạn có thể di chuyển đến một trường hợp nhất cụ thể bằng cách sử dụng phương thức [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

Ví dụ mã sau đây cho thấy cách di chuyển con trỏ trình tạo tài liệu sang một trường cụ thể:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Điều hướng Đến Tiêu đề hoặc Chân Trang

Bạn có thể di chuyển đến đầu tiêu đề hoặc chân trang bằng cách sử dụng phương thức [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

Ví dụ mã sau đây cho thấy cách di chuyển con trỏ trình tạo tài liệu sang tiêu đề hoặc chân trang tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Điều hướng Đến Một Phần hoặc Đoạn văn

Bạn có thể chuyển đến một phần hoặc đoạn cụ thể bằng cách sử dụng các phương thức [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) hoặc [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Ngoài ra, bạn có thể chỉ định một chỉ mục để di chuyển con trỏ đến bất kỳ vị trí nào hoặc một ký tự được chỉ định trong một đoạn trong phương thức **MoveToParagraph**.

Ví dụ mã sau đây cho thấy cách di chuyển đến một phần cụ thể và một đoạn cụ thể trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
