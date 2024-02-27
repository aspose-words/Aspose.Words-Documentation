---
title: ระบุตัวเลือกเค้าโครงใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ระบุตัวเลือกเค้าโครง
linktitle: ระบุตัวเลือกเค้าโครง
description: "ระบุตัวเลือกเค้าโครงสำหรับเค้าโครงเอกสารต่างๆ โดยใช้ Python"
type: docs
weight: 10
url: /th/python-net/specify-layout-options/
---

Aspose.Words ช่วยให้คุณสร้างเอกสารเอาต์พุตที่มีเค้าโครงต่างๆ ขึ้นอยู่กับพารามิเตอร์ที่ระบุในคุณสมบัติของคลาส [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) คุณสมบัติเหล่านี้บางส่วนมีลักษณะคล้ายกับตัวเลือกเมนูอินเทอร์เฟซผู้ใช้ Microsoft Word บางส่วน ซึ่งจะอธิบายไว้ในบทความนี้

สำหรับรายการพารามิเตอร์ทั้งหมด เช่น [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) เพื่อคำนวณหมายเลขหน้าในส่วนต่อเนื่องที่เริ่มการกำหนดหมายเลขหน้าใหม่ หรือ [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) เพื่อละเว้นตัวเลือกความเข้ากันได้ "ใช้เมตริกเครื่องพิมพ์เพื่อจัดวางเอกสาร" โปรดดูที่หน้าคลาส [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/)

## การจัดรูปแบบเครื่องหมาย

Aspose.Words อนุญาตให้จัดการเครื่องหมายการจัดรูปแบบโดยใช้คุณสมบัติต่อไปนี้:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – ค่า `Boolean` ซึ่งระบุว่าข้อความที่ซ่อนไว้มีการแสดงผลหรือไม่
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – ค่า `Boolean` ซึ่งระบุว่ามีการแสดงผลอักขระเครื่องหมายย่อหน้าหรือไม่

หน้าที่ปรากฎในตัวอย่างด้านล่างมีสามย่อหน้า อันที่สองถูกซ่อนไว้ ผู้ใช้สามารถเปลี่ยนตัวเลือก [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) เพื่อแสดงข้อความที่ซ่อนอยู่นี้บนเพจได้ นอกจากนี้ แต่ละย่อหน้าจะมีเครื่องหมายย่อหน้าต่อท้ายด้วย เครื่องหมายย่อหน้ามักจะไม่สามารถมองเห็นได้เว้นแต่ว่าคุณสมบัติ [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) จะถูกตั้งค่าให้แสดงผล

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

ใน Microsoft Word พารามิเตอร์เหล่านี้ตั้งค่าโดยใช้กล่องโต้ตอบ "ไฟล์ → ตัวเลือก → จอแสดงผล" ดังนี้:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## ความคิดเห็นและการแก้ไข

ด้วย Aspose.Words คุณสามารถแสดงความคิดเห็นในเอกสารที่จะมีลักษณะเหมือนกับใน Microsoft Word หากต้องการระบุว่าจะแสดงความคิดเห็นหรือไม่ ให้ใช้คุณสมบัติ [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/)

ใน Microsoft Word พารามิเตอร์นี้ตั้งค่าโดยใช้กล่องโต้ตอบ "ติดตามการเปลี่ยนแปลงตัวเลือก" ดังที่แสดงด้านล่าง:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

นอกจากนี้ Aspose.Words ยังช่วยให้คุณแสดงการแก้ไขในเอกสารได้ ใช้คุณสมบัติ [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) ของคลาส [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) เพื่อกำหนดว่าจะแสดงการแก้ไขเอกสารหรือไม่ หากต้องการควบคุมลักษณะที่ปรากฏ (สีไฮไลต์การแก้ไข สีแถบการแก้ไข ฯลฯ) ให้ใช้คลาส [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/)

คุณยังสามารถแสดงการแก้ไขเป็นความคิดเห็นต่อเนื้อหาได้ เพื่อจุดประสงค์นี้ ให้ใช้คุณสมบัติ [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) และค่า [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีปรับแต่งการแสดงผลการแก้ไข:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

รูปภาพด้านล่างแสดงวิธีที่ Aspose.Words แสดงความคิดเห็นและการแก้ไขการลบ:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comment_and_revisions_example_aspose_words_net" style="width:800px"/>