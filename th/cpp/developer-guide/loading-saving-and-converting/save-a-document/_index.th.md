---
title: บันทึกเอกสารในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การบันทึกเอกสาร
linktitle: การบันทึกเอกสาร
type: docs
description: "บันทึกเอกสารในรูปแบบใดก็ได้ที่สนับสนุนโดยใช้C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /th/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

งานส่วนใหญ่ที่คุณจำเป็นต้องดำเนินการด้วยAspose.Wordsเกี่ยวข้องกับการบันทึกเอกสาร เมื่อต้องการบันทึกเอกสารAspose.Wordsมีวิธีการ[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)ของชั้นเรียน[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) เอกสารสามารถบันทึกในรูปแบบบันทึกใดๆที่สนับสนุนโดยAspose.Words สำหรับรายการของรูปแบบการบันทึกที่สนับสนุนทั้งหมดให้ดูที่การแจงนับ[SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## บันทึกไปยังแฟ้ม{#save-a-document-to-a-file}

เพียงใช้วิธีการ[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)ด้วยชื่อแฟ้ม Aspose.Wordsจะกำหนดรูปแบบการบันทึกจากนามสกุลไฟล์ที่คุณระบุ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดและบันทึกเอกสารไปยังแฟ้ม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## บันทึกลงในสตรีม{#save-a-document-to-a-stream}

ส่งผ่านวัตถุสตรีมไปยังวิธีการ[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) จำเป็นต้องระบุรูปแบบการบันทึกอย่างชัดเจนเมื่อบันทึกลงในสตรีม.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดและบันทึกเอกสารไปยังสตรีม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## ประหยัดถึงPCL{#save-a-document-to-pcl}

Aspose.Wordsรองรับการบันทึกเอกสารเป็นPCL(ภาษาคำสั่งเครื่องพิมพ์) Aspose.WordsสามารถบันทึกเอกสารลงในPCL 6 (PCL 6 ปรับปรุงหรือPCLXL)รูปแบบ คลาส`PclSaveOptions`สามารถใช้เพื่อระบุตัวเลือกเพิ่มเติมเมื่อบันทึกเอกสารลงในรูปแบบPCL.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกเอกสารเป็นPCLโดยใช้ตัวเลือกการบันทึก:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
