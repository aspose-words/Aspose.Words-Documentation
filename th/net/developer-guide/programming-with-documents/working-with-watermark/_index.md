---
title: การทำงานกับลายน้ำใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับลายน้ำ
linktitle: การทำงานกับลายน้ำ
description: "การจัดการลายน้ำเอกสารโดยใช้ C#"
type: docs
weight: 340
url: /th/net/working-with-watermark/
---

หัวข้อนี้อธิบายวิธีการทำงานโดยทางโปรแกรมด้วยลายน้ำโดยใช้ Aspose.Words ลายน้ำคือภาพพื้นหลังที่แสดงอยู่ด้านหลังข้อความในเอกสาร ลายน้ำอาจมีข้อความหรือรูปภาพที่แสดงโดยคลาส [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/)

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถลองใช้ฟังก์ชันนี้กับ [ลายน้ำเอกสารออนไลน์ฟรี](https://products.aspose.app/words/watermark) ของเราได้

{{% /alert %}}

## เพิ่มลายน้ำให้กับเอกสาร

ใน Microsoft Word คุณสามารถแทรกลายน้ำในเอกสารได้อย่างง่ายดายโดยใช้คำสั่งแทรกลายน้ำ Aspose.Words จัดเตรียมคลาส [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) เพื่อเพิ่มหรือลบลายน้ำในเอกสาร Aspose.Words จัดให้มี [ลายน้ำประเภท](https://reference.aspose.com/words/net/aspose.words/watermark/type/)enumeration ซึ่งกำหนดประเภทลายน้ำที่เป็นไปได้สามประเภท (ข้อความ รูปภาพ และไม่มี) ที่จะใช้งานได้

### เพิ่มลายน้ำข้อความ

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการแทรกลายน้ำข้อความในเอกสารโดยการกำหนด [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) โดยใช้วิธี [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### เพิ่มลายน้ำรูปภาพ

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการแทรกลายน้ำรูปภาพในเอกสารโดยการกำหนด [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) โดยใช้วิธี [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

ลายน้ำสามารถแทรกได้โดยใช้คลาสรูปร่างเช่นกัน มันง่ายมากที่จะแทรกรูปร่างหรือรูปภาพใด ๆ ลงในส่วนหัวหรือส่วนท้ายและสร้างลายน้ำประเภทใดก็ได้เท่าที่จะจินตนาการได้

ตัวอย่างรหัสต่อไปนี้แทรกลายน้ำลงในเอกสาร Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## ลบลายน้ำออกจากเอกสาร

คลาส [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) จัดเตรียมวิธีการลบเพื่อลบลายน้ำออกจากเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบลายน้ำออกจากเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

หากเพิ่มลายน้ำโดยใช้วัตถุคลาส [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) หากต้องการลบลายน้ำออกจากเอกสาร คุณต้องตั้งชื่อรูปร่างลายน้ำเท่านั้นในระหว่างการแทรก จากนั้นจึงลบรูปร่างลายน้ำตามชื่อที่กำหนด

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตั้งชื่อรูปร่างลายน้ำและลบออกจากเอกสาร:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## เพิ่มลายน้ำลงในเซลล์ตาราง

บางครั้งคุณจำเป็นต้องแทรกลายน้ำ/รูปภาพลงในเซลล์ของตารางและแสดงไว้นอกตาราง คุณสามารถใช้คุณสมบัติ [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) ได้ คุณสมบัตินี้ได้รับหรือตั้งค่าสถานะที่ระบุว่ารูปร่างจะแสดงภายในตารางหรือภายนอก โปรดทราบว่าคุณสมบัตินี้ใช้งานได้เฉพาะเมื่อคุณปรับเอกสารให้เหมาะสมสำหรับ Microsoft Word 2010 โดยใช้วิธี [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
