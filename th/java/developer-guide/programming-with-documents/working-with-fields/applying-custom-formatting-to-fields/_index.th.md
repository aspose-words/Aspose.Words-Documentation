---
title: ปรับใช้รูปแบบเองกับช่องข้อมูล
second_title: Aspose.Words สําหรับ Java
articleTitle: ปรับใช้รูปแบบเองกับช่องข้อมูล
linktitle: ปรับใช้รูปแบบเองกับช่องข้อมูล
description: "รูปแบบและค่าผลลัพธ์ของช่องข้อมูลโดยใช้ Java."
type: docs
weight: 40
url: /th/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

บางครั้งผู้ใช้จําเป็นต้องปรับใช้รูปแบบเองกับช่องข้อมูล ใน บทความ นี้ เรา จะ พิจารณา บาง ตัว อย่าง ที่ แสดง ว่า เรา จะ ทํา อย่าง นี้ ได้ อย่าง ไร.

เพื่อ จะ เรียน รู้ วิธี เลือก มาก ขึ้น โปรด ดู ราย ชื่อ คุณสมบัติ ทั้ง หมด ของ แต่ ละ ชนิด ใน ชั้น ที่ ตรง กัน.

## วิธี ใช้ รูป แบบ ตาม อําเภอ ใจ

Aspose.Words ให้ API เพื่อปรับแต่งผลลัพธ์ของสนาม คุณสามารถทําได้ [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) ส่วนติดต่อเพื่อควบคุมวิธีการจัดรูปแบบการทํางาน คุณสามารถปรับใช้รูปแบบตัวเลข สลับ, i. e. /# "#", "วันที่/เวลา สลับกัน", i. e/@ "dd.m.yyy", และรูปแบบตัวเลขสลับที่, i. e\*orinal

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี นํา เอา แบบ แปลน ที่ กําหนด ไว้ มา ใช้ เพื่อ ให้ เกิด ผล.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## วิธี ประเมิน ค่า `IF` เงื่อนไข

ถ้าคุณอยากหาค่า `IF` เงื่อนไขหลังจาก mail merge, คุณสามารถใช้ [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) วิธีการที่จะให้ผลทันทีจากการประเมินนิพจน์

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง วิธี ใช้ วิธี นี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## จะ นํา เอา แบบ จําลอง ไป ใช้ ใน เขต เวลา เอง ได้ อย่าง ไร?

ค่าปริยาย Aspose.Words ปรับปรุง `TIME` ใช้รูปแบบเวลาแบบย่อของวัฒนธรรมในปัจจุบัน หากคุณต้องการฟอร์แมต `TIME` คุณ สามารถ ทํา งาน นี้ ได้ ตาม ข้อ เรียก ร้อง ของ คุณ. [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) อินเตอร์เฟส

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการปรับใช้การฟอร์แมตเองกับ `TIME` ช่องข้อมูล:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
