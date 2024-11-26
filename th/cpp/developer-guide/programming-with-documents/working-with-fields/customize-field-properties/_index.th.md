---
title: ปรับแต่งคุณสมบัติฟิลด์ในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ปรับแต่งคุณสมบัติฟิลด์
linktitle: ปรับแต่งคุณสมบัติฟิลด์
description: "เรียนรู้วิธีปรับแต่งคุณสมบัติฟิลด์ด้วยC++ เปลี่ยนชื่อฟิลด์ผสานหรือขอรับผลลัพธ์สำหรับฟิลด์ที่ไม่มีโหนดคั่นในC++."
type: docs
weight: 27
url: /th/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsให้ความสามารถในการเขียนโปรแกรมโต้ตอบกับคุณสมบัติของฟิลด์ต่างๆ ในบทความนี้เราจะดูคู่ตัวอย่างเพื่อให้คุณเข้าใจหลักการพื้นฐานของการทำงานกับคุณสมบั คุณสามารถดูรายการคุณสมบัติทั้งหมดสำหรับแต่ละประเภทฟิลด์ในชั้นเรียนที่สอดคล้องกันใน[Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## ปรับปรุงคุณสมบัติฟิลด์

บางครั้งผู้ใช้ต้องเปลี่ยนค่าของคุณสมบัติฟิลด์ ตัวอย่างเช่นปรับปรุงคุณสมบัติ[AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/)ของฟิลด์`AUTHOR`หรือเปลี่ยนแปลงคุณสมบัติ[FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/)ของฟิลด์`MERGEFIELD`.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปลี่ยนชื่อฟิลด์ผสานในเอกสารคำ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## ผลลัพธ์การแสดงผลฟิลด์

Aspose.Wordsจัดเตรียมคุณสมบัติเพื่อให้ได้ผลลัพธ์ของฟิลด์สำหรับฟิลด์ที่ไม่มีโหนดตัวคั่นฟิลด์ เราเรียกสิ่งนี้ว่า"ผลลัพธ์ปลอม"หรือแสดงผลลัพธ์Microsoft Wordแสดงในเอกสารโดยการคำนวณค่าของฟิลด์.

ตัวอย่างรหัสต่อไปนี้แสดงการใช้คุณสมบัติ[DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
