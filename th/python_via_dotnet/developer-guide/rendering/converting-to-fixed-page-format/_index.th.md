---
title: การแปลงเป็นรูปแบบหน้าตายตัว
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การแปลงเป็นรูปแบบหน้าตายตัว
linktitle: การแปลงเป็นรูปแบบหน้าตายตัว
description: "บันทึกเอกสารเป็นรูปแบบ PDF, XPS, HTML, XAML, PostScript และ PCL โดยใช้ Python"
type: docs
weight: 10
url: /th/python-net/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words ใช้เครื่องมือเค้าโครงหน้าของตัวเอง ก่อนที่จะเจาะลึกข้อมูลจำเพาะ ควรหารือเกี่ยวกับเอกสารในระดับสูงก่อน เมื่อคิดถึงเอกสาร ผู้ใช้มักจะนึกถึงแผ่นกระดาษจำนวนหนึ่งที่มีคำ รูปภาพ ตาราง และแผนภูมิ เอกสารอาจมีหลายประเภท เช่น ข้อความ สเปรดชีต สไลด์ แบบร่าง CAD ผังงาน ดังนั้นจึงสามารถมีเค้าโครงที่แตกต่างกันได้ แอปพลิเคชันส่วนใหญ่อนุญาตให้ส่งเอกสารไปยังเครื่องพิมพ์ นี่คือเวลาที่ผู้ใช้สามารถดูลักษณะที่ปรากฏที่ต้องการขั้นสุดท้ายของเอกสารได้จริง

## การแสดงเอกสารในแอพพลิเคชั่นต่างๆ

แอปพลิเคชันดูหรือเผยแพร่เอกสารต่างๆ ช่วยให้ผู้ใช้สามารถเปิด (Adobe Acrobat, XPS Viewer) และบางครั้งแก้ไขเอกสาร (Adobe InDesign) ในรูปแบบเฉพาะได้ โดยทั่วไปแอปพลิเคชันเหล่านี้จะสร้างเอกสารรูปแบบที่เรียกว่า "หน้าคงที่" รูปแบบเอกสารดังกล่าวจะอธิบายได้อย่างแม่นยำว่าเนื้อหาของเอกสารถูกวางไว้ที่ใดในทุกหน้า ภายใน รูปแบบ PDF หรือ XPS จะมีคำอธิบายของทุกหน้า เช่นเดียวกับคำแนะนำในการวาดภาพ โดยระบุเค้าโครงของเนื้อหาบนหน้า ซึ่งคล้ายกับรูปแบบรูปภาพ โดยอธิบายตำแหน่งที่เนื้อหาแสดงในรูปแบบแรสเตอร์หรือเวกเตอร์

ในทางตรงกันข้าม แอปพลิเคชันแก้ไขข้อความบางแอปพลิเคชันไม่รองรับการดูหน้าเอกสาร ตัวอย่างเช่น Microsoft Notepad รองรับฟังก์ชันน้อยมากนอกเหนือจากการแสดง แก้ไข และพิมพ์ข้อความ ข้อสังเกตที่สำคัญที่นี่คือแอปพลิเคชันดังกล่าวไม่สามารถแสดงหน้าต่างๆ ของเอกสารหรือบอกผู้ใช้ว่าจะพิมพ์กี่หน้า ทำได้เพียงอนุญาตให้ดูเนื้อหาเอกสารเท่านั้น เอกสารสามารถบันทึกในรูปแบบข้อความธรรมดาและสามารถเปิดได้โดยแอปพลิเคชันอื่น ๆ อีกมากมาย การใช้แอปพลิเคชันที่อนุญาตให้ดูเนื้อหาไบนารีของไฟล์ที่กำหนดเองจะทำให้สามารถดูสิ่งที่เก็บไว้ในไฟล์เอกสารได้ - มันเป็นเพียงข้อความธรรมดาไม่มีอะไรอื่นในนั้น

แอปพลิเคชันแก้ไขข้อความที่ซับซ้อนกว่าเล็กน้อย เช่น Microsoft WordPad จะบันทึกเอกสารในรูปแบบ Rich Text Format (RTF) ซึ่งรองรับฟังก์ชันการจัดรูปแบบเพิ่มเติม เช่น การแทรกรูปภาพ การจัดรูปแบบอักขระ ระยะขอบของย่อหน้า และการเว้นวรรค อย่างไรก็ตาม รูปแบบ RTF ยังมีเฉพาะเนื้อหาของเอกสารเท่านั้น โดยไม่มีข้อมูลเกี่ยวกับหน้าต่างๆ

Microsoft Word เป็นแอปพลิเคชันแก้ไขข้อความที่ทันสมัยที่สุดใน Windows ในปัจจุบัน โดยจัดรูปแบบไฟล์ในรูปแบบ DOCX ซึ่งอธิบายเนื้อหาของเอกสารได้อย่างยืดหยุ่นและกว้างขวาง ช่วยให้ผู้ใช้สามารถระบุขนาดหน้า การวางแนวสำหรับส่วนของเอกสาร และเป็นแอปพลิเคชัน WYSIWYG แม้กระทั่งแสดงหน้าเอกสารบนหน้าจอ อย่างไรก็ตาม ยังไม่มีข้อมูลเกี่ยวกับวิธีแสดงเนื้อหาของเอกสารในหน้าที่มีอยู่ในไฟล์เอกสาร ไฟล์เอกสารอธิบายเฉพาะเนื้อหาและความสัมพันธ์ของออบเจ็กต์เอกสารต่อกัน พร้อมด้วยข้อจำกัดทางเรขาคณิตบางประการ ด้วยเหตุนี้ ก่อนที่จะแสดงเอกสาร Microsoft Word จะคำนวณข้อมูลนั้นเอง นี่คือที่มาของเค้าโครงหน้ากระดาษ

## เค้าโครงหน้าคืออะไร

เค้าโครงหน้าเอกสารคือโครงสร้างข้อมูล ซึ่งอธิบายตำแหน่งของออบเจ็กต์เฉพาะบนหน้าสำหรับออบเจ็กต์เอกสารทั้งหมด นอกจากนี้ เนื่องจากวัตถุมีคุณสมบัติที่ส่งผลต่อลักษณะที่ปรากฏ เช่น ขนาดแบบอักษร การแรเงา หรือเอฟเฟ็กต์การวาด คุณไม่เพียงแต่ต้องรู้ว่าวัตถุอยู่ที่ไหน แต่ยังต้องทราบด้วยว่าวัตถุนั้นครอบครองพื้นที่ใด และจะหรือไม่ นำไปใช้กับหลายหน้าเพื่อให้วัตถุอื่นไม่ทับซ้อนในพื้นที่เดียวกัน

Aspose.Words ใช้ฟังก์ชันเค้าโครงหน้าภายใน ทำให้สามารถสร้างรูปแบบหน้าคงที่ทั้งหมด เช่น PDF, XPS และรูปแบบรูปภาพต่างๆ หากไม่มีเค้าโครงหน้า ข้อมูลที่จัดเก็บไว้ในไฟล์เอกสารหน้าคงที่จะไม่สามารถใช้ได้ และรูปแบบเหล่านี้ทั้งหมดจะไม่ได้รับการสนับสนุน

ความสัมพันธ์ระหว่างเอกสารและเค้าโครงหน้าค่อนข้างง่าย ในขณะที่เอกสารอธิบายเนื้อหา เค้าโครงหน้าที่เกี่ยวข้องจะอธิบายเรขาคณิตของเนื้อหานั้น โปรดทราบว่าเค้าโครงหน้าไม่สามารถมีอยู่ได้หากไม่มีเอกสาร เนื่องจากจะไม่มีเนื้อหาสำหรับการคำนวณเรขาคณิต แต่เอกสารสามารถมีอยู่ได้หากไม่มีเค้าโครงหน้า ตัวอย่างเช่น เมื่อแปลงเอกสาร DOCX เป็นเอกสาร RTF โดยทั่วไปไม่จำเป็นต้องทราบเรขาคณิต เนื่องจากไม่มีรูปแบบใดที่จะจัดเก็บไว้

## การสร้างเค้าโครงหน้า

การสร้างเค้าโครงหน้าอาจเป็นขั้นตอนที่มีค่าใช้จ่ายสูง ทั้งในด้านความเร็วและหน่วยความจำ นี่เป็นเพราะสาเหตุหลายประการ:

- เอกสารอาจมีเนื้อหาจำนวนมากซึ่งอาจจำเป็นต้องแสดงบนหลายพันหน้า จำเป็นต้องอธิบายเรขาคณิตของวัตถุทุกชิ้นในทุกหน้า ซึ่งกินทรัพยากรหน่วยความจำ
- เอกสารอาจมีกฎหลายข้อ วางข้อจำกัดด้านเรขาคณิต อาจต้องใช้เวลาในการคำนวณพอสมควร เพื่อให้แน่ใจว่าทุกข้อจำกัดจะได้รับการตอบสนอง
- คุณสมบัติบางอย่างของเอกสาร เช่น ฟิลด์ `NUMPAGES` สร้างการพึ่งพาแบบเรียกซ้ำสำหรับค่าคุณสมบัติในอนาคต ซึ่งไม่พร้อมใช้งานในขณะที่คำนวณ สิ่งนี้นำไปสู่การคำนวณซ้ำ ๆ และเพิ่มเวลาในการคำนวณ

เนื่องจากเหตุผลที่กล่าวมาข้างต้น Aspose.Words จะสร้างเค้าโครงหน้าเมื่อจำเป็นเท่านั้น เหตุผลทั่วไปสำหรับสิ่งนี้คือการร้องขอให้แสดงหน้าเอกสารหรือเพื่อให้ได้ค่าฟิลด์ที่ขึ้นอยู่กับข้อมูลที่มีอยู่ในเค้าโครงหน้า เหตุผลที่ชัดเจนน้อยกว่าอาจเป็นเพราะการส่งออกเอกสารเป็น HTML แม้ว่า HTML จะไม่ใช่รูปแบบหน้าคงที่และไม่ได้อธิบายเรขาคณิตของออบเจ็กต์เนื้อหา แต่ก็ยังรองรับรูปภาพ รูปภาพดังกล่าวอาจอยู่ในรูปแบบของรูปร่างที่สร้างในรูปแบบ Microsoft Word โดยมีข้อความอยู่ข้างใน ตัวอย่างเช่น แผนภูมิที่มีป้ายกำกับแกนสามารถส่งออกเป็นรูปภาพเป็น HTML ได้ แต่ก่อนที่จะดำเนินการดังกล่าวได้ Aspose.Words จำเป็นต้องแสดงรูปภาพนั้น และด้วยเหตุนี้จึงต้องรู้ว่าจะแสดงป้ายกำกับที่ใด ดูตัวอย่างแผนภูมิด้านล่าง:

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="การแปลงเป็นรูปแบบหน้าคงที่_1" style="width:800px"/>

### คุณสมบัติที่ไม่ใช่เรขาคณิต

นอกเหนือจากการจัดการข้อมูลทางเรขาคณิตแล้ว เค้าโครงหน้ายังรับผิดชอบในการคำนวณสีและรูปแบบเส้นขอบอีกด้วย ใน Microsoft Word สีข้อความสามารถระบุได้โดยอัตโนมัติ ซึ่งหมายความว่าการเลือกสีควรเป็นไปตามสีแรเงาของเซลล์หรือย่อหน้า หรือขึ้นอยู่กับสีของหน้าที่ข้อความปรากฏ

เค้าโครงหน้าจะคำนวณตำแหน่งที่ข้อความจะปรากฏและเนื้อหาใดที่จะแสดงผลด้านหลัง ทำให้สามารถคำนวณสีได้ มีการคำนวณเฉพาะอื่นๆ ที่ดำเนินการโดยเค้าโครงหน้า ตัวอย่างเช่น เส้นขอบแนวนอนในตารางขึ้นอยู่กับว่าแถวของตารางอยู่ท้ายคอลัมน์ของข้อความหรือไม่ และแบ่งข้ามคอลัมน์หรือไม่ หากแถวถูกแสดงผลครั้งสุดท้ายในคอลัมน์ เส้นขอบด้านล่างจะถูกใช้แทนแนวนอน

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

ใน Aspose.Words ผู้ใช้สามารถขอได้ว่าจะสร้างเค้าโครงหน้าใหม่หรืออัปเดตเค้าโครงหน้าที่มีอยู่ ทั้งสองอย่างนี้สามารถทำได้โดยวิธี [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) ซึ่งจัดทำโดยคลาส [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) หากไม่มีเค้าโครงหน้า แต่จำเป็นต้องใช้ (เช่น เมื่อส่งออกเอกสารเป็นรูปแบบหน้าคงที่) Aspose.Words จะเรียกใช้วิธีนี้โดยอัตโนมัติ อย่างไรก็ตาม หากมีเค้าโครงหน้าอยู่แล้ว Aspose.Words จะใช้เค้าโครงหน้าที่มีอยู่แล้ว เพื่อหลีกเลี่ยงการใช้ทรัพยากรที่จำเป็นในการอัปเดต ในกรณีนี้ ผู้ใช้จำเป็นต้องเรียกใช้เมธอด [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) เพื่อให้แน่ใจว่าเค้าโครงหน้าเป็นข้อมูลล่าสุดกับโมเดลเอกสาร

### โครงสร้างไดนามิก

กระบวนการสร้างเค้าโครงหน้าประกอบด้วยขั้นตอนต่อไปนี้:

- *Conversion* – แจกแจงเนื้อหาของโมเดลเอกสารและเตรียมออบเจ็กต์เค้าโครงที่สอดคล้องกัน
- *Build* – การจัดวางวัตถุเค้าโครงเพื่อแสดงเนื้อหาของเอกสารบนหน้าต่างๆ
- *Reflow* – อัปเดตการจัดเรียงวัตถุเพื่อตอบสนองข้อจำกัดทางเรขาคณิต
- *การฉายวัตถุเค้าโครงลงในการนำเสนอหน้าคงที่และการสรุปข้อมูลสี*
- *การสร้างและการจัดเรียงเนื้อหารูปร่างใหม่* – ขั้นตอนที่จำเป็นหากเอกสารมีรูปร่างที่มีเนื้อหาข้อความซ้อนกัน

โปรดทราบว่าเค้าโครงหน้าเป็นโครงสร้างไดนามิก ซึ่งสามารถสร้างใหม่ได้บางส่วน สิ่งนี้จำเป็นอย่างยิ่งเมื่อไม่สามารถคำนวณค่าฟิลด์โดยไม่ต้องสร้างโครงสร้างโครงร่างเอกสารใหม่ ฟิลด์สามารถอ้างอิงตำแหน่งของออบเจ็กต์บนเพจได้ และในเวลาเดียวกัน ค่าของฟิลด์เองก็ถูกแสดงผลบนเพจด้วย ซึ่งส่งผลต่อตำแหน่งของออบเจ็กต์ที่อ้างอิง ไม่สามารถสร้างเค้าโครงหน้าได้ในครั้งเดียว เนื่องจากค่าฟิลด์อาจยังไม่มีให้ใช้งานในขณะที่วางตำแหน่งบนเพจ

พิจารณาสถานการณ์ทั่วไปเมื่อช่อง `NUMPAGES` ปรากฏในส่วนท้ายของหน้าแรกในเอกสาร ค่าของฟิลด์นี้คือจำนวนหน้าทั้งหมด ในการวางตำแหน่งฟิลด์บนเพจ ควรทราบค่าของฟิลด์นั้น หากขณะนี้มีเพียงหน้าแรกที่กำลังสร้างอยู่ ยังไม่ทราบจำนวนหน้าทั้งหมด ในกรณีนี้ โครงร่างเพจต้องใช้ค่าเริ่มต้น และกลับมาที่ฟิลด์นั้นในภายหลัง และเปลี่ยนค่าตามการคำนวณจริง อย่างไรก็ตาม การเปลี่ยนแปลงค่าฟิลด์อาจส่งผลต่อเนื้อหาเอกสารอื่นๆ บนเพจ และท้ายที่สุดอาจทำให้เพจใหม่ถูกต่อท้ายหรือเพจที่มีอยู่ถูกลบออก ซึ่งจะทำให้ค่าที่คำนวณล้าสมัย ปัญหานี้สามารถแก้ไขได้ด้วยการทำให้สามารถอัปเดตเค้าโครงหน้าที่มีอยู่ได้

เมื่อสร้างเลย์เอาต์ คุณยังสามารถตั้งค่าคุณสมบัติ [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) ที่ส่งผลต่อเอาต์พุตของเอกสารบนเพจต่างๆ ได้

## บันทึกเป็นรูปแบบหน้าคงที่

หลังจากสร้างเค้าโครงหน้าและคำนวณเรขาคณิตของวัตถุและตำแหน่งบนหน้าแล้ว เอกสารสามารถบันทึกในรูปแบบหน้าคงที่ที่ Aspose.Words รองรับ เมื่อบันทึกเอกสารเป็นรูปแบบหน้าคงที่ คุณสามารถใช้ตัวเลือกการแสดงผลทั่วไปสำหรับรูปแบบเหล่านี้ทั้งหมดได้ พวกเขาอนุญาตให้ควบคุม:

- จำนวนและช่วงของหน้าที่มีอยู่ในเอกสารเอาต์พุต ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/))
- ชุดอักขระที่ใช้ในการเรนเดอร์ตัวเลข ([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/))
- เครื่องเล่นเมตาไฟล์ ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/)) สำหรับรายละเอียดเพิ่มเติม โปรดดูบทความ [การจัดการไฟล์ Windows Metafile](/words/th/python-net/handling-windows-metafiles/)
- อัตราคุณภาพสำหรับการบีบอัดภาพ JPEG ใหม่ ซึ่งค่าอาจแตกต่างกันเล็กน้อย ขึ้นอยู่กับรูปแบบการบันทึก ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/)) ที่เลือก
- การเพิ่มประสิทธิภาพกราฟิกแบบเวกเตอร์ในเอาต์พุต Aspose.Words ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/))
- ตัวเลือกกราฟิกเมื่อบันทึกเป็นรูปแบบ Tiff, PNG, Bmp, Jpeg, Emf ([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/), [use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/))
- บันทึกเอกสารในระดับสีเทา ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/))
- สลับระหว่างการเรนเดอร์รูปร่าง DrawingML และรูปร่างทางเลือก ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/))
- สลับระหว่างโหมดการเรนเดอร์เอฟเฟกต์ DML ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/))

ตัวอย่างด้านล่างสาธิตวิธีการบันทึกเอกสารเป็นรูปแบบ JPEG โดยใช้วิธี [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) และตัวเลือกการแสดงผล:

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
