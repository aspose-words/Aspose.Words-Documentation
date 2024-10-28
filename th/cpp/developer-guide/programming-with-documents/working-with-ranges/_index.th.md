---
title: การทำงานกับช่วงในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับช่วง
linktitle: การทำงานกับช่วง
description: "แนะนำคุณลักษณะช่วงใน Aspose.WordsสำหรับC++."
type: docs
weight: 130
url: /th/cpp/working-with-ranges/
---

{{% alert color="primary" %}}

ในAspose.Wordsช่วงคือ"หน้าต่างแบน"เป็นแบบจำลองเหมือนต้นไม้ของเอกสาร.

{{% /alert %}}

หากคุณเคยทำงานกับ Microsoft Word Automation คุณคงจะทราบดีอยู่แล้วว่าเครื่องมือหลักอย่างหนึ่งที่ใช้ตรวจสอบและปรับเปลี่ยนเนื้อหาเอกสารคืออ็อบเจ็กต์ **Range** **Range** เป็นเหมือน "หน้าต่าง" ที่เข้าถึงเนื้อหาและการจัดรูปแบบของเอกสาร.

Aspose.Wordsนอกจากนี้ยังมี[Range](https://reference.aspose.com/words/cpp/aspose.words/range/)ชั้นและมันถูกออกแบบมาให้ดูและทำหน้าที่คล้ายกับ**Range**ในMicrosoft Word แม้ว่า**Range**จะไม่สามารถครอบคลุมส่วนใดส่วนหนึ่งของเอกสารได้โดยพลการและไม่มีค่า**Start**และ**End**แต่คุณสามารถเข้าถึงช่วงที่ครอบคลุมโดยโหนดเอกสารใดๆรวมถึง[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)ตัวเองได้ ในคำอื่นๆแต่ละโหนดมีช่วงของตัวเอง วัตถุ**Range**ช่วยให้คุณสามารถเข้าถึงและปรับเปลี่ยนข้อความที่คั่นหน้าและเขตข้อมูลแบบฟอร์มภ.

## ดึงข้อความธรรมดา

ใช้คุณสมบัติ[Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/)เพื่อดึงข้อความธรรมดาที่ยังไม่ได้ฟอร์แมตของช่วง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับข้อความธรรมดาที่ยังไม่ได้จัดรูปแบบของช่วง:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## การลบข้อความ

ช่วงช่วยให้ลบอักขระทั้งหมดของช่วงโดยการโทร[Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบอักขระทั้งหมดของช่วง:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}