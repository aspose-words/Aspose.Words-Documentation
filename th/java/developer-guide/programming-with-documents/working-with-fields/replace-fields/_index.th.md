---
title: แทนที่ช่องข้อมูลด้วยข้อความ Java
second_title: Aspose.Words สําหรับ Java
articleTitle: แทนที่ช่องข้อมูลด้วยข้อความคงที่
linktitle: แทนที่ช่องข้อมูลด้วยข้อความคงที่
description: "เรียน รู้ วิธี เอา ข้อ ความ มา แทน ทุ่ง นา Java. แทนที่ช่องข้อมูลด้วยข้อมูลคงที่โดยใช้ Java API."
type: docs
weight: 37
url: /th/java/replace-fields/
---

การทําช่องข้อมูลใหม่ มักจําเป็นเมื่อคุณต้องการที่จะบันทึกเอกสารของคุณเป็นสําเนาแบบคงที่ ตัวอย่างเช่น เมื่อมีการส่งสิ่งที่แนบมาด้วยในอีเมล แปลงสนามเช่น `DATE` หรือ `TIME` ข้อความที่คงที่จะทําให้เอกสารแสดงวันเหมือนกับเมื่อมีการส่ง นอก จาก นั้น ใน บาง สถานการณ์ คุณ อาจ ต้อง ขจัด เงื่อนไข `IF` ค้นหาจากเอกสารของคุณ และแทนที่ด้วยผลลัพธ์ข้อความล่าสุดแทน ยกตัวอย่างเช่น การแปลงผลของ `IF` ช่องข้อมูลเพื่อคงข้อความไว้ เพื่อไม่ให้มันเปลี่ยนค่าของมันโดยอัตโนมัติ เมื่อช่องข้อมูลในเอกสารถูกปรับปรุง

แผนภาพด้านล่างนี้แสดงว่า `IF` ช่องข้อมูลถูกเก็บไว้ในเอกสาร:

*ข้อความนี้ถูกล้อมรอบด้วยโหนดสนามพิเศษ - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) ถึง [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
*เพลง* [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) โหนดแยกข้อความภายในสนามเป็นรหัสและผลลัพธ์
* รหัสสนามกําหนดพฤติกรรมทั่วไปของสนามในขณะที่ผลของสนามยังคงมีผลล่าสุด เมื่อสนามนี้ปรับปรุงใช้งาน Microsoft Word หรือ Aspose.Words
* ผล ที่ ออก มา คือ สิ่ง ที่ เก็บ ไว้ ใน ทุ่ง นา และ แสดง ไว้ ใน เอกสาร เมื่อ ดู ภาพ

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

โครงสร้างนี้สามารถมองเห็นได้ทางด้านล่าง โดยใช้โครงการสาธิต **“DocumentExplorer”**, ซึ่งเรือที่บรรทุก **Aspose.Words** ผู้ติดตั้ง

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## ช่องข้อมูลที่ไม่สามารถแทนที่ได้โดยข้อความ

การ ใส่ ข้อ ความ สั้น ๆ กลับ ไป ใช้ ไม่ ได้ กับ บาง ทุ่ง ใน หัว เรื่อง หรือ ท้าย เรือ.

ตัวอย่างเช่น, พยายามแปลง `PAGE` ช่องข้อมูลในส่วนหัวหรือท้ายกระดาษ เพื่อให้ข้อความคงที่ จะทําให้เกิดค่าเดียวกันกับการแสดงผลในทุกหน้า นี่ เป็น เพราะ มี การ ใช้ อักษร หัว แม่ เท้า ซ้ํา กัน หลาย หน้า และ เมื่อ มัน ยัง คง เป็น ทุ่ง นา มัน ก็ จะ ถูก จัด การ เป็น พิเศษ เพื่อ จะ แสดง ผล ที่ ถูก ต้อง สําหรับ แต่ ละ หน้า.

อย่างไรก็ตาม, ในหัว, `PAGE` ฟิลด์แปลได้ดีในการส่งข้อความ การประมวลผลข้อความนี้ จะถูกประเมินเหมือนกับมันเป็นหน้าสุดท้ายในส่วน ซึ่งจะทําให้ `PAGE` ช่องข้อมูลในส่วนหัวที่จะแสดงหน้าสุดท้ายตลอดทุกหน้า

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทนที่สนามด้วยผลลัพธ์ล่าสุด:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## แปลงประเภทของช่องข้อมูลบางส่วนในส่วนเอกสารที่ระบุ

ตั้งแต่ **ConvertFieldsToStaticText** วิธีการยอมรับพารามิเตอร์สองตัว - พารามิเตอร์ [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) คุณสมบัติและ [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) การ ผสม พันธุ์ เป็น ไป ได้ ที่ จะ ผ่าน ตาข่าย ที่ ประกอบ กัน เป็น วิธี นี้. อนุญาตให้แปลงช่องข้อมูลเป็นข้อความคงที่เฉพาะในส่วนเฉพาะของเอกสารเท่านั้น

ตัวอย่างเช่น คุณสามารถผ่าน [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ออบเจกต์และแปลงช่องข้อมูลชนิดที่ระบุจากเอกสารทั้งหมดเป็นข้อความคงที่ หรือคุณสามารถส่งต่อได้ [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) วัตถุของส่วนของส่วนและเพียงการแปลง สนามที่พบในร่างกายที่

{{% alert color="primary" %}}

เมื่อผ่านโหนดระดับบล็อกเช่น [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), ขอ ให้ ตระหนัก ว่า ใน บาง กรณี ทุ่ง นา อาจ ทอด ข้าม หลาย วรรค. ถ้า เกิด เหตุ การณ์ เช่น นี้ ก็ ขอ แนะ นํา ให้ ส่ง พ่อ แม่ ของ ชุด ประกอบ แทน ที่ จะ หลีก เลี่ยง เรื่อง นี้.

{{% /alert %}}

เดอะ [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) การอนุมานผ่านไปยัง **ConvertFieldsToStaticText** วิธีการกําหนดชนิดของช่องข้อมูลที่จะให้แปลงเป็นข้อความคงที่ ชนิดของช่องข้อมูลใด ๆ ที่พบในเอกสารนี้ จะยังไม่เปลี่ยนแปลง

ตัวอย่างรหัสต่อไปนี้แสดงวิธีเลือกช่องข้อมูลชนิดเฉพาะ - *targetFieldType* ในปมที่จําเพาะ *compositeNode* แล้วแปลงเป็นข้อความคงที่

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ เปลี่ยน แปลง ทุก คน `IF` แสดงในเอกสารที่จะให้ข้อความคงที่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ เปลี่ยน แปลง ทุก คน `PAGE` ช่องในเอกสารที่จะให้ข้อความคงที่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ เปลี่ยน แปลง ทุก คน `IF` ช่องข้อมูลในย่อหน้าสุดท้ายสําหรับข้อความคงที่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
