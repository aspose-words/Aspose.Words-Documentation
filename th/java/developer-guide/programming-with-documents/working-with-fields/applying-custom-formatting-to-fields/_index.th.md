---
title: ใช้การจัดรูปแบบที่กำหนดเองไปยังฟิลด์
second_title: Aspose.WordsสำหรับJava
articleTitle: ใช้การจัดรูปแบบที่กำหนดเองไปยังฟิลด์
linktitle: ใช้การจัดรูปแบบที่กำหนดเองไปยังฟิลด์
description: "จัดรูปแบบและประเมินผลฟิลด์โดยใช้Java."
type: docs
weight: 40
url: /th/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

บางครั้งผู้ใช้ต้องใช้การจัดรูปแบบที่กำหนดเองกับฟิลด์ ในบทความนี้เราจะดูที่คู่ของตัวอย่างของวิธีการนี้สามารถทำได้.

เมื่อต้องการเรียนรู้ตัวเลือกเพิ่มเติม,ดูรายการของคุณสมบัติทั้งหมดสำหรับแต่ละฟิลด์ชนิด.

## วิธีการใช้การจัดรูปแบบที่กำหนดเองเพื่อผลลัพธ์ฟิลด์

Aspose.Wordsให้APIสำหรับการจัดรูปแบบที่กำหนดเองของผลลัพธ์ของฟิลด์ คุณสามารถใช้อินเตอร์เฟซ[IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/)เพื่อควบคุมวิธีการจัดรูปแบบผลลัพธ์ของฟิลด์ คุณสามารถใช้สวิตช์รูปแบบตัวเลขได้เช่น\# "#.##",สวิตช์รูปแบบวันที่/เวลา,กล่าวคือ\@ "dd.MM.yyyy"และสวิตช์รูปแบบตัวเลข,กล่าวคือ\* Ordinal.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้การจัดรูปแบบที่กำหนดเองสำหรับผลลัพธ์ฟิลด์.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## วิธีการประเมินเงื่อนไข`IF`

ถ้าคุณต้องการประเมิน`IF`เงื่อนไขหลังจากmail mergeคุณสามารถใช้วิธีการ[EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition)ที่ส่งกลับผลลัพธ์ของการประ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้วิธีการนี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## วิธีการใช้การจัดรูปแบบที่กำหนดเองไปยังเขตเวลา

โดยค่าเริ่มต้นAspose.Wordsอัพเดต`TIME`ฟิลด์ที่มีรูปแบบเวลาสั้นๆวัฒนธรรมปัจจุบัน หากคุณต้องการจัดรูปแบบฟิลด์`TIME`ตามความต้องการของคุณ,คุณสามารถบรรลุนี้โดยการใช้อินเตอร์เฟซ[IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้การจัดรูปแบบแบบกำหนดเองกับฟิลด์`TIME`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
