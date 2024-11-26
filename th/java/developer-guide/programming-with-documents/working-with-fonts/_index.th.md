---
title: การทำงานกับแบบอักษรในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับแบบอักษร
linktitle: การทำงานกับแบบอักษร
description: "การจัดรูปแบบแบบอักษรในรายละเอียดโดยใช้Java."
type: docs
weight: 230
url: /th/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

แบบอักษรคือชุดอักขระที่มีขนาด สี และการออกแบบเฉพาะ Aspose.Words ช่วยให้คุณสามารถทำงานกับแบบอักษรโดยใช้คลาสต่างๆ ที่เกี่ยวข้องกับแบบอักษร รวมถึงคลาส [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## การจัดรูปแบบแบบอักษร

การจัดรูปแบบแบบอักษรปัจจุบันจะแสดงโดยออบเจกต์**Font**ที่ส่งคืนโดยคุณสมบัติ[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) คลาส**Font**ประกอบด้วยคุณสมบัติแบบอักษรที่หลากหลายที่เป็นไปได้ในMicrosoft Word.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าการจัดรูปแบบแบบอักษร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

กรอกคุณสมบัติในขณะนี้ยังมีแบบอักษรเพื่อตั้งค่าการกรอกข้อมูลการจัดรูปแบบของข้อความ จะช่วยให้ความสามารถในการเปลี่ยนแปลงตัวอย่างเช่นสีเบื้องหน้าหรือความโปร่งใสขอ.

## การเว้นวรรคบรรทัดแบบอักษร

ระยะห่างบรรทัดของแบบอักษรเป็นระยะห่างแนวตั้งระหว่างเส้นขอบของสองบรรทัดติดต่ ว่างระหว่างบรรทัดพร้อมกับความสูงของอักขระเอง.

คุณสมบัติ[LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing)ถูกนำมาใช้ในชั้นเรียน**Font**เพื่อให้ได้ค่านี้ตามที่แสดงในตัวอย่างที่ระบุไว้ด้านล่าง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## แบบอักษรEmphasisMark

คลาส**Font**ให้คุณสมบัติ[EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark)เพื่อรับหรือตั้งค่าEmphasisMarkค่าการแจงนับที่จะนำไปใช้ในการจัดรูปแบบ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติ**EphasisMark**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
