---
title: การทำงานกับลิงก์TextBoxesในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับลิงก์TextBoxes
linktitle: การทำงานกับลิงก์TextBoxes
description: "บทนำเกี่ยวกับกล่องข้อความที่เชื่อมโยงคุณลักษณะในAspose.WordsสำหรับJava."
type: docs
weight: 250
url: /th/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

ในAspose.Wordsคลาส[TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/)จะใช้เพื่อระบุวิธีแสดงข้อความภายในรูปร่าง รับกล่องข้อความเพื่อให้ลูกค้าสามารถค้นหาที่เชื่อมโยง[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)จากการเชื่อมโยง**TextBox**.

## สร้างลิงก์

คลาส**TextBox**มีวิธีการ[IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox)เพื่อตรวจสอบว่า**TextBox**สามารถเชื่อมโยงกับเป้าหมาย**Textbox**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบว่า`TextBox`สามารถเชื่อมโยงไปยังกล่องข้อความเป้าห:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## ตรวจสอบTextBoxลำดับ

มีหลายวิธีในการแสดงข้อความในรูปร่าง [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox)อาจเป็นหัวกลางหรือหางของลำดับ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบว่า**TextBox**เป็นหัวหางหรือตรงกลางของลำดับ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## แบ่งการเชื่อมโยง

โดยใช้วิธีการ[BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink)คุณสามารถแบ่งการเชื่อมโยงไปยัง**TextBox**ต่อไป.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแบ่งการเชื่อมโยงสำหรับ**TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
