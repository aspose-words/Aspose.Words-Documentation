---
title: กําหนดตัวเลือกการแสดงผลเมื่อแปลงเป็น PDF
second_title: Aspose.Words สําหรับ Java
articleTitle: กําหนดตัวเลือกการแสดงผลเมื่อแปลงเป็น PDF
linktitle: กําหนดตัวเลือกการแสดงผลเมื่อแปลงเป็น PDF
description: "แปลงเอกสารเป็น PDF ด้วยตัวเลือกขั้นสูง ใช้การประหยัดข้อมูล Pdf เพื่อเปลี่ยนผลของการจัดเก็บเอกสารในรูปแบบ PDF Java."
type: docs
weight: 20
url: /th/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

รูปแบบ PDF เป็นรูปแบบหน้าแบบคงที่ที่ได้รับความนิยมมากในหมู่ผู้ใช้ และได้รับการรองรับอย่างกว้างขวางจากโปรแกรมต่าง ๆ เพราะเอกสาร PDF จะมีลักษณะเหมือนกันบนอุปกรณ์ใด ๆ ด้วย เหตุ นี้ การ เปลี่ยน เป็น PDF จึง เป็น ลักษณะ สําคัญ ของ Aspose.Words.

PDF เป็นรูปแบบที่ซับซ้อน จําเป็น ต้อง มี การ คํานวณ หลาย ขั้น ตอน ใน การ แปลง เอกสาร ให้ เป็น PDF รวม ทั้ง การ คํานวณ ผัง. เนื่องจากขั้นตอนเหล่านี้รวมถึงการคํานวณที่ซับซ้อน พวกเขากําลังใช้เวลา นอกจากนี้ รูปแบบ PDF ยังค่อนข้างซับซ้อนด้วย มันมีโครงสร้างแฟ้ม, กราฟิกโมเดลและการฝังแบบอักษร นอก จาก นั้น จุลสาร นี้ ยัง มี คุณสมบัติ บาง อย่าง ที่ ซับ ซ้อน เช่น แท็ก โครง สร้าง เอกสาร, การเข้ารหัส, ลายเซ็น, และ แบบ แก้ไข ได้.

Aspose.Words เครื่องยนต์ผัง จําลองวิธีการ Microsoft Wordเครื่อง ยนต์ แบบ หน้า หนึ่ง ใช้ ได้ ผล. ดังนั้น Aspose.Words ทําให้เอกสารผลลัพธ์ของ PDF ดูใกล้เคียงกับสิ่งที่คุณสามารถเห็นได้ Microsoft Word. บางครั้งมันจําเป็นต้องกําหนดตัวเลือกเพิ่มเติม ซึ่งจะมีผลต่อการบันทึกเอกสารในรูปแบบ PDF ตัวเลือกเหล่านี้สามารถกําหนดได้โดยการใช้ [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) คลาสนี้ จะบรรจุคุณสมบัติที่จะใช้กําหนดว่าจะให้การแสดงผลการแสดงผล PDF อย่างไร

บางตัวอย่างที่ใช้ **PdfSaveOptions** มี การ จัด เตรียม ไว้ ข้าง ล่าง นี้.

{{% alert color="primary" %}}

ปัจจุบัน คุณสามารถบันทึกเป็น PDF 1. 7, PDF 2. 0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, และ PDF/UA-1 รูปแบบ ใช้ [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) การนําเข้าเพื่อตั้งค่าระดับการยอมรับมาตรฐาน PDF โปรดสังเกตว่า ด้วยรูปแบบ PDF/A ขนาดแฟ้มส่งออกมีขนาดใหญ่กว่าขนาดแฟ้ม PDF ปกติ

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) ถึง [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) ถูกทําเครื่องหมายว่าล้าสมัย

สําหรับข้อมูลเพิ่มเติมเกี่ยวกับ PDF/A ดูบทความถัดไปที่ "Learn Fietures of Enterviews to PDF/A".

{{% /alert %}}

## การ สร้าง PDF เอกสารที่มีแบบฟอร์มแบบเติมได้

เป็น ไป ได้ ด้วย ที่ จะ ส่ง รูป แบบ ที่ บรรจุ ได้ ออก มา Microsoft Word เอกสารที่จะส่งออกเป็นเอกสาร PDF ซึ่งมีแบบฟอร์มที่สามารถเติมได้ แทนที่จะเป็นข้อความธรรมดา ใช้ [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) คุณสมบัติที่จะใช้บันทึกเอกสารเป็น PDF ด้วยแบบฟอร์มที่เติมได้

โปรด สังเกต ว่า ตรง กัน ข้าม กับ Microsoft Word'"> รูปแบบ PDF มีตัวเลือกจํากัดสําหรับแบบฟอร์มแก้ไขได้ เช่น กล่องคอมโบ และ checkbox Microsoft Word ตัว อย่าง เช่น มี รูป แบบ ต่าง ๆ มาก กว่า. โดย ทั่ว ไป แล้ว เป็น ไป ไม่ ได้ ที่ จะ เลียน แบบ เต็ม ที่ Microsoft Word พฤติกรรมใน PDF ดัง นั้น ใน บาง กรณี ที่ ค่อน ข้าง ซับ ซ้อน ผล งาน PDF อาจ ต่าง ไป จาก ที่ คุณ เห็น ใน Microsoft Word.

ตัวอย่างโค้ดด้านล่างนี้ แสดงวิธีบันทึกเอกสารแบบ PDF ด้วยแบบฟอร์มที่เติมได้ โดยมีการบีบข้อมูล JPeg และคุณภาพ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## กําลังส่งออกโครงสร้างเอกสารและคุณสมบัติกําหนดเอง

เดอะ [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) คุณสมบัติอนุญาตให้คุณส่งออกโครงสร้างเอกสาร ไปเป็นการแสดงผลแบบ PDF

PDF โครงสร้างพื้นฐานทางตรรกะ ให้กลไกสําหรับการรวมข้อมูล เกี่ยวกับโครงสร้างเนื้อหาเอกสาร Aspose.Words เก็บข้อมูลเกี่ยวกับโครงสร้างจาก Microsoft Word เอกสารต่าง ๆ เช่น paragraph, รายชื่อ, ตาราง, หมายเหตุ/ Endnotes เป็นต้น

ตัวอย่างต่อไปนี้แสดงถึงวิธีการบันทึกเอกสารในรูปแบบ PDF รักษาโครงสร้างเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words ให้คุณได้ส่งออกคุณสมบัติกําหนดเองของเอกสารไปยัง PDF ซึ่งแสดงโดยตัวอย่างต่อไปนี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## กําลังส่งออกผังแป้นพิมพ์ต่าง ๆ จากที่คั่นหน้าและปลายทางใน PDF

หากคุณต้องการส่งออกที่คั่นหน้าเป็นกรอบข้อความในเอกสาร PDF ซึ่งคุณสามารถใช้ได้ [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) ทรัพย์สิน คุณสมบัตินี้ใช้กําหนดค่าระดับปริยายในกรอบเอกสาร โดยจะกําหนดระดับของเอกสาร Microsoft Word ที่คั่นหน้าถูกแสดง หากเอกสารมีคั่นหน้าอยู่ในส่วนหัว/ ท้ายกระดาษ คุณสามารถตั้งค่า [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) คุณสมบัติไปยัง [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) หรือ [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) เพื่อระบุว่าสื่อถูกส่งออกในเอกสาร PDF อย่างไร คั่นหน้าในส่วนหัว/ ฟุตเกอร์ ไม่ได้ถูกส่งออกเมื่อค่าของ **HeaderFooterBookmarksExportMode** คือ [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

ตัวอย่างโค้ดด้านล่างนี้ จะแสดงวิธีส่งออกที่คั่นหน้าจากส่วนหัว/ ฟุตเกอร์แรกของส่วน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

PDF ของตัวอย่างนี้จะแสดงด้านล่างนี้:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

เมื่อ **HeaderFooterBookmarksExportMode** ถูกกําหนดให้ใช้ [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) เอกสารนี้มีหัวจดหมายและหัวจดหมายคี่ หรือหัวกระดาษ/ฟุตเกอร์แบบอื่น ที่คั่นหน้าจะถูกส่งออกสําหรับหัวจดหมาย/ฟุตเกอร์ที่มีลักษณะเฉพาะตัวแรก

คุณสามารถส่งออก หัวเรื่องต่าง ๆ ใน PDF ได้โดยใช้ [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) ทรัพย์สิน คุณสมบัตินี้ระบุจํานวนของหัวเรื่อง ที่รวมอยู่ในโครงเรื่อง

ตัวอย่างรหัสด้านล่างนี้ แสดงวิธีส่งออกหัวเรื่องที่มีสามระดับ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

PDF ของตัวอย่างนี้ จะแสดงด้านล่างนี้:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

การ นํา ทาง แบบ ที่คั่นหน้า หรือ ทาง ตรง อาจ มี ลักษณะ ต่าง กัน ใน ผู้ ชม PDF หลาย คน. ยิ่ง กว่า นั้น ใน โปรแกรม บาง โปรแกรม ไม่ มี การ นํา ร่อง และ การ นํา ร่อง ทาง ทาง ไป สู่ จุด หมาย ปลาย ทาง ใน ยูไอ.

{{% /alert %}}

## ลดขนาดภาพเพื่อลดขนาดเอกสาร

Aspose.Words ให้ความสามารถในการลดขนาดภาพลงได้ เพื่อให้ลดขนาด PDF ที่ส่งออกได้ โดยใช้ [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) ทรัพย์สิน การลดเสียง ต่ํา ถูกเปิดใช้โดยปริยายแล้วใน [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) ทรัพย์สิน

โปรด สังเกต ว่า เป็น ไป ได้ ด้วย ที่ จะ กําหนด มติ เฉพาะ ใน [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) ทรัพย์สิน หรือ ขอบเขตใน [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) ทรัพย์สิน ในกรณีที่สอง หากความละเอียดภาพน้อยกว่าค่าขีดจํากัด แล้วการลดรอยหยักจะไม่ใช้ได้

ตัวอย่างรหัสด้านล่างนี้ แสดงวิธีเปลี่ยนความละเอียดของภาพในเอกสาร PDF ที่ส่งออก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

ความละเอียดคํานวณตามขนาดจริงของภาพบนหน้ากระดาษ

## การฝังแบบอักษรในรูปแบบ Adobe PDF

Aspose.Words นอกจากนี้ยังช่วยให้คุณสามารถควบคุมวิธีการตัวอักษรฝังลงในเอกสาร PDF ที่มีผล แบบอักษรจําเป็นต้องฝังลงในเอกสาร Adobe PDF ใด ๆ เพื่อตรวจสอบให้แน่ใจว่า สามารถแปลเอกสารได้อย่างถูกต้องบนเครื่องใด ๆ (ดูรายละเอียดเพิ่มเติมเกี่ยวกับการแสดงผลแบบอักษรในส่วนนี้) [ใช้ ความ จริง ชนิดแบบอักษร](/words/th/java/using-truetype-fonts/)) โดยปริยายแล้ว Aspose.Words ฝังสับเซตแบบอักษรที่ใช้ในเอกสาร ไปไว้ใน PDF ที่สร้างมา ในกรณีนี้ มีแต่ glyphs (ตัวพิมพ์เล็ก) ที่ใช้ในเอกสารจะถูกบันทึกเป็น PDF

### เมื่อใช้แบบอักษรแบบเต็มและเมื่อใช้แทนเซต

มีวิธีที่จะกําหนดตัวเลือกสําหรับ Aspose.Words เพื่อฝังตัวอักษรเต็มตัว มี การ พรรณนา ราย ละเอียด เพิ่ม เติม พร้อม กับ ข้อ ดี และ ข้อ เสีย บาง ประการ ของ แต่ ละ สภาพ การณ์ ใน ตาราง ข้าง ล่าง.

| โหมดแบบอักษรแบบฝังตัว |  ข้อ ดี | ข้อ เสีย |
|  :-  |  :-  |  :-  |
|  `Full`  | มีประโยชน์เมื่อคุณต้องการแก้ไขผลของ PDF ในภายหลัง โดยการเพิ่มหรือแก้ไขข้อความ แบบอักษรทั้งหมดจะรวมดังนั้นทั้งหมด glyphS อยู่ด้วย | เนื่อง จาก แบบอักษร บาง ตัว มี ขนาด ใหญ่ (เช่น เมกกะไบต์) การ ฝัง ไว้ โดย ไม่ มี การ จัด เรียง อาจ ทํา ให้ เป็น แฟ้ม ส่ง ออก ขนาด ใหญ่ ได้. |
|  `Subset`  | การแทนที่ จะมีประโยชน์ หากคุณต้องการรักษาขนาดแฟ้มผลลัพธ์ให้เล็กลง | <p>ผู้ใช้ไม่สามารถเพิ่มหรือแก้ไขข้อความได้อย่างเต็มที่ โดยใช้แบบอักษรแบบสับเซตในเอกสาร PDF ที่ส่งออก เพราะไม่ใช่ทั้งหมด glyphs ของแบบอักษรมีอยู่</p>

<p>หากมีการบันทึกเอกสาร PDF หลายตัว ด้วยรูปแบบตัวอักษรที่เรียงและรวมเข้าด้วยกัน เอกสารแบบ PDF อาจมีแบบอักษรที่บรรจุสับเซตที่ไม่จําเป็นไว้หลายชุด</p>
 |

### การฝังแบบอักษรเต็มใน PDF

เดอะ [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) คุณสมบัติต่าง ๆ ให้คุณได้กําหนดวิธีต่าง ๆ Aspose.Words ฝังแบบอักษรลงในเอกสาร PDF ที่ส่งออก

- ให้ฝังแบบอักษรเต็มลงในเอกสาร PDF ผลส่งออก, ตั้งค่า **EmbedFullFonts** ถึง true
- จัดเรียงแบบอักษรเมื่อมีการบันทึกเป็น PDF, ตั้งค่า **EmbedFullFonts** ถึง false

ตัวอย่างต่อไปนี้ จะแสดงวิธีการฝังแบบอักษรเต็ม ๆ ในเอกสาร PDF ผลส่งออก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

ตัว อย่าง ต่อ ไป นี้ แสดง ให้ เห็น วิธี วาง Aspose.Words จัดเรียงแบบอักษรในเอกสาร PDF ที่ส่งออก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบสําหรับตัวอย่างเหล่านี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## วิธีควบคุมแบบอักษรแบบฝังตัวและ Windows แบบอักษรมาตรฐาน

แบบอักษรหลัก Windows แบบอักษรมาตรฐานคือชุดแบบอักษรแบบ "มาตรฐาน" ซึ่งมักปรากฏบนเครื่องเป้าหมาย หรือถูกนําเสนอโดยผู้อ่านเอกสาร ดังนั้น จึงไม่จําเป็นต้องฝังมันไว้ใน PDF ที่แสดงออกมา หากไม่ได้ทําการฝังแบบอักษรเหล่านี้ คุณจะสามารถลดขนาดเอกสาร PDF ที่ถูกแก้ไขแล้ว และยังคงคงความจุได้

Aspose.Words ให้ตัวเลือกเลือกว่าจะให้ส่งแบบอักษรไปยัง PDF อย่างไร คุณสามารถเลือกทั้งการฝังตัวพิมพ์หลักและรูปแบบตัวอักษรมาตรฐานลงใน PDF ของผลส่งออก หรือข้ามการฝังมัน และใช้แบบอักษรแบบ PDF หลัก หรือแบบอักษรของระบบบนเครื่องเป้าหมายแทน การใช้ตัวเลือกใดอันหนึ่ง โดยปกติจะทําให้เอกสารแบบ PDF สามารถลดขนาดได้ Aspose.Words.

- เนื่องจากทางเลือกเหล่านี้มีเอกลักษณ์ร่วมกัน คุณควรเลือกเพียงครั้งเดียว
- เมื่อบันทึกด้วยเอกสาร PDF/A-1 ตาม แบบอักษรที่ถูกใช้ทั้งหมดจะต้องถูกฝังไว้ในเอกสาร PDF เมื่อบันทึกด้วยคําสั่งนี้ [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) ต้องตั้งค่าคุณสมบัติต่าง ๆ false และ [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) ต้องตั้งค่าคุณสมบัติต่าง ๆ [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### แบบอักษรหลักแบบฝังตัว

ตัวเลือกสําหรับเรียกแบบอักษรหลักที่ฝังอยู่ สามารถเปิดใช้หรือปิดการใช้งานได้ โดยใช้ [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) ทรัพย์สิน เมื่อมันถูกกําหนดไว้แล้ว true, แบบอักษร "ชนิดจริง" ที่นิยมมากที่สุด (ข้อความ 14 ตัวอักษร) ไม่ได้ฝังอยู่ในเอกสาร PDF ที่ส่งออก:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

แบบอักษรเหล่านี้จะถูกแทนที่ด้วยแบบอักษรหลักประเภท 1 ที่สอดคล้องกัน ซึ่งจัดไว้โดยผู้อ่านเมื่อเปิด PDF

ตัว อย่าง ที่ ให้ ไว้ ข้าง ล่าง นี้ แสดง ให้ เห็น วิธี วาง ตัว อย่าง Aspose.Words เพื่อหลีกเลี่ยงการใช้แบบอักษรหลักและให้ผู้อ่านแทนที่ด้วย PDF ประเภท 1 แบบอักษร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบสําหรับตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

เนื่องจากผู้ชม PDF ให้แบบอักษรหลักบนแพลตฟอร์มใด ๆ ที่รองรับ ตัวเลือกนี้จะมีประโยชน์เมื่อต้องใช้เอกสารที่ใช้งานได้มากขึ้น อย่างไรก็ตาม แบบอักษรหลักอาจจะดูแตกต่างจากตัวอักษรของระบบ

{{% alert color="primary" %}}

การตั้งค่านี้ใช้ได้กับ ANSI เท่านั้น (ANSI)Windows-1252). การเข้ารหัสข้อความ. การเขียนข้อความที่ไม่ใช่ ANSI ไปยัง PDF จะต้องการการฝังแบบอักษรที่สอดคล้องกันเสมอ

{{% /alert %}}

### การฝังตัวแบบอักษรของระบบ

ตัวเลือกนี้สามารถเปิดหรือปิดการใช้งานได้โดยการใช้ [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) ทรัพย์สิน เมื่อใช้คุณสมบัตินี้ [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), "Arial" และ "เวลาโรมันใหม่" true แบบอักษรประเภทนี้ ไม่ได้ฝังลงในเอกสาร PDF ในกรณีนี้ ตัวแสดงไคลเอนต์จะขึ้นอยู่กับแบบอักษรที่ถูกติดตั้งบนระบบปฏิบัติการของไคลเอนต์ เมื่อ **FontEmbeddingMode** ตั้งค่าคุณสมบัติต่าง ๆ [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words อย่าฝังแบบอักษรใด ๆ

ตัว อย่าง ข้าง ล่าง นี้ แสดง วิธี ตั้ง Aspose.Words เพื่อข้ามการฝังตัวเอเรียลและไทม์ส แบบอักษรโรมันใหม่เข้าไปในเอกสาร PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

โหมดนี้จะมีประโยชน์มากที่สุดเมื่อคุณต้องการที่จะดูเอกสารของคุณในแพลตฟอร์มเดียวกัน รักษาการปรากฏของแบบอักษรที่แน่นอนใน PDF ผลลัพธ์

{{% alert color="primary" %}}

การตั้งค่านี้ใช้ได้กับ ANSI เท่านั้น (ANSI)Windows-1252). การเข้ารหัสข้อความ. การเขียนข้อความที่ไม่ใช่ ANSI ไปยัง PDF ต้องการแบบอักษรที่สอดคล้องกันที่จะฝังอยู่

{{% /alert %}}
