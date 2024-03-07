---
title: ปรับแต่งคุณสมบัติของฟิลด์ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ปรับแต่งคุณสมบัติของฟิลด์
linktitle: ปรับแต่งคุณสมบัติของฟิลด์
description: "ดูวิธีปรับแต่งคุณสมบัติของช่องใน C# เปลี่ยนชื่อเขตข้อมูลผสานหรือรับผลลัพธ์สำหรับเขตข้อมูลที่ไม่มีโหนดตัวแยกใน .NET"
type: docs
weight: 27
url: /th/net/customize-field-properties/
---

Aspose.Words มอบความสามารถในการโต้ตอบทางโปรแกรมกับคุณสมบัติของฟิลด์ต่างๆ ในบทความนี้ เราจะดูตัวอย่างบางส่วนเพื่อให้คุณเข้าใจหลักการพื้นฐานของการทำงานกับคุณสมบัติของฟิลด์ คุณสามารถดูรายการคุณสมบัติทั้งหมดสำหรับฟิลด์แต่ละประเภทในคลาสที่เกี่ยวข้องใน [เนมสเปซของฟิลด์](https://reference.aspose.com/words/net/aspose.words.fields/)

## อัพเดตคุณสมบัติของสนาม

บางครั้งผู้ใช้จำเป็นต้องเปลี่ยนค่าของคุณสมบัติเขตข้อมูล ตัวอย่างเช่น อัปเดตคุณสมบัติ [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) ของช่อง `AUTHOR` หรือเปลี่ยนคุณสมบัติ [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) ของช่อง `MERGEFIELD`

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเปลี่ยนชื่อเขตข้อมูลผสานในเอกสาร Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## ผลการแสดงผลภาคสนาม

Aspose.Words จัดเตรียมคุณสมบัติเพื่อรับผลลัพธ์ของฟิลด์สำหรับฟิลด์ที่ไม่มีโหนดตัวคั่นฟิลด์ เราเรียกสิ่งนี้ว่า "ผลลัพธ์ปลอม" หรือแสดงผล; MS Word แสดงในเอกสารโดยการคำนวณค่าของฟิลด์ทันที แต่ไม่มีค่าดังกล่าวในโมเดลเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงการใช้คุณสมบัติ [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
