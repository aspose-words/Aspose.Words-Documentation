---
title: ระบุตัวเลือกเค้าโครงในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ระบุตัวเลือกเค้าโครง
linktitle: ระบุตัวเลือกเค้าโครง
description: "ระบุตัวเลือกเค้าโครงสำหรับรูปแบบเอกสารต่างๆ."
type: docs
weight: 20
url: /th/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsช่วยให้คุณสามารถสร้างเอกสารที่ส่งออกด้วยรูปแบบต่างๆ,ขึ้นอยู่กับพารามิเตอร์ที่ระบุไว้ในคุณสมบัติ[LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options)ของ**Document**. คุณสมบัตินี้คล้ายกับตัวเลือกเมนูส่วนติดต่อผู้ใช้Microsoft Wordที่อธิบายไว้ในบทความนี้.

สำหรับรายการพารามิเตอร์ที่สมบูรณ์เช่น[ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/)ในการคำนวณหมายเลขหน้าในส่วนที่ต่อเนื่องซึ่งรีสตาร์ทหมายเลขหน้าหรือ[IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/)เพื่อละเว้นตัวเลือก"ใช้เมตริกของเครื่องพิมพ์เพื่อจัดวางเอกสาร"โปรดดูที่หน้า[LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options)ชั้น.

## การตั้งค่า

Aspose.Wordsอนุญาตให้จัดการเครื่องหมายการจัดรูปแบบโดยใช้คุณสมบัติต่อไปนี้:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/)–ค่า`Boolean`ซึ่งระบุว่าข้อความที่ซ่อนถูกแสดงผลหรือไม่.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/)–ค่า`Boolean`ซึ่งระบุว่ามีการแสดงอักขระเครื่องหมายย่อหน้าหรือไม่.

หน้าที่แสดงในตัวอย่างด้านล่างมีสามย่อหน้า อันที่สองถูกซ่อนไว้ ผู้ใช้สามารถเปลี่ยนตัวเลือก**ShowHiddenText**เพื่อแสดงข้อความที่ซ่อนอยู่นี้บนหน้าเว็บ ย่อหน้าแต่ละย่อหน้ามีเครื่องหมายย่อหน้าในตอนท้าย มักจะไม่ปรากฏเครื่องหมายย่อหน้าเว้นแต่จะมีการตั้งค่าพร็อพเพอร์ตี้**ShowParagraphMarks**เพื่อแสดงผล.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

ในMicrosoft Wordพารามิเตอร์เหล่านี้ถูกตั้งค่าโดยใช้กล่องโต้ตอบ"ตัวเลือก→แฟ้ม Display แสดง"ดังนี้:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## ความคิดเห็นและการแก้ไข

ด้วยAspose.Wordsคุณสามารถแสดงความคิดเห็นเอกสารที่จะมีลักษณะเช่นเดียวกับในMicrosoft Word เมื่อต้องการระบุว่ามีการแสดงความคิดเห็นหรือไม่ให้ใช้คุณสมบัติ[CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

ในMicrosoft Wordพารามิเตอร์นี้ถูกตั้งค่าโดยใช้กล่องโต้ตอบ"ติดตามการเปลี่ยนแปลงตัวเลือก"ดังแสดงด้านล่าง:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

นอกจากนี้Aspose.Wordsอนุญาตให้คุณแสดงการแก้ไขในเอกสาร ใช้คุณสมบัติ[RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/)ของคลาสของ**LayoutOptions**เพื่อกำหนดว่าการแก้ไขเอกสารจะแสดงขึ้นหรือไม่ เพื่อควบคุมลักษณะของพวกเขา(การแก้ไขสีเน้นสีแถบการแก้ไขฯลฯ),ใช้[RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/)ชั้น.

นอกจากนี้คุณยังสามารถมีการแก้ไขแสดงเป็นความคิดเห็นเนื้อหา เพื่อจุดประสงค์นี้ใช้คุณสมบัติ[CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/)และ[ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/)ค่า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับแต่งการแสดงการแก้ไข:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

ภาพด้านล่างแสดงวิธีแสดงความคิดเห็นAspose.Wordsและการลบการแก้ไข:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## สร้างข้อความสำหรับการแสดงผลการพิมพ์ขั้นสูง

คุณสมบัติ [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) ช่วยให้คุณสามารถตั้งค่าฟังก์ชันการจัดรูปแบบข้อความ รวมถึงการรองรับคุณสมบัติ `OpenType`.

ใช้การสร้างข้อความสำหรับการประมวลผลเอกสารในกรณีหลักต่อไปนี้:

- เอกสารที่ใช้เคิร์นนิงการสร้างตัวเลขแบบฟอร์มตัวเลขหรือมัด.
- เอกสารที่ใช้สคริปต์ที่ซับซ้อนเช่นอาหรับเขมรไทยฯลฯ.

{{% alert color="primary" %}}

การสร้างข้อความจะเปิดใช้งานเฉพาะเมื่อส่งออกเอกสารไปยังPDFหรือXPS.

{{% /alert %}}
