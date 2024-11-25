---
title: ทำความสะอาดเอกสารในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ทำความสะอาดเอกสาร
linktitle: ทำความสะอาดเอกสาร
description: "ลบข้อมูลที่ไม่ได้ใช้หรือซ้ำกันเพื่อลดขนาดผลผลิตและเวลาในการประมวลผล ลบสไตล์ที่ไม่ได้ใช้,รูปแบบในตัวที่ไม่ได้ใช้,รูปแบบที่ซ้ำกัน,หรือรายการที่ไม่ได้ใช้โดยใช้Java."
type: docs
weight: 30
url: /th/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจต้องลบข้อมูลที่ไม่ได้ใช้หรือซ้ำกันเพื่อลดขนาดของเอกสารที่ส่งออกและเว.

ในขณะที่คุณสามารถค้นหาและลบข้อมูลที่ไม่ได้ใช้เช่นลักษณะหรือรายการหรือข้อมูลที่ซ้ำกันด้วยตนเองแต่จะสะดวกกว่ามากในการทำเช่นนี้โดยใช้คุณลักษณะและความสามารถที่มีให้โดยAspose.Words.

คลาส [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) ช่วยให้คุณสามารถระบุตัวเลือกสำหรับการทำความสะอาดเอกสารได้ หากต้องการลบรูปแบบที่ซ้ำกันหรือเฉพาะรูปแบบหรือรายการที่ไม่ได้ใช้จากเอกสาร คุณสามารถใช้เมธอด [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) ได้.

## ลบข้อมูลที่ไม่ได้ใช้ออกจากเอกสาร

คุณสามารถใช้คุณสมบัติ[UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles)และ[UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles)เพื่อตรวจหาและลบลักษณะที่ถูกทำเครื่องหมายว่าเป็น"ไม่ได้ใช้".

คุณสามารถใช้คุณสมบัติ[UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists)เพื่อตรวจหาและลบรายการและคำจำกัดความของรายการที่ถูกทำ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบเฉพาะลักษณะที่ไม่ได้ใช้จากเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## ลบข้อมูลที่ซ้ำกันออกจากเอกสาร

นอกจากนี้คุณยังสามารถใช้คุณสมบัติ[DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle)เพื่อแทนที่ลักษณะที่ซ้ำกันทั้งหมดด้วยรูปแบบต้นฉบับและ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาลักษณะที่ซ้ำกันออกจากเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
