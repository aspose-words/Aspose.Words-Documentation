---
title: Theo Dõi Các Thay đổi Trong Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Theo Dõi Các Thay đổi Trong Tài liệu
linktitle: Theo Dõi Các Thay đổi Trong Tài liệu
description: "Theo dõi các thay đổi đối với nội dung và định dạng do bạn hoặc người khác thực hiện bằng C++. Truy cập các bản sửa đổi riêng lẻ trong một tài liệu và áp dụng các thuộc tính khác nhau cho chúng."
type: docs
weight: 270
url: /vi/cpp/track-changes-in-a-document/
---

Chức năng của các thay đổi theo dõi, còn được gọi là xem xét, cho phép bạn theo dõi các thay đổi đối với nội dung và định dạng do bạn hoặc người dùng khác thực hiện. Tính năng thay đổi bản nhạc này với Aspose.Words hỗ trợ thay đổi bản nhạc trong Microsoft Word. Với chức năng này, bạn có thể truy cập các bản sửa đổi riêng lẻ trong tài liệu của mình và áp dụng các thuộc tính khác nhau cho chúng.

Khi bạn bật tính năng thay đổi bản nhạc, tất cả các phần tử được chèn, xóa và sửa đổi của tài liệu sẽ được đánh dấu trực quan bằng thông tin về ai, khi nào và những gì đã được thay đổi. Các đối tượng mang thông tin về những gì đã thay đổi được gọi là "thay đổi theo dõi". Ví dụ: giả sử rằng bạn muốn xem lại tài liệu và thực hiện các thay đổi quan trọng – điều này có thể có nghĩa là bạn cần phải sửa đổi. Ngoài ra, bạn có thể cần chèn nhận xét để thảo luận về một số thay đổi. Đó là nơi theo dõi các thay đổi trong tài liệu đến.

Bài viết này giải thích cách quản lý và theo dõi các thay đổi được tạo bởi nhiều người đánh giá trên cùng một tài liệu, cũng như các thuộc tính để theo dõi các thay đổi.

{{% alert color="primary" %}}

Lưu ý rằng tính năng nhận xét trong Aspose.Words, cũng như trong Microsoft Word, có thể được liên kết với các thay đổi theo dõi. Tuy nhiên, hãy nhớ rằng các nhận xét hoàn toàn độc lập với các thay đổi theo dõi.

{{% /alert %}}

## Bản Sửa Đổi là gì

Trước khi đi sâu vào các bản sửa đổi, chúng ta hãy giải thích ý nghĩa của các bản sửa đổi. A [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) là một thay đổi xảy ra trong một nút của tài liệu trong khi một nhóm sửa đổi, được biểu thị bằng lớp [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/), là một nhóm các sửa đổi tuần tự xảy ra trong nhiều nút của tài liệu. Về cơ bản, sửa đổi là một công cụ để theo dõi các thay đổi.

Các bản sửa đổi được sử dụng trong tính năng thay đổi theo dõi và trong tính năng so sánh tài liệu, nơi các bản sửa đổi xuất hiện do so sánh. Vì vậy, các sửa đổi trong tính năng thay đổi theo dõi hiển thị bởi ai và những gì đã được thay đổi.

{{% alert color="primary" %}}

Lưu ý rằng Microsoft Word không cho phép bạn xem các bản sửa đổi riêng lẻ, nó chỉ cho phép bạn xem các bản sửa đổi tuần tự dưới dạng một thực thể duy nhất. Nhưng Aspose.Words giải quyết giới hạn này với lớp **RevisionGroup**.

{{% /alert %}}

Aspose.Words hỗ trợ các loại sửa đổi khác nhau, cũng như trong Microsoft Word, chẳng hạn như Chèn, Xóa, FormatChange, StyleDefinitionChange và Di chuyển. Tất cả các loại sửa đổi được biểu diễn bằng cách liệt kê [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Lưu ý rằng các bản sửa đổi có kết quả tương tự như Microsoft Word nhưng Aspose.Words không phát hiện định dạng trong quá trình thay đổi theo dõi.

{{% /alert %}}

## Bắt đầu Và Ngừng Theo Dõi Các Thay Đổi

Chỉnh sửa tài liệu thường không được tính là bản sửa đổi cho đến khi bạn bắt đầu theo dõi nó. Aspose.Words cho phép bạn tự động theo dõi tất cả các thay đổi trong tài liệu của mình bằng các bước đơn giản. Bạn có thể dễ dàng bắt đầu quá trình theo dõi các thay đổi bằng cách sử dụng phương thức [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/). Nếu bạn cần dừng quá trình theo dõi các thay đổi để bất kỳ chỉnh sửa nào trong tương lai không được coi là sửa đổi, bạn sẽ cần sử dụng phương thức [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Lưu ý rằng phương thức `StartTrackingRevisions` không thay đổi trạng thái của thuộc tính [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) và không sử dụng giá trị của nó cho mục đích theo dõi sửa đổi. Ngoài ra, nếu một nút được di chuyển từ vị trí này sang vị trí khác bên trong tài liệu được theo dõi, thì các bản sửa đổi di chuyển sẽ được tạo, bao gồm di chuyển từ và di chuyển đến phạm vi.

{{% /alert %}}

Khi kết thúc quá trình thay đổi theo dõi trong tài liệu của bạn, bạn sẽ có khả năng chấp nhận tất cả các bản sửa đổi hoặc từ chối chúng để hoàn nguyên tài liệu về dạng ban đầu. Điều này có thể đạt được bằng cách sử dụng phương pháp [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) hoặc [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/). Ngoài ra, bạn có thể chấp nhận hoặc từ chối từng bản sửa đổi riêng biệt bằng cách sử dụng phương thức [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) hoặc [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/).

Tất cả các thay đổi sẽ được theo dõi cho một lần lặp lại từ thời điểm bạn bắt đầu quá trình đến thời điểm bạn dừng nó. Kết nối giữa các lần lặp khác nhau được biểu diễn dưới dạng kịch bản sau: bạn hoàn tất quá trình theo dõi, sau đó thực hiện một số thay đổi và bắt đầu lại các thay đổi theo dõi. Với kịch bản này, tất cả các thay đổi mà bạn không chấp nhận hoặc từ chối sẽ được hiển thị lại.

{{% alert color="primary" %}}

Lưu ý rằng phương thức `AcceptAllRevisions` tương tự như "Chấp nhận Tất cả Các Thay đổi" trong Microsoft Word.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách làm việc với các thay đổi theo dõi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

Ví dụ mã sau đây cho thấy cách các bản sửa đổi được tạo khi một nút được di chuyển trong một tài liệu được theo dõi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Quản lý Và Lưu Trữ Các Thay đổi dưới Dạng Sửa đổi

Với tính năng thay đổi theo dõi trước đó, bạn có thể hiểu những thay đổi nào đã được thực hiện trong tài liệu của mình và ai đã thực hiện những thay đổi đó. Trong khi với tính năng [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/), bạn buộc bất kỳ thay đổi nào trong tài liệu của mình được lưu trữ dưới dạng bản sửa đổi.

Aspose.Words cho phép bạn kiểm tra xem tài liệu có bản sửa đổi hay không bằng cách sử dụng thuộc tính [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/). Nếu bạn không cần tự động theo dõi các thay đổi trong tài liệu của mình thông qua các phương thức StartTrackRevisions và StopTrackRevisions, thì bạn có thể sử dụng thuộc tính `TrackRevisions` để kiểm tra xem các thay đổi có được theo dõi trong khi chỉnh sửa tài liệu trong Microsoft Word và được lưu trữ dưới dạng sửa đổi hay không.

Tính năng `TrackRevisions` thực hiện sửa đổi thay vì thay đổi DOM thực. Nhưng bản thân các bản sửa đổi là riêng biệt. Ví dụ: nếu bạn xóa bất kỳ đoạn nào, Aspose.Words hãy biến nó thành bản sửa đổi, đánh dấu nó là xóa, thay vì xóa nó.

Ngoài ra, Aspose.Words cho phép bạn kiểm tra xem một đối tượng đã được chèn, xóa hoặc thay đổi định dạng bằng cách sử dụng [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), và [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) thuộc tính.

{{% alert color="primary" %}}

Lưu ý rằng không có kết nối giữa bản thân các bản sửa đổi và thuộc tính `TrackRevisions`. Ngoài ra, bạn có thể chấp nhận/từ chối sửa đổi bất kể tính năng thay đổi theo dõi.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách áp dụng các thuộc tính khác nhau với các bản sửa đổi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
