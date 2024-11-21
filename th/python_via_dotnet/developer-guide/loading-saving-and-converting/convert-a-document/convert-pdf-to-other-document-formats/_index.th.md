---
title: แปลง PDF เป็นรูปแบบเอกสารอื่น ๆ
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: แปลง PDF เป็นรูปแบบเอกสารอื่น ๆ
linktitle: แปลง PDF เป็นรูปแบบเอกสารอื่น ๆ
type: docs
description: "แปลง PDF เป็นรูปแบบ Word เช่น DOCX, DOC, รูปแบบรูปภาพ เช่น JPG หรือ PNG หรือรูปแบบอื่นใดที่ Aspose รองรับโดยใช้ `Python.Words`"
keywords: convert pdf to other formats python
weight: 45
url: /th/python-net/convert-pdf-to-other-document-formats/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words สามารถโหลดได้แม้กระทั่งรูปแบบที่ซับซ้อนเช่น PDF นี่เป็นการเปิดโอกาสใหม่: เป็นไปได้ที่จะแปลง PDF เป็น Word หรือรูปแบบอื่น ๆ ที่ทำให้ผู้ใช้ก้าวไปข้างหน้าในการแก้ปัญหาต่างๆ

## แปลง PDF เป็นรูปแบบอื่น {#convert-pdf-to-other-formats}

การแปลงไฟล์ PDF ที่ได้รับความนิยมมากที่สุดคือการแปลงเป็นรูปแบบ Microsoft Word เช่น DOCX, DOC รวมถึงรูปแบบรูปภาพ เช่น JPG หรือ PNG ด้วยเหตุนี้ การแปลงเอกสารจากรูปแบบหนึ่งไปเป็นอีกรูปแบบหนึ่งจึงทำได้ในลักษณะที่คุ้นเคย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลงเอกสารจาก PDF เป็น DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## ระบุตัวเลือกการโหลดเมื่อนำเข้า PDF {#specify-load-options-when-importing-pdf}

Aspose.Words มีคลาส [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) ให้คุณ ซึ่งช่วยให้คุณควบคุมวิธีการโหลดเอกสาร PDF ได้แม่นยำยิ่งขึ้น

คุณสมบัติส่วนใหญ่สืบทอดหรือโอเวอร์โหลดคุณสมบัติที่มีอยู่แล้วในคลาส [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) นอกจากนั้น ยังมีการระบุคุณสมบัติจำนวนหนึ่งสำหรับรูปแบบ PDF ตัวอย่างเช่น คุณสามารถใช้คุณสมบัติ [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) และ [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) เพื่อกำหนดช่วงหน้าที่จะโหลดจากเอกสาร PDF และคุณสมบัติ [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) เพื่อควบคุมว่าควรข้ามรูปภาพเมื่อโหลด PDF หรือไม่ พารามิเตอร์ที่รองรับอีกตัวหนึ่งคือ [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) ซึ่งต้องจัดเตรียมไว้สำหรับเอกสารที่มีการป้องกันด้วยรหัสผ่าน

## รองรับเนื้อหา PDF {#supported-pdf-content}

ปัจจุบันปลั๊กอิน PDF2Word รองรับประเภทข้อมูลต่อไปนี้:

* ย่อหน้าข้อความ
* รูปภาพ
* ตาราง
* รายการ
* ส่วนหัวและส่วนท้าย
* เชิงอรรถ
* หมายเลขหน้า
* ข้อความจากขวาไปซ้าย (มีข้อจำกัดบางประการ)
* PDF ที่ค้นหาได้ (ภาพด้านหน้าจะถูกลบออกเพื่อใช้ข้อความพื้นหลัง)

## คุณสมบัติที่วางแผนไว้ {#planned-features}

คุณสมบัติบางอย่างยังอยู่ในช่วงเริ่มต้นของการพัฒนาหรือรวมอยู่ในแผนงานการพัฒนา:

* สารบัญ
* OCR สำหรับ PDF ที่ค้นหาได้และไม่สามารถค้นหาได้
* รายงานความคืบหน้า
* ข้อความหลายคอลัมน์
* สูตรคณิตศาสตร์
* ฟิลด์อัตโนมัติเพิ่มเติม (นอกเหนือจาก `PAGE` และ NUMPAGES)

## ข้อยกเว้นในการโหลด PDF

ในระหว่างการแปลงเอกสาร PDF ข้อยกเว้นข้อใดข้อหนึ่งต่อไปนี้อาจเกิดขึ้น:

|  ข้อยกเว้น |  คำอธิบาย |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  ไม่สามารถประมวลผลไฟล์ PDF ได้ด้วยเหตุผลบางประการ<br /> {{% alert color="primary" %}}คุณสามารถรายงานปัญหาไปยังทีมพัฒนาเพื่อตรวจสอบโดยละเอียดได้โดยใช้ [การสนับสนุนทางเทคนิค](/words/th/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  ไฟล์ PDF ได้รับการปกป้องโดย Adobe DRM และไม่สามารถถอดรหัสโดย Pdf2Word |
|   *PasswordProtectedFileException*  |  ต้องระบุรหัสผ่านที่ถูกต้องสำหรับ PDF ที่มีการป้องกันด้วยรหัสผ่าน |


