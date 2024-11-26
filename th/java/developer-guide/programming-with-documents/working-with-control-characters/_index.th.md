---
title: การทำงานกับอักขระควบคุม
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับอักขระควบคุม
linktitle: การทำงานกับอักขระควบคุม
description: "แนะนำการทำงานกับอักขระควบคุมในAspose.WordsสำหรับJava."
type: docs
weight: 400
url: /th/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Wordเอกสารอาจประกอบด้วยอักขระต่างๆที่มีความหมายพิเศษ โดยปกติพวกเขาจะใช้สำหรับการจัดรูปแบบวัตถุประสงค์และไม่ได้วาดในโหมดปกติ คุณสามารถทำให้มองเห็นได้ถ้าคุณคลิกปุ่มแสดง/ซ่อนเครื่องหมายการจัดรูปแบบที่อยู่บนแถบ.

บางครั้งคุณอาจต้องเพิ่มหรือลบอักขระไปยัง/จากข้อความ ตัวอย่างเช่นเมื่อได้รับข้อความตามโปรแกรมจากเอกสารAspose.Wordsจะเก็บรักษาอักขระตัวควบคุมส่วนใหญ่ไว้ดังนั้นหากคุณต้องการทำงานกับข้อความนี้คุณควรลบหรือแทนที่อักขระ.

คลาส[ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/)เป็นที่เก็บค่าคงที่ที่แสดงอักขระควบคุมมักพบในเอกสาร มันมีทั้งถ่านและรุ่นสตริงของค่าคงที่เดียวกัน ตัวอย่างเช่นสตริง[LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK)และถ่าน[LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR)มีค่าเดียวกัน.

{{% alert color="primary" %}}

ใช้คลาสนี้เมื่อใดก็ตามที่คุณต้องการจัดการกับอักขระควบคุม.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้อักขระตัวควบคุม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
