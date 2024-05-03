---
title: วิธี เพิ่ม Group แปลงเป็นเอกสารคํา
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับ Group รูปทรงในเอกสารคํา
linktitle: ทํางานกับ Group รูปทรงในเอกสารคํา
description: "Groupการแยกและเลิกจัดกลุ่มโดยใช้ Java."
type: docs
weight: 290
url: /th/java/how-to-add-group-shape-into-a-word-document/
---

บางครั้งคุณต้องเพิ่ม group shape ลงในเอกสารคํา ช่าง... group shape ประกอบไปด้วยหลายรูปร่าง

ใน Microsoft Word, คุณสามารถเพิ่ม group shape ใช้ Group คําสั่ง/ กระดุม รูป ทรง แต่ ละ อย่าง ใน กลุ่ม อาจ ย้าย ได้.

ใน Aspose.Words มันง่ายมากที่จะบวก group shape ใช้ [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) ชั้นเรียน. **Shape** ถูกสร้างขึ้นแยกโดยใช้ [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) แล้วเพิ่มเข้าไป [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) วัตถุที่ใช้ [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) วิธี

ข้างล่างคือบางส่วน `Shape` ชนิดที่รองรับ Aspose.Words. สําหรับรายการที่สมบูรณ์ โปรดเยี่ยมชม [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)

- สี่เหลี่ยม
- สี่เหลี่ยมกลม
- สี่เหลี่ยมกลม
- วงรี
- เพชร
-สามเหลี่ยม
- สี่เหลี่ยมด้านขวา
- แนวนอน
- แทร็คเซอยด์
-เฮกกอน
- หมึก

**Example**

*โฆษณา* group shape ลงในเอกสารคํา *


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
