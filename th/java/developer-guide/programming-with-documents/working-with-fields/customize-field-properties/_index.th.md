---
title: ปรับแต่งคุณสมบัติฟิลด์
second_title: Aspose.WordsสำหรับJava
articleTitle: ปรับแต่งคุณสมบัติฟิลด์
linktitle: ปรับแต่งคุณสมบัติฟิลด์
description: "เรียนรู้วิธีปรับแต่งคุณสมบัติฟิลด์ด้วยJava เปลี่ยนชื่อฟิลด์ผสานหรือขอรับผลลัพธ์สำหรับฟิลด์ที่ไม่มีโหนดคั่นในJava."
type: docs
weight: 27
url: /th/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsให้ความสามารถในการโต้ตอบทางโปรแกรมกับคุณสมบัติของฟิลด์ต่างๆ ในบทความนี้เราจะดูคู่ตัวอย่างเพื่อให้คุณเข้าใจหลักการพื้นฐานของการทำงานกับคุณสมบั คุณสามารถดูรายการทั้งหมดของคุณสมบัติสำหรับแต่ละชนิดเขตข้อมูลในชั้นเรียนที่สอดคล้.

## ปรับปรุงคุณสมบัติฟิลด์

บางครั้งผู้ใช้ต้องเปลี่ยนค่าของคุณสมบัติฟิลด์ ตัวอย่างเช่นปรับปรุงคุณสมบัติ[AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName)ของฟิลด์`AUTHOR`หรือเปลี่ยนแปลงคุณสมบัติ[FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName)ของฟิลด์`MERGEFIELD`.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปลี่ยนชื่อฟิลด์ผสานในเอกสารคำ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## ผลลัพธ์การแสดงผลฟิลด์

Aspose.Wordsจัดเตรียมคุณสมบัติเพื่อให้ได้ผลลัพธ์ของฟิลด์สำหรับฟิลด์ที่ไม่มีโหนดตัวคั่นฟิลด์ เราเรียกสิ่งนี้ว่า"ผลลัพธ์ปลอม"หรือแสดงผล;MSคำแสดงในเอกสารโดยการคำนวณค่าของฟิลด์ใ.

ตัวอย่างรหัสต่อไปนี้แสดงการใช้คุณสมบัติ[DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
