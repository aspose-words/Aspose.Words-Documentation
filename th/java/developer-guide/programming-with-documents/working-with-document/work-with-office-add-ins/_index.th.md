---
title: ทํางานร่วมกับสํานักงานเพิ่มเติมภายใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานร่วมกับส่วนเพิ่มเติมในสํานักงาน
linktitle: ทํางานร่วมกับส่วนเพิ่มเติมในสํานักงาน
description: "Aspose.Words สําหรับ Java ให้มีคลาสเรียนหลายคลาสสําหรับทํางานกับ Office Indates คุณสามารถเพิ่มทาสก์ Pane ผ่านส่วนขยายเว็บ และปรับแต่งคุณสมบัติของช่องและนามสกุลได้"
type: docs
weight: 50
url: /th/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจจะต้องการ ให้เข้าถึงตัวควบคุมที่ประมวลผลรหัส เพื่อแก้ไขเอกสาร Aspose.Words API ให้ `WebExtensions` ชื่อแฟ้ม ซึ่งจะให้คลาสต่าง ๆ แก่สมาชิกต่าง ๆ ที่ปรับแต่ง และคุณสมบัติต่าง ๆ ที่ขยายคําค้น XML สําหรับแสดงคําเพิ่มในสํานักงาน

ชื่อแฟ้มเว็บที่สามารถแบ่งเป็น:

* วัตถุ สําหรับ การ ทํา งาน กับ ช่อง ว่าง งาน
* วัตถุสําหรับการทํางานด้วยส่วนขยายเว็บ

## ใช้พาเนลทาสก์

ช่องงานเป็นพื้นผิวอินเทอร์เฟส ที่ถูกแสดงทางด้านขวาของหน้าต่าง Microsoft Word. ช่องงาน อนุญาตให้ผู้ใช้เข้าถึงตัวควบคุม ประมวลผลโค้ดเพื่อแก้ไขเอกสารได้

ยกตัวอย่างเช่น ใช้ Aspose.Words API, คุณสามารถเพิ่มช่องงานที่เพิ่มเข้าไป และปรับแต่งรูปลักษณ์ได้

## ใช้ส่วนขยายเว็บ

ส่วนขยายเว็บคือเครื่องมือที่ขยายความสามารถของโปรแกรมสํานักงาน และทําการเชื่อมต่อกับเนื้อหาในสํานักงาน ส่วน ต่อ ไป นี้ เป็น ข้อ แนะ บาง ประการ.

Aspose.Words ให้ความสามารถในการเพิ่มส่วนขยายเว็บของชนิด Pane ของงานโดยใช้ [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) ถึง [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) คลาสนี้ยังช่วยให้คุณได้ปรับแต่งคุณสมบัติของช่องและส่วนขยาย

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีสร้างช่องงาน และเพิ่มไปยังช่องงานส่วนขยายเว็บด้วยคุณสมบัติพื้นฐาน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

ดูรายการของกล่องงานที่เพิ่มเข้าไป ใช้ [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) ทรัพย์สิน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการได้รับรายการดังกล่าวเพิ่มเติม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

