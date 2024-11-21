---
title: ทํางานกับแบบอักษรใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับแบบอักษร
linktitle: ทํางานกับแบบอักษร
description: "การฟอร์แมตแบบอักษรในรายละเอียดโดยใช้ Java."
type: docs
weight: 230
url: /th/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

แบบอักษรเป็นชุดของอักขระที่มีขนาด, สี, และการออกแบบบางอย่าง Aspose.Words ให้คุณได้ทํางานกับแบบอักษรโดยใช้คลาสต่าง ๆ ของแบบอักษร รวมถึง [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) ชั้นเรียน.

## การฟอร์แมตแบบอักษร

การฟอร์แมตแบบอักษรปัจจุบัน แสดงโดย **Font** วัตถุกลับมาโดย [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) ทรัพย์สิน เดอะ **Font** คลาสมีคุณสมบัติแบบอักษรหลากหลายแบบที่เป็นไปได้ Microsoft Word.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีตั้งค่ารูปแบบตัวอักษร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

คุณสมบัติการเติมข้อความ ตัว อย่าง เช่น มัน ให้ ความ สามารถ ใน การ เปลี่ยน สี หรือ ความ โปร่งใส ของ การ เติม ข้อ ความ.

## กําลังอ่านค่าช่องว่างของบรรทัดแบบอักษร

ระยะเยื้องของตัวอักษร คือระยะทางแนวตั้งระหว่างเส้นฐานของข้อความสองเส้นติดต่อกัน ดัง นั้น ระยะ ห่าง เส้น จึง รวม ช่อง ว่าง ระหว่าง บรรทัด เข้า กับ ความ สูง ของ ตัว อักษร เอง.

เดอะ [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) ทรัพย์สินถูกนํามาใช้ใน **Font** ชั้น เรียน ที่ จะ ได้ รับ ค่า นี้ ดัง ที่ แสดง ไว้ ใน ตัว อย่าง ที่ ให้ ไว้ ข้าง ล่าง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## เครื่องหมายตัวอักษร

เดอะ **Font** คลาสที่จัดให้ [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) คุณสมบัติที่จะใช้ในการแปลงรูปแบบนี้

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่า **EphasisMark** คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
