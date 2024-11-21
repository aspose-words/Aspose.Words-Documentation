---
title: บันทึกเอกสารเป็น TIFF Java
second_title: Aspose.Words สําหรับ Java
articleTitle: บันทึกเอกสารเป็น TIFF
linktitle: บันทึกเอกสารเป็น TIFF
description: "แปลงเอกสารเป็นอิมเมจราสเตอร์ ซึ่งจะพิจารณาจากตัวอย่างของรูปแบบ TIFFF เพื่อพิจารณาว่าจะให้แสดงแฟ้มภาพประเภท TIFF อย่างไร คุณต้องกําหนดตัวเลือกเพิ่มเติม: ความละเอียด, จํานวนหน้า, จํานวนหน้า, จํานวนหน้า, จํานวนหน้า, จํานวนภาพ, อื่น ๆ Java."
type: docs
weight: 30
url: /th/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

เมื่อคุณทํางานกับเอกสาร คุณต้องแปลงเอกสารของคุณเป็นแฟ้มอิมเมจแบบราสเตอร์ นี้จะเกี่ยวข้องอย่างยิ่ง หากคุณต้องแสดงเอกสารของคุณในรูปแบบที่สามารถอ่านและพิมพ์ได้ แต่ไม่สามารถแก้ไขได้ ตัว อย่าง เช่น คุณ สามารถ ใช้ ภาพ raster ของ หน้า แรก ของ เอกสาร ของ คุณ เพื่อ แสดง ภาพ ล่วง หน้า. บทความ นี้ พรรณนา วิธี ที่ จะ เปลี่ยน เอกสาร ให้ เป็น รูป มีดโกน โดย ใช้ ตัว อย่าง ของ รูป แบบ TIFF - รูป แบบ ที่ นิยม ใช้ กัน มาก.

## แปลง DOC เป็น TIFF หลายหน้า

ใน Aspose.Words, แปลงจาก DOC ไปเป็น TIFF สามารถดําเนินการได้โดยใช้บรรทัดเดียวของโค้ด โดยแค่ผ่านทาง "บันทึกไปยัง" และส่วนขยายแฟ้มที่เกี่ยวข้องไปยัง [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) วิธี เดอะ **Save** วิธีการต่าง ๆ โดยอัตโนมัติ `SaveFormat` จากส่วนขยายชื่อแฟ้มที่ระบุไว้ในพาธ ตัวอย่างต่อไปนี้แสดงถึงวิธีการแปลงเอกสารเป็นรูปแบบ TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## ตัวเลือกต่าง ๆ ที่ระบุเพิ่มเติมเมื่อแสดง TIFF

คุณต้องกําหนดตัวเลือกเพิ่มเติม ซึ่งจะมีผลกับผลลัพธ์การแสดงผล เพื่อวัตถุประสงค์นี้ ใช้ [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) คลาสที่มีคุณสมบัติที่จะกําหนดว่าจะให้แสดงเอกสารบนภาพอย่างไร คุณสามารถระบุต่อไปนี้ได้:

- บันทึกรูปแบบเพื่อพิจารณาตัวเลือกที่มีให้เลือก (เช่น[SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- ความละเอียด ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- จํานวนหน้า (ค.ศ.[PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- (การตั้งค่าสีและแสง)[PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- คุณภาพของภาพ (*)[JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- วิธีการใช้ในการลบภาพ[TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- รูปแบบพิกเซลสําหรับสร้างรูปภาพต่าง ๆ ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows การเข้ารหัสName Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- ตัวเลือกเพิ่มเติมที่คุณสามารถดูได้ใน **ImageSaveOptions** ชั้น

ตัวอย่างต่อไปนี้ จะแสดงวิธีการแปลง DOC ไปเป็น TIFF ด้วยตัวเลือกที่ปรับแต่ง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## ยึดแบบ TIFF Banarization

แฟ้มภาพประเภท TIFF สามารถบันทึกในรูปแบบ 1bpp b/w ได้ โดยการตั้งค่า [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) คุณสมบัติสําหรับรูปแบบ 1bppindexed รูปแบบของพิกเซล และ [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) สมบัติของ Ccitt3 หรือ Ccitt4

สําหรับการแยกรูปภาพ Aspose.Words จง ใช้ วิธี ง่าย ที่ สุด นั่น คือ การ กําหนด. วิธีการนี้จะแปลงค่าภาพแบบ TIFF แบบระดับสีเทา ให้เป็นภาพไบนารี โดยใช้ค่าแบบขีดจํากัด ดังนั้น เมื่อเอกสารจําเป็นต้องแปลงเป็นรูปแบบแฟ้ม TIFF ก็เป็นไปได้ที่จะเอาหรือตั้งค่าขอบเขตของ TIFFF Banarization ผ่าน [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) ทรัพย์สิน ค่าปริยายของคุณสมบัตินี้ ถูกตั้งค่าเป็น 128 และค่านี้ยิ่งสูงยิ่งจะทําให้ภาพเข้มมากขึ้น

ตัวอย่างต่อไปนี้ จะแสดงวิธีการทํา TOP Berarization ด้วยขีดจํากัดที่ระบุไว้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

ด้านล่างนี้ คุณสามารถเปรียบเทียบภาพต่าง ๆ ที่ใช้ทําการสร้างภาพแบบ TIFF ได้ตามค่าต่าง ๆ:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
