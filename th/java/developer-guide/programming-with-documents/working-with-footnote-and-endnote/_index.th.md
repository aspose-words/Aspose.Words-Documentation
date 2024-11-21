---
title: การ ทํา งาน กับ เชิงอรร Java
second_title: Aspose.Words สําหรับ Java
articleTitle: การ ทํา งาน กับ เชิงอรร
linktitle: การ ทํา งาน กับ เชิงอรร
description: "วิธี จัด การ หมายเหตุ และ ท้าย หมายเหตุ ที่ ใช้ Java."
type: docs
weight: 160
url: /th/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words นอก จาก นี้ ยัง จัด ให้ มี ชั้น เรียน, วิธี การ และ คุณสมบัติ บาง อย่าง สําหรับ การ ทํา งาน ร่วม กับ หมายเหตุ และ ท้าย โน้ต.

## แทรกตัวสิ้นสุดและตั้งค่าตัวเลือกการสิ้นสุด

หากคุณต้องการใส่หมายเหตุหรือเครื่องหมายสิ้นสุดในเอกสารคํา โปรดใช้ [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) วิธี วิธีการนี้ จะแทรกหมายเหตุหรือหมายเหตุเข้าในเอกสาร

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) ถึง [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) คลาสนี้ใช้แทนตัวเลือกสําหรับ หมายเหตุและท้ายโน้ต

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีแทรกข้อความเข้าในเอกสาร และตั้งค่าตัวเลือกการนับ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## ตั้งค่าคอลัมน์ของแบบอักษร

คุณสามารถกําหนดจํานวนของผังแป้นพิมพ์ได้ โดยใช้ [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) ทรัพย์สิน หาก คุณสมบัติ นี้ มี ค่า เป็น 0 พื้นที่ เชิงอรรถ ก็ จะ ถูก จัด เรียง ตาม จํานวน คอลัมน์ บน หน้า ที่ แสดง.

ตัวอย่างรหัสต่อไปนี้ แสดงให้เห็นว่าจะตั้งค่าจํานวนคอลัมน์ของรูปแบบ หมายเหตุ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## ตั้ง ตําแหน่ง ของ เชิงอรร และ จุด จบ

ตําแหน่ง ของ เชิงอรรถ อาจ อยู่ ที่ ก้น ของ แต่ ละ หน้า หรือ ใต้ ข้อ ความ ใน แต่ ละ หน้า. ตําแหน่ง ท้าย โน้ต อาจ อยู่ ที่ ปลาย ส่วน หรือ ตอน ท้าย ของ เอกสาร.

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ กําหนด ตําแหน่ง ของ เชิงอรรถ และ จุด จบ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
