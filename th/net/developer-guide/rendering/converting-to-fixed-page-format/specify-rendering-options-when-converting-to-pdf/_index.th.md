---
title: ตัวเลือกเมื่อแปลงเป็น PDF
second_title: Aspose.Words สำหรับ .NET
articleTitle: ระบุตัวเลือกการเรนเดอร์เมื่อแปลงเป็น PDF
linktitle: ระบุตัวเลือกการเรนเดอร์เมื่อแปลงเป็น PDF
description: "แปลงเอกสารเป็น PDF ด้วยตัวเลือกขั้นสูงโดยใช้ C# แปลงแบบฟอร์ม DOCX เป็น PDF C# ใช้ PdfSaveOptions เพื่อเปลี่ยนผลลัพธ์ของการบันทึกเอกสารเป็น PDF"
type: docs
weight: 20
url: /th/net/specify-rendering-options-when-converting-to-pdf/
---

รูปแบบ PDF เป็นรูปแบบหน้าตายตัวที่ได้รับความนิยมอย่างมากในหมู่ผู้ใช้และได้รับการสนับสนุนอย่างกว้างขวางจากแอพพลิเคชั่นต่างๆ เนื่องจากเอกสาร PDF จะมีลักษณะเหมือนกันบนอุปกรณ์ใดๆ ด้วยเหตุนี้ การแปลงเป็น PDF จึงเป็นคุณสมบัติที่สำคัญของ Aspose.Words

PDF เป็นรูปแบบที่ซับซ้อน จำเป็นต้องมีการคำนวณหลายขั้นตอนในกระบวนการแปลงเอกสารเป็น PDF รวมถึงการคำนวณเค้าโครงด้วย เนื่องจากขั้นตอนเหล่านี้มีการคำนวณที่ซับซ้อน จึงใช้เวลานาน นอกจากนี้รูปแบบ PDF ยังค่อนข้างซับซ้อนด้วยตัวมันเอง มีโครงสร้างไฟล์ รูปแบบกราฟิก และการฝังแบบอักษรเฉพาะ นอกจากนี้ยังมีฟังก์ชันเอาต์พุตที่ซับซ้อน เช่น แท็กโครงสร้างเอกสาร การเข้ารหัส ลายเซ็นดิจิทัล และแบบฟอร์มที่แก้ไขได้

โปรแกรมเค้าโครง Aspose.Words เลียนแบบวิธีการทำงานของกลไกเค้าโครงหน้าของ Microsoft Word ดังนั้น Aspose.Words จึงทำให้เอกสารเอาต์พุต PDF ดูใกล้เคียงกับสิ่งที่คุณเห็นใน Microsoft Word มากที่สุด บางครั้งจำเป็นต้องระบุตัวเลือกเพิ่มเติมซึ่งอาจส่งผลต่อผลลัพธ์ของการบันทึกเอกสารในรูปแบบ PDF ตัวเลือกเหล่านี้สามารถระบุได้โดยใช้คลาส [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) ซึ่งมีคุณสมบัติที่กำหนดวิธีการแสดงเอาต์พุต PDF

ตัวอย่างการใช้ **PdfSaveOptions** มีดังต่อไปนี้

{{% alert color="primary" %}}

ปัจจุบัน คุณสามารถบันทึกเป็นรูปแบบ PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u และ PDF/UA-1 ได้ ใช้การแจงนับ [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) เพื่อกำหนดระดับการปฏิบัติตามมาตรฐาน PDF โปรดทราบว่าในรูปแบบ PDF/A ขนาดไฟล์เอาต์พุตจะใหญ่กว่าขนาดไฟล์ PDF ปกติ

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) และ [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) ถูกทำเครื่องหมายว่าล้าสมัย

สำหรับข้อมูลเพิ่มเติมเกี่ยวกับ PDF/A โปรดดูบทความถัดไป "เรียนรู้คุณลักษณะของการแปลงเป็น PDF/A"

{{% /alert %}}

## การสร้างเอกสาร PDF ด้วยแบบฟอร์มที่กรอกได้

นอกจากนี้ยังสามารถส่งออกแบบฟอร์มที่กรอกได้จากเอกสาร Microsoft Word ไปเป็นเอาต์พุต PDF ซึ่งมีแบบฟอร์มที่กรอกได้แทนข้อความธรรมดา ใช้คุณสมบัติ [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) เพื่อบันทึกเอกสารเป็น PDF พร้อมแบบฟอร์มที่กรอกได้

โปรดทราบว่ารูปแบบ PDF ต่างจาก Microsoft Word ตรงที่มีตัวเลือกจำนวนจำกัดสำหรับแบบฟอร์มที่แก้ไขได้ เช่น กล่องข้อความ กล่องคำสั่งผสม และช่องทำเครื่องหมาย Microsoft Word มีแบบฟอร์มหลายประเภท เช่น เครื่องมือเลือกวันที่ในปฏิทิน โดยทั่วไป เป็นไปไม่ได้ที่จะเลียนแบบพฤติกรรม Microsoft Word ในรูปแบบ PDF ได้อย่างสมบูรณ์ ดังนั้นในบางกรณีที่ซับซ้อน เอาต์พุต PDF อาจแตกต่างจากที่คุณเห็นใน Microsoft Word

ตัวอย่างโค้ดด้านล่างแสดงวิธีการบันทึกเอกสารเป็น PDF ด้วยแบบฟอร์มที่กรอกได้พร้อมการบีบอัดและคุณภาพ Jpeg ที่ระบุ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## การส่งออกโครงสร้างเอกสารและคุณสมบัติที่กำหนดเอง

คุณสมบัติ [https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/exportdocumentstructure) ช่วยให้คุณสามารถส่งออกโครงสร้างเอกสารไปยังเอาต์พุต PDF ได้

สิ่งอำนวยความสะดวกโครงสร้างโลจิคัล PDF จัดเตรียมกลไกสำหรับการรวมข้อมูลที่เกี่ยวกับโครงสร้างเนื้อหาเอกสาร ลงในไฟล์ PDF Aspose.Words เก็บรักษาข้อมูลเกี่ยวกับโครงสร้างจากเอกสาร Microsoft Word เช่น ย่อหน้า รายการ ตาราง เชิงอรรถ/อ้างอิงท้ายเรื่อง ฯลฯ

ตัวอย่างต่อไปนี้สาธิตวิธีการบันทึกเอกสารเป็นรูปแบบ PDF โดยคงโครงสร้างเอกสารไว้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words ยังอนุญาตให้คุณส่งออกคุณสมบัติที่กำหนดเองของเอกสารเป็น PDF ดังตัวอย่างต่อไปนี้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## การส่งออกเค้าร่างจากบุ๊กมาร์กและส่วนหัวในรูปแบบไฟล์ PDF

หากคุณต้องการส่งออกบุ๊กมาร์กเป็นโครงร่างในเอาต์พุต PDF คุณสามารถใช้คุณสมบัติ [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/) ได้ คุณสมบัตินี้ระบุระดับดีฟอลต์ในเค้าร่างเอกสารที่บุ๊กมาร์ก Microsoft Word จะแสดง หากเอกสารมีบุ๊กมาร์กในส่วนหัว/ส่วนท้ายของเอกสาร คุณสามารถตั้งค่าคุณสมบัติ [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) เป็น [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) หรือ [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) เพื่อระบุวิธีการส่งออกในเอาต์พุต PDF บุ๊กมาร์กในส่วนหัว/ส่วนท้ายจะไม่ถูกส่งออกเมื่อค่าของ **HeaderFooterBookmarksExportMode** เป็น [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/)

ตัวอย่างโค้ดด้านล่างแสดงวิธีการส่งออกบุ๊กมาร์กจากส่วนหัว/ส่วนท้ายแรกของส่วน:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

ผลลัพธ์ PDF ของตัวอย่างนี้แสดงอยู่ด้านล่าง:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

เมื่อตั้งค่า **HeaderFooterBookmarksExportMode** เป็น [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) และเอกสารมีส่วนหัว/ส่วนท้ายที่เป็นเลขคู่และคี่ หรือมีส่วนหัว/ส่วนท้ายของหน้าแรกที่แตกต่างกัน บุ๊กมาร์กจะถูกส่งออกสำหรับส่วนหัว/ส่วนท้ายที่ไม่ซ้ำกันรายการแรกในส่วนนั้น

คุณยังสามารถส่งออกส่วนหัวในเอาต์พุต PDF ได้โดยใช้คุณสมบัติ [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/) คุณสมบัตินี้ระบุจำนวนหัวเรื่องที่จะรวมอยู่ในโครงร่างเอกสาร

ตัวอย่างโค้ดด้านล่างแสดงวิธีการส่งออกส่วนหัวที่มีสามระดับ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

ผลลัพธ์ PDF ของตัวอย่างนี้แสดงไว้ด้านล่าง:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

บุ๊กมาร์กหรือการนำทางส่วนหัวอาจมีลักษณะที่แตกต่างกันในโปรแกรมอ่าน PDF ต่างๆ นอกจากนี้ ในบางแอปพลิเคชัน บุ๊กมาร์กและการนำทางส่วนหัวไม่สามารถใช้งานได้ใน UI

{{% /alert %}}

## การสุ่มตัวอย่างรูปภาพเพื่อลดขนาดเอกสาร

Aspose.Words ให้ความสามารถในการลดขนาดรูปภาพเพื่อลดขนาดเอาต์พุต PDF โดยใช้คุณสมบัติ [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/) การสุ่มตัวอย่างถูกเปิดใช้งานตามค่าเริ่มต้นในคุณสมบัติ [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/)

โปรดทราบว่า คุณยังสามารถตั้งค่าความละเอียดเฉพาะในคุณสมบัติ [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) หรือขีดจำกัดความละเอียดในคุณสมบัติ [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold) ได้ด้วย ในกรณีที่สอง หากความละเอียดของภาพน้อยกว่าค่าเกณฑ์ การสุ่มตัวอย่างจะไม่มีผล

ตัวอย่างโค้ดด้านล่างแสดงวิธีการเปลี่ยนความละเอียดของภาพในเอกสาร PDF เอาท์พุต:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

ความละเอียดคำนวณตามขนาดภาพจริงบนเพจ

## การฝังแบบอักษรในรูปแบบ Adobe PDF

Aspose.Words ยังช่วยให้คุณควบคุมวิธีการฝังแบบอักษรลงในเอกสาร PDF ที่เป็นผลลัพธ์ได้ แบบอักษรจะต้องฝังอยู่ในเอกสาร Adobe PDF เพื่อให้แน่ใจว่าเอกสารสามารถแสดงผลได้อย่างถูกต้องบนเครื่องใดๆ (ดูรายละเอียดเพิ่มเติมเกี่ยวกับการแสดงผลแบบอักษรในส่วน [การใช้แบบอักษร TrueType](/words/th/net/using-truetype-fonts/)) ตามค่าเริ่มต้น Aspose.Words จะฝังชุดย่อยของแบบอักษรที่ใช้ในเอกสารลงใน PDF ที่สร้างขึ้น ในกรณีนี้ เฉพาะ glyph (อักขระ) ที่ใช้ในเอกสารเท่านั้นที่จะถูกบันทึกเป็น PDF

### เมื่อใดควรใช้แบบอักษรเต็ม และเมื่อใดควรสับเซต

มีวิธีระบุตัวเลือกให้ Aspose.Words ฝังแบบอักษรแบบเต็มได้ รายละเอียดเพิ่มเติม ตลอดจนข้อดีและข้อเสียของการตั้งค่าแต่ละรายการมีอธิบายไว้ในตารางด้านล่าง

| โหมดฝังแบบอักษร |  ข้อดี | ข้อเสีย |
|  :-  |  :-  |  :-  |
|  `Full`  | มีประโยชน์เมื่อคุณต้องการแก้ไข PDF ที่เป็นผลลัพธ์ในภายหลังโดยการเพิ่มหรือแก้ไขข้อความ รวมแบบอักษรทั้งหมดแล้ว จึงมี glyph ทั้งหมด | เนื่องจากฟอนต์บางตัวมีขนาดใหญ่ (หลายเมกะไบต์) การฝังฟอนต์โดยไม่มีการตั้งค่าย่อยอาจส่งผลให้ไฟล์เอาต์พุตมีขนาดใหญ่ |
|  `Subset`  | การตั้งค่าย่อยมีประโยชน์หากคุณต้องการให้ขนาดไฟล์เอาต์พุตเล็กลง | <p>ผู้ใช้ไม่สามารถเพิ่มหรือแก้ไขข้อความโดยใช้แบบอักษรย่อยในเอกสาร PDF เอาท์พุตได้ เนื่องจากไม่มี glyph ของแบบอักษรทั้งหมด</p>

<p>หากบันทึก PDF หลายชุดด้วยแบบอักษรย่อยและประกอบเข้าด้วยกัน เอกสาร PDF ที่รวมกันอาจมีแบบอักษรที่มีชุดย่อยที่ไม่จำเป็นจำนวนมาก</p> |

### การฝังแบบอักษรแบบเต็มในรูปแบบ PDF

คุณสมบัติ [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) ช่วยให้คุณสามารถระบุวิธีที่ Aspose.Words ฝังแบบอักษรลงในเอกสาร PDF เอาท์พุตได้

- หากต้องการฝังแบบอักษรเต็มลงในเอกสาร PDF เอาท์พุต ให้ตั้งค่า **EmbedFullFonts** เป็น true
- หากต้องการตั้งค่าย่อยแบบอักษรเมื่อบันทึกเป็น PDF ให้ตั้งค่า **EmbedFullFonts** เป็น false

ตัวอย่างต่อไปนี้สาธิตวิธีการฝังแบบอักษรแบบเต็มในเอกสาร PDF เอาท์พุต:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

ตัวอย่างต่อไปนี้สาธิตวิธีตั้งค่า Aspose.Words ให้เป็นแบบอักษรย่อยในเอาต์พุต PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตสำหรับตัวอย่างเหล่านี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

## วิธีควบคุมการฝังแบบอักษรหลักและแบบอักษรมาตรฐาน Windows

แบบอักษรหลักและแบบอักษรมาตรฐาน Windows คือชุดแบบอักษร "มาตรฐาน" ซึ่งโดยปกติจะปรากฏบนเครื่องเป้าหมายหรือให้โดยโปรแกรมอ่านเอกสาร ดังนั้นจึงไม่จำเป็นต้องฝังลงในเอาต์พุต PDF ด้วยการไม่ฝังแบบอักษรเหล่านี้ คุณสามารถลดขนาดของเอกสาร PDF ที่แสดงผลและยังคงรักษาความสามารถในการพกพาได้

Aspose.Words มีตัวเลือกในการเลือกวิธีส่งออกแบบอักษรเป็น PDF คุณสามารถเลือกฝังแบบอักษรหลักและแบบอักษรมาตรฐานลงในเอาต์พุต PDF หรือข้ามการฝังและใช้แบบอักษร PDF หลักมาตรฐานหรือแบบอักษรระบบบนเครื่องเป้าหมายแทนได้ โดยปกติการใช้ตัวเลือกอย่างใดอย่างหนึ่งเหล่านี้จะทำให้ขนาดไฟล์ลดลงอย่างมากสำหรับเอกสาร PDF ที่สร้างโดย Aspose.Words

- เนื่องจากตัวเลือกเหล่านี้แยกจากกัน คุณควรเลือกครั้งละหนึ่งรายการเท่านั้น
- เมื่อบันทึกด้วยการปฏิบัติตามข้อกำหนด PDF/A-1 แบบอักษรที่ใช้ทั้งหมดจะต้องฝังอยู่กับเอกสาร PDF เมื่อบันทึกตามข้อกำหนดนี้ ต้องตั้งค่าคุณสมบัติ [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) เป็น false และต้องตั้งค่าคุณสมบัติ [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) เป็น [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/)

### การฝังแบบอักษรหลัก

ตัวเลือกในการฝังแบบอักษรหลักสามารถเปิดหรือปิดใช้งานได้โดยใช้คุณสมบัติ [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) เมื่อตั้งค่าเป็น true ฟอนต์ "True Type" ยอดนิยมต่อไปนี้ (ฟอนต์ Base 14) จะไม่ฝังอยู่ในเอกสาร PDF เอาท์พุต:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

แบบอักษรเหล่านี้จะถูกแทนที่ด้วยแบบอักษรหลักประเภท 1 ที่เกี่ยวข้อง ซึ่งจัดทำโดยผู้อ่านเมื่อเปิด PDF

ตัวอย่างด้านล่างแสดงวิธีการตั้งค่า Aspose.Words เพื่อหลีกเลี่ยงการฝังแบบอักษรหลักและให้ผู้อ่านแทนที่ด้วยแบบอักษร PDF Type 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตสำหรับตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

เนื่องจากโปรแกรมดู PDF มีแบบอักษรหลักบนแพลตฟอร์มที่รองรับ ตัวเลือกนี้จึงมีประโยชน์เมื่อจำเป็นต้องพกพาเอกสารได้มากขึ้น อย่างไรก็ตาม แบบอักษรหลักอาจดูแตกต่างจากแบบอักษรของระบบ

{{% alert color="primary" %}}

การตั้งค่านี้ใช้ได้กับข้อความที่เข้ารหัส ANSI (Windows-1252) เท่านั้น การเขียนข้อความที่ไม่ใช่ ANSI เป็น PDF จะต้องฝังแบบอักษรที่เกี่ยวข้องเสมอ

{{% /alert %}}

### การฝังแบบอักษรของระบบ

ตัวเลือกนี้สามารถเปิดหรือปิดใช้งานได้โดยใช้คุณสมบัติ [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) เมื่อคุณสมบัตินี้ถูกตั้งค่าเป็น [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/) แบบอักษรประเภท true "Arial" และ "Times New Roman" จะไม่ถูกฝังลงในเอกสาร PDF ในกรณีนี้ วิวเวอร์ไคลเอ็นต์จะขึ้นอยู่กับฟอนต์ที่ติดตั้งบนระบบปฏิบัติการของไคลเอ็นต์ เมื่อตั้งค่าคุณสมบัติ **FontEmbeddingMode** เป็น [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/) แล้ว Aspose.Words จะไม่ฝังแบบอักษรใดๆ

ตัวอย่างด้านล่างแสดงวิธีตั้งค่า Aspose.Words ให้ข้ามการฝังแบบอักษร Arial และ Times New Roman ลงในเอกสาร PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

โหมดนี้มีประโยชน์มากที่สุดเมื่อคุณต้องการดูเอกสารของคุณบนแพลตฟอร์มเดียวกัน โดยคงลักษณะที่ปรากฏของแบบอักษรในเอาต์พุต PDF

{{% alert color="primary" %}}

การตั้งค่านี้ใช้ได้กับข้อความที่เข้ารหัส ANSI (Windows-1252) เท่านั้น การเขียนข้อความที่ไม่ใช่ ANSI เป็น PDF จำเป็นต้องฝังแบบอักษรที่เกี่ยวข้อง

{{% /alert %}}
