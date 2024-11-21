---
title: การทำงานกับภาพในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับภาพ
linktitle: การทำงานกับภาพ
type: docs
description: "รู้เบื้องต้นเกี่ยวกับคุณลักษณะภาพวิธีการสร้างและจัดการกับภาพโดยใช้C++."
weight: 300
url: /th/cpp/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsช่วยให้ผู้ใช้สามารถทำงานกับภาพในทางที่ยืดหยุ่นมาก ในบทความนี้คุณสามารถสำรวจเพียงบางส่วนของความเป็นไปได้ของการทำงานกับภาพ.

## วิธีการแยกภาพจากเอกสาร

รูปภาพทั้งหมดจะถูกเก็บไว้ภายใน**Shape**โหนดใน[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) เมื่อต้องการแยกภาพหรือรูปภาพทั้งหมดที่มีชนิดเฉพาะจากเอกสารให้ทำตามขั้นตอนเหล่านี้:

- ใช้วิธีการ[GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/)เพื่อเลือกโหนด**Shape**ทั้งหมด.
- ย้ำผ่านคอลเลกชันโหนดที่เกิด.
- ตรวจสอบคุณสมบัติบูลีน[HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- แยกข้อมูลภาพโดยใช้คุณสมบัติ[ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- บันทึกข้อมูลภาพไปยังแฟ้ม.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแยกรูปภาพจากเอกสารและบันทึกเป็นแฟ้ม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## บันทึกภาพเป็นWMF

Aspose.Wordsให้ฟังก์ชั่นเพื่อบันทึกรูปภาพทั้งหมดที่มีอยู่ในเอกสารไปที่ [WMF ](https://docs.fileformat.com/image/wmf/)รูปแบบขณะแปลงDOCXเป็นRTF.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกภาพเป็นWMFด้วยRTFตัวเลือกการบันทึก:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
