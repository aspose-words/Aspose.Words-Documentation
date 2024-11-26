---
title: แปลงเอกสารเป็นรูปภาพในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: แปลงเอกสารเป็นรูปภาพ
linktitle: แปลงเอกสารเป็นรูปภาพ
type: docs
description: "แปลงเอกสารเป็นรูปแบบรูปภาพ(JPG,PNGฯลฯ) สร้างตัวอย่างเอกสารหรือสร้างเอกสารสแกนเพื่อส่งใบแจ้งหนี้."
weight: 43
url: /th/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

บางครั้งก็จะต้องได้รับภาพแทนเอกสารในรูปแบบอื่นๆเช่นDOCXหรือPDF ตัวอย่างเช่นคุณจำเป็นต้องเพิ่มตัวอย่างของหน้าเอกสารใดๆในเว็บไซต์หรือแอปพลิเคชันขอ นี่คือเมื่อคุณอาจจำเป็นต้องแปลงเอกสารใน[supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)เป็นรูปภาพอีกครั้งใน[supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)ใดๆ.

## แปลงเป็นรูปแบบภาพ

เช่นเดียวกับตัวอย่างการแปลงทั้งหมดที่อธิบายไว้แล้วคุณต้องสร้างเอกสารใหม่หรือโหลดเอกสารที่มีอยู่ในรูปแบบที่รองรับทำการเปลี่ยนแปลงที่จำเป็นและบันทึกในรูปแบบรูปภาพที่มีอยู่เช่นJPEG,PNGหรือBMP.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงDOCXเป็นJPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นรูปภาพ

Aspose.Wordsให้คุณมี[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)ชั้นซึ่งจะช่วยให้การควบคุมมากขึ้นกว่าวิธีการที่เอกสารจะถูกบันทึกไว้ในรูปแบบ คุณสมบัติบางประเภทของคลาสนี้สืบทอดหรือคุณสมบัติเกินพิกัดของคลาสพื้นฐานเช่น[FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/)หรือ[SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/)แต่.

คุณสามารถระบุหน้าที่จะแปลงเป็นรูปแบบรูปภาพโดยใช้คุณสมบัติ[PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/) ตัวอย่างเช่นมันสามารถนำมาใช้ถ้าคุณต้องการเพียงตัวอย่างสำหรับครั้งแรกหรือสำหรับห.

นอกจากนี้ยังเป็นไปได้ที่จะควบคุมคุณภาพของภาพที่ส่งออกและรูปแบบพิกเซลโดยใช้คุณสมบั– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), เช่นเดียวกับการตั้งค่าการตั้งค่าสีของภาพโดยใช้คุณสมบัติต่อไปนี้– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

นอกจากนี้ยังมีคุณสมบัติที่ใช้กับรูปแบบบางอย่างเช่น[JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/)หรือ[TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตัวอย่างของหน้าเอกสารแรกกับการใช้การตั้งค่าเ:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
