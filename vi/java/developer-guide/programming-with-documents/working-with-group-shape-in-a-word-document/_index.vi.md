---
title: Cách thêm Group hình dạng vào tài liệu Word
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Group Hình dạng trong tài liệu Word
linktitle: Làm việc với Group Hình dạng trong tài liệu Word
description: "Sử dụng Group để sắp xếp và nhóm các hình thành Java."
type: docs
weight: 290
url: /vi/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Đôi khi bạn cần thêm một group shape vào tài liệu Word. Một "đặc trưng như vậy group shape bao gồm nhiều hình dạng"

Trong Microsoft Word bạn có thể thêm một group shape nhanh chóng bằng cách sử dụng lệnh/nút Group. Các hình dạng riêng lẻ trong một nhóm có thể di chuyển tách rời.

Trong Aspose.Words nó rất dễ dàng thêm một group shape sử dụng lớp [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). **Shape** được tạo ra riêng biệt sử dụng lớp [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) và sau đó được thêm vào đối tượng [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) sử dụng phương pháp [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

Dưới đây là một số dạng `Shape` được hỗ trợ trong Aspose.Words. Để xem danh sách đầy đủ, xin vui lòng đến [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Hình chữ nhật
- Hình chữ nhật tròn
- Hình chữ nhật tròn
- Hình elip
- Kim cương
"- Tam giác"
- Hình tam giác vuông
- Paralelegram
- Trapeziform
- Lục giác
- Octogon

**Example**

*Thêm một group shape vào một tài liệu Word.*


{{< highlight csharp >}}
package AddGroupShape;
import Aspose.Words.*;
import Aspose.Words.Drawing.*;
import Aspose.Words.Fields.*;
public class Program
{
	public static void main(String[] args)
	{
		Aspose.Words.Document doc = new Aspose.Words.Document();
	        doc.EnsureMinimum();
		GroupShape gs = new GroupShape(doc);
		Aspose.Words.Drawing.Shape shape = new Aspose.Words.Drawing.Shape(doc, Aspose.Words.Drawing.ShapeType.AccentBorderCallout1);
		shape.Width = 100;
		shape.Height = 100;
		gs.AppendChild(shape);
		Aspose.Words.Drawing.Shape shape1 = new Aspose.Words.Drawing.Shape(doc, Aspose.Words.Drawing.ShapeType.ActionButtonBeginning);
		shape1.Left = 100;
		shape1.Width = 100;
		shape1.Height = 200;
		gs.AppendChild(shape1);
	        gs.Width = 200;
		gs.Height = 200;
		gs.CoordSize = new System.Drawing.Size(200, 200);
		DocumentBuilder builder = new DocumentBuilder(doc);
		builder.InsertNode(gs);
		doc.Save("c:\\TestFile.docx");
	}
}
{{< /highlight >}}
