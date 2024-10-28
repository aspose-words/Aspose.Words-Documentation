---
title: การแสดงผลรูปร่างแยกต่างหากจากเอกสาร
second_title: Aspose.WordsสำหรับC++
articleTitle: การแสดงผลรูปร่างแยกต่างหากจากเอกสาร
linktitle: การแสดงผลรูปร่างแยกต่างหากจากเอกสาร
description: "แยกวัตถุกราฟิกต่างๆเช่นรูปภาพกล่องข้อความที่ประกอบด้วยย่อหน้าหรือรูปร่างลูกศรเมื่อป."
type: docs
weight: 40
url: /th/cpp/rendering-shapes-separately-from-a-document/
---

เมื่อการประมวลผลเอกสาร,งานทั่วไปคือการแยกภาพทั้งหมดที่พบในเอกสารและส่งออกไ งานนี้กลายเป็นเรื่องง่ายด้วยAspose.WordsAPIซึ่งมีฟังก์ชันการทำงานสำหรับการแยกและบันทึกข้อมูลภาพ อย่างไรก็ตามบางครั้งคุณอาจต้องการแยกชนิดอื่นของเนื้อหากราฟิกที่แสดงโดยวัตถุรูปว ไม่มีวิธีที่ตรงไปตรงมาในการแสดงผลวัตถุนี้เนื่องจากเป็นการรวมกันขององค์ประกอบเนื้อ นอกจากนี้คุณยังอาจพบกรณีที่เนื้อหาได้รับการจัดกลุ่มเข้าด้วยกันเป็นวัตถุที่มีลักษณะเหมือน.

Aspose.Wordsให้ฟังก์ชันการทำงานสำหรับการแยกเนื้อหาประเภทนี้ในลักษณะเดียวกับที่คุณสามารถดึง บทความนี้อธิบายวิธีการใช้ฟังก์ชันการทำงานนี้เพื่อแสดงรูปร่างเป็นอิสระจากเอกสาร.

## ประเภทรูปร่างในAspose.Words

เนื้อหาทั้งหมดในเลเยอร์รูปวาดของเอกสารจะแสดงโดยโหนด[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)หรือ[GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/)ในโมดูลออบเจกต์เอกสารAspose.Words(DOM) เนื้อหาดังกล่าวสามารถเป็นกล่องข้อความ,ภาพ,AutoShapes,OLEวัตถุฯลฯ บางฟิลด์จะถูกนำเข้าเป็นรูปร่างเช่นฟิลด์`INCLUDEPICTURE`.

รูปภาพธรรมดาจะแสดงโดยโหนด **Shape** ของ [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) โหนดรูปร่างนี้ไม่มีโหนดย่อย แต่ข้อมูลรูปภาพที่อยู่ในโหนดรูปร่างนี้สามารถเข้าถึงได้โดยคุณสมบัติ [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/) ในทางกลับกัน รูปร่างสามารถประกอบด้วยโหนดย่อยจำนวนมากได้ ตัวอย่างเช่น รูปร่างของกล่องข้อความซึ่งแสดงโดยคุณสมบัติ [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) สามารถประกอบด้วยโหนดจำนวนมาก เช่น [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) และ [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) รูปร่างส่วนใหญ่สามารถรวมโหนดระดับบล็อก **Paragraph** และ **Table** ได้ ซึ่งเป็นโหนดเดียวกับโหนดที่ปรากฏในเนื้อหาหลัก รูปร่างมักจะเป็นส่วนหนึ่งของย่อหน้าบางย่อหน้า ซึ่งอาจรวมโดยตรงในบรรทัดหรือยึดกับ **Paragraph,** แต่ "ลอย" อยู่ที่ใดก็ได้ในหน้าเอกสาร.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

เอกสารยังสามารถประกอบด้วยรูปร่างที่จัดกลุ่มเข้าด้วยกัน การจัดกลุ่มสามารถเปิดใช้งานได้ในMicrosoft Wordโดยการเลือกหลายวัตถุและคลิก"กลุ่ม"ในเมนูคลิกขวา.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

ในAspose.Wordsกลุ่มของรูปร่างเหล่านี้จะแสดงโดยโหนด`GroupShape` สามารถเรียกใช้เหล่านี้ในลักษณะเดียวกับเพื่อให้ทั้งกลุ่มภาพ.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

รูปแบบDOCXสามารถประกอบด้วยรูปภาพประเภทพิเศษเช่นไดอะแกรมหรือแผนภูมิ รูปร่างเหล่านี้ยังถูกแสดงผ่านโหนด**Shape**ในAspose.Wordsซึ่งมีวิธีการที่คล้ายกันสำหรับการแสดงผลเป็นรูปภ โดยการออกแบบรูปร่างไม่สามารถมีรูปร่างอื่นเป็นเด็กเว้นแต่รูปร่างที่เป็นภาพ(**ShapeType.Image**) ตัวอย่างเช่นMicrosoft Wordไม่อนุญาตให้คุณแทรกกล่องข้อความภายในกล่องข้อความอื่น.

ประเภทรูปร่างที่อธิบายข้างต้นมีวิธีการพิเศษเพื่อแสดงรูปร่างผ่านคลาสของ[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) อินสแตนซ์ของ**ShapeRenderer**คลาสถูกดึงสำหรับ**Shape**หรือ**GroupShape**ผ่านวิธีการ**GetShapeRenderer**หรือโดยการส่งผ่าน**Shape**ไปยังตัวสร้างของ**ShapeRenderer** คลาสนี้ให้การเข้าถึงสมาชิกซึ่งอนุญาตให้แสดงรูปร่างดังต่อไปนี้:

- แฟ้มบนดิสก์โดยใช้วิธีการโอเวอร์โหลด[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- สตรีมโดยใช้วิธีการโอเวอร์โหลด[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- วัตถุ`Graphics`โดยใช้วิธีการ[RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)และ[RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

เมื่อแสดงผล**Shape**ต้องเป็นส่วนหนึ่งของลำดับชั้นของเอกสาร ถ้า**Shape**ไม่ได้เป็นส่วนหนึ่งของแผนผังเอกสารแล้วผลลัพธ์ที่แสดงผลจะว่างเปล่าหลังจากเรียกวิธี**ShapeRenderer**.

{{% /alert %}}

## การแสดงผลไปยังแฟ้มหรือสตรีม

วิธีการ[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)ให้โอเวอร์โหลดที่ทำให้รูปร่างโดยตรงกับแฟ้มหรือสตรีม อินสแตนซ์ของคลาสของ[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)ซึ่งอนุญาตให้กำหนดตัวเลือกสำหรับการแสดงผลรูปร่าง นี้ทำงานในลักษณะเดียวกับวิธีการ[Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) แม้ว่าพารามิเตอร์นี้จำเป็นต้องใช้คุณสามารถส่งผ่านค่าโมฆะโดยระบุว่าไม่มีอ็อพชันแบบก.

รูปร่างสามารถส่งออกในรูปแบบภาพใดๆที่ระบุไว้ในการแจงนับ[SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) เช่นJPEGโดยระบุการแจงนับ`SaveFormat.Jpeg`หรือเป็นภาพเวกเตอร์เช่นEMFโดยการระบุ`SaveFormat.Emf`.

ตัวอย่างโค้ดด้านล่างแสดงการแสดงผลรูปร่างเป็นEMFรูปภาพแยกต่างหากจากเอกสารและบันทึกลงในดิสก์:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

ตัวอย่างโค้ดด้านล่างแสดงการแสดงผลรูปร่างเป็นJPEGรูปภาพแยกต่างหากจากเอกสารและบันทึกลงในสตรีม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

คลาส**ImageSaveOptions**ช่วยให้คุณสามารถระบุตัวเลือกต่างๆที่ควบคุมวิธีการแสดงผลภาพ ฟังก์ชันที่อธิบายข้างต้นสามารถใช้ได้ในลักษณะเดียวกันกับ**GroupShape**และ**Shape**โหนด.

## การแสดงผลไปยังอ็อบเจ็กต์กราฟิก.NET

การเรนเดอร์โดยตรงไปยังอ็อบเจ็กต์ **Graphics** ช่วยให้คุณสามารถกำหนดค่าและสถานะของคุณเองสำหรับอ็อบเจ็กต์ **Graphics** ได้ สถานการณ์ทั่วไปเกี่ยวข้องกับการเรนเดอร์รูปร่างโดยตรงไปยังอ็อบเจ็กต์ **Graphics** ที่ดึงมาจากฟอร์ม Windows หรือบิตแมป เมื่อเรนเดอร์โหนด **Shape** การตั้งค่าจะส่งผลต่อลักษณะรูปร่าง ตัวอย่างเช่น คุณสามารถหมุนหรือปรับขนาดรูปร่างได้โดยใช้เมธอด **RotateTransform** หรือ **ScaleTransform** สำหรับอ็อบเจ็กต์ **Graphics**.

ตัวอย่างด้านล่างแสดงวิธีการแสดงรูปร่างเป็น.**NET Graphics**วัตถุแยกต่างหากจากเอกสารและใช้การหมุนไปยังภาพที่แสดงผล:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

ในทำนองเดียวกันกับวิธีการ[RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/)วิธี[RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)ที่สืบทอดมาจาก[NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/)จะมีประโยชน์สำหรับการสร้างภาพขนาดย่อของเนื้อหาเอกสาร ขนาดรูปร่างที่ระบุผ่านตัวสร้าง วิธี**RenderToSize**จะยอมรับวัตถุ**Graphics**พิกัดและพิกัดของตำแหน่งของภาพและขนาดของภาพ(ความกว้างและความสูง)ที่จะวาดลงบนวัตถุ**Graphics**.

**Shape**สามารถแสดงผลในระดับหนึ่งโดยใช้วิธีการ[ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)ที่สืบทอดมาจากคลาสของ[NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) นี้จะคล้ายกับวิธีการ[Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/)ที่ยอมรับพารามิเตอร์หลักเดียวกัน ความแตกต่างระหว่างสองวิธีนี้คือด้วยวิธีการ**ShapeRenderer.RenderToScale**แทนที่จะเป็นขนาดตัวอักษรคุณเลือกค่าลอยที่ หากค่าลอยเท่ากับ1.0ทำให้รูปร่างแสดงผลที่100% ของขนาดเดิม ค่าลอยของ0.5จะลดขนาดภาพลงครึ่งหนึ่ง.

## การแสดงผลรูปภาพรูปร่าง

คลาส[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)แสดงถึงวัตถุในเลเยอร์รูปวาดเช่นAutoShapeกล่องข้อความแบบอิสระOLEวัตถุควบคุมแอคทีฟเอ็กซ์ ใช้ชั้นเรียน**Shape**คุณสามารถสร้างหรือปรับเปลี่ยนรูปร่างในเอกสารMicrosoft Word คุณสมบัติที่สำคัญของรูปร่างคือ[ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) รูปร่างของชนิดที่แตกต่างกันสามารถมีความสามารถที่แตกต่างกันในเอกสารคำ ตัวอย่างเช่นรูปภาพและOLEรูปทรงเท่านั้นที่สามารถมีรูปภาพภายในได้ในขณะที่รูปทรงส่วนให.

ตัวอย่างต่อไปนี้แสดงวิธีการแสดงผลอิมเมจรูปร่างไปยังอิมเมจJPEGแยกต่างหากจากเอกสา:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## ดึงขนาดรูปร่าง

คลาส[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/)นอกจากนี้ยังมีฟังก์ชั่นเพื่อดึงขนาดของรูปร่างเป็นพิกเซลผ่านวิธีการ[GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/) เมธอดนี้ยอมรับพารามิเตอร์แบบลอยตัวสองชนิด–เดี่ยว)-สเกลและDPIซึ่งใช้ในการคำนวณขนาดรู วิธีการส่งคืนออบเจกต์`Size`ซึ่งมีความกว้างและความสูงของขนาดที่คำนวณ นี้จะมีประโยชน์เมื่อจำเป็นต้องทราบขนาดของรูปร่างที่แสดงผลล่วงหน้าตัวอย่างเช่นเมื่อ.

ตัวอย่างด้านล่างแสดงวิธีการสร้างบิตแมปใหม่และวัตถุกราฟิกที่มีความกว้างและความสู:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

เมื่อใช้วิธีการ**RenderToSize**หรือ**RenderToScale**ขนาดภาพที่แสดงผลจะถูกส่งกลับไปยังออบเจกต์[SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) นี้สามารถกำหนดให้ตัวแปรและใช้ในกรณีที่จำเป็น.

คุณสมบัติ**SizeInPoints**จะส่งคืนขนาดรูปร่างที่วัดเป็นจุด(ดู[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) ผลลัพธ์คือ`SizeF`วัตถุที่มีความกว้างและความสูง.
