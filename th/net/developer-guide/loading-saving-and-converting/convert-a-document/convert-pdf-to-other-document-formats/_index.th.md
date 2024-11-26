---
title: แปลง PDF เป็นรูปแบบเอกสารอื่นใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แปลง PDF เป็นรูปแบบเอกสารอื่น ๆ
linktitle: แปลง PDF เป็นรูปแบบเอกสารอื่น ๆ
type: docs
description: "แปลง PDF เป็นรูปแบบ Word เช่น DOCX, DOC, รูปแบบรูปภาพ เช่น JPG หรือ PNG หรือรูปแบบอื่นใดที่ Aspose.Words รองรับโดยใช้ C#"
keywords: convert pdf to other formats c#
weight: 45
url: /th/net/convert-pdf-to-other-document-formats/
timestamp: 2024-07-09-19-00-42
---

Aspose.Words สามารถโหลดได้แม้กระทั่งรูปแบบที่ซับซ้อนเช่น PDF นี่เป็นการเปิดโอกาสใหม่: เป็นไปได้ที่จะแปลง PDF เป็น Word หรือรูปแบบอื่น ๆ ที่ทำให้ผู้ใช้ก้าวไปข้างหน้าในการแก้ปัญหาต่างๆ

## ข้อกำหนดเบื้องต้น

* เพิ่มการอ้างอิงถึงแพ็คเกจ Aspose.Words ***หรือ*** ไปยัง Aspose.Words.Pdf2Word.dll
* อย่างน้อย .NET Framework 4.6.1 หรือ .NET Standard 2.0 เป้าหมายเช่น .NET Core 2.x หรือ 3.0, .NET 5 และ Xamarin ยังได้รับการสนับสนุนผ่านทางความเข้ากันได้กับ .NET Standard

## แปลง PDF เป็นรูปแบบต่างๆ {#convert-pdf-to-other-formats}

การแปลงไฟล์ PDF ที่ได้รับความนิยมมากที่สุดคือการแปลงเป็นรูปแบบ Microsoft Word เช่น DOCX, DOC รวมถึงรูปแบบรูปภาพ เช่น JPG หรือ PNG ด้วยเหตุนี้ การแปลงเอกสารจากรูปแบบหนึ่งไปเป็นอีกรูปแบบหนึ่งจึงทำได้ในลักษณะที่คุ้นเคย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลงเอกสารจาก PDF เป็น DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## ระบุตัวเลือกการโหลดเมื่อนำเข้า PDF {#specify-load-options-when-importing-pdf}

Aspose.Words มีคลาส [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) ให้คุณ ซึ่งช่วยให้คุณควบคุมวิธีการโหลดเอกสาร PDF ได้แม่นยำยิ่งขึ้น

คุณสมบัติส่วนใหญ่สืบทอดหรือโอเวอร์โหลดคุณสมบัติที่มีอยู่แล้วในคลาส `LoadOptions` นอกจากนั้น ยังมีการระบุคุณสมบัติจำนวนหนึ่งสำหรับรูปแบบ PDF ตัวอย่างเช่น คุณสามารถใช้คุณสมบัติ [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) และ [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) เพื่อกำหนดช่วงหน้าที่จะโหลดจากเอกสาร PDF และคุณสมบัติ [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) เพื่อควบคุมว่าควรข้ามรูปภาพเมื่อโหลด PDF หรือไม่ พารามิเตอร์ที่รองรับอีกตัวหนึ่งคือ [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) ซึ่งต้องระบุสำหรับ [เอกสารที่มีการป้องกันด้วยรหัสผ่าน](/words/net/protect-documents-and-parts-of-documents/)

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

## คุณสมบัติในอนาคต {#planned-features}

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
|  `FileLoadException`               |  ไม่สามารถประมวลผลไฟล์ PDF ได้ด้วยเหตุผลบางประการ<br /> {{% alert color="primary" %}}คุณสามารถรายงานปัญหาไปยังทีมพัฒนาเพื่อตรวจสอบโดยละเอียดได้โดยใช้ [การสนับสนุนทางเทคนิค](/words/th/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  ไฟล์ PDF ได้รับการปกป้องโดย Adobe DRM และไม่สามารถถอดรหัสโดย Pdf2Word |
|  `PasswordProtectedFileException`  |  ต้องระบุรหัสผ่านที่ถูกต้องสำหรับ PDF ที่มีการป้องกันด้วยรหัสผ่าน |

## ดูสิ่งนี้ด้วย

* [อ้างอิง Nuget ถึง Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

