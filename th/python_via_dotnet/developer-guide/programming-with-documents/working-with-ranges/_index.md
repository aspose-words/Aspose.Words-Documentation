---
title: การทำงานกับช่วงใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับช่วง
linktitle: การทำงานกับช่วง
description: "ทำงานกับช่วงในเอกสารโดยใช้ Python"
type: docs
weight: 130
url: /th/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

ใน Aspose.Words นั้น [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) คือ "หน้าต่างแบน" ในรูปแบบเอกสารที่มีลักษณะคล้ายต้นไม้

{{% /alert %}}

หากคุณเคยร่วมงานกับ Microsoft Word Automation คุณอาจรู้ว่าหนึ่งในเครื่องมือหลักในการตรวจสอบและแก้ไขเนื้อหาเอกสารคือออบเจ็กต์ [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) เปรียบเสมือน "หน้าต่าง" เข้าสู่เนื้อหาเอกสารและการจัดรูปแบบ Aspose.Words ยังมีคลาส [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) และได้รับการออกแบบให้ดูและทำหน้าที่คล้ายกับ **Range** ใน Microsoft Word แม้ว่า **Range** จะไม่สามารถครอบคลุมส่วนที่กำหนดเองของเอกสารได้และไม่มี **Start** และ **End** แต่คุณสามารถเข้าถึงช่วงที่ครอบคลุมโดยโหนดเอกสารใดๆ รวมถึง [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) เองด้วย กล่าวอีกนัยหนึ่ง แต่ละโหนดมีช่วงของตัวเอง ออบเจ็กต์ [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) ช่วยให้คุณเข้าถึงและแก้ไขข้อความ บุ๊กมาร์ก และฟิลด์แบบฟอร์มภายในช่วงได้

## ดึงข้อความธรรมดา

ใช้คุณสมบัติ [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) เพื่อดึงข้อความธรรมดาที่ไม่ได้จัดรูปแบบของช่วง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับข้อความธรรมดาที่ไม่ได้จัดรูปแบบในช่วง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}

## การลบข้อความ

Range อนุญาตให้ลบอักขระทั้งหมดในช่วงโดยการเรียก [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบอักขระทั้งหมดในช่วง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}