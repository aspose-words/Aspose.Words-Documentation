---
title: ทํางานกับเรนจ์ใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับช่วง
linktitle: ทํางานกับช่วง
description: "แนะนําคุณสมบัติของช่วงใน Aspose.Words สําหรับ Java."
type: docs
weight: 130
url: /th/java/working-with-ranges/
---

{{% alert color="primary" %}}

ใน Aspose.Words, ช่วงเป็น "หน้าต่างขยาย" เป็นแบบฉบับของเอกสารที่คล้ายต้นไม้

{{% /alert %}}

ถ้าคุณได้ทํางานกับ Microsoft Word การปรับอัตโนมัติ คุณอาจจะรู้ว่าหนึ่งในเครื่องมือหลักของการตรวจสอบและแก้ไขเนื้อหาเอกสาร `Range` วัตถุ เรนจ์เป็นเหมือน "วินโดว์" ในเอกสารเนื้อหาและรูปแบบ

Aspose.Words นอกจากนี้ยังมี [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) ห้องเรียนออกแบบมาเพื่อดูและกระทําเช่นเดียวกันกับ **Range** ใน Microsoft Word. ถึงแม้ว่า **Range** ไม่สามารถครอบคลุมส่วนใด ๆ ของเอกสาร และไม่มี **Start** ถึง **End**, คุณสามารถเข้าถึงช่วงที่ครอบคลุมด้วยโหนดใด ๆ ของเอกสาร รวมถึง [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ตัวมัน พูด อีก นัย หนึ่ง ปม แต่ ละ อัน มี ขอบ เขต ของ มัน เอง. เดอะ **Range** ออบเจกต์อนุญาตให้คุณเข้าและแก้ไขข้อความ, คั่นหน้า และสร้างสาขาภายในช่วงได้

## กําลังรับข้อความธรรมดา

ใช้ [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) คุณสมบัติที่จะดึงข้อมูลข้อความธรรมดาที่ยังไม่ได้แปลงมา

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีหาข้อความธรรมดาที่ยังไม่ได้แปลงเป็นช่วง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## ลบข้อความ

เดอะ `Range` คลาสอนุญาตให้ทําการลบอักขระทั้งหมดของช่วงที่เรียก [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการลบอักขระทั้งหมดของช่วง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 