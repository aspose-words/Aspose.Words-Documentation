---
title: ภาพรวมตัวสร้างเอกสารใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ภาพรวมตัวสร้างเอกสาร
linktitle: ภาพรวมตัวสร้างเอกสาร
type: docs
description: "DocumentBuilder ช่วยให้คุณสร้างเอกสารแบบไดนามิกตั้งแต่เริ่มต้นหรือเพิ่มองค์ประกอบใหม่ให้กับเอกสารที่มีอยู่โดยใช้ Python DocumentBuilder มีวิธีแทรกข้อความ ช่องทำเครื่องหมาย ตาราง รูปภาพ และองค์ประกอบเนื้อหาอื่นๆ ใน Python"
weight: 30
url: /th/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) เป็นคลาสที่มีประสิทธิภาพซึ่งเชื่อมโยงกับ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) และช่วยให้คุณสร้างเอกสารแบบไดนามิกตั้งแต่เริ่มต้นหรือเพิ่มองค์ประกอบใหม่ให้กับเอกสารที่มีอยู่

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) มีวิธีแทรกข้อความ ช่องทำเครื่องหมาย วัตถุ ole ย่อหน้า รายการ ตาราง รูปภาพ และองค์ประกอบเนื้อหาอื่นๆ ช่วยให้คุณสามารถระบุแบบอักษร การจัดรูปแบบย่อหน้าหรือส่วน และดำเนินการอื่นๆ ได้

## เครื่องมือสร้างเอกสารหรือ Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) เสริมคลาสและวิธีการที่มีอยู่ใน Aspose.Words Document Object Model (DOM) เพื่อลดความซับซ้อนของงานสร้างเอกสารทั่วไป นั่นคือคุณสามารถสร้างและแก้ไขเนื้อหาของเอกสารทั้งผ่าน Aspose.Words DOM ซึ่งต้องมีความเข้าใจที่ดีเกี่ยวกับโครงสร้างต้นไม้และการใช้ DocumentBuilder `DocumentBuilder` เป็น "ส่วนหน้า" สำหรับโครงสร้าง **Document** ที่ซับซ้อนซึ่งช่วยให้คุณสามารถแทรกเนื้อหาและการจัดรูปแบบได้อย่างรวดเร็วและง่ายดาย

การดำเนินการที่เป็นไปได้ด้วย [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ก็สามารถทำได้เช่นกันเมื่อใช้คลาสของ Aspose.Words DOM โดยตรง อย่างไรก็ตาม การใช้คลาส Aspose.Words DOM โดยตรงมักต้องใช้โค้ดหลายบรรทัดมากกว่าการใช้ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)

## การนำทางเอกสาร

การนำทางเอกสารขึ้นอยู่กับแนวคิดของเคอร์เซอร์เสมือน ซึ่งคุณสามารถย้ายไปยังตำแหน่งอื่นในเอกสารโดยใช้วิธี **DocumentBuilder.move_to_XXX** ต่างๆ เช่น [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) และ [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) เคอร์เซอร์เสมือนนี้ระบุตำแหน่งที่จะแทรกข้อความเมื่อเรียกใช้เมธอด [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) และอื่นๆ ดูบทความ "การนำทางด้วยเคอร์เซอร์" ต่อไปนี้เพื่อเรียนรู้เพิ่มเติมเกี่ยวกับเคอร์เซอร์เสมือน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการนำทางไปยังบุ๊กมาร์ก:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## การสร้างและแก้ไขเอกสาร

Aspose.Words API มีหลายคลาสที่รับผิดชอบในการจัดรูปแบบองค์ประกอบต่างๆ ของเอกสาร แต่ละคลาสจะสรุปคุณสมบัติการจัดรูปแบบที่เกี่ยวข้องกับองค์ประกอบเอกสารเฉพาะ เช่น ข้อความ ย่อหน้า ส่วน และอื่นๆ ตัวอย่างเช่น คลาส [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) แสดงถึงคุณสมบัติการจัดรูปแบบอักขระ คลาส [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) แสดงถึงคุณสมบัติการจัดรูปแบบย่อหน้า และอื่นๆ ออบเจ็กต์ของคลาสเหล่านี้จะถูกส่งกลับโดยคุณสมบัติ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ที่สอดคล้องกัน ซึ่งมีชื่อเหมือนกับคลาส ดังนั้นคุณจึงสามารถเข้าถึงและตั้งค่าการจัดรูปแบบที่ต้องการระหว่างการสร้างเอกสารได้

คุณยังสามารถแทรกข้อความ กล่องกาเครื่องหมาย วัตถุ ole รูปภาพ ที่คั่นหน้า ช่องแบบฟอร์ม และองค์ประกอบเอกสารอื่นๆ ที่ตำแหน่งเคอร์เซอร์โดยใช้วิธี `Write` หรือวิธี **DocumentBuilder.insert_XXX** ใดๆ เช่น [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) และวิธีการที่คล้ายกัน

มาดูวิธีสร้างเอกสารง่ายๆ โดยใช้ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) กัน

### สร้างเอกสารโดยใช้ DocumentBuilder

ในการเริ่มต้น คุณต้องสร้าง [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) และเชื่อมโยงกับออบเจ็กต์ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) คุณสร้างอินสแตนซ์ใหม่ของ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) โดยการเรียกตัวสร้างและส่งไปยังออบเจ็กต์ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) เพื่อแนบไปกับตัวสร้าง

หากต้องการแทรกข้อความ ให้ส่งสตริงข้อความที่คุณต้องการแทรกลงในเอกสารไปยังวิธี [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างเอกสารอย่างง่ายโดยใช้ตัวสร้างเอกสาร

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### ระบุการจัดรูปแบบเอกสาร

คุณสมบัติ [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) กำหนดการจัดรูปแบบข้อความ ออบเจ็กต์นี้มีแอตทริบิวต์แบบอักษรที่แตกต่างกัน (ชื่อแบบอักษร ขนาดแบบอักษร สี และอื่นๆ) คุณลักษณะแบบอักษรที่สำคัญบางอย่างยังแสดงด้วยคุณสมบัติ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) เพื่อให้คุณสามารถเข้าถึงได้โดยตรง คุณสมบัติเหล่านี้คือคุณสมบัติบูลีน [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) และ [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกข้อความที่จัดรูปแบบโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) ระบุการจัดรูปแบบอักขระที่จะใช้กับข้อความทั้งหมดที่แทรกจากตำแหน่งปัจจุบันในเอกสารเป็นต้นไป
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) ระบุการจัดรูปแบบย่อหน้าสำหรับย่อหน้าปัจจุบันและย่อหน้าทั้งหมดที่จะแทรก
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) ระบุคุณสมบัติของหน้าและส่วนสำหรับส่วนปัจจุบันและส่วนทั้งหมดที่จะแทรก
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) และ [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) ระบุคุณสมบัติการจัดรูปแบบที่จะใช้กับเซลล์ตารางและแถวจากตำแหน่งปัจจุบันในเอกสารเป็นต้นไป

ในสถานการณ์นี้ "ปัจจุบัน" หมายถึงตำแหน่ง ย่อหน้า ส่วน เซลล์ หรือแถวที่มีเคอร์เซอร์อยู่

{{% /alert %}}

{{% alert color="primary" %}}

โปรดทราบว่าคุณสมบัติ [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) และ [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) จะได้รับการอัปเดตทุกครั้งที่คุณนำทางไปยังตำแหน่งอื่นในเอกสารเพื่อแสดงคุณสมบัติการจัดรูปแบบของตำแหน่งนี้

{{% /alert %}}
