---
title: Cách Thêm Group Shape vào Tài liệu Word
second_title: Aspose.Words cho C++
articleTitle: Làm việc với Group Shapes Trong Tài Liệu Word
linktitle: Làm việc với Group Shapes Trong Tài Liệu Word
description: "Nhóm và ungrouping hình dạng bằng cách sử dụng C++."
type: docs
weight: 290
url: /vi/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Đôi khi bạn cần thêm group shape vào Tài liệu Word. Một group shape như vậy bao gồm nhiều hình dạng.

Trong Microsoft Word, bạn có thể nhanh chóng thêm group shape bằng lệnh/nút Nhóm. Một hình dạng riêng lẻ trong một nhóm có thể được di chuyển riêng biệt.

Trong Aspose.Words, rất dễ dàng để thêm group shape bằng lớp [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). Hình dạng được tạo riêng bằng cách sử dụng lớp [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) và sau đó được thêm vào đối tượng **GroupShape** bằng phương thức [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

Ví dụ mã sau đây cho thấy cách thêm group shape vào Tài liệu Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Dưới đây là một số loại `Shape` được hỗ trợ trong Aspose.Words. Để biết danh sách đầy đủ, vui lòng truy cập [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Hình chữ nhật
- RoundRectangle
- RoundRectangle
- Hình elip
- Kim cương
- Tam giác
- RightTriangle
- Hình bình hành
- Hình thang
- Hình lục giác
- Hình bát giác

{{% /alert %}}
