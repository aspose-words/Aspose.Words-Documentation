---
title: ระบุตัวเลือกการแสดงผลเมื่อแปลงเป็นPDF
second_title: Aspose.WordsสำหรับC++
articleTitle: ระบุตัวเลือกการแสดงผลเมื่อแปลงเป็นPDF
linktitle: ระบุตัวเลือกการแสดงผลเมื่อแปลงเป็นPDF
description: "แปลงเอกสารเป็นPDFด้วยตัวเลือกขั้นสูงโดยใช้C++ ใช้PdfSaveOptionsเพื่อเปลี่ยนผลลัพธ์ของการบันทึกเอกสารเป็นรูปแบบPDF."
type: docs
weight: 30
url: /th/cpp/specify-rendering-options-when-converting-to-pdf/
---

รูปแบบPDFเป็นรูปแบบหน้าถาวรที่เป็นที่นิยมมากในหมู่ผู้ใช้และได้รับการสนับสนุนอย่างกว้างขว ด้วยเหตุนี้การแปลงเป็นPDFเป็นคุณลักษณะสำคัญของAspose.Words.

PDFเป็นรูปแบบที่ซับซ้อน ต้องมีการคำนวณหลายขั้นตอนในกระบวนการแปลงเอกสารเป็นPDFรวมถึงการคำนวณโครงร่ ตั้งแต่ขั้นตอนเหล่านี้รวมถึงการคำนวณที่ซับซ้อนพวกเขาจะใช้เวลานาน นอกจากนี้รูปแบบPDFค่อนข้างซับซ้อนด้วยตัวเอง แต่ก็มีโครงสร้างไฟล์ที่เฉพาะเจาะจงรูปแบบกราฟิกและการฝังตัวอักษร นอกจากนี้ยังมีฟังก์ชั่นการส่งออกที่ซับซ้อนบางอย่างเช่นแท็กโครงสร้างเอกสาร,การเข้ารหัส,ลายเซ็นดิจิตอลและรูปแบบที่สามารถแก้ไขได้.

Aspose.Wordsเครื่องยนต์เค้าโครงเลียนแบบวิธีการทำงานของเครื่องยนต์เค้าโครงหน้าMicrosoft Word ดังนั้นAspose.Wordsทำให้PDFเอกสารที่ส่งออกมีลักษณะใกล้เคียงที่สุดเท่าที่เป็นไปได้กับสิ่งที่คุณเห็นในMicrosoft Word บางครั้งจำเป็นต้องระบุตัวเลือกเพิ่มเติมซึ่งอาจส่งผลต่อผลลัพธ์ของการบันทึกเอกสารลงในรูปแบบPDF อ็อพชันเหล่านี้สามารถระบุได้โดยใช้คลาสของ[PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members)ซึ่งประกอบด้วยคุณสมบัติที่เป็นตัวกำหนดวิธี.

ตัวอย่างของการใช้**PdfSaveOptions**มีให้ด้านล่าง.

{{% alert color="primary" %}}

ขณะนี้คุณสามารถบันทึกPDF 1.7, PDF 2.0, PDF/A-1ก,PDF/A-1ข,PDF/A-2ก,PDF/A-2ยูและPDF/UA-1รูปแบบ ใช้การแจงนับ[PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/)เพื่อตั้งระดับการปฏิบัติตามมาตรฐานPDF โปรดทราบว่าด้วยรูปแบบPDF/Aขนาดไฟล์ที่ส่งออกมีขนาดใหญ่กว่าขนาดไฟล์ปกติPDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/)และ[PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/)ถูกทำเครื่องหมายว่าล้าสมัย.

สำหรับข้อมูลเพิ่มเติมเกี่ยวกับPDF/Aโปรดดูบทความถัดไป"เรียนรู้คุณลักษณะของการแปลงเป็นPDF/A".

{{% /alert %}}

## การสร้างเอกสารPDFด้วยแบบฟอร์มที่กรอกได้

นอกจากนี้ยังเป็นไปได้ที่จะส่งออกแบบฟอร์มที่เติมจากเอกสารMicrosoft Wordลงในเอาท์พุทPDFซึ่งมีรูปแบบที่เติมแทนข้อความธรรมดา ใช้คุณสมบัติ[PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/)เพื่อบันทึกเอกสารเป็นPDFด้วยแบบฟอร์มที่เติมได้.

โปรดทราบว่าในทางตรงกันข้ามกับMicrosoft WordรูปแบบPDFมีจำนวนจำกัดของตัวเลือกสำหรับฟอร์มที่สามา Microsoft Wordมีรูปแบบอื่นๆเช่นตัวเลือกวันที่ในปฏิทิน โดยทั่วไปแล้วมันเป็นไปไม่ได้ที่จะเลียนแบบMicrosoft WordพฤติกรรมในPDFอย่างเต็มที่ ดังนั้นในบางกรณีที่ซับซ้อนผลลัพธ์PDFอาจแตกต่างจากสิ่งที่คุณเห็นในMicrosoft Word.

ตัวอย่างรหัสด้านล่างแสดงวิธีการบันทึกเอกสารเป็นPDFด้วยแบบฟอร์มที่เต็มไปด้วยการบีบอัด:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## การส่งออกโครงสร้างเอกสารและคุณสมบัติที่กำหนดเอง

คุณสมบัติ[ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/)ช่วยให้คุณสามารถส่งออกโครงสร้างเอกสารไปยังเอาต์พุตได้PDF.

PDFสิ่งอำนวยความสะดวกโครงสร้างตรรกะให้กลไกสำหรับการรวมข้อมูลเกี่ยวกับโครงสร้างเนื้อหาเอกสารลงในไฟล์PDF Aspose.Wordsเก็บรักษาข้อมูลเกี่ยวกับโครงสร้างจากเอกสารMicrosoft Wordเช่นย่อหน้า,รายการ,ตาราง,เชิงอรรถ/สิ้นสุดฯลฯ.

ตัวอย่างต่อไปนี้สาธิตวิธีการบันทึกเอกสารเป็นรูปแบบPDFการเก็บรักษาโครงสร้างเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Wordsยังช่วยให้คุณสามารถส่งออกเอกสารคุณสมบัติที่กำหนดเองไปยังPDFซึ่งจะแสดงโดยตัวอย่างต่อไปนี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## การส่งออกเค้าร่างจากบุ๊กมาร์กและส่วนหัวในเอาต์พุตPDF

ถ้าคุณต้องการส่งออกบุ๊กมาร์กเป็นเค้าร่างในผลลัพธ์PDFคุณสามารถใช้คุณสมบัติ[DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/) คุณสมบัตินี้ระบุระดับดีฟอลต์ในเค้าร่างเอกสารซึ่งแสดงบุ๊กมาร์กMicrosoft Word หากเอกสารประกอบด้วยบุ๊กมาร์กในส่วนหัว/ท้ายกระดาษของเอกสารคุณสามารถตั้งค่าคุณสมบัติ[HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/)เป็น[First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/)หรือ[All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/)เพื่อระบุวิธีเอ็กซ์ปอร์ตในผลลัพธ์PDF บุ๊กมาร์กในส่วนหัว/ท้ายกระดาษจะไม่ถูกส่งออกเมื่อค่าของ**HeaderFooterBookmarksExportMode**เป็น[None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

ตัวอย่างรหัสด้านล่างแสดงวิธีการส่งออกที่คั่นหน้าจากส่วนหัว/ส่วนท้ายแรกของส่วน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

ผลลัพธ์PDFของตัวอย่างนี้แสดงด้านล่าง:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

เมื่อ**HeaderFooterBookmarksExportMode**ถูกตั้งค่าเป็นครั้งแรกและเอกสารมีส่วนหัว/ท้ายกระดาษคู่และคี่หรือส่วนหัว/ท้ายกระดาษ.

นอกจากนี้คุณยังสามารถเอ็กซ์ปอร์ตส่วนหัวในเอาต์พุตPDFโดยใช้คุณสมบัติ[HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/) คุณสมบัตินี้ระบุจำนวนระดับของส่วนหัวที่รวมอยู่ในเค้าร่างเอกสาร.

ตัวอย่างโค้ดด้านล่างแสดงวิธีการส่งออกส่วนหัวที่มีสามระดับ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

ผลลัพธ์PDFของตัวอย่างนี้แสดงไว้ด้านล่าง:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

บุ๊กมาร์กหรือหัวข้อการนำทางอาจมีลักษณะที่แตกต่างกันในผู้ชมPDFต่างๆ นอกจากนี้ในบางโปรแกรมประยุกต์บุ๊คมาร์คและหัวเรื่องการนำทางจะไม่สามารถใช้ได้ในUI.

{{% /alert %}}

## ลดการสุ่มตัวอย่างภาพเพื่อลดขนาดเอกสาร

Aspose.Wordsให้ความสามารถในการลดภาพตัวอย่างเพื่อลดขนาดผลลัพธ์PDFโดยใช้คุณสมบัติ[DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/) การลดการสุ่มตัวอย่างถูกเปิดใช้งานโดยดีฟอลต์ในคุณสมบัติ[DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

โปรดทราบว่าคุณสามารถตั้งค่าความละเอียดเฉพาะในคุณสมบัติ[Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/)หรือเกณฑ์ความละเอียดในคุณสมบัติ[ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/) ในกรณีที่สองหากความละเอียดของภาพน้อยกว่าค่าเกณฑ์การลดการสุ่มตัวอย่างจะไม่ใช้.

ตัวอย่างโค้ดด้านล่างจะแสดงวิธีเปลี่ยนความละเอียดของรูปภาพในเอกสารออกPDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

ความละเอียดจะถูกคำนวณตามขนาดของภาพจริงบนหน้าเว็บ.

## การฝังแบบอักษรในรูปแบบอะโดบีPDF

Aspose.Wordsยังช่วยให้คุณสามารถควบคุมวิธีการฝังแบบอักษรลงในผลลัพธ์PDFเอกสาร แบบอักษรจะต้องมีการฝังลงในเอกสารอะโดบีPDFเพื่อให้แน่ใจว่าเอกสารสามารถแสดงผลได้อย่างถูกต้องบนเครื่องใดๆ(ดูรายละเอียดเพิ่มเติมเกี่ยวกับการแสดงผลแบบอักษรในส่วน [ใช้แบบอักษรTrueType](/words/cpp/using-truetype-fonts/)). โดยค่าเริ่มต้นAspose.Wordsจะฝังชุดย่อยของแบบอักษรที่ใช้ในเอกสารลงในPDFที่สร้างขึ้น ในกรณีนี้เฉพาะสัญลักษณ์(อักขระ)ที่ใช้ในเอกสารเท่านั้นที่จะถูกบันทึกลงในPDF.

### เมื่อใดที่จะใช้แบบอักษรเต็มรูปแบบและเมื่อที่จะย่อย

มีวิธีระบุตัวเลือกสำหรับAspose.Wordsเพื่อฝังแบบอักษรแบบเต็ม รายละเอียดเพิ่มเติมพร้อมกับข้อดีและข้อเสียของแต่ละการตั้งค่าจะอธิบายไว้ในตารางด้.

| โหมดแบบอักษรฝัง | ข้อดี | ข้อเสีย |
| :- | :- | :- |
| `Full` | มีประโยชน์เมื่อคุณต้องการแก้ไขผลลัพธ์PDFในภายหลังโดยการเพิ่มหรือแก้ไขข้อความ แบบอักษรทั้งหมดจะถูกรวมด้วยเหตุนี้ร่ายมนตร์ทั้งหมดที่มีอยู่. | เนื่องจากแบบอักษรบางตัวมีขนาดใหญ่(หลายเมกะไบต์)ฝังไว้โดยไม่ต้องตั้งค่าย่อยอาจส่งผล. |
| `Subset` | การตั้งค่าย่อยจะเป็นประโยชน์ถ้าคุณต้องการที่จะให้ขนาดไฟล์ที่ส่งออกมีขนาดเล็กลง. | <p>ผู้ใช้ไม่สามารถเพิ่มหรือแก้ไขข้อความทั้งหมดโดยใช้แบบอักษรย่อยในเอกสารออกPDF งหมดของแบบอักษรที่มีอยู่.</p><p>ถ้าหลายPDFsถูกบันทึกด้วยแบบอักษรย่อยและประกอบเข้าด้วยกันเอกสารPDFที่รวมกันอาจมีแบบอั</p> |

### การฝังแบบอักษรแบบเต็มในPDF

คุณสมบัติ[EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/)ช่วยให้คุณสามารถระบุวิธีที่Aspose.Wordsฝังแบบอักษรลงในผลลัพธ์PDFเอกสาร.

- เมื่อต้องการฝังแบบอักษรเต็มลงในผลลัพธ์PDFเอกสารให้ตั้งค่า**EmbedFullFonts**เป็นจริง
- เมื่อต้องการตั้งค่าแบบอักษรย่อยเมื่อบันทึกเป็นPDFให้ตั้งค่า**EmbedFullFonts**เป็นเท็จ

ตัวอย่างต่อไปนี้สาธิตวิธีการฝังแบบอักษรทั้งหมดในเอกสารออกPDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

ตัวอย่างต่อไปนี้แสดงวิธีการตั้งค่าAspose.Wordsเป็นแบบอักษรย่อยในเอาต์พุตPDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบสำหรับตัวอย่างเหล่านี้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## วิธีการควบคุมการฝังแบบอักษรหลักและแบบอักษรมาตรฐานWindows

แบบอักษรหลักและแบบอักษรมาตรฐานWindowsคือชุดแบบอักษร"มาตรฐาน"ซึ่งมักจะปรากฏอยู่บนเครื่องเป้าหมายหรือโดยเครื่องอ่านเอกสารดังนั้นจึงไม่จำเป็นต้องฝังอยู่ในผลลัพธ์PDF โดยการไม่ฝังแบบอักษรเหล่านี้คุณสามารถลดขนาดของเอกสารที่แสดงผลPDFและยังรักษาคว.

Aspose.Wordsมีตัวเลือกให้เลือกวิธีส่งออกแบบอักษรไปยังPDF คุณสามารถเลือกที่จะฝังแบบอักษรหลักและแบบมาตรฐานลงในผลลัพธ์PDFหรือข้ามการฝังและใช้แบบอักษรมาตรฐานหลักPDFหรือแบบอักษรระบบบนเครื่องเป้าหมายแทน โดยปกติแล้วการลดขนาดไฟล์อย่างมีนัยสำคัญสำหรับPDFเอกสารที่สร้างโดยAspose.Words.

- เนื่องจากตัวเลือกเหล่านี้เป็นพิเศษร่วมกันคุณควรเลือกเพียงหนึ่งครั้ง.
- เมื่อบันทึกด้วยการปฏิบัติตามข้อกำหนดPDF/A-1แบบอักษรที่ใช้ทั้งหมดจะต้องฝังอยู่กับเอกสารPDF เมื่อบันทึกด้วยการปฏิบัติตามข้อกำหนดนี้ต้องตั้งคุณสมบัติ[UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/)เป็นเท็จและคุณสมบัติ[FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/)ต้องตั้งค่าเป็น[EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### การฝังแบบอักษรหลัก

ตัวเลือกในการฝังแบบอักษรหลักสามารถเปิดหรือปิดใช้งานได้โดยใช้คุณสมบัติ`UseCoreFonts` เมื่อมีการตั้งค่าเป็นจริงแบบอักษร"ชนิดจริง"ที่นิยมมากที่สุด(แบบอักษรฐาน 14)จะไม่ฝังอยู่ในเอกสารออกPDF:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

แบบอักษรเหล่านี้จะถูกแทนที่ด้วยแบบอักษรชนิดแกน1ซึ่งมีให้โดยผู้อ่านเมื่อเปิดPDF.

ตัวอย่างที่ให้ไว้ด้านล่างแสดงวิธีการตั้งค่าAspose.Wordsเพื่อหลีกเลี่ยงการฝังแบบอักษรหลักและปล่อยให้ผู้อ่านแทนด้วยแบบอักษรPDFชนิด1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบสำหรับตัวอย่างนี้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

เนื่องจากผู้ชมPDFให้แบบอักษรหลักบนแพลตฟอร์มที่รองรับตัวเลือกนี้จึงเป็นประโยชน์เมื่อต้อง งไรก็ตามแบบอักษรหลักอาจดูแตกต่างจากแบบอักษรของระบบ.

{{% alert color="primary" %}}

การตั้งค่านี้ใช้ได้เฉพาะกับANSI(Windows-1252)ข้อความการเข้ารหัส การเขียนข้อความที่ไม่ใช่ANSIไปยังPDFจะต้องมีการฝังแบบอักษรที่สอดคล้องกันอยู่เสมอ.

{{% /alert %}}

### การฝังแบบอักษรของระบบ

ตัวเลือกนี้สามารถเปิดหรือปิดใช้งานได้โดยใช้คุณสมบัติ[FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/) เมื่อคุณสมบัตินี้ถูกตั้งค่าเป็น[EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)แบบอักษรชนิดจริง"อาเรียล"และ"ไทม์โรมันใหม่"จะไม่ถูกฝังลงในเอกสารPDF ในกรณีนี้ตัวแสดงไคลเอ็นต์อาศัยแบบอักษรที่ติดตั้งบนระบบปฏิบัติการของไคลเอ็นต์ เมื่อ**FontEmbeddingMode**คุณสมบัติถูกตั้งค่าเป็น[EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)Aspose.Wordsจะไม่ฝังแบบอักษรใดๆ.

ตัวอย่างด้านล่างแสดงวิธีการตั้งค่าAspose.Wordsเพื่อข้ามการฝังทางอากาศและเวลาแบบอักษรโรมันใหม่ลงในเอกสารPDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

โหมดนี้จะมีประโยชน์มากที่สุดเมื่อคุณต้องการดูเอกสารของคุณบนแพลตฟอร์มเดียวกัน,รักษาลักษณะที่แน่นอนของแบบอักษรในผลลัพธ์PDF.

{{% alert color="primary" %}}

การตั้งค่านี้ใช้ได้เฉพาะกับANSI(Windows-1252)ข้อความการเข้ารหัส การเขียนข้อความที่ไม่ใช่ANSIเป็นPDFต้องมีการฝังแบบอักษรที่สอดคล้องกัน.

{{% /alert %}}
