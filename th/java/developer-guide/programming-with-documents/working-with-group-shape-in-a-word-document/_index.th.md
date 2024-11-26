---
title: วิธีการเพิ่มGroup Shapeลงในเอกสารคำ
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับGroup Shapesในเอกสารคำ
linktitle: การทำงานกับGroup Shapesในเอกสารคำ
description: "การจัดกลุ่มและยกเลิกการจัดกลุ่มรูปร่างโดยใช้Java."
type: docs
weight: 290
url: /th/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณต้องเพิ่มgroup shapeลงในเอกสารคำ เช่นgroup shapeประกอบด้วยหลายรูปร่าง

ในMicrosoft Wordคุณสามารถเพิ่มgroup shapeได้อย่างรวดเร็วโดยใช้ปุ่มคำสั่ง/กลุ่ม รูปร่างของแต่ละบุคคลในกลุ่มสามารถเคลื่อนย้ายแยกต่างหาก.

ในAspose.Wordsมันเป็นเรื่องง่ายมากที่จะเพิ่มgroup shapeโดยใช้[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)ชั้น. **Shape**ถูกสร้างขึ้นแยกต่างหากโดยใช้ชั้นเรียน[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)แล้วเพิ่มใน[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)วัตถุโดยใช้วิธีการ[AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

ด้านล่างนี้คือ`Shape`ชนิดที่รองรับในAspose.Words สำหรับรายการที่สมบูรณ์กรุณาเยี่ยมชม[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- สี่เหลี่ยมผืนผ้า
- RoundRectangle
- RoundRectangle
- วงรี
- เพชร
- สามเหลี่ยม
- RightTriangle
- สี่เหลี่ยมด้านขนาน
- สี่เหลี่ยมคางหมู
- หกเหลี่ยม
- แปดเหลี่ยม

**งคุณ**

*Add a group shape into a Word document.*


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
