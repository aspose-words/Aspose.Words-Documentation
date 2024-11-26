---
title: การบันทึกไปยังรูปแบบหน้าคงที่ในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การบันทึกเอกสารในรูปแบบหน้าถาวร
linktitle: การบันทึกเอกสารในรูปแบบหน้าถาวร
description: "วิธีการบันทึกเอกสารในรูปแบบหน้าถาวร– PDF, XPS, HTML, XAML, PostScript, และPCL? ดูคำแนะนำ."
type: docs
weight: 15
url: /th/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

หลังจากโครงร่างหน้าถูกสร้างขึ้นและรูปทรงเรขาคณิตของวัตถุและตำแหน่งของหน้าจะถูกคำนวณแล้วเอกสารจะถูกบันทึกในรูปแบบหน้าถาวรที่รองรับโดยAspose.Words.

เมื่อบันทึกเอกสารไปยังรูปแบบเพจถาวรอ็อพชันการแสดงผลทั่วไปสำหรับรูปแบบเหล่านี้ทั้ พวกเขาอนุญาตให้มีการควบคุม:

- จำนวนและช่วงของหน้าที่มีอยู่ในเอกสารออก([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- ความคืบหน้าของการบันทึกเอกสารแบบหน้าต่อหน้า([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- ชุดของอักขระที่ใช้ในการแสดงผลตัวเลข([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- เครื่องเล่นเมตาไฟล์([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)) สำหรับรายละเอียดเพิ่มเติมโปรดดูที่ [การจัดการเมตาไฟล์Windows](/words/cpp/handling-windows-metafiles/) บทความ.
- อัตราคุณภาพสำหรับการบีบอัดภาพJPEGค่าที่อาจแตกต่างกันเล็กน้อยขึ้นอยู่กับรูปแบบการบันทึกที่เลือก([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- การเพิ่มประสิทธิภาพของกราฟิกแบบเวกเตอร์ในAspose.Wordsเอาท์พุท([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- เครื่องมือที่ง่ายและสะดวกในการติดตามของความเร็วอินเทอร์เน็ตและการใช้งานข้อมูล([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- การบันทึกเอกสารเป็นไล่ระดับสีเทา([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- รูปร่าง([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- การสลับระหว่างโหมดการแสดงผลเอฟเฟกต์DML([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

ตัวอย่างด้านล่างแสดงให้เห็นถึงวิธีการบันทึกเอกสารไปยังรูปแบบJPEGโดยใช้วิธีการ`Save`และตัวเลื:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
