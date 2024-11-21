---
title: ล้างเอกสารใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ล้างเอกสาร
linktitle: ล้างเอกสาร
description: "ลบข้อมูลที่ไม่ได้ใช้หรือซ้ํา เพื่อลดขนาดการแสดงผลและประมวลผลเวลา ลบรูปแบบที่ไม่ได้ใช้, รูปแบบที่สร้างเอง, รูปแบบซ้ํา, หรือรายการที่ไม่ได้ใช้ออกไป Java."
type: docs
weight: 30
url: /th/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

บาง ครั้ง คุณ อาจ ต้อง ลบ ข้อมูล ที่ ไม่ ได้ ใช้ หรือ ไม่ ก็ ทํา ซ้ํา เพื่อ ลด ขนาด เอกสาร ที่ ส่ง ออก และ เวลา ทํา การประมวลผล.

ในขณะที่คุณสามารถหาและเอาข้อมูลที่ไม่ได้ใช้ออก เช่น รูปแบบหรือรายการ หรือข้อมูลซ้ําเอง จะสะดวกมากขึ้นที่จะทําเช่นนี้โดยใช้คุณสมบัติและความสามารถที่ให้โดย Aspose.Words.

เดอะ [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) คลาสอนุญาตให้คุณกําหนดตัวเลือกสําหรับทําความสะอาดเอกสารได้ การลบรูปแบบซ้ํา หรือแค่ใช้รูปแบบหรือรายการจากเอกสาร คุณสามารถใช้ [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) วิธี

## ลบข้อมูลที่ยังไม่ใช้ออกจากเอกสาร

คุณสามารถใช้ [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) ถึง [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) คุณสมบัติที่จะตรวจสอบและลบรูปแบบที่กําหนดให้เป็น "ไม่ถูกใช้"

คุณสามารถใช้ [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) คุณสมบัติที่จะตรวจสอบและลบรายการและรายการที่ถูกกําหนดเป็น "ไม่ใช้"

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีเอารูปแบบที่ไม่ได้ใช้ออกจากเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## ลบข้อมูลซ้ําออกจากเอกสาร

คุณสามารถใช้ [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) คุณสมบัติที่จะใช้แทนที่รูปแบบที่ซ้ํากันทั้งหมด ด้วยภาพต้นฉบับ และลบแบบซ้ําออกจากเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีเอารูปแบบซ้ําออกจากเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
