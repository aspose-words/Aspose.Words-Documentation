---
title: การแสดงรูปร่างแยกจากเอกสาร
second_title: Aspose.Words สำหรับ .NET
articleTitle: การแสดงรูปร่างแยกจากเอกสาร
linktitle: การแสดงรูปร่างแยกจากเอกสาร
description: "แยกออบเจ็กต์กราฟิกต่างๆ เช่น รูปภาพ กล่องข้อความที่มีย่อหน้า หรือรูปร่างลูกศร เมื่อประมวลผลเอกสาร และส่งออกไปยังตำแหน่งภายนอกโดยใช้ C#"
type: docs
weight: 40
url: /th/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

เมื่อประมวลผลเอกสาร งานทั่วไปคือการแยกรูปภาพทั้งหมดที่พบในเอกสารและส่งออกไปยังตำแหน่งภายนอก งานนี้กลายเป็นเรื่องง่ายด้วย Aspose.Words API ซึ่งมีฟังก์ชันในการแยกและบันทึกข้อมูลรูปภาพอยู่แล้ว อย่างไรก็ตาม บางครั้งคุณอาจต้องการแยกเนื้อหากราฟิกประเภทอื่นๆ ที่แสดงโดยวัตถุรูปวาดประเภทอื่นในทำนองเดียวกัน เช่น กล่องข้อความที่มีย่อหน้า รูปร่างลูกศร และรูปภาพขนาดเล็ก ไม่มีวิธีที่ตรงไปตรงมาในการแสดงผลออบเจ็กต์นี้ เนื่องจากเป็นการผสมผสานระหว่างองค์ประกอบเนื้อหาแต่ละรายการ คุณอาจพบกรณีที่เนื้อหาถูกจัดกลุ่มเข้าด้วยกันเป็นวัตถุที่ดูเหมือนเป็นภาพเดียว

Aspose.Words มีฟังก์ชันสำหรับแยกเนื้อหาประเภทนี้ในลักษณะเดียวกับที่คุณสามารถแยกรูปภาพธรรมดาออกจากรูปร่างเป็นเนื้อหาที่แสดงผลได้ บทความนี้จะอธิบายวิธีการใช้ฟังก์ชันนี้เพื่อแสดงรูปร่างโดยไม่ขึ้นกับเอกสาร

## ประเภทรูปร่างใน Aspose.Words

เนื้อหาทั้งหมดในเลเยอร์การวาดเอกสารแสดงโดยโหนด [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) หรือ [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) ใน Aspose.Words Document Object Module (DOM) เนื้อหาดังกล่าวอาจเป็นกล่องข้อความ รูปภาพ รูปร่างอัตโนมัติ วัตถุ OLE ฯลฯ นอกจากนี้ บางฟิลด์ยังนำเข้าเป็นรูปร่างอีกด้วย เช่น ฟิลด์ `INCLUDEPICTURE`

รูปภาพธรรมดาแสดงโดยโหนด **Shape** ของ [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) โหนดรูปร่างนี้ไม่มีโหนดย่อย แต่ข้อมูลรูปภาพที่อยู่ภายในโหนดรูปร่างนี้สามารถเข้าถึงได้โดยคุณสมบัติ [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) ในทางกลับกัน รูปร่างสามารถประกอบด้วยโหนดย่อยจำนวนมากได้ ตัวอย่างเช่น รูปร่างกล่องข้อความซึ่งแสดงโดยคุณสมบัติ [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) สามารถประกอบด้วยโหนดจำนวนมาก เช่น [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) และ [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) รูปร่างส่วนใหญ่สามารถมีโหนดระดับบล็อก **Paragraph** และ **Table** ได้ เหล่านี้เป็นโหนดเดียวกันกับที่ปรากฏในเนื้อหาหลัก รูปร่างจะเป็นส่วนหนึ่งของบางย่อหน้าเสมอ ไม่ว่าจะรวมแบบอินไลน์โดยตรงหรือยึดกับ **ย่อหน้า** แต่ "ลอย" ที่ใดก็ได้ในหน้าเอกสาร

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

เอกสารยังสามารถมีรูปร่างที่จัดกลุ่มไว้ด้วยกันได้ คุณสามารถเปิดใช้งาน Grouping ใน Microsoft Word ได้โดยเลือกหลายวัตถุแล้วคลิก "Group" ในเมนูคลิกขวา

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

ใน Aspose.Words กลุ่มรูปร่างเหล่านี้จะแสดงโดยโหนด [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) สิ่งเหล่านี้สามารถเรียกใช้ในลักษณะเดียวกันเพื่อแสดงทั้งกลุ่มเป็นรูปภาพ

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

รูปแบบ DOCX สามารถมีรูปภาพประเภทพิเศษ เช่น ไดอะแกรมหรือแผนภูมิ รูปร่างเหล่านี้ยังแสดงผ่านโหนด **Shape** ใน Aspose.Words ซึ่งมีวิธีการที่คล้ายกันในการแสดงเป็นรูปภาพ ตามการออกแบบ รูปร่างไม่สามารถมีรูปร่างอื่นเหมือนเด็กได้ เว้นแต่รูปร่างนั้นจะเป็นรูปภาพ (**ShapeType.Image**) ตัวอย่างเช่น Microsoft Word ไม่อนุญาตให้คุณแทรกกล่องข้อความลงในกล่องข้อความอื่น

ประเภทรูปร่างที่อธิบายไว้ข้างต้นมีวิธีพิเศษในการแสดงรูปร่างผ่านคลาส [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) อินสแตนซ์ของคลาส **ShapeRenderer** ถูกดึงข้อมูลสำหรับ **Shape** หรือ **GroupShape** ผ่านวิธี **GetShapeRenderer** หรือโดยการส่ง **Shape** ไปยังตัวสร้างของคลาส **ShapeRenderer** คลาสนี้ให้การเข้าถึงสมาชิก ซึ่งอนุญาตให้แสดงรูปร่างดังต่อไปนี้:

- ไฟล์บนดิสก์โดยใช้วิธี [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) โอเวอร์โหลด
- สตรีมโดยใช้วิธี [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) โอเวอร์โหลด
- วัตถุกราฟิก .NET โดยใช้วิธี [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) และ [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

เมื่อแสดงผล **Shape** จะต้องเป็นส่วนหนึ่งของลำดับชั้นเอกสาร หาก **Shape** ไม่ได้เป็นส่วนหนึ่งของแผนผังเอกสาร เอาต์พุตที่แสดงผลจะว่างเปล่าหลังจากเรียกใช้เมธอด **ShapeRenderer**

{{% /alert %}}

## แสดงผลเป็นไฟล์หรือสตรีม

วิธีการ [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) ให้การโอเวอร์โหลดที่แสดงรูปร่างโดยตรงไปยังไฟล์หรือสตรีม การโอเวอร์โหลดทั้งสองยอมรับอินสแตนซ์ของคลาส [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) ซึ่งอนุญาตให้กำหนดตัวเลือกสำหรับการแสดงผลรูปร่าง ซึ่งทำงานในลักษณะเดียวกับวิธี [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) แม้ว่าจำเป็นต้องใช้พารามิเตอร์นี้ คุณสามารถส่งค่า Null โดยระบุว่าไม่มีตัวเลือกที่กำหนดเองได้

รูปร่างสามารถส่งออกในรูปแบบภาพใดก็ได้ที่ระบุในการแจงนับ [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) ตัวอย่างเช่น รูปภาพสามารถแสดงผลเป็นรูปภาพแรสเตอร์ เช่น JPEG โดยการระบุการแจงนับ [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) หรือเป็นรูปภาพเวกเตอร์ เช่น EMF โดยการระบุ [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/)

ตัวอย่างโค้ดด้านล่างแสดงการแสดงรูปร่างให้กับอิมเมจ EMF แยกจากเอกสาร และบันทึกลงดิสก์:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

ตัวอย่างโค้ดด้านล่างแสดงการแสดงรูปร่างเป็นภาพ JPEG แยกจากเอกสาร และบันทึกลงในสตรีม:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

คลาส **ImageSaveOptions** ช่วยให้คุณระบุตัวเลือกที่หลากหลายเพื่อควบคุมวิธีการเรนเดอร์รูปภาพ ฟังก์ชันการทำงานที่อธิบายไว้ข้างต้นสามารถนำไปใช้ในลักษณะเดียวกันกับโหนด **GroupShape** และ **Shape**

## แสดงผลไปยังวัตถุกราฟิก .NET

การแสดงผลโดยตรงไปยังออบเจ็กต์ **Graphics** ช่วยให้คุณกำหนดการตั้งค่าและสถานะของออบเจ็กต์ **Graphics** ของคุณเองได้ สถานการณ์ทั่วไปเกี่ยวข้องกับการเรนเดอร์รูปร่างโดยตรงในวัตถุ **Graphics** ที่ดึงมาจากแบบฟอร์ม Windows หรือบิตแมป เมื่อโหนด **Shape** ถูกเรนเดอร์ การตั้งค่าจะส่งผลต่อลักษณะที่ปรากฏของรูปร่าง ตัวอย่างเช่น คุณสามารถหมุนหรือปรับขนาดรูปร่างได้โดยใช้วิธี **RotateTransform** หรือ **ScaleTransform** สำหรับออบเจ็กต์ **Graphics**

ตัวอย่างด้านล่างแสดงวิธีแสดงรูปร่างให้กับออบเจ็กต์ .**NET Graphics** โดยแยกจากเอกสาร และใช้การหมุนกับรูปภาพที่เรนเดอร์:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

ในทำนองเดียวกัน สำหรับวิธี [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) วิธี [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) ที่สืบทอดมาจาก [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) นั้นมีประโยชน์สำหรับการสร้างภาพขนาดย่อของเนื้อหาเอกสาร ขนาดรูปร่างถูกระบุผ่านตัวสร้าง วิธี **RenderToSize** ยอมรับวัตถุ **Graphics** พิกัด X และ Y ของตำแหน่งรูปภาพ และขนาดของรูปภาพ (ความกว้างและความสูง) ที่จะวาดลงบนวัตถุ **Graphics**

**Shape** สามารถเรนเดอร์ได้ในระดับหนึ่งโดยใช้วิธี [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) ที่สืบทอดมาจากคลาส [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) ซึ่งคล้ายกับวิธี [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) ที่ยอมรับพารามิเตอร์หลักที่เหมือนกัน ความแตกต่างระหว่างสองวิธีนี้ก็คือ เมื่อใช้วิธี **ShapeRenderer.RenderToScale** แทนที่จะเลือกขนาดตามตัวอักษร คุณจะเลือกค่าทศนิยมที่จะปรับขนาดรูปร่างในระหว่างการเรนเดอร์ หากค่าทศนิยมเท่ากับ 1.0 จะทำให้รูปร่างแสดงผลที่ 100% ของขนาดดั้งเดิม ค่าทศนิยม 0.5 จะลดขนาดภาพลงครึ่งหนึ่ง

## การแสดงภาพรูปร่าง

คลาส [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) แสดงถึงวัตถุในเลเยอร์การวาด เช่น รูปร่างอัตโนมัติ กล่องข้อความ รูปแบบอิสระ วัตถุ OLE ตัวควบคุม ActiveX หรือรูปภาพ เมื่อใช้คลาส **Shape** คุณสามารถสร้างหรือแก้ไขรูปร่างในเอกสาร Microsoft Word ได้ คุณสมบัติที่สำคัญของรูปร่างคือ [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype) รูปร่างประเภทต่างๆ สามารถมีความสามารถที่แตกต่างกันในเอกสาร Word ตัวอย่างเช่น เฉพาะรูปภาพและรูปร่าง OLE เท่านั้นที่สามารถมีรูปภาพอยู่ภายในได้ ในขณะที่รูปร่างส่วนใหญ่สามารถมีได้เฉพาะข้อความเท่านั้น

ตัวอย่างต่อไปนี้แสดงวิธีเรนเดอร์รูปภาพ Shape เป็นรูปภาพ JPEG แยกจากเอกสารและบันทึกลงในดิสก์:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## การดึงข้อมูลขนาดรูปร่าง

คลาส [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) ยังมีฟังก์ชันในการดึงขนาดของรูปร่างเป็นพิกเซลผ่านวิธี [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) วิธีการนี้ยอมรับพารามิเตอร์ float (เดี่ยว) สองตัว ได้แก่ สเกลและ DPI ซึ่งใช้ในการคำนวณขนาดรูปร่างเมื่อมีการเรนเดอร์รูปร่าง วิธีการส่งกลับวัตถุ [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) ซึ่งมีความกว้างและความสูงของขนาดที่คำนวณได้ สิ่งนี้มีประโยชน์เมื่อจำเป็นต้องทราบขนาดของรูปร่างที่เรนเดอร์ไว้ล่วงหน้า เช่น เมื่อสร้างบิตแมปใหม่จากเอาท์พุตที่ถูกเรนเดอร์

ตัวอย่างด้านล่างแสดงวิธีการสร้างออบเจ็กต์บิตแมปและกราฟิกใหม่ด้วยความกว้างและความสูงของรูปร่างที่จะเรนเดอร์:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

เมื่อใช้วิธีการ **RenderToSize** หรือ **RenderToScale** ขนาดภาพที่เรนเดอร์จะถูกส่งกลับในออบเจ็กต์ [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) ด้วย ซึ่งสามารถกำหนดให้กับตัวแปรและใช้ในกรณีที่จำเป็น

คุณสมบัติ **SizeInPoints** ส่งคืนขนาดรูปร่างที่วัดเป็นพอยต์ (ดู [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) ผลลัพธ์คือออบเจ็กต์ `SizeF` ที่มีความกว้างและความสูง
