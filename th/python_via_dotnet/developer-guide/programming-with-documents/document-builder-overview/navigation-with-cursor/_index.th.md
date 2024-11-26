---
title: การนำทางด้วยเคอร์เซอร์ใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การนำทางด้วยเคอร์เซอร์
linktitle: การนำทางด้วยเคอร์เซอร์
description: "นำทางระหว่างโหนดต่างๆ ภายในเอกสาร เช่น ย่อหน้า บุ๊กมาร์ก หรืออักขระเฉพาะโดยใช้ Python"
type: docs
weight: 10
url: /th/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

ในขณะที่ทำงานกับเอกสาร แม้ว่าจะเป็นเอกสารสั้นหรือยาว คุณจะต้องเลื่อนดูเอกสารของคุณ การนำทางด้วยเคอร์เซอร์เสมือนแสดงถึงความสามารถในการนำทางระหว่างโหนดต่างๆ ในเอกสาร

ภายในเอกสารสั้นๆ การเคลื่อนย้ายเอกสารทำได้ง่าย เนื่องจากคุณสามารถย้ายจุดแทรกได้โดยใช้ปุ่มลูกศรบนแป้นพิมพ์ หรือโดยการคลิกเมาส์เพื่อค้นหาจุดแทรกทุกที่ที่คุณต้องการ แต่เมื่อคุณมีเอกสารขนาดใหญ่ที่มีหลายหน้า เทคนิคพื้นฐานเหล่านี้จะไม่เพียงพอ

บทความนี้จะอธิบายวิธีการเลื่อนไปมาในเอกสารและนำทางด้วยเคอร์เซอร์เสมือนไปยังส่วนต่างๆ ของเอกสาร

## การตรวจจับตำแหน่งเคอร์เซอร์ปัจจุบัน

ก่อนที่จะเริ่มกระบวนการนำทางผ่านเอกสารของคุณ คุณจะต้องได้รับโหนดที่เลือกไว้ในปัจจุบัน คุณสามารถรับตำแหน่งที่แน่นอนของเคอร์เซอร์ที่โหนดที่เลือกได้โดยใช้คุณสมบัติ [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) นอกจากนี้ แทนที่จะรับโหนดปัจจุบัน คุณสามารถรับย่อหน้าที่เลือกในปัจจุบันหรือส่วนที่เลือกในปัจจุบันได้โดยใช้คุณสมบัติ [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) และ [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/)

การดำเนินการแทรกใดๆ ที่คุณดำเนินการโดยใช้ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) จะถูกแทรกก่อน [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) เมื่อย่อหน้าปัจจุบันว่างเปล่าหรือเคอร์เซอร์อยู่ในตำแหน่งก่อนจุดสิ้นสุดของย่อหน้า [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) จะส่งกลับไม่มี

## วิธีการนำทางในเอกสาร

เมื่อคุณแก้ไขข้อความ สิ่งสำคัญคือต้องรู้วิธีไปยังส่วนต่างๆ ในเอกสารและตำแหน่งที่จะย้ายไปในเอกสารอย่างชัดเจน Aspose.Words ช่วยให้คุณสามารถเลื่อนไปมาในเอกสารและนำทางไปยังส่วนและส่วนต่างๆ ของเอกสาร ซึ่งคล้ายกับฟังก์ชันของบานหน้าต่างนำทางใน Microsoft Word เพื่อไปที่หน้าหรือหัวข้อในเอกสาร Word โดยไม่ต้องเลื่อน

วิธีการหลักคือการสามารถย้ายตำแหน่งเคอร์เซอร์ไปยังโหนดเฉพาะในเอกสารของคุณได้ คุณสามารถทำได้โดยใช้วิธี [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีย้าย [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ไปยังโหนดต่างๆ ในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

แต่นอกเหนือจากวิธี [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) พื้นฐานแล้ว ยังมีวิธีที่เฉพาะเจาะจงมากกว่าอีกด้วย

### นำทางไปยังจุดเริ่มต้นหรือจุดสิ้นสุดของเอกสาร

คุณสามารถไปที่จุดเริ่มต้นหรือจุดสิ้นสุดของเอกสารโดยใช้วิธี [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) และ [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปที่จุดเริ่มต้นหรือจุดสิ้นสุดของเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### นำทางด้วยบุ๊กมาร์ก

คุณสามารถทำเครื่องหมายสถานที่ที่คุณต้องการค้นหาและย้ายไปยังสถานที่นั้นอีกครั้งได้อย่างง่ายดาย คุณสามารถแทรกบุ๊กมาร์กลงในเอกสารของคุณได้มากเท่าที่คุณต้องการ จากนั้นนำทางผ่านบุ๊กมาร์กเหล่านั้นด้วยการระบุบุ๊กมาร์กที่มีชื่อเฉพาะ คุณสามารถย้ายไปยังบุ๊กมาร์กได้โดยใช้วิธี [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปที่บุ๊กมาร์ก:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### นำทางไปยังเซลล์ตาราง

คุณสามารถย้ายไปยังเซลล์ตารางได้โดยใช้วิธี [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) วิธีนี้จะช่วยให้คุณเลื่อนเคอร์เซอร์ไปที่เซลล์ใดก็ได้ในตารางที่ต้องการได้ นอกจากนี้ คุณยังสามารถระบุดัชนีเพื่อย้ายเคอร์เซอร์ไปยังตำแหน่งใดๆ หรืออักขระที่ระบุในเซลล์ภายในวิธี [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการย้ายตำแหน่งเคอร์เซอร์ไปยังเซลล์ตารางที่ระบุ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### นำทางไปยังฟิลด์

คุณสามารถย้ายไปยังช่องเฉพาะในเอกสารของคุณได้โดยใช้วิธี [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) นอกจากนี้ คุณยังสามารถย้ายไปยังเขตข้อมูลผสานเฉพาะได้โดยใช้วิธี [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการย้ายเคอร์เซอร์ตัวสร้างเอกสารไปยังฟิลด์เฉพาะ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### นำทางไปยังส่วนหัวหรือส่วนท้าย

คุณสามารถย้ายไปยังจุดเริ่มต้นของส่วนหัวหรือส่วนท้ายได้โดยใช้วิธี [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการย้ายเคอร์เซอร์ตัวสร้างเอกสารไปยังส่วนหัวหรือส่วนท้ายของเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### นำทางไปยังส่วนหรือย่อหน้า

คุณสามารถย้ายไปยังส่วนหรือย่อหน้าที่ต้องการได้โดยใช้วิธี [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) หรือ [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) นอกจากนี้ คุณยังสามารถระบุดัชนีเพื่อย้ายเคอร์เซอร์ไปยังตำแหน่งใดๆ หรืออักขระที่ระบุในย่อหน้าภายในวิธีการ [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการย้ายไปยังส่วนเฉพาะและย่อหน้าเฉพาะในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
