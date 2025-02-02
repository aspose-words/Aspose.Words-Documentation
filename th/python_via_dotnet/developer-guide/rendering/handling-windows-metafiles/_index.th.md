---
title: การจัดการไฟล์ Windows Metafile
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การจัดการไฟล์ Windows Metafile
linktitle: การจัดการไฟล์ Windows Metafile
description: "Aspose.Words สำหรับ Python via .NET ใช้โปรแกรมเล่น Windows Metafile ของตัวเองเพื่อเล่นรูปแบบ Metafile บนทุกแพลตฟอร์ม และรองรับการจัดการคุณสมบัติ metafile พื้นฐาน และสามารถใช้ทางเลือกแทนโปรแกรมเล่น metafile ประเภทอื่นได้"
type: docs
weight: 30
url: /th/python-net/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

รูปแบบ Windows Metafile เป็นรูปแบบไฟล์รูปภาพที่สามารถมีทั้งกราฟิกแบบเวกเตอร์และแรสเตอร์ รูปแบบนี้ใช้เพื่อจัดเก็บข้อมูลกราฟิกในหน่วยความจำหรือไฟล์บนดิสก์ ไฟล์เมตาจะจัดเก็บรายการการเรียกใช้ฟังก์ชันใน Windows Graphics Device Interface (GDI) ที่ต้องดำเนินการเพื่อแสดงภาพบนหน้าจอ ระบบตีความและดำเนินการคำสั่งเหล่านี้ในบริบทการแสดงผล

ก่อนหน้านี้ Windows Metafile เป็นรูปแบบภาพเวกเตอร์เดียวที่ Microsoft Word รองรับ ขณะนี้ Microsoft Word รองรับรูปแบบ SVG แล้ว แต่รูปแบบ metafile ยังคงใช้กันทั่วไปในเอกสาร Word นอกจากนี้ Metafile อาจเป็นรูปแบบการแลกเปลี่ยนสำหรับแอปพลิเคชันอื่นๆ เช่น Microsoft Visio โดยพื้นฐานแล้ว วัตถุประสงค์หลักของ Metafile คือเพื่อให้แน่ใจว่ามีการแลกเปลี่ยนข้อมูลกราฟิกระหว่างแอปพลิเคชัน Windows

Windows Metafile มี 3 เวอร์ชัน:

- WMF - ร้านค้าเรียกไปที่ 16 บิต GDI
- EMF – ร้านค้าเรียกไปยัง Win32/GDI
- ร้านค้า EMF+ Metafile เรียกไปที่ GDI+ EMF+ Metafile อาจเป็นแบบคู่ก็ได้ โดยอธิบายกราฟิกเดียวกันกับทั้ง EMF และ EMF+

ปัญหาที่มีอยู่กับ Windows Metafile คือ รูปแบบที่ไม่ใช่ Word ส่วนใหญ่ไม่รองรับ ซึ่งมักจะบันทึกเอกสารไว้ ดังนั้นจึงจำเป็นต้องแปลงรูปแบบ Metafile เป็นรูปแบบแรสเตอร์หรือเวกเตอร์อื่น ง่ายต่อการแปลง Windows Metafile เป็นภาพแรสเตอร์บน .NET เพียงส่งไปที่ GDI+ แต่เป็นไปไม่ได้บนแพลตฟอร์มอื่น เนื่องจากแม้แต่ GDI+ ก็ไม่มีฟังก์ชันในการแยกกราฟิกเวกเตอร์จาก Metafile เพื่อแก้ไขปัญหาเหล่านี้ Aspose.Words จึงใช้โปรแกรมเล่น Windows Metafile ของตัวเอง ซึ่งสามารถเล่นรูปแบบ Metafile ทั้งกราฟิกแบบเวกเตอร์และแรสเตอร์ได้บนทุกแพลตฟอร์ม

## การควบคุม Aspose.Words Metafile Player

คลาส [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) ช่วยให้คุณควบคุมโปรแกรมเล่นเมตาไฟล์ได้ ตัวอย่างเช่น คุณสามารถกำหนดวิธีการแสดงผลรูปภาพ metafile โดยใช้คุณสมบัติ [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) ซึ่งมีความหมายพิเศษเมื่อแปลงเป็นบิตแมป (ดูคุณสมบัติ [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/) ด้วย)

การบันทึกเป็นบิตแมปทำงานแตกต่างออกไปบนแพลตฟอร์มอื่นที่ไม่ใช่ .NET แม้ว่าการเรนเดอร์ .NET GDI+ จะเป็นข้อมูลอ้างอิงที่ทำงานได้เกือบจะสมบูรณ์แบบแม้แต่กับรูปแบบเมตาไฟล์ที่ซับซ้อนที่สุด แต่บนแพลตฟอร์มอื่นก็อาจทำให้เกิดปัญหาหรือไม่ได้รับการรองรับเลย

## รองรับการดำเนินงานแรสเตอร์

การดำเนินการแรสเตอร์เป็นฟีเจอร์เมตาไฟล์ที่ซับซ้อน ซึ่งปัจจุบันมีการรองรับที่จำกัด การดำเนินการแรสเตอร์มีอยู่ในรูปแบบเมตาไฟล์ WMF และ EMF รูปแบบเมตาไฟล์ EMF+ ไม่ได้ใช้การดำเนินการแรสเตอร์โดยตรง แต่สามารถมีส่วน EMF, เมตาไฟล์ WMF หรือ EMF แบบฝังได้

มีการดำเนินการแรสเตอร์แบบไบนารีและแบบไตรภาค:

- การดำเนินการแรสเตอร์แบบไบนารีใช้กับคำสั่งการวาดด้วยปากกา เช่น การวาดเส้นและเส้นโค้ง เมื่อวาดเส้น สีปากกาจะรวมกับสีบิตแมปปลายทาง (สีของพิกเซลที่สอดคล้องกันบนพื้นผิวอุปกรณ์) โดยใช้การดำเนินการทางลอจิคัลระดับบิตที่ระบุกับค่าสีฐานสิบหก ตัวอย่างรูปภาพด้านล่างแสดงให้เห็นถึงผลกระทบของการดำเนินการแรสเตอร์ไบนารีทั้ง 16 รายการที่ใช้กับแถบสีที่แตกต่างกัน 20 แถบ แถบสีแนวตั้งจะถูกวาดก่อน แถบแนวนอนจะถูกวาดหลังจากใช้การดำเนินการแรสเตอร์ไบนารีแต่ละครั้ง ในกรณีทั่วไป R2_BLACK วาดสีดำ R2_NOT กลับสี R2_NOP จะไม่เปลี่ยนพื้นหลัง และ R2_WHITE วาดสีขาว

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="นี่คือ windows-metafiles-aspose-words-net-1" style="width:650px"/>

- การดำเนินการแรสเตอร์แบบไตรภาคจะถูกนำไปใช้เมื่อวาดภาพบิตแมป พวกเขารวมสีของพิกเซลรูปภาพบิตแมปที่สอดคล้องกัน แปรง และบิตแมปปลายทาง โดยใช้การดำเนินการทางตรรกะระดับบิตด้วยค่าสีฐานสิบหกที่ระบุ วัตถุประสงค์ทั่วไปประการหนึ่งของการใช้การดำเนินการแรสเตอร์แบบไตรภาคคือการจำลองความโปร่งใส รูปภาพที่ให้ไว้ในตัวอย่างด้านล่างสาธิตวิธีการจำลองความโปร่งใสของไอคอน บิตแมปมีสองประเภท: บิตแมปมาสก์ขาวดำและบิตแมปสี ขั้นแรก มาส์กบิตแมปจะถูกวาดด้วยการดำเนินการแรสเตอร์ SRCAND โดยจะเปลี่ยนขอบเขตไอคอนทึบแสงเป็นขาวดำ โดยไม่เปลี่ยนแปลงพื้นที่โปร่งใส จากนั้นบิตแมปที่สองจะถูกวาดด้วยการดำเนินการแรสเตอร์ SRCINVERT โดยจะแสดงพิกเซลสีบนพื้นที่สีดำ โดยปล่อยให้พื้นที่โปร่งใสไม่เปลี่ยนแปลง

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="นี่คือ windows-metafiles-aspose-words-net-2" style="width:650px"/>

การดำเนินการแรสเตอร์ไม่สามารถแปลงเป็นกราฟิกแบบเวกเตอร์ได้โดยตรง Aspose.Words จำลองการทำงานของแรสเตอร์โดยการแรสเตอร์บางส่วนบนพื้นผิวอุปกรณ์ที่ได้รับผลกระทบจากการทำงานของแรสเตอร์ เพื่อจุดประสงค์นี้ จะใช้คุณสมบัติ [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/)

{{% alert color="primary" %}}

แม้ว่าการดำเนินการแรสเตอร์ไบนารี่จะไม่ได้รับการสนับสนุนในขณะนี้ และ Aspose.Words รองรับการดำเนินการแรสเตอร์แบบไตรภาคในจำนวนจำกัด แต่ก็สามารถจัดการกรณีพื้นฐานของการแปลงเป็นกราฟิกเวกเตอร์ได้โดยตรง เช่น R2_BLACK, R2_WHITE, R2_NOP นอกจากนี้ การแรสเตอร์ของพื้นผิวอุปกรณ์ยังส่งผลต่อประสิทธิภาพอย่างมาก โดยเฉพาะอย่างยิ่งเมื่อมีบันทึกการทำงานของแรสเตอร์จำนวนมากที่เกี่ยวข้อง

{{% /alert %}}

ตัวอย่างที่แสดงด้านล่างสาธิตวิธีที่ Aspose.Words เรนเดอร์เมตาไฟล์เป็นบิตแมป เมื่อไม่สามารถเรนเดอร์บันทึกเมตาไฟล์บางส่วนเป็นกราฟิกแบบเวกเตอร์ได้อย่างถูกต้อง:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## การตั้งค่าสำรอง Metafile

Aspose.Words ไม่รองรับฟีเจอร์เมตาไฟล์จำนวนหนึ่งที่ซับซ้อนหรือหายากที่สุด ในกรณีนี้ Aspose.Words อาจใช้ทางเลือกแทนโปรแกรมเล่นไฟล์เมตาประเภทอื่น

ประการแรก Aspose.Words ดำเนินการสำรองจากโปรแกรมเล่นเมตาไฟล์เวกเตอร์ไปเป็นแรสเตอร์ ซึ่งควบคุมโดยคุณสมบัติ [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) หากปิดใช้งานคุณลักษณะทางเลือก Aspose.Words จะพยายามแสดงกราฟิกทดแทนบางส่วนแทนคุณลักษณะที่ไม่ได้รับการสนับสนุน

Aspose.Words เล่น metafile เป็นแรสเตอร์ได้สำเร็จโดยใช้ GDI+ บน .NET ซึ่งทำให้ตัวเลือกการโทรกลับนี้ปลอดภัย

ประการที่สอง มีตัวเลือกสำหรับ EMF+ Dual metafile เพื่อสำรองจากการเล่นส่วน EMF+ ไปยังส่วน EMF มันถูกควบคุมโดย [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/) หากมีปัญหาบางอย่างเกิดขึ้นเมื่อเล่นส่วน EMF ก็อาจใช้ทางเลือกกลับเป็นแรสเตอร์ได้เช่นกัน

สำหรับการดำเนินการแรสเตอร์ หากปิดใช้งาน [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) การดำเนินการแรสเตอร์จะถือว่าไม่รองรับ ซึ่งจะทริกเกอร์ทางเลือกสำรองให้กับโปรแกรมเล่นเมตาไฟล์บิตแมปหากเปิดใช้งาน ดังนั้น หากคุณมีเมตาไฟล์ที่มีการดำเนินการแรสเตอร์ แต่คุณไม่ต้องการใช้การจำลองการดำเนินการแรสเตอร์ แต่ยังต้องการรับเอาต์พุตเวกเตอร์ด้วยกราฟิกทดแทน ให้เลือก [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector)
