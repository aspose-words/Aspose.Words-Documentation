---
title: พิมพ์เอเชียในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับตัวอักษรเอเชีย
linktitle: การทำงานกับตัวอักษรเอเชีย
description: "ทำงานร่วมกับตัวอักษรเอเชียโดยใช้Java ปรับช่องว่างระหว่างข้อความเอเชียและภาษาละตินในJava."
type: docs
weight: 240
url: /th/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

พิมพ์เอเชียเป็นชุดของตัวเลือกสำหรับย่อหน้าข้อความในเอกสารที่เขียนในภาษาเอเชีย.

Aspose.Wordsรองรับการพิมพ์เอเชียโดยใช้ชั้นเรียน[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)และบางส่วนของคุณสมบัติของมัน.

## ปรับช่องว่างโดยอัตโนมัติระหว่างข้อความหรือตัวเลขเอเชียและละติน

ลักษณะที่ปรากฏของแม่แบบฟอร์มโดยการควบคุมช่องว่างระหว่างข้อความทั้งสองชนิดคุณส เพื่อให้บรรลุนี้คุณสามารถใช้[AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha)และ[AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit)คุณสมบัติของ`ParagraphFormat`คลาส.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัติ**AddSpaceBetweenFarEastAndAlpha**และ**AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## ตั้งค่าตัวเลือกแบ่งบรรทัด

แท็บการพิมพ์เอเชียของกล่องโต้ตอบคุณสมบัติย่อหน้าในMicrosoft Wordมีกลุ่มแบ่งบรรทัด ตัวเลือกของกลุ่มนี้สามารถตั้งค่าได้โดยใช้[FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) คุณสมบัติของ**ParagraphFormat**ชั้น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัติเหล่านี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## เปลี่ยนระยะห่างย่อหน้าเอเชียและเยื้อง

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปลี่ยนระยะห่างย่อหน้าเอเชียและเยื้อง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
