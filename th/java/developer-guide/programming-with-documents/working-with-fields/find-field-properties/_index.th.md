---
title: วิธีการค้นหาคุณสมบัติของฟิลด์
second_title: Aspose.WordsสำหรับJava
articleTitle: ค้นหาคุณสมบัติของฟิลด์
linktitle: ค้นหาคุณสมบัติของฟิลด์
description: "วิธีการหาคุณสมบัติฟิลด์บางอย่างเช่นรหัสฟิลด์และฟิลด์ผลในJava"
type: docs
weight: 25
url: /th/java/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

ฟิลด์ที่แทรกโดยใช้[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)ส่งกลับวัตถุ[Field](https://reference.aspose.com/words/java/com.aspose.words/field/) นี้เป็นชั้นซุ้มซึ่งมีวิธีการที่มีประโยชน์ได้อย่างรวดเร็วพบคุณสมบัติดังกล่าวของเขตข้อมูล.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการค้นหารหัสฟิลด์และผลลัพธ์ฟิลด์:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

หมายเหตุถ้าคุณกำลังมองหาเฉพาะชื่อของฟิลด์ผสานในเอกสารแล้วคุณสามารถใช้วิธีการในตัว[GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames)แทน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับชื่อของเขตข้อมูลทั้งหมดผสานในเอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
