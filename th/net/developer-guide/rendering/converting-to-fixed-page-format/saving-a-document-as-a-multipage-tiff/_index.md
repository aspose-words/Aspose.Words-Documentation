---
title: การบันทึกเอกสารเป็น TIFF หลายหน้าใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การบันทึกเอกสารเป็น TIFF แบบหลายหน้า
linktitle: การบันทึกเอกสารเป็น TIFF แบบหลายหน้า
description: "แปลงเอกสารเป็น TIFF หลายหน้าโดยใช้ C# เพื่อกำหนดวิธีการแสดงเอกสารบนรูปภาพ คุณต้องระบุตัวเลือกเพิ่มเติม: ความละเอียด จำนวนหน้า ไบนาไรเซชันของรูปภาพ ฯลฯ"
type: docs
weight: 30
url: /th/net/saving-a-document-as-a-multipage-tiff/
---

เมื่อทำงานกับเอกสาร คุณมักจะต้องแปลงเอกสารของคุณเป็นไฟล์ภาพแรสเตอร์ สิ่งนี้มีความเกี่ยวข้องอย่างยิ่งหากคุณต้องนำเสนอเอกสารของคุณในรูปแบบที่อ่านและพิมพ์ได้ แต่ไม่สามารถแก้ไขได้ ตัวอย่างเช่น คุณสามารถใช้รูปภาพแรสเตอร์ของหน้าแรกของเอกสารของคุณเป็นตัวอย่างได้ บทความนี้จะอธิบายวิธีการแปลงเอกสารเป็นภาพแรสเตอร์โดยใช้ตัวอย่างรูปแบบ TIFF ซึ่งเป็นหนึ่งในรูปแบบภาพยอดนิยม

## การแปลง DOC เป็น TIFF แบบหลายหน้า

ใน Aspose.Words การแปลงจาก DOC เป็น TIFF สามารถทำได้ด้วยโค้ดหนึ่งบรรทัด เพียงส่งเส้นทาง "บันทึกไปที่" และนามสกุลไฟล์ที่เกี่ยวข้องไปยังวิธี [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) เมธอด **Save** ดึง `SaveFormat` จากนามสกุลไฟล์ที่ระบุในพาธโดยอัตโนมัติ ตัวอย่างต่อไปนี้สาธิตวิธีการแปลงเอกสารเป็นรูปแบบ TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## การระบุตัวเลือกเพิ่มเติมเมื่อเรนเดอร์ TIFF

คุณมักจะต้องระบุตัวเลือกเพิ่มเติม ซึ่งส่งผลต่อผลลัพธ์การเรนเดอร์ เพื่อจุดประสงค์นี้ ให้ใช้คลาส [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) ซึ่งมีคุณสมบัติที่กำหนดวิธีการแสดงเอกสารบนรูปภาพ คุณสามารถระบุสิ่งต่อไปนี้:

- บันทึกรูปแบบเพื่อกำหนดรายการตัวเลือกที่มี ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- ความละเอียด ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- จำนวนหน้า ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- การตั้งค่าสีและแสง ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- คุณภาพของภาพ ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- วิธีการที่ใช้ในการแปลงภาพ ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- รูปแบบพิกเซลสำหรับภาพที่สร้างขึ้น ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- การจัดการไฟล์เมตา Windows โดย Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- ตัวเลือกเพิ่มเติมที่คุณเห็นในคลาส **ImageSaveOptions**

ตัวอย่างต่อไปนี้แสดงวิธีการแปลง DOC เป็น TIFF ด้วยตัวเลือกที่กำหนดค่าไว้:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## เกณฑ์สำหรับ TIFF Binarization

รูปภาพ TIFF สามารถบันทึกในรูปแบบ 1bpp b/w ได้โดยการตั้งค่าคุณสมบัติ [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) เป็นประเภทรูปแบบพิกเซล Format1bppIndexed และคุณสมบัติ [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) เป็น Ccitt3 หรือ Ccitt4

สำหรับการแบ่งส่วนรูปภาพ Aspose.Words ใช้วิธีการที่ง่ายที่สุด - Thresholding เมธอดนี้จะแปลงรูปภาพ TIFF ระดับสีเทาให้เป็นรูปภาพไบนารี โดยใช้ค่าขีดจำกัด ดังนั้น เมื่อจำเป็นต้องแปลงเอกสารเป็นรูปแบบไฟล์ TIFF จึงสามารถรับหรือตั้งค่าเกณฑ์สำหรับการแปลงไบนารี TIFF ผ่านคุณสมบัติ [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) ได้ ค่าเริ่มต้นสำหรับคุณสมบัตินี้ตั้งไว้ที่ 128 และยิ่งค่านี้สูง รูปภาพก็จะยิ่งเข้มขึ้น

ตัวอย่างต่อไปนี้แสดงวิธีการดำเนินการไบนารี TIFF ด้วยเกณฑ์ที่ระบุ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

ด้านล่างนี้คุณสามารถเปรียบเทียบรูปภาพที่มีการดำเนินการไบนาไรเซชัน TIFF ที่ค่าเกณฑ์ต่างๆ:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="การวิจัยเอกสารเป็นหลายหน้า tiff-aspose-words-net" style="width:800px"/>
