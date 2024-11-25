---
title: การทำงานกับช่วงในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับช่วง
linktitle: การทำงานกับช่วง
description: "รู้เบื้องต้นเกี่ยวกับคุณลักษณะช่วงในAspose.WordsสำหรับJava."
type: docs
weight: 130
url: /th/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

ในAspose.Wordsช่วงคือ"หน้าต่างแบน"เป็นแบบจำลองเหมือนต้นไม้ของเอกสาร.

{{% /alert %}}

หากคุณเคยทำงานกับ Microsoft Word Automation คุณคงจะทราบดีอยู่แล้วว่าเครื่องมือหลักอย่างหนึ่งที่ใช้ตรวจสอบและปรับเปลี่ยนเนื้อหาเอกสารคืออ็อบเจ็กต์ `Range` Range เปรียบเสมือน "หน้าต่าง" ที่เข้าถึงเนื้อหาและการจัดรูปแบบของเอกสาร.

Aspose.Wordsนอกจากนี้ยังมี[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)ชั้นและมันถูกออกแบบมาให้ดูและทำหน้าที่คล้ายกับ**Range**ในMicrosoft Word แม้ว่า**Range**จะไม่สามารถครอบคลุมส่วนใดส่วนหนึ่งของเอกสารได้โดยพลการและไม่มี**Start**และ**End**แต่คุณสามารถเข้าถึงช่วงที่ครอบคลุมโดยโหนดเอกสารใดๆรวมถึง[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)ตัวเองได้ ในคำอื่นๆแต่ละโหนดมีช่วงของตัวเอง วัตถุ**Range**ช่วยให้คุณสามารถเข้าถึงและปรับเปลี่ยนข้อความที่คั่นหน้าและเขตข้อมูลแบบฟอร์มภ.

## กำลังดึงข้อความธรรมดา

ใช้คุณสมบัติ[Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText)เพื่อดึงข้อความธรรมดาที่ยังไม่ได้ฟอร์แมตของช่วง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับข้อความธรรมดาที่ยังไม่ได้จัดรูปแบบของช่วง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## ลบข้อความ

คลาส`Range`อนุญาตให้ลบอักขระทั้งหมดของช่วงโดยเรียก[delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบอักขระทั้งหมดของช่วง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


