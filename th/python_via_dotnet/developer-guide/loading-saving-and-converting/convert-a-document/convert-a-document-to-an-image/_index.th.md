---
title: แปลงเอกสารเป็นรูปภาพ
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: แปลงเอกสารเป็นรูปภาพ
linktitle: แปลงเอกสารเป็นรูปภาพ
type: docs
description: "แปลงเอกสารเป็นรูปแบบรูปภาพ (JPG, PNG ฯลฯ) สร้างการแสดงตัวอย่างเอกสารหรือสร้างการสแกนเอกสารเพื่อส่งใบแจ้งหนี้โดยใช้ Python"
weight: 43
url: /th/python-net/convert-a-document-to-an-image/
---

บางครั้งจำเป็นต้องได้รับรูปภาพแทนเอกสารในรูปแบบอื่น เช่น DOCX หรือ PDF ตัวอย่างเช่น คุณต้องเพิ่มหน้าตัวอย่างหน้าเอกสารใดๆ ลงในเว็บไซต์หรือแอปพลิเคชันของคุณ หรือสร้าง "การสแกน" ของเอกสารเพื่อส่งใบแจ้งหนี้ นี่คือเวลาที่คุณอาจต้องแปลงเอกสารใน [รูปแบบการโหลดที่รองรับ](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) ใดๆ ให้เป็นรูปภาพในรูปแบบ [รองรับรูปแบบการบันทึก](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) ใดๆ อีกครั้ง

## แปลงเป็นรูปแบบภาพ {#convert-to-image-format}

เช่นเดียวกับตัวอย่างการแปลงทั้งหมดที่อธิบายไว้แล้ว คุณต้องสร้างเอกสารใหม่หรือโหลดเอกสารที่มีอยู่ในรูปแบบที่รองรับ ทำการเปลี่ยนแปลงที่จำเป็น และบันทึกในรูปแบบรูปภาพที่มีอยู่ เช่น JPEG, PNG หรือ BMP

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแปลง PDF เป็น JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นรูปภาพ {#specify-save-options-when-converting-to-an-image}

Aspose.Words มีคลาส [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) ให้คุณ ซึ่งให้การควบคุมวิธีการบันทึกเอกสารในรูปแบบรูปภาพต่างๆ ได้มากขึ้น คุณสมบัติบางอย่างของคลาสนี้สืบทอดหรือโอเวอร์โหลดคุณสมบัติของคลาสพื้นฐาน เช่น [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) หรือ [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) แต่ยังมีตัวเลือกเฉพาะสำหรับการบันทึกรูปภาพอีกด้วย

คุณสามารถระบุหน้าที่จะแปลงเป็นรูปแบบรูปภาพได้โดยใช้คุณสมบัติ [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) ตัวอย่างเช่น สามารถใช้ได้หากคุณต้องการเพียงการแสดงตัวอย่างสำหรับหน้าแรกหรือหน้าที่แน่นอนเท่านั้น

นอกจากนี้ยังสามารถควบคุมคุณภาพของภาพที่ส่งออกและรูปแบบพิกเซลโดยใช้คุณสมบัติต่อไปนี้ – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) รวมถึงตั้งค่าการตั้งค่าสีของภาพโดยใช้คุณสมบัติต่อไปนี้ – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/)

นอกจากนี้ยังมีคุณสมบัติที่ใช้กับรูปแบบบางอย่าง เช่น [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) หรือ [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างหน้าตัวอย่างของเอกสารหน้าแรกโดยใช้การตั้งค่าเพิ่มเติมบางอย่าง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
