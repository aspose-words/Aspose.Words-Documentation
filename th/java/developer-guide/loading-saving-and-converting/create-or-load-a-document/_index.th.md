---
title: สร้างหรือโหลดเอกสารใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: สร้างหรือโหลดเอกสาร
linktitle: สร้างหรือโหลดเอกสาร
type: docs
weight: 10
url: /th/java/create-or-load-a-document/
description: "Aspose.Words ให้คุณได้สร้างเอกสารว่าง หรือโหลดมาจากแฟ้มหรือสายข้อมูลได้ Java."
---

เกือบทุกทาสก์ที่คุณต้องการจะทํา Aspose.Words การโหลดเอกสาร เดอะ `Document` คลาสแสดงเอกสารที่ถูกโหลดเข้าหน่วยความจํา เอกสารนี้มีการสร้างเอกสารที่มากเกินไป ให้คุณได้สร้างเอกสารว่าง ๆ หรือโหลดมาจากแฟ้มหรือสายข้อมูล คุณสามารถโหลดเอกสารในรูปแบบการโหลดใด ๆ ที่รองรับ Aspose.Words. สําหรับรายการรูปแบบการโหลดทั้งหมดที่รองรับ ดูที่ [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) การเผาศพ

## สร้างเอกสารใหม่ {#create-a-new-document}

เราจะเรียก [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ผู้สร้างโดยไม่มีพารามิเตอร์ที่จะสร้างเอกสารว่างใหม่ หากคุณต้องการสร้างเอกสารแบบโปรแกรม วิธีที่ง่ายที่สุดคือใช้ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) คลาสที่จะเพิ่มเนื้อหาในเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีสร้างเอกสารโดยใช้ตัวสร้างเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

บันทึกค่าปริยาย:

- เอกสารว่างบรรจุทั้ง 1 ส่วนด้วยพารามิเตอร์ปริยาย, ย่อหน้าว่างหนึ่งตัว, รูปแบบเอกสารบางส่วน ความจริงเอกสารนี้ก็เหมือนกับผลของการสร้าง "เอกสารใหม่" ใน Microsoft Word.
- ขนาดกระดาษเอกสาร [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## โหลดเอกสาร

ให้โหลดเอกสารที่มีอยู่ในเอกสารใด ๆ [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) รูปแบบต่าง ๆ, ผ่านชื่อแฟ้มหรือสายข้อมูลไปยังตัวสร้างเอกสารตัวหนึ่ง รูปแบบของเอกสารที่ถูกโหลด ถูกกําหนดโดยอัตโนมัติโดยส่วนขยายของเอกสาร

### โหลดจากแฟ้ม {#load-from-a-file}

ส่งชื่อแฟ้มเป็นข้อความไปยังตัวสร้างเอกสาร เพื่อเปิดเอกสารที่มีอยู่ก่อนแล้วจากแฟ้ม

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการเปิดเอกสารจากแฟ้ม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### โหลดมาจากสายข้อมูล {#load-from-a-stream}

เพื่อเปิดเอกสารจากลําธาร ให้ส่งออบเจกต์ที่บรรจุเอกสารไปยังตัวสร้างเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีการเปิดเอกสารจากสายข้อมูล:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
