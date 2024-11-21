---
title: ปรับแต่งคุณสมบัติของฟิลด์ใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ปรับแต่งคุณสมบัติของฟิลด์
linktitle: ปรับแต่งคุณสมบัติของฟิลด์
description: "ดูวิธีปรับแต่งคุณสมบัติของช่องใน Python เปลี่ยนชื่อเขตข้อมูลผสานหรือรับผลลัพธ์สำหรับเขตข้อมูลที่ไม่มีโหนดตัวแยกใน Python via .NET"
type: docs
weight: 27
url: /th/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words มอบความสามารถในการโต้ตอบทางโปรแกรมกับคุณสมบัติของฟิลด์ต่างๆ ในบทความนี้ เราจะดูตัวอย่างบางส่วนเพื่อให้คุณเข้าใจหลักการพื้นฐานของการทำงานกับคุณสมบัติของฟิลด์ คุณสามารถดูรายการคุณสมบัติทั้งหมดสำหรับฟิลด์แต่ละประเภทในคลาสที่เกี่ยวข้องใน [โมดูลฟิลด์](https://reference.aspose.com/words/python-net/aspose.words.fields/)

## อัพเดตคุณสมบัติของสนาม

บางครั้งผู้ใช้จำเป็นต้องเปลี่ยนค่าของคุณสมบัติเขตข้อมูล ตัวอย่างเช่น อัปเดตคุณสมบัติ [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) ของช่อง `AUTHOR` หรือเปลี่ยนคุณสมบัติ [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) ของช่อง `MERGEFIELD`

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเปลี่ยนชื่อเขตข้อมูลผสานในเอกสาร Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## ผลการแสดงผลภาคสนาม

Aspose.Words จัดเตรียมคุณสมบัติเพื่อรับผลลัพธ์ของฟิลด์สำหรับฟิลด์ที่ไม่มีโหนดตัวคั่นฟิลด์ เราเรียกสิ่งนี้ว่า "ผลลัพธ์ปลอม" หรือแสดงผล; MS Word แสดงในเอกสารโดยการคำนวณค่าของฟิลด์ทันที แต่ไม่มีค่าดังกล่าวในโมเดลเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงการใช้คุณสมบัติ [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
