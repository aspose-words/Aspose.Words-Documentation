---
title: นำทางด้วยเคอร์เซอร์ในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: นำทางด้วยเคอร์เซอร์
linktitle: นำทางด้วยเคอร์เซอร์
description: "นำทางระหว่างโหนดต่างๆในเอกสารเช่นย่อหน้าบุ๊กมาร์กหรืออักขระเฉพาะโดยใช้Java."
type: docs
weight: 5
url: /th/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

ในขณะที่ทำงานกับเอกสารแม้ว่าจะเป็นหนึ่งสั้นหรือยาวคุณจะต้องนำทางผ่านเอกสารของคุ การนำทางด้วยเคอร์เซอร์เสมือนแสดงถึงความสามารถในการนำทางระหว่างโหนดที่แ.

Withinในเอกสารสั้นๆการเคลื่อนที่ไปมาในเอกสารนั้นง่ายเนื่องจากคุณสามารถย้ายจุดแทรกไ แต่เมื่อคุณมีเอกสารขนาดใหญ่ที่มีหลายหน้า,เทคนิคพื้นฐานเหล่านี้จะไม่เพียงพอ.

บทความนี้อธิบายวิธีการย้ายไปรอบๆในเอกสารและนำทางด้วยเคอร์เซอร์เสมือนไปยังส่วน.

## การตรวจจับตำแหน่งเคอร์เซอร์ปัจจุบัน

ก่อนที่จะเริ่มกระบวนการของการนำทางผ่านเอกสารของคุณ,คุณจะต้องได้รับโหนดที่เลือก คุณสามารถดูตำแหน่งที่แน่นอนของเคอร์เซอร์ที่โหนดที่เลือกได้โดยใช้คุณสมบัติ[CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) นอกจากนี้แทนที่จะได้รับโหนดปัจจุบันคุณจะได้รับย่อหน้าที่เลือกในปัจจุบันหรือส่วนที่เลือกในปัจจุบันโดยใช้คุณสมบัติ[CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph)และ[CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection).

การแทรกการดำเนินการใดๆที่คุณดำเนินการโดยใช้[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)จะถูกแทรกก่อน[CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode) เมื่อย่อหน้าปัจจุบันว่างเปล่าหรือวางเคอร์เซอร์ก่อนสิ้นย่อหน้าการแสดงผล**CurrentNode**เป็นโมฆะ.

## การนำทางเมธอดในเอกสาร

เมื่อคุณกำลังแก้ไขข้อความมันเป็นสิ่งสำคัญที่จะรู้วิธีการนำทางเอกสารของคุณและที่ว่าจะ Aspose.Wordsช่วยให้คุณย้ายไปรอบๆในเอกสารและนำทางไปยังส่วนต่างๆและส่วนต่างๆซึ่งคล้ายกับฟังก์ชันการทำงานของบานหน้าต่างนำทางในMicrosoft Wordเพื่อไปยังหน้าเว็บหรือหัวเรื่องในเอกสารคำโดยไม่ต้องเลื่อน.

วิธีการหลักคือการสามารถย้ายตำแหน่งเคอร์เซอร์ไปยังโหนดเฉพาะในเอกสารของคุณ,คุณสามารถบรรลุนี้โดยใช้วิธีการ[MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีย้าย**DocumentBuilder**ไปยังโหนดต่างๆในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

แต่นอกเหนือจากวิธีพื้นฐาน**MoveTo**ยังมีวิธีที่เฉพาะเจาะจงมากขึ้น.

### ไปที่จุดเริ่มต้นหรือจุดสิ้นสุดของเอกสาร

คุณสามารถไปที่จุดเริ่มต้นหรือจุดสิ้นสุดของเอกสารของคุณโดยใช้วิธีการ[MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)และ[MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังจุดเริ่มต้นหรือจุดสิ้นสุดของ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### นำทางด้วยบุ๊กมาร์ก

คุณสามารถทำเครื่องหมายสถานที่ที่คุณต้องการค้นหาและย้ายไปที่สถานที่นั้นอีกครั้งได้อย่า คุณสามารถแทรกบุ๊กมาร์กลงในเอกสารของคุณได้มากเท่าที่คุณต้องการและจากนั้นนำทาง คุณสามารถย้ายไปยังบุ๊กมาร์กได้โดยใช้วิธีการ[MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังบุ๊กมาร์ก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### ไปที่เซลล์ตาราง

คุณสามารถย้ายไปยังเซลล์ตารางได้โดยใช้วิธีการ[MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) วิธีนี้จะช่วยให้คุณสามารถนำทางเคอร์เซอร์ของคุณไปยังเซลล์ใดๆในตารางที่เฉพาะเจาะจ นอกจากนี้คุณสามารถระบุดัชนีเพื่อเลื่อนเคอร์เซอร์ไปยังตำแหน่งใดๆหรืออักขระที่ระบุในเซลล์ภายในวิธีการ**MoveToCell**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังเซลล์ตารางที่ระบุ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### นำทางไปยังฟิลด์

คุณสามารถย้ายไปยังฟิลด์เฉพาะในเอกสารของคุณได้โดยใช้วิธีการ[MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) นอกจากนี้คุณสามารถย้ายไปยังฟิลด์ผสานเฉพาะโดยใช้วิธีการ[MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายเคอร์เซอร์ตัวสร้างเอกสารไปยังเขตข้อมูลเฉพาะ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### ไปที่ส่วนหัวหรือส่วนท้าย

คุณสามารถย้ายไปยังจุดเริ่มต้นของส่วนหัวหรือท้ายกระดาษได้โดยใช้วิธีการ[MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายเคอร์เซอร์ตัวสร้างเอกสารไปยังส่วนหัวของเอกสา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### ไปยังส่วนหรือย่อหน้า

คุณสามารถย้ายไปยังส่วนหรือย่อหน้าโดยใช้วิธีการ[MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int)หรือ[MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) นอกจากนี้คุณสามารถระบุดัชนีเพื่อเลื่อนเคอร์เซอร์ไปยังตำแหน่งใดๆหรืออักขระที่ระบุในย่อหน้าภายในวิธีการ**MoveToParagraph**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้ายไปยังส่วนที่เฉพาะเจาะจงและย่อหน้าเฉพาะในเอก:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
