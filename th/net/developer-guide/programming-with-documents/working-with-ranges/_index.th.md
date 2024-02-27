---
title: การทำงานกับช่วงใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับช่วง
linktitle: การทำงานกับช่วง
description: "รู้เบื้องต้นเกี่ยวกับคุณลักษณะช่วงใน Aspose.Words สำหรับ .NET"
type: docs
weight: 130
url: /th/net/working-with-ranges/
---

{{% alert color="primary" %}}

ใน Aspose.Words ช่วงคือ "หน้าต่างแบน" ลงในโมเดลเอกสารที่มีลักษณะคล้ายต้นไม้

{{% /alert %}}

หากคุณเคยร่วมงานกับ Microsoft Word Automation คุณอาจรู้ว่าหนึ่งในเครื่องมือหลักในการตรวจสอบและแก้ไขเนื้อหาเอกสารคือออบเจ็กต์ **Range** **Range** เปรียบเสมือน "หน้าต่าง" เข้าสู่เนื้อหาเอกสารและการจัดรูปแบบ

Aspose.Words ยังมีคลาส [Range](https://reference.aspose.com/words/net/aspose.words/range/) และได้รับการออกแบบให้ดูและทำหน้าที่คล้ายกับ **Range** ใน Microsoft Word แม้ว่า **Range** จะไม่สามารถครอบคลุมส่วนที่ต้องการของเอกสารได้และไม่มี **Start** และ **End** แต่คุณสามารถเข้าถึงช่วงที่ครอบคลุมโดยโหนดเอกสารใดๆ รวมถึง [Document](https://reference.aspose.com/words/net/aspose.words/document/) เองด้วย กล่าวอีกนัยหนึ่ง แต่ละโหนดมีช่วงของตัวเอง ออบเจ็กต์ **Range** ช่วยให้คุณเข้าถึงและแก้ไขข้อความ บุ๊กมาร์ก และฟิลด์แบบฟอร์มภายในช่วงได้

## ดึงข้อความธรรมดา

ใช้คุณสมบัติ [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) เพื่อดึงข้อความธรรมดาที่ไม่มีรูปแบบของช่วง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับข้อความธรรมดาที่ไม่ได้จัดรูปแบบในช่วง:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}

## ลบข้อความ

Range อนุญาตให้ลบอักขระทั้งหมดในช่วงได้โดยการเรียก [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบอักขระทั้งหมดในช่วง:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}