---
title: การทำงานกับย่อหน้าในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับย่อหน้า
linktitle: การทำงานกับย่อหน้า
description: "แนวทางปฏิบัติในการจัดการโหนดย่อหน้าโดยใช้Java."
type: docs
weight: 210
url: /th/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

ย่อหน้าคือชุดของอักขระรวมกันเป็นบล็อกตรรกะและลงท้ายด้วยอักขระพิเศษ-*paragraph break* ในAspose.Wordsย่อหน้าจะแสดงโดยคลาสของ[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

## การแทรกย่อหน้า

ในการแทรกย่อหน้าใหม่ลงในเอกสารในความเป็นจริงคุณจะต้องแทรกตัวละครแบ่งย่อหน้า [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln)แทรกไม่เพียงแต่สตริงข้อความในเอกสารเท่านั้นแต่ยังเพิ่มการแบ่งย่อหน้าด้วย.

การจัดรูปแบบแบบอักษรปัจจุบันจะถูกระบุโดยคุณสมบัติ[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)และการจัดรูปแบบย่อหน้าปัจจุบันจะถูกกำหนดโดยคุณสมบัติ[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) ในส่วนถัดไป,เราจะไปลงรายละเอียดเพิ่มเติมเกี่ยวกับการจัดรูปแบบย่อหน้า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกย่อหน้าลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## รูปแบบย่อหน้า

การจัดรูปแบบย่อหน้าปัจจุบันจะแสดงโดยออบเจกต์[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)ที่ถูกส่งคืนโดยคุณสมบัติ[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) วัตถุนี้ประกอบด้วยคุณสมบัติการจัดรูปแบบย่อหน้าต่างๆที่มีอยู่ในMicrosoft Word คุณสามารถรีเซ็ตการจัดรูปแบบของย่อหน้าให้เป็นค่าเริ่มต้นได้ง่ายๆเช่นรูปแบบปกติ,จัดชิดซ้าย,ไม่มีการเยื้อง,ไม่มีการเว้นวรรค,ไม่มีเส้นขอบ,ไม่มีการแรเงา-โดยการโทร[ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าการจัดรูปแบบย่อหน้า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## ใช้สไตล์ย่อหน้า

บางรูปแบบวัตถุเช่นแบบอักษรหรือParagraphFormatรูปแบบการสนับสนุน สไตล์ที่ผู้ใช้กำหนดในตัวเดียวจะแสดงโดยออบเจกต์[Style](https://reference.aspose.com/words/java/com.aspose.words/style/)ที่มีคุณสมบัติลักษณะที่สอดคล้องกันเช่น.

นอกจากนี้ออบเจกต์**Style**มีคุณสมบัติ[StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier)ที่ส่งคืนตัวระบุสไตล์อิสระโลแคลที่แสดงโดยค่าการแจงนับ**StyleIdentifier** ประเด็นคือชื่อของลักษณะในตัวในMicrosoft Wordเป็นภาษาท้องถิ่นสำหรับภาษาที่แตกต่างกัน ใช้ตัวระบุลักษณะคุณสามารถค้นหาลักษณะที่ถูกต้องโดยไม่คำนึงถึงภาษาของเอกสาร ค่าการแจงนับสอดคล้องกับรูปแบบในตัวMicrosoft Wordเช่น*Normal*, *Heading 1*, *Heading 2*, ฯลฯ รูปแบบที่ผู้ใช้กำหนดทั้งหมดจะถูกกำหนด**StyleIdentifier.User value**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้ลักษณะย่อหน้า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## แทรกตัวคั่นสไตล์ที่จะนำรูปแบบที่แตกต่างกันย่อหน้า

สามารถเพิ่มตัวคั่นลักษณะไปยังส่วนท้ายของย่อหน้าได้โดยใช้แป้นพิมพ์ลัดMSคำ คุณลักษณะนี้ช่วยให้ลักษณะย่อหน้าต่างๆสองใช้ในย่อหน้าตรรกะหนึ่งพิมพ์ ถ้าคุณต้องการให้ข้อความบางส่วนจากจุดเริ่มต้นของหัวข้อเฉพาะปรากฏในตารางของเนื้อ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกตัวคั่นลักษณะเพื่อรองรับลักษณะย่อหน้าต่าง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## ใช้เส้นขอบและการแรเงากับย่อหน้า

เส้นขอบในAspose.Wordsจะแสดงโดย[BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/)คลาส-นี่คือคอลเลกชันของ[Border](https://reference.aspose.com/words/java/com.aspose.words/border/)ออบเจกต์ที่เข้าถึงได้โดยดัชนีหรือตาม ประเภท`Border`จะแสดงโดยการแจงนับ[BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) ค่าบางอย่างของการนับมีผลบังคับใช้กับหลายหรือเพียงองค์ประกอบเอกสารหนึ่ง ตัวอย่างเช่น**BorderType.Bottom**ใช้ได้กับย่อหน้าหรือเซลล์ตารางในขณะที่**BorderType.DiagonalDown**ระบุขอบเส้นทแยงมุมในเซลล์ตาราง.

ทั้งคอลเลกชันชายแดนและแต่ละชายแดนแยกต่างหากมีคุณลักษณะที่คล้ายกันเช่นสีลักษณะเส้ คุณสมบัติของชื่อเดียวกัน คุณสามารถบรรลุประเภทเส้นขอบที่แตกต่างกันโดยการรวมค่าคุณสมบัติ นอกจากนี้วัตถุทั้ง**BorderCollection**และ**Border**ช่วยให้คุณสามารถรีเซ็ตค่าเหล่านี้เป็นค่าเริ่มต้นโดยการเรียกวิธีการ[ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting).

{{% alert color="primary" %}}

โปรดทราบว่าเมื่อรีเซ็ตคุณสมบัติเส้นขอบเป็นค่าเริ่มต้นเส้นขอบจะมองไม่เห็น.

{{% /alert %}}

Aspose.Wordsนอกจากนี้ยังมี[Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/)ชั้นมีแอตทริบิวต์การแรเงาสำหรับองค์ประกอบของเอกสาร คุณสามารถตั้งค่าพื้นผิวการแรเงาที่ต้องการและสีที่ใช้กับพื้นหลังและเบื้องหน้าขององค์ป.

พื้นผิวการแรเงาถูกตั้งค่าด้วยค่าการแจงนับ[TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/)ที่อนุญาตให้มีการประยุกต์ใช้รูปแบบต่างๆกับวัตถุ**Shading** ตัวอย่างเช่นในการตั้งค่าสีพื้นหลังสำหรับองค์ประกอบเอกสารให้ใช้ค่า`TextureIndex.TextureSolid`และตั้งค่าสีแรเงา ตัวอย่างรหัสที่ระบุไว้ด้านล่างแสดงวิธีการใช้เส้นขอบและการแรเงากับย่อหน้า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้เส้นขอบและการแรเงากับย่อหน้า:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
