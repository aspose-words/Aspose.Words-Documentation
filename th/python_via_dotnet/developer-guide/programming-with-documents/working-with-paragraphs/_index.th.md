---
title: การทำงานกับย่อหน้าใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับย่อหน้า
linktitle: การทำงานกับย่อหน้า
description: "แทรกย่อหน้าและระบุการจัดรูปแบบในเอกสารโดยใช้ Python"
type: docs
weight: 210
url: /th/python-net/working-with-paragraphs/
---

ย่อหน้าคือชุดอักขระที่รวมกันเป็นบล็อกแบบลอจิคัลและลงท้ายด้วยอักขระพิเศษ - *ตัวแบ่งย่อหน้า* ใน Aspose.Words ย่อหน้าจะแสดงโดยคลาส [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)

## แทรกย่อหน้า

หากต้องการแทรกย่อหน้าใหม่ลงในเอกสาร คุณจะต้องแทรกอักขระตัวแบ่งย่อหน้าลงไป [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) จะแทรกสตริงข้อความลงในเอกสารด้วย แต่เพิ่มตัวแบ่งย่อหน้าด้วย

การจัดรูปแบบแบบอักษรปัจจุบันยังระบุโดยคุณสมบัติ [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) และการจัดรูปแบบย่อหน้าปัจจุบันจะถูกกำหนดโดยคุณสมบัติ [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกย่อหน้าลงในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## จัดรูปแบบย่อหน้า

การจัดรูปแบบย่อหน้าปัจจุบันแสดงโดยออบเจ็กต์ [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) ที่ส่งคืนโดยคุณสมบัติ [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) ออบเจ็กต์นี้สรุปคุณสมบัติการจัดรูปแบบย่อหน้าต่างๆ ที่มีอยู่ใน Microsoft Word คุณสามารถรีเซ็ตการจัดรูปแบบย่อหน้าให้เป็นค่าเริ่มต้นเป็นรูปแบบปกติ จัดชิดซ้าย ไม่มีการเยื้อง ไม่มีการเว้นวรรค ไม่มีเส้นขอบ และไม่มีแรเงา โดยการเรียก [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าการจัดรูปแบบย่อหน้า:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## ใช้สไตล์ย่อหน้า

ออบเจ็กต์การจัดรูปแบบบางอย่าง เช่น [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) หรือ [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) รองรับสไตล์ สไตล์ในตัวหรือสไตล์ที่ผู้ใช้กำหนดจะแสดงด้วยออบเจ็กต์ [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) ที่มีคุณสมบัติสไตล์ที่สอดคล้องกัน เช่น ชื่อ สไตล์พื้นฐาน แบบอักษรและการจัดรูปแบบย่อหน้าของสไตล์ และอื่นๆ

นอกจากนี้ ออบเจ็กต์ [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) ยังจัดเตรียมคุณสมบัติ [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) ที่ส่งคืนตัวระบุสไตล์ที่ไม่ขึ้นกับโลแคลซึ่งแสดงด้วยค่าการแจงนับ [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) ประเด็นก็คือชื่อของสไตล์ในตัวใน Microsoft Word ได้รับการแปลเป็นภาษาต่างๆ เมื่อใช้ตัวระบุสไตล์ คุณสามารถค้นหาสไตล์ที่ถูกต้องโดยไม่คำนึงถึงภาษาของเอกสาร ค่าการแจกแจงสอดคล้องกับสไตล์ในตัว Microsoft Word เช่น Normal, Heading 1, Heading 2 เป็นต้น สไตล์ที่ผู้ใช้กำหนดทั้งหมดจะได้รับการกำหนดค่า [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้สไตล์ย่อหน้า:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## แทรกตัวคั่นสไตล์เพื่อใส่สไตล์ย่อหน้าที่แตกต่างกัน

คุณสามารถเพิ่มตัวคั่นสไตล์ที่ส่วนท้ายของย่อหน้าได้โดยใช้ Ctrl + Alt + Enter แป้นพิมพ์ลัดใน MS Word คุณลักษณะนี้อนุญาตให้ใช้ลักษณะย่อหน้าที่แตกต่างกันสองแบบในย่อหน้าเดียวที่พิมพ์แบบลอจิคัล หากคุณต้องการให้ข้อความบางส่วนจากจุดเริ่มต้นของหัวข้อใดหัวข้อหนึ่งปรากฏในสารบัญ แต่ไม่ต้องการให้หัวข้อทั้งหมดในสารบัญ คุณสามารถใช้ฟีเจอร์นี้ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกตัวคั่นสไตล์เพื่อรองรับสไตล์ย่อหน้าที่แตกต่างกัน:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## ระบุตัวคั่นลักษณะย่อหน้า

Aspose.Words จัดเตรียม [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) ทรัพย์สินสาธารณะไว้ในคลาส [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ช่วยให้สามารถระบุย่อหน้าตัวแยกสไตล์ดังที่แสดงในตัวอย่างด้านล่าง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## ใช้เส้นขอบและการแรเงากับย่อหน้า

เส้นขอบแสดงโดย [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) นี่คือคอลเลกชันของออบเจ็กต์ [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) ที่เข้าถึงได้โดยดัชนีหรือประเภทเส้นขอบ ประเภทเส้นขอบแสดงโดยการแจงนับ [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) ค่าบางค่าของการแจงนับใช้ได้กับองค์ประกอบเอกสารหลายรายการหรือเพียงองค์ประกอบเดียวเท่านั้น ตัวอย่างเช่น [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) ใช้ได้กับย่อหน้าหรือเซลล์ตาราง ในขณะที่ [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) ระบุเส้นขอบแนวทแยงในเซลล์ตารางเท่านั้น

ทั้งคอลเลกชั่นเส้นขอบและเส้นขอบแต่ละอันแยกกันมีคุณสมบัติที่คล้ายกัน เช่น สี ลักษณะของเส้น ความกว้างของเส้น ระยะห่างจากข้อความ และเงาเพิ่มเติม แสดงด้วยคุณสมบัติที่มีชื่อเดียวกัน คุณสามารถบรรลุประเภทเส้นขอบที่แตกต่างกันได้โดยการรวมค่าคุณสมบัติ นอกจากนี้ ทั้งออบเจ็กต์ [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) และ [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) ยังช่วยให้คุณรีเซ็ตค่าเหล่านี้เป็นค่าเริ่มต้นได้โดยการเรียกเมธอด [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/)

{{% alert color="primary" %}}

โปรดทราบว่าเมื่อคุณสมบัติเส้นขอบถูกรีเซ็ตเป็นค่าเริ่มต้น เส้นขอบจะมองไม่เห็น

{{% /alert %}}

Aspose.Words ยังมีคลาส [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) ที่มีแอตทริบิวต์การแรเงาสำหรับองค์ประกอบเอกสาร คุณสามารถตั้งค่าพื้นผิวแรเงาที่ต้องการและสีที่ใช้กับพื้นหลังและพื้นหน้าขององค์ประกอบได้

พื้นผิวแรเงาถูกตั้งค่าด้วยค่าการแจงนับ [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) ที่ช่วยให้สามารถนำรูปแบบต่างๆ ไปใช้กับออบเจ็กต์ [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) ได้ ตัวอย่างเช่น หากต้องการตั้งค่าสีพื้นหลังสำหรับองค์ประกอบเอกสาร ให้ใช้ค่า [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) และตั้งค่าสีแรเงาพื้นหน้าตามความเหมาะสม ตัวอย่างด้านล่างแสดงวิธีการใช้เส้นขอบและการแรเงากับย่อหน้า

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้เส้นขอบและการแรเงากับย่อหน้า:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
