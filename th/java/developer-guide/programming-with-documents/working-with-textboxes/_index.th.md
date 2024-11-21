---
title: ทํางานร่วมกับ Boxes ของข้อความที่อยู่เชื่อมโยง Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับกล่องข้อความที่อยู่เชื่อมโยง
linktitle: ทํางานกับกล่องข้อความที่อยู่เชื่อมโยง
description: "แนะ นํา ให้ มี ส่วน เกี่ยว ข้อง Aspose.Words สําหรับ Java."
type: docs
weight: 250
url: /th/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

ใน Aspose.Words, คือ [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) คลาสถูกใช้เพื่อกําหนดการแสดงข้อความภายในรูปทรง หนังสือ นี้ ให้ ที่ ดิน แก่ สาธารณชน ชื่อ บิดา มารดา เพื่อ ให้ รูป แบบ ของ บิดา มารดา สําหรับ กล่อง ส่ง ข้อ ความ เพื่อ ให้ ลูก ค้า พบ ว่า มี การ เชื่อม โยง [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) จากความสัมพันธ์ **TextBox**.

## สร้างที่อยู่เชื่อมโยง

เดอะ **TextBox** ชั้นเรียนจัดหา [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) วิธีการตรวจสอบว่า **TextBox** สามารถเชื่อมต่อกับเป้าหมาย **Textbox**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบว่า `TextBox` สามารถเชื่อมต่อไปยังกล่องข้อความปลายทาง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## เลือกข้อความ เพิ่มเลขลําดับ

มี หลาย วิธี ที่ จะ แสดง ข้อ ความ ใน รูป ร่าง. เดอะ [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) อาจเป็นหัว, กลาง, หรือก้อยของลําดับ

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ตรวจ สอบ ว่า **TextBox** คือหัว, หาง, หรือตรงกลางของลําดับ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## ทําลายที่อยู่เชื่อมโยง

ใช้ [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) วิธีการที่คุณสามารถทําลายลิงก์ต่อไป **TextBox**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทําลายลิงก์สําหรับ **TextBox**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
