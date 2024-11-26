---
title: การบันทึกเอกสารเป็นหลายหน้าTIFFในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การบันทึกเอกสารเป็นหลายหน้าTIFF
linktitle: การบันทึกเอกสารเป็นหลายหน้าTIFF
description: "แปลงเอกสารเป็นภาพแรสเตอร์ซึ่งกล่าวถึงในตัวอย่างของรูปแบบTIFF ในการกำหนดวิธีแสดงTIFFคุณต้องระบุตัวเลือกเพิ่มเติม:ความละเอียด,จำนวนหน้าเว็บ,ไบนารีภาพ,ฯลฯโดยใช้Java."
type: docs
weight: 30
url: /th/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

เมื่อทำงานกับเอกสารคุณมักจะต้องแปลงเอกสารของคุณเป็นไฟล์ภาพแรสเตอร์ นี้มีความเกี่ยวข้องโดยเฉพาะอย่างยิ่งถ้าคุณต้องนำเสนอเอกสารของคุณในรูปแบบที่อ่านได้และสามารถพิมพ์ได้แต่ไม่สามารถแก้ไขได้ ตัวอย่างเช่นคุณสามารถใช้ภาพแรสเตอร์ของหน้าแรกของเอกสารของคุณเป็นภาพตัวอย่า บทความนี้อธิบายวิธีแปลงเอกสารเป็นรูปภาพแรสเตอร์โดยใช้ตัวอย่างของรูปแบบTIFFซึ่งเป็นห.

## กำลังแปลงDOCเป็นหลายหน้าTIFF

ในAspose.WordsการแปลงจากDOCเป็นTIFFสามารถทำได้ด้วยรหัสบรรทัดเดียวโดยเพียงแค่ผ่านเส้นทาง"บันทึกลงใน"และนามสกุลไฟล์ที่เกี่ยวข้องกับวิธีการ[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) วิธีการ**Save**จะได้รับ`SaveFormat`จากนามสกุลของแฟ้มที่ระบุในเส้นทางโดยอัตโนมัติ ตัวอย่างต่อไปนี้สาธิตวิธีการแปลงเอกสารเป็นรูปแบบTIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## การระบุตัวเลือกเพิ่มเติมเมื่อแสดงผลTIFF

คุณมักจะต้องระบุอ็อพชันเพิ่มเติมซึ่งส่งผลต่อผลลัพธ์การแสดงผล เพื่อจุดประสงค์นี้ใช้คลาสของ[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)ซึ่งประกอบด้วยคุณสมบัติที่กำหนดวิธีแสดงเอกสารบนรูปภาพ คุณสามารถระบุต่อไปนี้:

- บันทึกรูปแบบเพื่อกำหนดรายการตัวเลือกที่มี([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- ความละเอียด([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- จำนวนหน้า([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/),[PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- การตั้งค่าสีและแสงสว่าง([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- คุณภาพของภาพ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- วิธีที่ใช้ในการไบนารีรูปภาพ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod),[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- รูปแบบพิกเซลสำหรับรูปภาพที่สร้างขึ้น([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windowsการจัดการเมตาไฟล์โดยAspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- ตัวเลือกเพิ่มเติมที่คุณสามารถเห็นได้ในชั้นเรียน**ImageSaveOptions**

ตัวอย่างต่อไปนี้แสดงวิธีการแปลงDOCเป็นTIFFด้วยตัวเลือกที่กำหนดค่า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## เกณฑ์สำหรับTIFFไบนารี่

รูปภาพTIFFสามารถบันทึกได้ในรูปแบบ 1 บิตต่อวินาทีโดยการตั้งค่าคุณสมบัติของ[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat)เป็นประเภทรูปแบบพิกเซลFormat1bppIndexedและคุณสมบัติของ[TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)เป็นประเภทของ 3 หรือซีซีที 4.

สำหรับการแบ่งส่วนรูปภาพAspose.Wordsใช้การกำหนดเกณฑ์วิธีที่ง่ายที่สุด เมธอดนี้จะแปลงรูปภาพขนาดสีเทาTIFFเป็นภาพไบนารีโดยใช้ค่าเกณฑ์ ดังนั้นเมื่อเอกสารต้องถูกแปลงเป็นรูปแบบไฟล์TIFFเป็นไปได้ที่จะได้รับหรือตั้งค่าเกณฑ์สำหรับTIFFไบนารี่ผ่านคุณสมบัติของ[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) ค่าดีฟอลต์สำหรับคุณสมบัตินี้ถูกตั้งค่าเป็น 128 และค่านี้สูงกว่ารูปภาพจะเข้มขึ้น.

ตัวอย่างต่อไปนี้แสดงวิธีการดำเนินการTIFFด้วยเกณฑ์ที่ระบุ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

ด้านล่างนี้คุณสามารถเปรียบเทียบรูปภาพที่ดำเนินการไบนารี่TIFFด้วยค่าเกณฑ์ต่างๆ:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
