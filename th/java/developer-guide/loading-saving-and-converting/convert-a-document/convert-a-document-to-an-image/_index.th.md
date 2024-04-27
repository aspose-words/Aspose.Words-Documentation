---
title: แปลงเอกสารเป็นอิมเมจ Java
second_title: Aspose.Words สําหรับ Java
articleTitle: แปลงเอกสารเป็นอิมเมจ
linktitle: แปลงเอกสารเป็นอิมเมจ
type: docs
description: "แปลงเอกสารเป็นรูปแบบอิมเมจ (JPG, PNG เป็นต้น) สร้างเอกสารแสดงตัวอย่าง หรือสร้างเอกสารที่สแกน เพื่อทําการส่งออกเสียงโดยใช้ Java."
weight: 35
url: /th/java/convert-a-document-to-an-image/
---

บางครั้งต้องใช้ภาพแทนเอกสารในรูปแบบอื่น เช่น DCX หรือ PDF ตัวอย่างเช่น คุณต้องเพิ่มการแสดงตัวอย่างหน้าเอกสารใด ๆ ในเว็บไซต์ หรือโปรแกรมของคุณ หรือสร้าง "scan" ของเอกสารเพื่อส่งข้อความ นี่เป็นเมื่อคุณอาจต้องแปลงเอกสารใด ๆ [รูปแบบการโหลดที่รองรับ](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) ไปยังภาพ ในทุกๆ ครั้ง [รูปแบบการบันทึกที่รองรับ](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## แปลงเป็นรูปแบบอิมเมจ

จากตัวอย่างการแปลงทั้งหมดที่ได้อธิบายมาแล้ว คุณต้องสร้างเอกสารใหม่ หรือโหลดในรูปแบบใด ๆ ที่รองรับอยู่ ให้ทําการเปลี่ยนแปลงที่จําเป็น และบันทึกมันในรูปแบบภาพต่าง ๆ เช่น JPEG, PNG หรือ BMP

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลง DOCX เป็น JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## กําหนดตัวเลือกต่าง ๆ เมื่อมีการแปลงภาพ

Aspose.Words ให้คุณกับ [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) คลาสซึ่งให้การควบคุมมากขึ้นว่าเอกสารถูกบันทึกในรูปแบบต่าง ๆ อย่างไร คุณสมบัติบางอย่างของคลาสนี้ ที่เป็นมรดกหรือเกินขนาดของคลาสพื้นฐานเช่น [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) หรือ [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), แต่ยังมีตัวเลือกที่เจาะจงในการบันทึกภาพ

เป็น ไป ได้ ที่ จะ ระบุ หน้า ต่าง ๆ เพื่อ แปลง เป็น รูป ภาพ โดย ใช้ รูป ภาพ [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) ทรัพย์สิน ตัว อย่าง เช่น อาจ นํา มา ใช้ ได้ หาก คุณ ต้องการ เพียง แค่ การ ดู ภาพ สําหรับ หน้า แรก หรือ หน้า ใด หน้า หนึ่ง โดย เฉพาะ.

เป็น ไป ได้ ด้วย ที่ จะ ควบคุม คุณภาพ และ พิกเซล ของ ภาพ โดย ใช้ คุณสมบัติ ต่อ ไป นี้ - [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), ปรับตั้งค่าสีของภาพด้วย โดยใช้คุณสมบัติต่อไปนี้ - [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

นอกจากนี้ยังมีคุณสมบัติที่นําไปใช้ในรูปแบบบางอย่าง ตัวอย่างเช่น [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) หรือ [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีสร้างภาพตัวอย่างของหน้าเอกสารแรก โดยปรับใช้การตั้งค่าเพิ่มเติม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
