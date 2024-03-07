---
title: Cách thêm hình dạng Group vào tệp Word
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với Hình dạng Group trong Tài liệu Word
linktitle: Làm việc với Hình dạng Group trong Tài liệu Word
description: "Thêm group shape vào tài liệu bằng Python."
type: docs
weight: 290
url: /vi/python-net/how-to-add-group-shape-into-a-word-document/
---

Đôi khi bạn cần thêm group shape vào tài liệu Word. group shape như vậy bao gồm nhiều hình dạng.

Trong Microsoft Word, bạn có thể nhanh chóng thêm group shape bằng nút/lệnh Group. Một hình dạng riêng lẻ trong một nhóm có thể được di chuyển riêng biệt.

Trong Aspose.Words, việc thêm group shape bằng lớp [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) rất dễ dàng. Hình dạng được tạo riêng bằng lớp [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) và sau đó được thêm vào đối tượng [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) bằng phương thức [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

Ví dụ mã sau đây cho biết cách thêm group shape vào tài liệu Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Dưới đây là một số loại `Shape` được hỗ trợ trong Aspose.Words. Để biết danh sách đầy đủ, vui lòng xem bảng liệt kê [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
