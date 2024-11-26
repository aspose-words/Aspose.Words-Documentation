---
title: แปลงเอกสารเป็นรูปภาพใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แปลงเอกสารเป็นรูปภาพ
linktitle: แปลงเอกสารเป็นรูปภาพ
type: docs
description: "แปลงเอกสารเป็นรูปแบบรูปภาพ (JPG, PNG ฯลฯ) สร้างการแสดงตัวอย่างเอกสารหรือสร้างการสแกนเอกสารเพื่อส่งใบแจ้งหนี้โดยใช้ C#"
weight: 43
url: /th/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

บางครั้งจำเป็นต้องได้รับรูปภาพแทนเอกสารในรูปแบบอื่น เช่น DOCX หรือ PDF ตัวอย่างเช่น คุณต้องเพิ่มหน้าตัวอย่างหน้าเอกสารใดๆ ลงในเว็บไซต์หรือแอปพลิเคชันของคุณ หรือสร้าง "การสแกน" ของเอกสารเพื่อส่งใบแจ้งหนี้ นี่คือเวลาที่คุณอาจต้องแปลงเอกสารใน [รูปแบบการโหลดที่รองรับ](https://reference.aspose.com/words/net/aspose.words/loadformat/) ใดๆ ให้เป็นรูปภาพในรูปแบบ [รองรับรูปแบบการบันทึก](https://reference.aspose.com/words/net/aspose.words/saveformat/) ใดๆ อีกครั้ง

## แปลงเป็นรูปภาพ {#convert-to-image-format}

เช่นเดียวกับตัวอย่างการแปลงทั้งหมดที่อธิบายไว้แล้ว คุณต้องสร้างเอกสารใหม่หรือโหลดเอกสารที่มีอยู่ในรูปแบบที่รองรับ ทำการเปลี่ยนแปลงที่จำเป็น และบันทึกในรูปแบบรูปภาพที่มีอยู่ เช่น JPEG, PNG หรือ BMP

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลง PDF เป็น JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นรูปภาพ {#specify-save-options-when-converting-to-an-image}

Aspose.Words มีคลาส [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) ให้คุณ ซึ่งให้การควบคุมวิธีการบันทึกเอกสารในรูปแบบรูปภาพต่างๆ ได้มากขึ้น คุณสมบัติบางอย่างของคลาสนี้สืบทอดหรือโอเวอร์โหลดคุณสมบัติของคลาสพื้นฐาน เช่น [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) หรือ [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) แต่ยังมีตัวเลือกเฉพาะสำหรับการบันทึกรูปภาพอีกด้วย

คุณสามารถระบุหน้าที่จะแปลงเป็นรูปแบบรูปภาพได้โดยใช้คุณสมบัติ [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/) ตัวอย่างเช่น สามารถใช้ได้หากคุณต้องการเพียงการแสดงตัวอย่างสำหรับหน้าแรกหรือหน้าที่แน่นอนเท่านั้น

นอกจากนี้ยังสามารถควบคุมคุณภาพของภาพที่ส่งออกและรูปแบบพิกเซลโดยใช้คุณสมบัติต่อไปนี้ – [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) รวมถึงตั้งค่าการตั้งค่าสีของภาพโดยใช้คุณสมบัติต่อไปนี้ – [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/)

นอกจากนี้ยังมีคุณสมบัติที่ใช้กับรูปแบบบางอย่าง เช่น [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) หรือ [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างหน้าตัวอย่างของเอกสารหน้าแรกโดยใช้การตั้งค่าเพิ่มเติมบางอย่าง:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
