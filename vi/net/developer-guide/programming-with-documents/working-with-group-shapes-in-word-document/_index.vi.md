---
title: Cách thêm hình dạng Group vào tài liệu Word
second_title: Aspose.Words cho .NET
articleTitle: Cách thêm hình dạng Group vào tài liệu Word
linktitle: Làm việc với các hình dạng Group trong tài liệu Word
description: "Grouping và tách nhóm các hình dạng bằng C#."
type: docs
weight: 290
url: /vi/net/how-to-add-group-shape-into-a-word-document/
---

Đôi khi bạn cần thêm group shape vào tài liệu Word. group shape như vậy bao gồm nhiều hình dạng.

Trong Microsoft Word, bạn có thể nhanh chóng thêm group shape bằng nút/lệnh Group. Một hình dạng riêng lẻ trong một nhóm có thể được di chuyển riêng biệt.

Trong Aspose.Words, rất dễ dàng thêm group shape bằng lớp [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). **Shape** được tạo riêng bằng lớp [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) và sau đó được thêm vào đối tượng [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) bằng phương thức [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/).

Ví dụ mã sau đây cho biết cách thêm group shape vào tài liệu Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Dưới đây là một số loại `Shape` được hỗ trợ trong Aspose.Words:

- Hình chữ nhật
- Hình chữ nhật tròn
- Hình chữ nhật tròn
- Hình elip
- Kim cương
- Tam giác
- Tam giác vuông góc
- Hình bình hành
- Hình thang
- Hình lục giác
- Hình bát giác

Để có danh sách đầy đủ, vui lòng kiểm tra lớp [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype).

{{% /alert %}}