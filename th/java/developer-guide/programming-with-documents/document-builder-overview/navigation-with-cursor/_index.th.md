---
title: การนําทางด้วยเคอร์เซอร์ Java
second_title: Aspose.Words สําหรับ Java
articleTitle: การนําทางด้วยเคอร์เซอร์
linktitle: การนําทางด้วยเคอร์เซอร์
description: "แยกระหว่างโหนดที่แตกต่างกันภายในเอกสาร เช่น วรรค, คั่นหน้า, หรืออักขระเฉพาะที่ใช้ Java."
type: docs
weight: 5
url: /th/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

ขณะ ที่ ทํา งาน กับ เอกสาร แม้ จะ สั้น หรือ ยาว คุณ ก็ จําเป็น ต้อง ตรวจ สอบ เอกสาร ของ คุณ. การนําทางด้วยเคอร์เซอร์เสมือน จะแสดงถึงความสามารถในการนําทางระหว่างโหนดต่างๆ ในเอกสาร

ภายในเอกสารสั้น ๆ การย้ายรอบ ๆ ในเอกสารเป็นง่ายเป็นคุณสามารถย้ายจุดแทรก แม้จะใช้ปุ่มลูกศรของแป้นพิมพ์ หรือ โดยการคลิกเมาส์เพื่อระบุตําแหน่งจุดแทรกที่ใดก็ตามที่คุณต้องการ แต่เมื่อคุณมีเอกสารขนาดใหญ่ที่มีหลายหน้า เทคนิคพื้นฐานเหล่านี้จะไม่เพียงพอ

บทความ นี้ อธิบาย วิธี ที่ จะ ย้าย ไป อยู่ ใน เอกสาร และ นํา ทาง โดย ใช้ เคอร์เซอร์ จริง ๆ ไป ยัง ส่วน ต่าง ๆ ของ เอกสาร.

## กําลังตรวจหาตําแหน่งของเคอร์เซอร์ปัจจุบัน

ก่อนที่จะเริ่มประมวลผลผ่านเอกสารของคุณ คุณจะต้องได้รับโหนดที่เลือกในปัจจุบัน คุณสามารถหาตําแหน่งของเคอร์เซอร์ที่โหนดที่เลือกได้โดยการใช้ [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) ทรัพย์สิน นอกจากนี้ แทนที่จะได้รับโหนดปัจจุบัน คุณสามารถหาส่วนที่เลือกไว้ในปัจจุบันได้ โดยการใช้ [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) ถึง [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) คุณสมบัติ

การแทรกใด ๆ ที่คุณทําโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) จะถูกแทรกก่อนที่จะ [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). เมื่อย่อหน้าปัจจุบันว่าง หรือตําแหน่งเคอร์เซอร์ ก่อนที่จะจบย่อหน้า **CurrentNode** กลับมาเป็นโมฆะ

## วิธี การ ที่ ใช้ ใน เอกสาร

เมื่อ คุณ กําลัง แก้ไข ข้อ ความ เป็น เรื่อง สําคัญ ที่ จะ รู้ วิธี นํา ทาง เอกสาร ของ คุณ และ จะ ย้าย ไป อยู่ ที่ ไหน จริง ๆ. Aspose.Words อนุญาตให้คุณได้ย้ายรอบ ๆ ในเอกสารและนําทางไปยังส่วนต่าง ๆ และส่วนต่าง ๆ ของมัน -- นี่คล้ายกับความสามารถของการนําทาง Pane ใน Microsoft Word เพื่อไปที่หน้าหนึ่ง หรือมุ่งหน้าในเอกสารพระวจนะโดยไม่เลื่อน

วิธีการหลักคือสามารถย้ายตําแหน่งเคอร์เซอร์ไปยังโหนดเฉพาะในเอกสารของคุณ คุณสามารถทําได้โดยการใช้ [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) วิธี

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการย้าย **DocumentBuilder** ไปยังโหนดที่แตกต่างกันในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

แต่นอกเหนือจากพื้นฐาน **MoveTo** วิธี นี้ มี วิธี ที่ เจาะจง กว่า.

### นํา ไป สู่ จุด เริ่ม ต้น หรือ จุด จบ ของ เอกสาร

คุณสามารถไปยังตอนต้นหรือท้ายเอกสารของคุณโดยใช้ [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) ถึง [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) วิธี

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีย้ายตําแหน่งเคอร์เซอร์ไปยังจุดเริ่มต้นหรือส่วนท้ายของเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### นํากลับมาใช้ที่คั่นหน้า

คุณสามารถทําเครื่องหมายสถานที่ที่คุณต้องการที่จะหาและย้ายไปอีกครั้งอย่างง่ายดาย คุณสามารถแทรกที่คั่นหน้าจํานวนมากเข้าไปในเอกสารของคุณได้ตามที่คุณต้องการ แล้วนํามันผ่านมันได้ โดยการระบุที่คั่นหน้าด้วยชื่อเฉพาะ คุณสามารถย้ายไปยังที่คั่นหน้าได้โดยการใช้ [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) วิธี

ตัวอย่างโค้ดต่อไปนี้แสดงถึงวิธีย้ายตําแหน่งเคอร์เซอร์ไปยังที่คั่นหน้า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### นํามายังตารางเซลล์

คุณสามารถย้ายไปยังเซลล์ตารางโดยการใช้ [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) วิธี วิธีการนี้จะอนุญาตให้คุณนําเคอร์เซอร์ของคุณไปยังเซลล์ใด ๆ ในตารางที่กําหนด คุณสามารถกําหนดดัชนีเพื่อย้ายเคอร์เซอร์ไปยังตําแหน่งใด ๆ หรือใช้ตัวอักษรใด ๆ ในเซลล์ภายใน **MoveToCell** วิธี

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีย้ายตําแหน่งเคอร์เซอร์ไปยังเซลล์ตารางที่ระบุ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### นํา ไป สู่ ทุ่ง นา

คุณสามารถย้ายไปยังช่องข้อมูลเฉพาะในเอกสารของคุณได้ โดยใช้ [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) วิธี นอกจากนี้คุณสามารถย้ายไปสนามรวมเฉพาะโดยการใช้ [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) วิธี

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีย้ายเคอร์เซอร์ตัวสร้างเอกสารไปยังช่องข้อมูลเฉพาะ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### นํากลับมาใช้ส่วนหัวหรือท้ายกระดาษ

คุณสามารถย้ายไปยังจุดเริ่มต้นของส่วนหัวหรือท้ายกระดาษได้ โดยใช้ [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) วิธี

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการย้ายตัวชี้ของเอกสารไปยังหัวกระดาษหรือตัวท้ายเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### นํามายังส่วนหรือย่อหน้า

คุณสามารถย้ายไปในส่วนหรือย่อหน้าเฉพาะได้ โดยใช้ [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) หรือ [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) วิธี คุณสามารถกําหนดดัชนีเพื่อย้ายเคอร์เซอร์ไปยังตําแหน่งใด ๆ หรือตัวอักษรใด ๆ ในย่อหน้าภายใน **MoveToParagraph** วิธี

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ ย้าย ไป ยัง ส่วน ใด ตอน หนึ่ง โดย เฉพาะ และ วรรค หนึ่ง เฉพาะ ใน เอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
