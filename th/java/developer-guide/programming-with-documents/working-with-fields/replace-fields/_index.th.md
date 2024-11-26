---
title: แทนที่ฟิลด์ด้วยข้อความJava
second_title: Aspose.WordsสำหรับJava
articleTitle: แทนที่ฟิลด์ด้วยข้อความแบบคงที่
linktitle: แทนที่ฟิลด์ด้วยข้อความแบบคงที่
description: "เรียนรู้วิธีการแทนที่ฟิลด์ด้วยข้อความในJava แทนที่ฟิลด์ด้วยข้อมูลแบบคงที่โดยใช้JavaAPI."
type: docs
weight: 37
url: /th/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

การแทนที่ฟิลด์มักจำเป็นต้องใช้เมื่อคุณต้องการบันทึกเอกสารของคุณเป็นสำเนาแบบคงที่ ตัวอย่างเช่นเมื่อส่งเป็นสิ่งที่แนบในอีเมล การแปลงฟิลด์เช่น`DATE`หรือ`TIME`เป็นข้อความแบบคงที่จะอนุญาตให้เอกสารแสดงวันเดียวกันกับเมื่อ นอกจากนี้ในบางสถานการณ์คุณอาจต้องลบเขตข้อมูลที่มีเงื่อนไข`IF`ออกจากเอกสารของคุณและแทนที่ด้วยผลลัพธ์ข้อความล่าสุดแทน ตัวอย่างเช่นการแปลงผลลัพธ์ของฟิลด์`IF`เป็นข้อความแบบคงที่ดังนั้นจะไม่เปลี่ยนค่าของฟิลด์.

แผนภาพด้านล่างแสดงให้เห็นว่าฟิลด์`IF`ถูกเก็บไว้ในเอกสาร:

* ข้อความถูกล้อมรอบด้วยโหนดฟิลด์พิเศษ-[FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/)และ[FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* โหนด[FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)จะแยกข้อความภายในฟิลด์ลงในโค้ดฟิลด์และผลลัพธ์ของฟิลด์
* รหัสฟิลด์จะกำหนดลักษณะการทำงานทั่วไปของฟิลด์ในขณะที่ผลลัพธ์ของฟิลด์จะยังคงผลลัพธ์ล่าสุดเมื่อฟิลด์นี้ถูกอัปเดตโดยใช้Microsoft WordหรือAspose.Words
* ผลลัพธ์ฟิลด์คือสิ่งที่ถูกเก็บไว้ในฟิลด์และแสดงในเอกสารเมื่อดู

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

โครงสร้างยังสามารถมองเห็นได้ด้านล่างในรูปแบบลำดับชั้นโดยใช้โครงการสาธิต**"DocumentExplorer"**ซึ่งจัดส่งพร้อมกับตัวติดตั้ง**Aspose.Words**.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## ฟิลด์ที่ไม่สามารถถูกแทนที่ด้วยข้อความ

การแทนที่ฟิลด์ที่มีข้อความแบบคงที่ไม่ทำงานอย่างถูกต้องสำหรับบางเขตข้อมูลในส่วนหัวห.

ตัวอย่างเช่นการพยายามแปลงฟิลด์`PAGE`ในส่วนหัวหรือส่วนท้ายเป็นข้อความแบบคงที่จะส่งผลใ นท้ายทั้งนี้เนื่องจากส่วนหัวและท้ายกระดาษถูกทำซ้ำในหลายหน้าและเมื่อพวกเขายังคงเป็.

งไรก็ตามในส่วนหัวฟิลด์`PAGE`จะแปลเป็นข้อความแบบคงที่ ข้อความรันนี้จะถูกประเมินว่าเป็นหน้าสุดท้ายในส่วนซึ่งจะทำให้ฟิลด์`PAGE`ในส่วนหัวแสดงหน้าสุดท้ายเหนือทุกหน้า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทนที่ฟิลด์ด้วยผลลัพธ์ล่าสุด:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## แปลงบางประเภทฟิลด์ในส่วนเอกสารที่เฉพาะเจาะจง

เนื่องจาก**ConvertFieldsToStaticText**เมธอดยอมรับสองพารามิเตอร์-[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)คุณสมบัติและการแจงนับ[FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/)จึงเป็นไปได้ที่จะส่งโห นี้จะช่วยให้ฟิลด์ที่จะถูกแปลงเป็นข้อความแบบคงที่เฉพาะในส่วนที่เฉพาะเจาะจงของเอกส.

ตัวอย่างเช่น คุณสามารถส่งอ็อบเจ็กต์ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) และแปลงฟิลด์ประเภทที่ระบุจากเอกสารทั้งหมดเป็นข้อความคงที่ หรือคุณสามารถส่งอ็อบเจ็กต์ [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) ของส่วนและแปลงเฉพาะฟิลด์ที่พบในเนื้อหานั้นเท่านั้น.

{{% alert color="primary" %}}

เมื่อผ่านโหนดระดับบล็อกเช่น[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)โปรดทราบว่าในบางกรณีฟิลด์สามารถครอบคลุมหลายย่อหน้า ถ้าเกิดเหตุการณ์นี้ก็จะแนะนำให้ผ่านผู้ปกครองของคอมโพสิตแทนเพื่อหลีกเลี่ยงนี้.

{{% /alert %}}

การแจงนับ[FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/)ที่ส่งผ่านไปยังวิธีการ**ConvertFieldsToStaticText**ระบุชนิดของฟิลด์ที่ควรจะแปลงเป็นข้อความแบบคงที่ ชนิดฟิลด์อื่นๆที่พบในเอกสารจะยังคงไม่เปลี่ยนแปลง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเลือกฟิลด์ของชนิดที่ระบุ–*targetFieldType*ในโหนดที่เฉพาะเจาะจง-*compositeNode*และแ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงฟิลด์`IF`ทั้งหมดในเอกสารเป็นข้อความแบบสแตติก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงฟิลด์`PAGE`ทั้งหมดในเนื้อหาของเอกสารเป็นข้อความแบบ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงฟิลด์`IF`ทั้งหมดในย่อหน้าสุดท้ายเป็นข้อความแบบคงที่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
