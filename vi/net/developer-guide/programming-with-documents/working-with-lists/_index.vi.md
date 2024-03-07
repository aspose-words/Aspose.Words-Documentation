---
title: Làm việc với Danh sách trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với danh sách
linktitle: Làm việc với danh sách
description: "Giới thiệu tính năng định dạng đánh số trong Aspose.Words cho .NET."
type: docs
weight: 200
url: /vi/net/working-with-lists/
---

Danh sách trong tài liệu Microsoft Word là tập hợp các thuộc tính định dạng đoạn văn. Danh sách có thể được sử dụng trong tài liệu để cấu trúc, sắp xếp và đánh dấu văn bản. Danh sách là một cách tuyệt vời để sắp xếp dữ liệu trong tài liệu theo cách giúp người đọc dễ dàng tiếp thu và hiểu các điểm chính.

Mỗi danh sách có thể có tối đa 9 cấp độ và các thuộc tính định dạng như kiểu số, giá trị bắt đầu, thụt lề, vị trí tab và các thuộc tính khác được xác định riêng cho từng cấp độ.

Trong Aspose.Words, làm việc với danh sách được thể hiện bằng không gian tên [Lists](https://reference.aspose.com/words/net/aspose.words.lists/). Tuy nhiên, đối tượng [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) luôn thuộc về [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

Bài viết này mô tả cách làm việc theo chương trình với các danh sách bằng Aspose.Words.

## Tạo danh sách bằng cách áp dụng định dạng danh sách

Aspose.Words cho phép tạo danh sách dễ dàng bằng cách áp dụng định dạng danh sách. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) cung cấp thuộc tính [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) trả về đối tượng **ListFormat**. Đối tượng này có một số phương thức để bắt đầu và kết thúc danh sách cũng như tăng/giảm mức thụt lề. Có hai loại danh sách chung trong Microsoft Word: có dấu đầu dòng và được đánh số:

- Để bắt đầu danh sách có dấu đầu dòng, hãy gọi [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Để bắt đầu danh sách đánh số, hãy gọi [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

Dấu đầu dòng hoặc số và định dạng được thêm vào đoạn hiện tại và tất cả các đoạn tiếp theo được tạo bằng **DocumentBuilder** cho đến khi [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) được gọi để dừng định dạng danh sách dấu đầu dòng.

Trong tài liệu Word, danh sách có thể bao gồm tối đa chín cấp độ. Định dạng danh sách cho từng cấp chỉ định dấu đầu dòng hoặc số nào được sử dụng, thụt lề trái, khoảng cách giữa dấu đầu dòng và văn bản, v.v. Các phương pháp sau đây thay đổi cấp độ danh sách và áp dụng các thuộc tính định dạng của cấp độ mới:

- Để tăng cấp danh sách của đoạn văn hiện tại lên một cấp, hãy gọi [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Để giảm cấp độ danh sách của đoạn văn hiện tại xuống một cấp, hãy gọi [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Bạn cũng có thể sử dụng thuộc tính [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) để lấy hoặc đặt cấp độ danh sách cho đoạn văn.

{{% alert color="primary" %}}

Các cấp độ danh sách được đánh số từ 0 đến 8.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách xây dựng danh sách đa cấp:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Chỉ định định dạng cho cấp độ danh sách

Các đối tượng cấp danh sách được tạo tự động khi danh sách được tạo. Sử dụng các thuộc tính và phương thức của lớp [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) để kiểm soát việc định dạng các cấp độ riêng lẻ của danh sách.

## Danh sách khởi động lại cho từng phần

Bạn có thể khởi động lại danh sách cho từng phần bằng thuộc tính [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/). Lưu ý rằng tùy chọn này chỉ được hỗ trợ ở các định dạng tài liệu RTF, DOC và DOCX. Tùy chọn này sẽ chỉ được ghi vào DOCX nếu OoxmlCompliance cao hơn Ecma376.

Ví dụ về mã sau đây cho biết cách tạo danh sách và khởi động lại danh sách đó cho từng phần:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
