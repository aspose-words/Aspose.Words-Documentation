---
title: ปรับแต่งคุณสมบัติของช่องข้อมูล
second_title: Aspose.Words สําหรับ Java
articleTitle: ปรับแต่งคุณสมบัติของช่องข้อมูล
linktitle: ปรับแต่งคุณสมบัติของช่องข้อมูล
description: "เรียน รู้ วิธี ปรับ ปรุง คุณสมบัติ ใน เขต งาน Java. เปลี่ยนชื่อช่องข้อมูลรวมหรือผลของช่องข้อมูลโดยไม่มีโหนดแบ่งเขต Java."
type: docs
weight: 27
url: /th/java/customize-field-properties/
---

Aspose.Words ให้ความสามารถในการตั้งโปรแกรม โต้ตอบกับคุณสมบัติในสาขาต่างๆ ใน บทความ นี้ เรา จะ พิจารณา สัก สอง ตัว อย่าง เพื่อ คุณ จะ เข้าใจ หลัก การ พื้น ฐาน ใน การ ทํา งาน กับ ทรัพย์ สิน ใน เขต ประกาศ. คุณจะเห็นรายการคุณสมบัติเต็มรูปแบบของแต่ละประเภท ในคลาสที่สอดคล้องกัน

## ปรับปรุงคุณสมบัติของช่องข้อมูล

บางครั้งผู้ใช้จําเป็นต้องเปลี่ยนค่าคุณสมบัติของสนาม ยกตัวอย่างเช่น ปรับปรุง [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) สมบัติของ `AUTHOR` ช่องข้อมูลหรือเปลี่ยน [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) สมบัติของ `MERGEFIELD` สนาม

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีเปลี่ยนชื่อช่องข้อมูลรวมในเอกสารคํา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## ผลการแสดงผลในช่องข้อมูล

Aspose.Words ให้พื้นที่รับผลจากสนาม ที่ไม่มีโหนดแบ่งสนาม เราเรียกสิ่งนี้ว่า "ผลลัพธ์ fake" หรือผลลัพธ์ที่แสดง; MS Word แสดงในเอกสารโดยการคํานวณค่าของสนามบนแมลงวัน แต่ไม่มีมูลค่าดังกล่าวในโมเดลเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงการใช้งานของ [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
