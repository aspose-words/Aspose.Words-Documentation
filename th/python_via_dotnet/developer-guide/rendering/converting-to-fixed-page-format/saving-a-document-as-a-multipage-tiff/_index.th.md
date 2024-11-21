---
title: การบันทึกเอกสารเป็น TIFF แบบหลายหน้า
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การบันทึกเอกสารเป็น TIFF แบบหลายหน้า
linktitle: การบันทึกเอกสารเป็น TIFF แบบหลายหน้า
description: "แปลงเอกสารเป็น TIFF หลายหน้าโดยใช้ Python เพื่อกำหนดวิธีการแสดงเอกสารบนรูปภาพ คุณต้องระบุตัวเลือกเพิ่มเติม: ความละเอียด จำนวนหน้า ไบนาไรเซชันของรูปภาพ ฯลฯ"
type: docs
weight: 30
url: /th/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

เมื่อทำงานกับเอกสาร คุณมักจะต้องแปลงเอกสารของคุณเป็นไฟล์ภาพแรสเตอร์ สิ่งนี้มีความเกี่ยวข้องอย่างยิ่งหากคุณต้องนำเสนอเอกสารของคุณในรูปแบบที่อ่านและพิมพ์ได้ แต่ไม่สามารถแก้ไขได้ ตัวอย่างเช่น คุณสามารถใช้รูปภาพแรสเตอร์ของหน้าแรกของเอกสารของคุณเป็นตัวอย่างได้ บทความนี้จะอธิบายวิธีการแปลงเอกสารเป็นภาพแรสเตอร์โดยใช้ตัวอย่างรูปแบบ TIFF ซึ่งเป็นหนึ่งในรูปแบบภาพยอดนิยม

## การแปลง DOC เป็น TIFF แบบหลายหน้า

ใน Aspose.Words การแปลงจาก DOC เป็น TIFF สามารถทำได้ด้วยโค้ดหนึ่งบรรทัด เพียงส่งเส้นทาง "บันทึกไปที่" และนามสกุลไฟล์ที่เกี่ยวข้องไปยังวิธี [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) วิธีการ [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) รับ [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) จากนามสกุลไฟล์ที่ระบุในเส้นทางโดยอัตโนมัติ ตัวอย่างต่อไปนี้สาธิตวิธีการแปลงเอกสารเป็นรูปแบบ TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## การระบุตัวเลือกเพิ่มเติมเมื่อเรนเดอร์ TIFF

คุณมักจะต้องระบุตัวเลือกเพิ่มเติม ซึ่งส่งผลต่อผลลัพธ์การเรนเดอร์ เพื่อจุดประสงค์นี้ ให้ใช้คลาส [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) ซึ่งมีคุณสมบัติที่กำหนดวิธีการแสดงเอกสารบนรูปภาพ คุณสามารถระบุสิ่งต่อไปนี้:

- บันทึกรูปแบบเพื่อกำหนดรายการตัวเลือกที่มี ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- ความละเอียด ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- จำนวนหน้า ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- การตั้งค่าสีและแสง ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- คุณภาพของภาพ ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- วิธีการที่ใช้ในการแปลงภาพ ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- รูปแบบพิกเซลสำหรับภาพที่สร้างขึ้น ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- การจัดการไฟล์เมตา Windows โดย Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- ตัวเลือกเพิ่มเติมที่คุณเห็นในคลาส [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

ตัวอย่างต่อไปนี้แสดงวิธีการแปลง DOC เป็น TIFF ด้วยตัวเลือกที่กำหนดค่าไว้:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## เกณฑ์สำหรับ TIFF Binarization

ภาพ TIFF สามารถบันทึกในรูปแบบ 1bpp b/w ได้โดยการตั้งค่าคุณสมบัติ [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) เป็นประเภทรูปแบบพิกเซล [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) และคุณสมบัติ [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) เป็น [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) หรือ [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4)

สำหรับการแบ่งส่วนรูปภาพ Aspose.Words ใช้วิธีการที่ง่ายที่สุด - Thresholding เมธอดนี้จะแปลงรูปภาพ TIFF ระดับสีเทาให้เป็นรูปภาพไบนารี โดยใช้ค่าขีดจำกัด ดังนั้น เมื่อจำเป็นต้องแปลงเอกสารเป็นรูปแบบไฟล์ TIFF จึงสามารถรับหรือตั้งค่าเกณฑ์สำหรับการแปลงไบนารี TIFF ผ่านคุณสมบัติ [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) ได้ ค่าเริ่มต้นสำหรับคุณสมบัตินี้ตั้งไว้ที่ 128 และยิ่งค่านี้สูง รูปภาพก็จะยิ่งเข้มขึ้น

ตัวอย่างต่อไปนี้แสดงวิธีการดำเนินการไบนารี TIFF ด้วยเกณฑ์ที่ระบุ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

ด้านล่างนี้คุณสามารถเปรียบเทียบรูปภาพที่มีการดำเนินการไบนาไรเซชัน TIFF ที่ค่าเกณฑ์ต่างๆ:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="การวิจัยเอกสารเป็นหลายหน้า tiff-aspose-words-net" style="width:800px"/>
