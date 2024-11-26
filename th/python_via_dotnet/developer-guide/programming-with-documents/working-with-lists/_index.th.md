---
title: การทำงานกับรายการใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับรายการ
linktitle: การทำงานกับรายการ
description: "สร้าง ระบุการจัดรูปแบบ และรีสตาร์ทรายการในเอกสารโดยใช้ Python"
type: docs
weight: 200
url: /th/python-net/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

รายการในเอกสาร Microsoft Word คือชุดของคุณสมบัติการจัดรูปแบบรายการ รายการต่างๆ สามารถใช้ในเอกสารของคุณเพื่อจัดรูปแบบ จัดเรียง และเน้นข้อความได้ รายการเป็นวิธีที่ดีในการจัดระเบียบข้อมูลในเอกสาร และทำให้ผู้อ่านเข้าใจประเด็นสำคัญได้ง่ายขึ้น

แต่ละรายการสามารถมีได้สูงสุด 9 ระดับ และคุณสมบัติการจัดรูปแบบ เช่น สไตล์ตัวเลข ค่าเริ่มต้น การเยื้อง ตำแหน่งแท็บ ฯลฯ จะถูกกำหนดแยกกันสำหรับแต่ละระดับ

ใน Aspose.Words การทำงานกับรายการจะแสดงโดยโมดูล [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) อย่างไรก็ตาม ออบเจ็กต์ [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) จะเป็นของคอลเลกชัน [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) เสมอ

หัวข้อนี้จะอธิบายวิธีทำงานโดยทางโปรแกรมกับรายการที่ใช้ Aspose.Words

## การสร้างรายการโดยใช้การจัดรูปแบบรายการ

Aspose.Words ช่วยให้สร้างรายการได้ง่ายโดยใช้การจัดรูปแบบรายการ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) จัดเตรียมคุณสมบัติ [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) ที่ส่งคืนออบเจ็กต์ [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) วัตถุนี้มีหลายวิธีในการเริ่มต้นและสิ้นสุดรายการและเพิ่ม/ลดการเยื้อง รายการทั่วไปใน Microsoft Word มีสองประเภท: สัญลักษณ์แสดงหัวข้อย่อยและลำดับเลข

- หากต้องการเริ่มรายการหัวข้อย่อย ให้โทร [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)
- หากต้องการเริ่มรายการลำดับเลข ให้โทร [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)

สัญลักษณ์แสดงหัวข้อย่อยหรือตัวเลขและการจัดรูปแบบจะถูกเพิ่มลงในย่อหน้าปัจจุบันและย่อหน้าเพิ่มเติมทั้งหมดที่สร้างขึ้นโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) จนกว่า [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) จะถูกเรียกให้หยุดการจัดรูปแบบรายการสัญลักษณ์แสดงหัวข้อย่อย

ในเอกสาร Word รายการอาจประกอบด้วยได้ถึงเก้าระดับ การจัดรูปแบบรายการสำหรับแต่ละระดับจะระบุหัวข้อย่อยหรือตัวเลขที่ใช้ เยื้องซ้าย ช่องว่างระหว่างหัวข้อย่อยและข้อความ ฯลฯ วิธีการต่อไปนี้จะเปลี่ยนระดับรายการและใช้คุณสมบัติการจัดรูปแบบของระดับใหม่:

- หากต้องการเพิ่มระดับรายการของย่อหน้าปัจจุบันหนึ่งระดับ ให้โทร [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- หากต้องการลดระดับรายการของย่อหน้าปัจจุบันลงหนึ่งระดับ ให้โทร [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

วิธีการเปลี่ยนระดับรายการและใช้คุณสมบัติการจัดรูปแบบของระดับใหม่

{{% alert color="primary" %}}

คุณยังสามารถใช้คุณสมบัติ [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) เพื่อรับหรือตั้งค่าระดับรายการสำหรับย่อหน้าได้ ระดับรายการจะมีหมายเลข 0 ถึง 8

{{% /alert %}}

ตัวอย่างด้านล่างแสดงวิธีการสร้างรายการหลายระดับ

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## ระบุการจัดรูปแบบสำหรับระดับรายการ

ออบเจ็กต์ระดับรายการจะถูกสร้างขึ้นโดยอัตโนมัติเมื่อมีการสร้างรายการ ใช้คุณสมบัติและวิธีการของคลาส [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) เพื่อควบคุมการจัดรูปแบบของรายการแต่ละระดับ

## รายการรีสตาร์ทสำหรับแต่ละส่วน

คุณสามารถรีสตาร์ทรายการสำหรับแต่ละส่วนได้โดยใช้คุณสมบัติ [คุณสมบัติ is_restart_at_each_section](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) โปรดทราบว่าตัวเลือกนี้รองรับเฉพาะในรูปแบบเอกสาร RTF, DOC และ DOCX เท่านั้น ตัวเลือกนี้จะถูกเขียนลงใน DOCX เฉพาะเมื่อ OoxmlCompliance สูงกว่า Ecma376 เท่านั้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการสร้างรายการและเริ่มใหม่สำหรับแต่ละส่วน:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
