---
title: รูปร่างแยกจากเอกสาร
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การแสดงรูปร่างแยกจากเอกสาร
linktitle: การแสดงรูปร่างแยกจากเอกสาร
description: "แยกออบเจ็กต์กราฟิกต่างๆ เช่น รูปภาพ กล่องข้อความที่มีย่อหน้า หรือรูปร่างลูกศร เมื่อประมวลผลเอกสาร และส่งออกไปยังตำแหน่งภายนอกโดยใช้ Python"
type: docs
weight: 40
url: /th/python-net/rendering-shapes-separately-from-a-document/
---

เมื่อประมวลผลเอกสาร งานทั่วไปคือการแยกรูปภาพทั้งหมดที่พบในเอกสารและส่งออกไปยังตำแหน่งภายนอก งานนี้กลายเป็นเรื่องง่ายด้วย Aspose.Words API ซึ่งมีฟังก์ชันในการแยกและบันทึกข้อมูลรูปภาพอยู่แล้ว อย่างไรก็ตาม บางครั้งคุณอาจต้องการแยกเนื้อหากราฟิกประเภทอื่นๆ ที่แสดงโดยวัตถุรูปวาดประเภทอื่นในทำนองเดียวกัน เช่น กล่องข้อความที่มีย่อหน้า รูปร่างลูกศร และรูปภาพขนาดเล็ก ไม่มีวิธีที่ตรงไปตรงมาในการแสดงผลออบเจ็กต์นี้ เนื่องจากเป็นการผสมผสานระหว่างองค์ประกอบเนื้อหาแต่ละรายการ คุณอาจพบกรณีที่เนื้อหาถูกจัดกลุ่มเข้าด้วยกันเป็นวัตถุที่ดูเหมือนเป็นภาพเดียว

Aspose.Words มีฟังก์ชันสำหรับแยกเนื้อหาประเภทนี้ในลักษณะเดียวกับที่คุณสามารถแยกรูปภาพธรรมดาออกจากรูปร่างเป็นเนื้อหาที่แสดงผลได้ บทความนี้จะอธิบายวิธีการใช้ฟังก์ชันนี้เพื่อแสดงรูปร่างโดยไม่ขึ้นกับเอกสาร

## ประเภทรูปร่างใน Aspose.Words

เนื้อหาทั้งหมดในเลเยอร์การวาดเอกสารแสดงโดยโหนด [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) หรือ [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) ใน Aspose.Words Document Object Module (DOM) เนื้อหาดังกล่าวอาจเป็นกล่องข้อความ รูปภาพ รูปร่างอัตโนมัติ วัตถุ OLE ฯลฯ นอกจากนี้ บางฟิลด์ยังนำเข้าเป็นรูปร่างอีกด้วย เช่น ฟิลด์ `INCLUDEPICTURE`

รูปภาพธรรมดาแสดงโดยโหนด [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ของ [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image) โหนดรูปร่างนี้ไม่มีโหนดย่อย แต่ข้อมูลรูปภาพที่อยู่ภายในโหนดรูปร่างนี้สามารถเข้าถึงได้โดยคุณสมบัติ [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) ในทางกลับกัน รูปร่างสามารถประกอบด้วยโหนดย่อยจำนวนมากได้ ตัวอย่างเช่น รูปร่างกล่องข้อความซึ่งแสดงโดยคุณสมบัติ [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) สามารถประกอบด้วยโหนดจำนวนมาก เช่น [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) และ [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) รูปร่างส่วนใหญ่สามารถรวมโหนดระดับบล็อก [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) และ [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ได้ เหล่านี้เป็นโหนดเดียวกันกับที่ปรากฏในเนื้อหาหลัก รูปร่างมักจะเป็นส่วนหนึ่งของบางย่อหน้า ไม่ว่าจะรวมอยู่ในบรรทัดโดยตรงหรือยึดกับ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) แต่จะ "ลอย" ที่ใดก็ได้ในหน้าเอกสาร

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

เอกสารยังสามารถมีรูปร่างที่จัดกลุ่มไว้ด้วยกันได้ คุณสามารถเปิดใช้งาน Grouping ใน Microsoft Word ได้โดยเลือกหลายวัตถุแล้วคลิก "Group" ในเมนูคลิกขวา

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

ใน Aspose.Words กลุ่มรูปร่างเหล่านี้จะแสดงโดยโหนด [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) สิ่งเหล่านี้สามารถเรียกใช้ในลักษณะเดียวกันเพื่อแสดงทั้งกลุ่มเป็นรูปภาพ

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

รูปแบบ DOCX สามารถมีรูปภาพประเภทพิเศษ เช่น ไดอะแกรมหรือแผนภูมิ รูปร่างเหล่านี้ยังแสดงผ่านโหนด [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ใน Aspose.Words ซึ่งมีวิธีการที่คล้ายกันในการแสดงเป็นรูปภาพ ตามการออกแบบ รูปร่างไม่สามารถมีรูปร่างอื่นเหมือนเด็กได้ เว้นแต่รูปร่างนั้นจะเป็นรูปภาพ ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)) ตัวอย่างเช่น Microsoft Word ไม่อนุญาตให้คุณแทรกกล่องข้อความลงในกล่องข้อความอื่น

ประเภทรูปร่างที่อธิบายไว้ข้างต้นมีวิธีพิเศษในการแสดงรูปร่างผ่านคลาส [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) อินสแตนซ์ของคลาส [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) ถูกดึงข้อมูลสำหรับ [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) หรือ [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) ผ่านวิธี [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) หรือโดยการส่ง [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ไปยังตัวสร้างของคลาส [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) คลาสนี้ให้การเข้าถึงสมาชิก ซึ่งอนุญาตให้แสดงรูปร่างดังต่อไปนี้:

- ไฟล์บนดิสก์
- ลำธาร

{{% alert color="primary" %}}

เมื่อแสดงผล [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) จะต้องเป็นส่วนหนึ่งของลำดับชั้นเอกสาร หาก [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ไม่ได้เป็นส่วนหนึ่งของแผนผังเอกสาร เอาต์พุตที่แสดงผลจะว่างเปล่าหลังจากเรียกใช้เมธอด [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/)

{{% /alert %}}

## แสดงผลเป็นไฟล์หรือสตรีม

วิธีการ [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) ให้การโอเวอร์โหลดที่แสดงรูปร่างโดยตรงไปยังไฟล์หรือสตรีม การโอเวอร์โหลดทั้งสองยอมรับอินสแตนซ์ของคลาส [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) ซึ่งอนุญาตให้กำหนดตัวเลือกสำหรับการแสดงผลรูปร่าง ซึ่งทำงานในลักษณะเดียวกับวิธี [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) แม้ว่าจำเป็นต้องใช้พารามิเตอร์นี้ คุณสามารถส่งค่า Null โดยระบุว่าไม่มีตัวเลือกที่กำหนดเองได้

รูปร่างสามารถส่งออกในรูปแบบภาพใดก็ได้ที่ระบุในการแจงนับ [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) ตัวอย่างเช่น รูปภาพสามารถแสดงผลเป็นรูปภาพแรสเตอร์ เช่น JPEG โดยการระบุการแจงนับ [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) หรือเป็นรูปภาพเวกเตอร์ เช่น EMF โดยการระบุ [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf)

ตัวอย่างโค้ดด้านล่างแสดงการแสดงรูปร่างให้กับอิมเมจ EMF แยกจากเอกสาร และบันทึกลงดิสก์:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

ตัวอย่างโค้ดด้านล่างแสดงการแสดงรูปร่างเป็นภาพ JPEG แยกจากเอกสาร และบันทึกลงในสตรีม:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

คลาส [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) ช่วยให้คุณระบุตัวเลือกที่หลากหลายเพื่อควบคุมวิธีการเรนเดอร์รูปภาพ ฟังก์ชันการทำงานที่อธิบายไว้ข้างต้นสามารถนำไปใช้ในลักษณะเดียวกันกับโหนด [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) และ [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

## การแสดงภาพรูปร่าง

คลาส [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) แสดงถึงวัตถุในเลเยอร์การวาด เช่น รูปร่างอัตโนมัติ กล่องข้อความ รูปแบบอิสระ วัตถุ OLE ตัวควบคุม ActiveX หรือรูปภาพ เมื่อใช้คลาส [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) คุณสามารถสร้างหรือแก้ไขรูปร่างในเอกสาร Microsoft Word ได้ คุณสมบัติที่สำคัญของรูปร่างคือ [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/) รูปร่างประเภทต่างๆ สามารถมีความสามารถที่แตกต่างกันในเอกสาร Word ตัวอย่างเช่น เฉพาะรูปภาพและรูปร่าง OLE เท่านั้นที่สามารถมีรูปภาพอยู่ภายในได้ ในขณะที่รูปร่างส่วนใหญ่สามารถมีได้เฉพาะข้อความเท่านั้น

ตัวอย่างต่อไปนี้แสดงวิธีการเรนเดอร์รูปภาพ Shape เป็นรูปภาพ JPEG แยกจากเอกสารและบันทึกลงในดิสก์:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## การดึงข้อมูลขนาดรูปร่าง

คลาส [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) ยังมีฟังก์ชันในการดึงขนาดของรูปร่างเป็นพิกเซลผ่านวิธี [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) วิธีการนี้ยอมรับพารามิเตอร์ float (เดี่ยว) สองตัว ได้แก่ สเกลและ DPI ซึ่งใช้ในการคำนวณขนาดรูปร่างเมื่อมีการเรนเดอร์รูปร่าง วิธีการส่งกลับวัตถุ **Size** ซึ่งมีความกว้างและความสูงของขนาดที่คำนวณได้ สิ่งนี้มีประโยชน์เมื่อจำเป็นต้องทราบขนาดของรูปร่างที่เรนเดอร์ไว้ล่วงหน้า คุณสมบัติ [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) ส่งคืนขนาดรูปร่างที่วัดเป็นพอยต์ ผลลัพธ์ที่ได้คือวัตถุ **SizeF** ที่มีความกว้างและความสูง นอกจากนี้ คุณยังสามารถใช้คุณสมบัติ [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) เพื่อรับขอบเขตของรูปร่างจริงได้

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


