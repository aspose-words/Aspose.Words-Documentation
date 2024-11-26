---
title: การทำงานกับรูปร่างใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับรูปทรง
linktitle: การทำงานกับรูปทรง
description: "ข้อมูลเบื้องต้นเกี่ยวกับภาษามาร์กอัปรูปร่าง การสร้างรูปร่างประเภทต่างๆ โดยใช้ C#"
type: docs
weight: 280
url: /th/net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

หัวข้อนี้อธิบายวิธีการทำงานโดยทางโปรแกรมกับรูปร่างโดยใช้ Aspose.Words

รูปร่างใน Aspose.Words แสดงถึงวัตถุในเลเยอร์การวาด เช่น รูปร่างอัตโนมัติ กล่องข้อความ รูปแบบอิสระ วัตถุ OLE ตัวควบคุม ActiveX หรือรูปภาพ เอกสาร Word สามารถมีรูปร่างที่แตกต่างกันตั้งแต่หนึ่งรูปร่างขึ้นไป รูปร่างใน Aspose.Words จะแสดงด้วยคลาส [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)

## การแทรกรูปร่างโดยใช้ตัวสร้างเอกสาร

คุณสามารถแทรกรูปร่างอินไลน์ที่มีประเภทและขนาดที่ระบุ และรูปร่างลอยอิสระพร้อมตำแหน่ง ขนาด และประเภทการตัดข้อความที่ระบุลงในเอกสารโดยใช้วิธี [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) วิธี **InsertShape** อนุญาตให้แทรกรูปร่าง DML ลงในโมเดลเอกสาร ต้องบันทึกเอกสารในรูปแบบที่รองรับรูปร่าง DML มิฉะนั้นโหนดดังกล่าวจะถูกแปลงเป็นรูปร่าง VML ในขณะที่บันทึกเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกรูปร่างประเภทเหล่านี้ลงในเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## ตั้งค่าอัตราส่วนภาพถูกล็อค

เมื่อใช้ Aspose.Words คุณสามารถระบุว่าอัตราส่วนของรูปร่างถูกล็อกผ่านคุณสมบัติ [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) หรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## กำหนดเค้าโครงรูปร่างในเซลล์

คุณยังสามารถระบุได้ว่าจะแสดงรูปร่างภายในตารางหรือภายนอกตารางโดยใช้คุณสมบัติ [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## สร้างสี่เหลี่ยมผืนผ้ามุม Snip

คุณสามารถสร้างสี่เหลี่ยมผืนผ้ามุมสนิปได้โดยใช้ Aspose.Words ประเภทรูปร่างคือ *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* และ *DiagonalCornersRounded.*

รูปร่าง DML ถูกสร้างขึ้นโดยใช้วิธี **InsertShape** กับประเภทรูปร่างเหล่านี้ ประเภทเหล่านี้ไม่สามารถใช้เพื่อสร้างรูปร่าง VML ความพยายามที่จะสร้างรูปร่างโดยใช้ตัวสร้างสาธารณะของคลาส "รูปร่าง" ทำให้เกิดข้อยกเว้น "NotSupportedException"

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกรูปร่างประเภทนี้ลงในเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## รับคะแนนขอบเขตรูปร่างจริง

เมื่อใช้ Aspose.Words API คุณจะได้รับตำแหน่งและขนาดของรูปร่างที่มีบล็อกเป็นจุด สัมพันธ์กับจุดยึดของรูปร่างบนสุด เมื่อต้องการทำเช่นนี้ ใช้คุณสมบัติ [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## ระบุจุดยึดแนวตั้ง

คุณสามารถระบุการจัดตำแหน่งข้อความในแนวตั้งภายในรูปร่างได้โดยใช้คุณสมบัติ [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## ตรวจจับรูปร่าง SmartArt

Aspose.Words ยังอนุญาตให้ตรวจสอบว่ารูปร่างมีวัตถุ `SmartArt` หรือไม่ เมื่อต้องการทำเช่นนี้ ใช้คุณสมบัติ [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับคุณสมบัติ **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## แทรกกฎแนวนอนลงในเอกสาร

คุณสามารถแทรกรูปร่างกฎแนวนอนลงในเอกสารโดยใช้วิธี [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำเช่นนี้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API จัดเตรียมคุณสมบัติ [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) เพื่อเข้าถึงคุณสมบัติของรูปร่างกฎแนวนอน คลาส [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) เปิดเผยคุณสมบัติพื้นฐาน เช่น ความสูง สี NoShade ฯลฯ สำหรับการจัดรูปแบบของกฎแนวนอน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่า **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## นำเข้ารูปร่างด้วย Math XML เป็นรูปร่างลงใน DOM

คุณสามารถใช้คุณสมบัติ [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) เพื่อแปลงรูปร่างด้วย EquationXML เป็นวัตถุ Office Math ค่าเริ่มต้นของคุณสมบัตินี้สอดคล้องกับลักษณะการทำงานของ Microsoft Word กล่าวคือ รูปร่างที่มีสมการ XML จะไม่ถูกแปลงเป็นวัตถุทางคณิตศาสตร์ของ Office

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลงรูปร่างเป็นวัตถุ Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
