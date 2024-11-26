---
title: ระบุตัวเลือกเค้าโครงในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ระบุตัวเลือกเค้าโครง
linktitle: ระบุตัวเลือกเค้าโครง
description: "สร้างเอกสารที่ส่งออกด้วยเค้าโครงต่างๆขึ้นอยู่กับพารามิเตอร์ที่ระบุในเอกสารโดยใช้Java."
type: docs
weight: 10
url: /th/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsช่วยให้คุณสามารถสร้างเอกสารที่ส่งออกด้วยรูปแบบต่างๆ,ขึ้นอยู่กับพารามิเตอร์ที่ระบุไว้ในคุณสมบัติ[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)ของ**Document**. คุณสมบัตินี้คล้ายกับตัวเลือกเมนูส่วนติดต่อผู้ใช้Microsoft Wordที่อธิบายไว้ในบทความนี้.

สำหรับรายการพารามิเตอร์ที่สมบูรณ์เช่น[ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart)ในการคำนวณหมายเลขหน้าในส่วนที่ต่อเนื่องซึ่งรีสตาร์ทหมายเลขหน้าหรือ[IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics)เพื่อละเว้นตัวเลือก"ใช้เมตริกของเครื่องพิมพ์เพื่อจัดวางเอกสาร"โปรดดูที่หน้า[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)ชั้น.

## การตั้งค่า

Aspose.Wordsอนุญาตให้จัดการเครื่องหมายการจัดรูปแบบโดยใช้คุณสมบัติต่อไปนี้:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText)–ค่า`Boolean`ซึ่งระบุว่าข้อความที่ซ่อนถูกแสดงผลหรือไม่.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks)–ค่า`Boolean`ซึ่งระบุว่ามีการแสดงอักขระเครื่องหมายย่อหน้าหรือไม่.

หน้าที่แสดงในตัวอย่างด้านล่างมีสามย่อหน้า อันที่สองถูกซ่อนไว้ ผู้ใช้สามารถเปลี่ยนตัวเลือก**ShowHiddenText**เพื่อแสดงข้อความที่ซ่อนอยู่นี้บนหน้าเว็บ ย่อหน้าแต่ละย่อหน้ามีเครื่องหมายย่อหน้าในตอนท้าย มักจะไม่ปรากฏเครื่องหมายย่อหน้าเว้นแต่จะมีการตั้งค่าพร็อพเพอร์ตี้**ShowParagraphMarks**เพื่อแสดงผล.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

ในMicrosoft Wordพารามิเตอร์เหล่านี้ถูกตั้งค่าโดยใช้กล่องโต้ตอบ"ตัวเลือก→แฟ้ม Display แสดง"ดังนี้:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## ความคิดเห็นและการแก้ไข

ด้วยAspose.Wordsคุณสามารถแสดงความคิดเห็นเอกสารที่จะมีลักษณะเช่นเดียวกับในMicrosoft Word เมื่อต้องการระบุว่ามีการแสดงความคิดเห็นหรือไม่ให้ใช้คุณสมบัติ[ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

ในMicrosoft Wordพารามิเตอร์นี้ถูกตั้งค่าโดยใช้กล่องโต้ตอบ"ติดตามการเปลี่ยนแปลงตัวเลือก"ดังแสดงด้านล่าง:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

นอกจากนี้Aspose.Wordsอนุญาตให้คุณแสดงการแก้ไขในเอกสาร ใช้คุณสมบัติ[RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions)ของคลาสของ**LayoutOptions**เพื่อกำหนดว่าการแก้ไขเอกสารจะแสดงขึ้นหรือไม่ เพื่อควบคุมลักษณะของพวกเขา(การแก้ไขสีเน้นสีแถบการแก้ไขฯลฯ),ใช้[RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/)ชั้น.

นอกจากนี้คุณยังสามารถมีการแก้ไขแสดงเป็นความคิดเห็นเนื้อหา เพื่อจุดประสงค์นี้ใช้คุณสมบัติ[CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode)และ[ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/)ค่า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับแต่งการแสดงการแก้ไข:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

ภาพด้านล่างแสดงวิธีแสดงความคิดเห็นAspose.Wordsและการลบการแก้ไข:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## สร้างข้อความสำหรับการแสดงผลการพิมพ์ขั้นสูง

คุณสมบัติ[TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/)ช่วยให้คุณสามารถตั้งค่าฟังก์ชันการสร้างข้อความเช่นเดียวกับการสนับสนุนคุณลักษณะ`OpenType`.

ใช้การสร้างข้อความสำหรับการประมวลผลเอกสารในกรณีหลักต่อไปนี้:

- เอกสารที่ใช้เคิร์นนิงการสร้างตัวเลขแบบฟอร์มตัวเลขหรือมัด.
- เอกสารที่ใช้สคริปต์ที่ซับซ้อนเช่นอาหรับเขมรไทยฯลฯ.

{{% alert color="primary" %}}

การสร้างข้อความจะเปิดใช้งานเฉพาะเมื่อส่งออกเอกสารไปยังPDFหรือXPS.

{{% /alert %}}
