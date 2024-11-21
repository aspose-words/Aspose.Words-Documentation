---
title: ชีวประวัติเอเชียใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับชีวประวัติเอเชีย
linktitle: ทํางานกับชีวประวัติเอเชีย
description: "ทํางานกับอักษรเอเชียโดยใช้ Java. ปรับช่องว่างระหว่างข้อความเอเชียกับละติน Java."
type: docs
weight: 240
url: /th/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

ชีวประวัติ ของ ชาว เอเชีย เป็น ทาง เลือก สําหรับ ข้อ ความ ใน เอกสาร ที่ เขียน ใน ภาษา เอเชีย.

Aspose.Words รองรับชีวประวัติเอเชียโดยใช้ [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) ชั้นเรียนและบางส่วนของคุณสมบัติ

## ปรับค่าช่องว่างระหว่างข้อความภาษาเอเชียกับภาษาละตินโดยอัตโนมัติ

ถ้าคุณกําลังออกแบบแม่แบบด้วยทั้งข้อความเอเชียตะวันออกและภาษาละติน และต้องการเพิ่มการปรากฏของต้นแบบรูปแบบของคุณ โดยใช้การควบคุมช่องว่างระหว่างข้อความทั้งสองประเภทนี้ คุณจะสามารถปรับแต่งรูปแบบต้นแบบของคุณให้ปรับช่องว่างระหว่างข้อความทั้งสองชนิดได้โดยอัตโนมัติ เพื่อบรรลุเป้าหมายนี้ [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) ถึง [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) คุณสมบัติของ `ParagraphFormat` ชั้นเรียน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้ **AddSpaceBetweenFarEastAndAlpha** ถึง **AddSpaceBetweenFarEastAndDigit** คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## ตั้งค่าตัวเลือกการหยุดบรรทัด

แท็บ TyPraphic ของกล่องคุณสมบัติย่อหน้าใน Microsoft Word มีกลุ่มหยุดสาย ตั้งค่าตัวเลือกของกลุ่มนี้ได้โดยใช้ [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) คุณสมบัติของ **ParagraphFormat** ชั้นเรียน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัติเหล่านี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## เปลี่ยนระยะเยื้องและระยะเยื้องของเอเชีย

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี เปลี่ยน วรรค ของ ชาว เอเชีย และ ข้อ บกพร่อง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
