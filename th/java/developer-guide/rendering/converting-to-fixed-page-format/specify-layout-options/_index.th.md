---
title: ตัวเลือกต่าง ๆ ของการจัดวางใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ตัวเลือกต่าง ๆ ของการจัดวาง
linktitle: ตัวเลือกต่าง ๆ ของการจัดวาง
description: "สร้างเอกสารผลลัพธ์ด้วยผังแป้นพิมพ์ต่าง ๆ ขึ้นอยู่กับพารามิเตอร์ที่กําหนดไว้ในเอกสารโดยใช้ Java."
type: docs
weight: 10
url: /th/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words ให้คุณได้สร้างเอกสารผลลัพธ์ด้วยผังแป้นพิมพ์ต่าง ๆ ขึ้นอยู่กับพารามิเตอร์ที่กําหนดไว้ใน [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) สมบัติของ **Document**. ทรัพย์สินนี้คล้ายกับ Microsoft Word ตัวเลือกสําหรับส่วนติดต่อผู้ใช้ที่อธิบายในข่าวนี้

สําหรับรายการของพารามิเตอร์ที่สมบูรณ์เช่น [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) เพื่อคํานวณหมายเลขหน้า ในส่วนต่อเนื่องที่เริ่มการทํางานหน้าใหม่ หรือ [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) ไม่สนใจตัวเลือกความเข้ากันได้ของ "ตัววัดเครื่องพิมพ์ที่ใช้เพื่อวางเอกสาร" ดูที่กล่อง [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) หน้าเรียน

## กําลังฟอร์แมตสัญลักษณ์

Aspose.Words อนุญาตให้จัดการการฟอร์แมตภาพโดยใช้คุณสมบัติต่อไปนี้ได้:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - `Boolean` ใช้กําหนดว่าจะให้ข้อความซ่อนอยู่หรือไม่
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - `Boolean` ค่าที่ใช้กําหนดว่าจะให้แปลอักขระของย่อหน้าหรือไม่

หน้า ถัด ไป คือ ตัว อย่าง ข้าง ล่าง มี สาม วรรค. อันที่สองถูกซ่อน ผู้ใช้สามารถเปลี่ยน **ShowHiddenText** ตัวเลือกสําหรับแสดงข้อความซ่อนนี้บนหน้าเว็บ นอก จาก นั้น ใน ตอน ท้าย วรรค แต่ ละ ข้อ มี เครื่องหมาย วรรค. ย่อหน้าปกติไม่สามารถมองเห็นได้นอกจาก **ShowParagraphMarks** มี การ กําหนด ที่ ดิน เพื่อ จะ แปล.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

ใน Microsoft Word, พารามิเตอร์เหล่านี้ถูกตั้งค่าให้ใช้กล่องโต้ตอบ "แฟ้ม ○ ตัวเลือก การแสดงผล" ดังต่อไปนี้:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## คํา อธิบาย และ การ ทบทวน

ด้วย Aspose.Words, คุณสามารถแสดงหมายเหตุของเอกสารที่จะมีลักษณะเช่นเดียวกับใน Microsoft Word. เพื่อกําหนดว่าจะให้มีการแสดงผลหรือไม่ ให้ใช้ [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) ทรัพย์สิน

ใน Microsoft Word, พารามิเตอร์นี้ถูกตั้งค่าโดยใช้กล่อง "ตัวเลือกการเปลี่ยนตัวแปร" ดังแสดงด้านล่างนี้:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

แล้วก็ Aspose.Words ให้คุณได้แสดงการแก้ไขในเอกสาร ใช้ [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) สมบัติของ **LayoutOptions** คลาสที่จะกําหนดว่าจะให้แสดงการปรับปรุงเอกสารหรือไม่ เพื่อควบคุมรูปลักษณ์ (แสดงสี, สีแถบแก้ไข เป็นต้น) ใช้ [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) ชั้นเรียน.

นอก จาก นี้ คุณ อาจ มี การ แสดง ฉบับ ปรับ ปรุง ต่าง ๆ ที่ แสดง ให้ เห็น ว่า เป็น การ ให้ ความ เห็น แก่ เนื้อหา. เพื่อวัตถุประสงค์นี้ ใช้ [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) คุณสมบัติและ [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) มูลค่า

ตัวอย่างรหัสต่อไปนี้แสดงวิธีปรับแต่งการแสดงผล:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

ภาพด้านล่างนี้แสดงให้เห็นว่า Aspose.Words แสดงความคิดเห็นและการลบรุ่น:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## ตัวแปลงข้อความสําหรับแสดงกราฟแสดงความถี่ขั้นสูง

เดอะ [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) คุณสมบัติต่าง ๆ ช่วยให้คุณตั้งค่าโครงสร้างข้อความได้ เช่นเดียวกับ `OpenType` การสนับสนุนพิเศษ

ใช้โครงสร้างข้อความสําหรับการประมวลผลเอกสาร ในกรณีหลักต่อไปนี้:

- เอกสารใช้ Kerning, Numeral Shamping, Numeral Forms หรือ Ligatives.
- เอกสารใช้อักษรคอมพลิเน็กซ์ เช่น อารบิก เขมร ไทย ฯลฯ

{{% alert color="primary" %}}

รูปแบบการแปลงข้อความ จะเปิดใช้เฉพาะเมื่อมีการส่งออกเอกสารไปยัง PDF หรือ XPS.

{{% /alert %}}
