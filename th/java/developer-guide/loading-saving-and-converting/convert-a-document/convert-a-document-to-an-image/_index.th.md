---
title: แปลงเอกสารเป็นรูปภาพในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: แปลงเอกสารเป็นรูปภาพ
linktitle: แปลงเอกสารเป็นรูปภาพ
type: docs
description: "แปลงเอกสารเป็นรูปแบบรูปภาพ(JPG,PNG,ฯลฯ) สร้างตัวอย่างเอกสารหรือสร้างเอกสารสแกนเพื่อส่งใบแจ้งหนี้โดยใช้Java."
weight: 35
url: /th/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

บางครั้งก็จะต้องได้รับภาพแทนเอกสารในรูปแบบอื่นๆเช่นDOCXหรือPDF ตัวอย่างเช่นคุณต้องเพิ่มตัวอย่างของหน้าเอกสารใดๆในเว็บไซต์หรือแอปพลิเคชันของคุณหรือสร้าง"สแกน"ของเอกสารเพื่อส่งใบแจ้งหนี้ นี่คือเมื่อคุณอาจจำเป็นต้องแปลงเอกสารใน[รูปแบบการโหลดที่รองรับ](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)เป็นรูปภาพอีกครั้งใน[รองรับรูปแบบการบันทึก](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)ใดๆ.

## แปลงเป็นรูปแบบภาพ

เช่นเดียวกับตัวอย่างการแปลงทั้งหมดที่อธิบายไว้แล้วคุณต้องสร้างเอกสารใหม่หรือโหลดเอกสารที่มีอยู่ในรูปแบบที่รองรับทำการเปลี่ยนแปลงที่จำเป็นและบันทึกในรูปแบบรูปภาพที่มีอยู่เช่นJPEG,PNGหรือBMP.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงDOCXเป็นJPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นรูปภาพ

Aspose.Wordsให้คุณมี[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)ชั้นซึ่งจะช่วยให้การควบคุมมากขึ้นกว่าวิธีการที่เอกสารจะถูกบันทึกไว้ในรูปแบบ คุณสมบัติบางประเภทของคลาสนี้สืบทอดหรือคุณสมบัติเกินพิกัดของคลาสพื้นฐานเช่น[FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)หรือ[SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)แต่.

คุณสามารถระบุหน้าที่จะแปลงเป็นรูปแบบรูปภาพโดยใช้คุณสมบัติ[PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) ตัวอย่างเช่นมันสามารถนำมาใช้ถ้าคุณต้องการเพียงตัวอย่างสำหรับครั้งแรกหรือสำหรับห.

นอกจากนี้ยังเป็นไปได้ที่จะควบคุมคุณภาพของภาพที่ส่งออกและรูปแบบพิกเซลโดยใช้คุณสมบั– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), เช่นเดียวกับการตั้งค่าการตั้งค่าสีของภาพโดยใช้คุณสมบัติต่อไปนี้– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

นอกจากนี้ยังมีคุณสมบัติที่ใช้กับรูปแบบบางอย่างเช่น[JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality)หรือ[TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตัวอย่างของหน้าเอกสารแรกกับการใช้การตั้งค่าเ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
