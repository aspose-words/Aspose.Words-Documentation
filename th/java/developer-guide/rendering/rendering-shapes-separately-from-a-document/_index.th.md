---
title: รูป ทรง ต่าง ๆ แยกออกจากเอกสาร
second_title: Aspose.Words สําหรับ Java
articleTitle: รูป ทรง ต่าง ๆ แยกออกจากเอกสาร
linktitle: รูป ทรง ต่าง ๆ แยกออกจากเอกสาร
description: "คลายวัตถุกราฟิกต่าง ๆ เช่น ภาพ, กล่องข้อความ, หรือรูปลูกศร เมื่อประมวลผลเอกสาร, และส่งออกมันไปยังตําแหน่งภายนอกโดยใช้ Java."
type: docs
weight: 40
url: /th/java/rendering-shapes-separately-from-a-document/
---

เมื่อมีการประมวลผลเอกสาร งานทั่วไปคือการดึงเอาภาพทั้งหมดที่พบในเอกสาร และส่งออกไปยังตําแหน่งภายนอก งานนี้กลายเป็นเรื่องง่ายๆ Aspose.Words API, ซึ่งให้คุณสมบัติในการสกัดและบันทึกข้อมูลภาพเรียบร้อยแล้ว อย่าง ไร ก็ ตาม บาง ครั้ง คุณ อาจ ต้องการ แยก เนื้อหา แบบ กราฟิก ชนิด อื่น ๆ ออก มา คล้าย ๆ กัน ซึ่ง แสดง ให้ เห็น ด้วย วัตถุ วาด ชนิด ต่าง ๆ เช่น กล่อง ข้อ ความ ที่ มี วรรค, รูป ลูกศร, และ ภาพ เล็ก ๆ. ไม่มีวิธีการใดตรงไปตรงมาในการแสดงวัตถุนี้ เนื่องจากมันเป็นส่วนผสมขององค์ประกอบเนื้อหาแต่ละบุคคล คุณ อาจ พบ กรณี หนึ่ง ด้วย เมื่อ มี การ รวม เนื้อหา เข้า ด้วย กัน ใน วัตถุ ที่ ดู เหมือน เป็น ภาพ เดียว.

Aspose.Words ให้ความสามารถในการแยกเนื้อหาประเภทนี้ออกมาในแบบเดียวกัน คุณสามารถดึงภาพแบบง่าย ๆ จากรูปร่างตามที่แก้ไขเนื้อหาได้ บทความ นี้ อธิบาย วิธี ใช้ ความ สามารถ นี้ เพื่อ ทํา ให้ มี รูป แบบ ที่ เป็น เอกเทศ ของ เอกสาร.

## ชนิดรูปทรงใน Aspose.Words

เนื้อหาทั้งหมดในชั้นวาดเอกสารทั้งหมด [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) หรือ [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) โหนดใน Aspose.Words มอดูลของเอกสาร (DOM) เนื้อหา เช่น นั้น อาจ เป็น กล่อง ส่ง ข้อ ความ, รูป ภาพ, ออโต สแฮป, วัตถุ โอ แอลเล, อื่น ๆ. บางทุ่งยังนําเข้าเป็นรูปทรง ตัวอย่างเช่น `INCLUDEPICTURE` สนาม

ภาพง่าย ๆ แทนด้วย **Shape** โหนด [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). โหนดรูปร่างนี้ไม่มีโหนดเด็ก แต่ข้อมูลภาพที่อยู่ในโหนดรูปร่างนี้ สามารถเข้าถึงได้โดย [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) ทรัพย์สิน ใน อีก ด้าน หนึ่ง รูป ร่าง อาจ ประกอบ ด้วย ปม เด็ก หลาย จุด ได้ ด้วย. ยกตัวอย่างเช่น รูปกล่องข้อความ ซึ่งแทนด้วย [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) ทรัพย์ สิน อาจ ประกอบ ด้วย หลาย ปม เช่น [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) ถึง [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). รูปทรงส่วนใหญ่สามารถรวม **Paragraph** ถึง **Table** โหนดระดับบล็อก นี่เป็นโหนดแบบเดียวกัน กับที่ปรากฎในร่างกายหลัก รูป ร่าง เป็น ส่วน หนึ่ง ของ บาง วรรค เสมอ ไม่ ว่า จะ เป็น ใน บรรทัด ใด ก็ ตาม หรือ เป็น ส่วน ที่ ยึด ติด กับ **วรรค** แต่ "ลอย" ที่ไหนก็ได้ในเอกสาร

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

เอกสาร ยัง มี รูป ทรง ที่ เรียง เป็น กลุ่ม ด้วย. Groupเปิดการใช้งาน ing ได้ Microsoft Word โดยการเลือกวัตถุและคลิ๊กGroup" ใน เมนู คลิก ขวา.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

ใน Aspose.Words, รูปทรงเหล่านี้แสดงโดย [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) โหนด นอก จาก นี้ อาจ เรียก ได้ ด้วย วิธี เดียว กัน นี้ เพื่อ ทํา ให้ ทั้ง กลุ่ม เป็น ภาพ.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

รูปแบบ DCX สามารถบรรจุชนิดของภาพพิเศษ เช่น แผนภูมิ หรือ แผนภูมิ รูปทรงเหล่านี้ยังแสดงผ่าน **Shape** โหนดใน Aspose.Words, ซึ่งยังให้วิธีการที่คล้ายกันในการแปลพวกเขาเป็นภาพ โดยการออกแบบรูปร่างไม่สามารถบรรจุรูปร่างอื่น ๆ เช่นเด็ก เว้นแต่รูปร่างที่เป็นภาพ (International)**ShapeType.Image**) ยกตัวอย่างเช่น Microsoft Word ไม่อนุญาตให้คุณใส่กล่องข้อความเข้าไปในกล่องข้อความอื่น ๆ

รูป แบบ ที่ กล่าว ถึง ข้าง ต้น ให้ วิธี การ พิเศษ เพื่อ ทํา ให้ รูป ทรง เปลี่ยน ไป [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) ชั้นเรียน. ตัวอย่างของ **ShapeRenderer** ห้องเรียนได้รับการรับสําหรับ **Shape** หรือ **GroupShape** ผ่าน **GetShapeRenderer** วิธีการหรือผ่าน **Shape** ถึงผู้สร้าง **ShapeRenderer** ชั้นเรียน. คลาสนี้จะให้สิทธิ์ในการเข้าใช้สมาชิก ซึ่งอนุญาตให้แสดงรูปร่างได้ดังนี้:

- แฟ้มบนดิสก์โดยใช้ [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) เกินขนาดวิธีการใช้
- สายน้ําใช้ [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) เกินขนาดวิธีการใช้
- กราฟิก วัตถุโดยการใช้ [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) ถึง [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) วิธี

{{% alert color="primary" %}}

เมื่อทําการแปล <span notrans="<span notrans=" **Shape**"=""></span>'"> มันจะต้องเป็นส่วนหนึ่งของการลําดับชั้นของเอกสาร ถ้า **Shape** ไม่ได้เป็นส่วนหนึ่งของต้นไม้ของเอกสารแล้วการแสดงผลที่แปลแล้วจะว่างเปล่าหลังจากการเชิญ **ShapeRenderer** วิธี

{{% /alert %}}

## กําลังแสดงไปยังแฟ้มหรือสายข้อมูล

เดอะ [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) วิธีการต่าง ๆ ให้ค่าเกินขนาดที่แปลงรูปร่าง โดยตรงไปยังแฟ้มหรือสายข้อมูล ทั้งสองตัวเกินขนาด ยอมรับตัวอย่างของ [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) คลาสนี้อนุญาตให้กําหนดตัวเลือกในการแสดงผลได้ นี่ใช้ได้เหมือนกับ [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) วิธี แม้ว่าพารามิเตอร์นี้จําเป็นต้องใช้, คุณก็สามารถผ่านค่าว่างได้ โดยระบุว่าไม่มีทางเลือกที่กําหนดเอง

รูปทรงสามารถส่งออกในรูปแบบใด ๆ ก็ตามที่ระบุไว้ในรูปแบบ [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) ปลดปล่อย ตัวอย่างเช่น, อิมเมจนี้สามารถแปลเป็นอิมเมจราสเตอร์ได้ เช่น JPEG โดยระบุ [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) การรวม, หรือเป็นภาพเวกเตอร์, เช่น EMF โดยระบุ [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

ตัวอย่างรหัสด้านล่างนี้ แสดงถึงการแปลงภาพเป็น EMF ที่แยกออกจากเอกสาร และบันทึกเป็นดิสก์:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

ตัวอย่างรหัสด้านล่างนี้ แสดงถึงการแปลงรูปร่างเป็นภาพแบบ JPEG แยกออกจากเอกสาร และบันทึกไปยังสายข้อมูล:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

เดอะ **ImageSaveOptions** คลาส ให้คุณได้กําหนดตัวเลือกต่าง ๆ ที่ควบคุมการแสดงผลของภาพ วิธี การ ที่ พรรณนา ไว้ ข้าง ต้น สามารถ ใช้ ได้ ใน ลักษณะ เดียว กัน กับ **GroupShape** ถึง **Shape** โหนด

## นําเสนอไปยัง `Graphics` วัตถุ

ตรงไปยัง **Graphics** วัตถุช่วยให้คุณสามารถกําหนดการตั้งค่าของคุณเอง และสถานะสําหรับ **Graphics** วัตถุ สภาพ การณ์ ทั่ว ไป เกี่ยว ข้อง กับ การ ทํา รูป ร่าง ให้ เป็น รูป แบบ โดย ตรง **Graphics** ดึงข้อมูลวัตถุจาก Windows แบบฟอร์มหรือบิตแมพ เมื่อ **Shape** โหนดถูกแก้ไข การตั้งค่าจะมีผลต่อรูปร่าง ตัวอย่างเช่น คุณสามารถหมุนหรือปรับขนาดรูปร่างได้โดยใช้ **RotateTransform** หรือ **ScaleTransform** วิธีการสําหรับ **Graphics** วัตถุ

ตัวอย่างด้านล่างนี้แสดงวิธีการสร้างรูปร่าง **Graphics** ออบเจ็กต์ที่แยกออกจากเอกสารและปรับใช้การหมุนไปยังภาพที่ถูกแปล:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

เช่นเดียวกัน, กับ [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) วิธีการ, [Tosize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)วิธีการสืบทอดจาก [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) มีประโยชน์ในการสร้างภาพตัวอย่างของเนื้อหาของเอกสาร แสดงขนาดรูปทรงผ่านทางตัวสร้าง เดอะ **RenderToSize** วิธีการยอมรับวิธีการ **Graphics** วัตถุ, พิกัด X และ Y ของตําแหน่งภาพ, และขนาดของภาพ (ความกว้างและความสูง) ที่จะถูกวาดลงบน **Graphics** วัตถุ

เดอะ **Shape** สามารถแปลงเป็นระดับบางส่วนโดยใช้ [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) วิธีการสืบทอดจาก [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) ชั้นเรียน. นี่คล้ายกับ [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) วิธีที่ยอมรับพารามิเตอร์หลักแบบเดียวกัน ผลต่างของสองวิธีการนี้คือ **ShapeRenderer.RenderToScale** คุณ จะ ทํา อย่าง ไร? หากค่าลอยเท่ากับ 1.0 ทําให้รูปร่างถูกแปลด้วยขนาดเดิม 100% ค่าลอยของ 0.5 จะลดขนาดภาพลงครึ่งหนึ่ง

## กําลังวาดภาพร่าง

เดอะ [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ชั้น เรียน แสดง ถึง วัตถุ ต่าง ๆ ใน ชั้น วาดภาพ เช่น กล่อง อัตโนมัติ, กล่อง ข้อ ความ, วัตถุ ฟรี, วัตถุ โอ แอลเล, การ ควบคุม การ เคลื่อน ไหว, หรือ ภาพ. ใช้ **Shape** ห้องเรียน คุณสามารถสร้างหรือปรับเปลี่ยนรูปร่างได้ Microsoft Word เอกสาร คุณสมบัติที่สําคัญของรูปร่างคือ [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). รูป ร่าง ของ คน ชนิด ต่าง ๆ อาจ มี ความ สามารถ ต่าง กัน ใน เอกสาร คํา. ตัว อย่าง เช่น มี เพียง รูป ปั้น และ รูป ทรง ของ โอแอล เท่า นั้น ที่ สามารถ มี ภาพ ภาย ใน ได้ ขณะ ที่ รูป แบบ ส่วน ใหญ่ มี ข้อ ความ เท่า นั้น.

ตัวอย่างต่อไปนี้ แสดงวิธีแสดงผลภาพแบบรูปร่างเป็นภาพแบบ JPEG แยกออกจากเอกสาร และบันทึกภาพไปยังดิสก์:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## กําลังรับค่าขนาดรูปร่าง

เดอะ [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) คลาสนี้ยังให้คุณสมบัติในการดึงข้อมูลขนาดของรูปร่าง โดยมีหน่วยเป็นพิกเซลผ่าน [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) วิธี วิธีการนี้ยอมรับการลอยตัวแบบสองแบบ (Single) พารามิเตอร์ – ขนาดและ DPI ซึ่งใช้ในการคํานวณขนาดของขนาดเมื่อแปลงรูปร่าง วิธีการกลับค่า [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) วัตถุที่บรรจุความกว้างและความสูงของขนาดคํานวณ นี่มีประโยชน์เมื่อต้องใช้ความรู้ ขนาดของรูปทรงที่แปลแล้วล่วงหน้า ตัวอย่างเช่น เมื่อสร้างบิตแมพใหม่จากการแสดงผลที่แปลแล้ว

ตัวอย่างด้านล่างนี้แสดงถึงวิธีสร้างวัตถุบิตแมพใหม่และกราฟิกด้วยความกว้างและความสูงของรูปร่างที่จะแก้ไข:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

เมื่อใช้ **RenderToSize** หรือ **RenderToScale** วิธีการ, ขนาดของภาพที่ถูกแปลแล้ว จะถูกคืนค่าไปใน [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) วัตถุ นี่สามารถกําหนดเป็นตัวแปร และใช้หากจําเป็น

เดอะ **SizeInPoints** ฟังก์ชัน SECONDS () จะคืนค่ากลับมาเป็นค่าเป็นค่าจํานวนวินาทีของเวลาที่กําหนด [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)) ผลก็คือ `SizeF` วัตถุที่บรรจุความกว้างและความสูง
