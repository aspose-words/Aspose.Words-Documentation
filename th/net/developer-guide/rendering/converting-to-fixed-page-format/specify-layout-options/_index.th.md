---
title: ระบุตัวเลือกเค้าโครงใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ระบุตัวเลือกเค้าโครง
linktitle: ระบุตัวเลือกเค้าโครง
description: "ระบุตัวเลือกเค้าโครงสำหรับเค้าโครงเอกสารต่างๆ โดยใช้ C#"
type: docs
weight: 10
url: /th/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words ช่วยให้คุณสร้างเอกสารเอาต์พุตที่มีเค้าโครงต่างๆ ขึ้นอยู่กับพารามิเตอร์ที่ระบุในคุณสมบัติของคลาส [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) คุณสมบัติเหล่านี้บางส่วนมีลักษณะคล้ายกับตัวเลือกเมนูอินเทอร์เฟซผู้ใช้ Microsoft Word บางส่วน ซึ่งจะอธิบายไว้ในบทความนี้

สำหรับรายการพารามิเตอร์ทั้งหมด เช่น [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) เพื่อคำนวณหมายเลขหน้าในส่วนต่อเนื่องที่เริ่มการกำหนดหมายเลขหน้าใหม่ หรือ [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) เพื่อละเว้นตัวเลือกความเข้ากันได้ "ใช้เมตริกเครื่องพิมพ์เพื่อจัดวางเอกสาร" โปรดดูที่หน้าคลาส [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/)

## การจัดรูปแบบเครื่องหมาย

Aspose.Words อนุญาตให้จัดการเครื่องหมายการจัดรูปแบบโดยใช้คุณสมบัติต่อไปนี้:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) – ค่า `Boolean` ซึ่งระบุว่าข้อความที่ซ่อนไว้มีการแสดงผลหรือไม่
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – ค่า `Boolean` ซึ่งระบุว่ามีการแสดงผลอักขระเครื่องหมายย่อหน้าหรือไม่

หน้าที่ปรากฎในตัวอย่างด้านล่างมีสามย่อหน้า อันที่สองถูกซ่อนไว้ ผู้ใช้สามารถเปลี่ยนตัวเลือก **ShowHiddenText** เพื่อแสดงข้อความที่ซ่อนอยู่นี้บนเพจได้ นอกจากนี้ แต่ละย่อหน้าจะมีเครื่องหมายย่อหน้าต่อท้ายด้วย เครื่องหมายย่อหน้ามักจะไม่สามารถมองเห็นได้เว้นแต่ว่าคุณสมบัติ **ShowParagraphMarks** จะถูกตั้งค่าให้แสดงผล

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

ใน Microsoft Word พารามิเตอร์เหล่านี้ตั้งค่าโดยใช้กล่องโต้ตอบ "ไฟล์ → ตัวเลือก → จอแสดงผล" ดังนี้:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## ความคิดเห็นและการแก้ไข

ด้วย Aspose.Words คุณสามารถแสดงความคิดเห็นในเอกสารที่จะมีลักษณะเหมือนกับใน Microsoft Word หากต้องการระบุว่าจะแสดงความคิดเห็นหรือไม่ ให้ใช้คุณสมบัติ [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/)

ใน Microsoft Word พารามิเตอร์นี้ตั้งค่าโดยใช้กล่องโต้ตอบ "ติดตามการเปลี่ยนแปลงตัวเลือก" ดังที่แสดงด้านล่าง:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

นอกจากนี้ Aspose.Words ยังช่วยให้คุณแสดงการแก้ไขในเอกสารได้ ใช้คุณสมบัติ [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) ของคลาส **LayoutOptions** เพื่อกำหนดว่าจะแสดงการแก้ไขเอกสารหรือไม่ หากต้องการควบคุมลักษณะที่ปรากฏ (สีไฮไลต์การแก้ไข สีแถบการแก้ไข ฯลฯ) ให้ใช้คลาส [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/)

คุณยังสามารถแสดงการแก้ไขเป็นความคิดเห็นต่อเนื้อหาได้ เพื่อจุดประสงค์นี้ ให้ใช้คุณสมบัติ [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) และค่า [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีปรับแต่งการแสดงผลการแก้ไข:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

รูปภาพด้านล่างแสดงวิธีที่ Aspose.Words แสดงความคิดเห็นและการแก้ไขการลบ:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comment_and_revisions_example_aspose_words_net" style="width:800px"/>

## Text Shaper สำหรับการแสดงตัวอักษรขั้นสูง

คุณสมบัติ [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) ช่วยให้คุณสามารถตั้งค่าฟังก์ชันการสร้างข้อความ รวมถึงการสนับสนุนคุณลักษณะ `OpenType`

ใช้การจัดรูปแบบข้อความสำหรับการประมวลผลเอกสารในกรณีหลักต่อไปนี้:

- เอกสารใช้ Kerning, Numeral Shaping, Numeral Forms หรือ Ligatures
- เอกสารใช้สคริปต์ที่ซับซ้อน เช่น อารบิก เขมร ไทย เป็นต้น

{{% alert color="primary" %}}

การจัดรูปแบบข้อความจะเปิดใช้งานเฉพาะเมื่อส่งออกเอกสารเป็น PDF หรือ XPS

{{% /alert %}}
