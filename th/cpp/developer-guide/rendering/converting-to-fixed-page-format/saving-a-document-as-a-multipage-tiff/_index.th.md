---
title: การบันทึกเอกสารเป็นหลายหน้าTIFFในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การบันทึกเอกสารเป็นหลายหน้าTIFF
linktitle: การบันทึกเอกสารเป็นหลายหน้าTIFF
description: "แปลงเอกสารเป็นหลายหน้าTIFFโดยใช้C++ เพื่อกำหนดวิธีการที่เอกสารจะปรากฏบนภาพที่คุณจะต้องระบุตัวเลือกเพิ่มเติม:ความละเ."
type: docs
weight: 40
url: /th/cpp/saving-a-document-as-a-multipage-tiff/
---

เมื่อทำงานกับเอกสารคุณมักจะต้องแปลงเอกสารของคุณเป็นไฟล์ภาพแรสเตอร์ นี้มีความเกี่ยวข้องโดยเฉพาะอย่างยิ่งถ้าคุณต้องนำเสนอเอกสารของคุณในรูปแบบที่อ่านได้และสามารถพิมพ์ได้แต่ไม่สามารถแก้ไขได้ ตัวอย่างเช่นคุณสามารถใช้ภาพแรสเตอร์ของหน้าแรกของเอกสารของคุณเป็นภาพตัวอย่า บทความนี้อธิบายวิธีแปลงเอกสารเป็นรูปภาพแรสเตอร์โดยใช้ตัวอย่างของรูปแบบTIFFซึ่งเป็นห.

## กำลังแปลงDOCเป็นหลายหน้าTIFF

ในAspose.Words,แปลงจากDOCเป็นTIFFสามารถดำเนินการกับหนึ่งบรรทัดของรหัสโดยเพียงแค่ผ่านเส้นทาง"บันทึกลงใน"และนามสกุลไฟล์ที่เกี่ยวข้องกับวิธีการ[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) เมธอด**Save**จะได้รับ`SaveFormat`จากนามสกุลของแฟ้มที่ระบุในเส้นทางโดยอัตโนมัติ ตัวอย่างต่อไปนี้สาธิตวิธีการแปลงเอกสารเป็นรูปแบบTIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## การระบุตัวเลือกเพิ่มเติมเมื่อแสดงผลTIFF

คุณมักจะต้องระบุอ็อพชันเพิ่มเติมซึ่งส่งผลต่อผลลัพธ์การแสดงผล เพื่อจุดประสงค์นี้ใช้คลาสของ[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)ซึ่งประกอบด้วยคุณสมบัติที่กำหนดวิธีแสดงเอกสารบนรูปภาพ คุณสามารถระบุต่อไปนี้:

- บันทึกรูปแบบเพื่อกำหนดรายการตัวเลือกที่มี([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- ความละเอียด([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- จำนวนหน้า([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/),[PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- การตั้งค่าสีและแสงสว่าง([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- คุณภาพของภาพ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- วิธีที่ใช้ในการไบนารีภาพ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/),[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- รูปแบบพิกเซลสำหรับรูปภาพที่สร้างขึ้น([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windowsการจัดการเมตาไฟล์โดยAspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- ตัวเลือกเพิ่มเติมที่คุณสามารถเห็นได้ในชั้นเรียน**ImageSaveOptions**

ตัวอย่างต่อไปนี้แสดงวิธีการแปลงDOCเป็นTIFFด้วยตัวเลือกที่กำหนดค่า:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## เกณฑ์สำหรับTIFFไบนารี่

กTIFFรูปภาพสามารถบันทึกไว้ในรูปแบบ1บีพี/ดับเบิลยูโดยการตั้งค่าคุณสมบัติของ[PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/)ให้เป็นรูปแบบ1bppIndexedชนิดรูปแบบพิกเซลและคุณสมบัติของ`TiffCompression`ไปยัง 3 หรือซีซีที 4.

สำหรับการแบ่งส่วนรูปภาพAspose.Wordsใช้การกำหนดเกณฑ์วิธีที่ง่ายที่สุด เมธอดนี้จะแปลงรูปภาพขนาดสีเทาTIFFเป็นภาพไบนารีโดยใช้ค่าเกณฑ์ ดังนั้นเมื่อเอกสารต้องถูกแปลงเป็นรูปแบบไฟล์TIFFเป็นไปได้ที่จะได้รับหรือตั้งค่าเกณฑ์สำหรับTIFFไบนารี่ผ่านคุณสมบัติของ[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/) ค่าดีฟอลต์สำหรับคุณสมบัตินี้ถูกตั้งค่าเป็น 128 และค่านี้สูงกว่ารูปภาพจะเข้มขึ้น.

ตัวอย่างต่อไปนี้แสดงวิธีการดำเนินการTIFFด้วยเกณฑ์ที่ระบุ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

ด้านล่างนี้คุณสามารถเปรียบเทียบรูปภาพที่ดำเนินการไบนารี่TIFFด้วยค่าเกณฑ์ต่างๆ:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
