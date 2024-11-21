---
title: การทำงานกับกล่องข้อความใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับกล่องข้อความ
linktitle: การทำงานกับกล่องข้อความ
description: "ทำงานกับกล่องข้อความในเอกสารโดยใช้ Python"
type: docs
weight: 250
url: /th/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

ใน Aspose.Words คลาส [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) ใช้เพื่อระบุวิธีการแสดงข้อความภายในรูปร่าง โดยจัดเตรียมทรัพย์สินสาธารณะชื่อ [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) เพื่อรับรูปร่างหลักสำหรับกล่องข้อความเพื่อให้ลูกค้าค้นหา [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ที่เชื่อมโยงจาก [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) ที่เชื่อมโยง

## การสร้างลิงค์

คลาส [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) จัดเตรียมวิธี [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) เพื่อตรวจสอบว่า [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) สามารถเชื่อมโยงกับกล่องข้อความเป้าหมายได้หรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตรวจสอบว่า `TextBox` สามารถเชื่อมโยงกับกล่องข้อความเป้าหมายได้หรือไม่:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## ตรวจสอบลำดับกล่องข้อความ

มีหลายวิธีในการแสดงข้อความในรูปร่าง [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) อาจเป็น Head, Middle หรือ Tail ของลำดับก็ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตรวจสอบว่า **TextBox** เป็น Head, Tail หรือ Middle ของลำดับหรือไม่:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## ทำลายลิงค์

เมื่อใช้วิธีการ [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) คุณสามารถตัดลิงก์ไปยัง **TextBox** ถัดไปได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแยกลิงก์สำหรับ **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
