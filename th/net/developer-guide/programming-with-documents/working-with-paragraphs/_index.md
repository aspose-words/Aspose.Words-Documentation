---
title: การทำงานกับย่อหน้าใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับย่อหน้า
linktitle: การทำงานกับย่อหน้า
description: "แทรกย่อหน้าลงในเอกสาร C# ตั้งค่ารูปแบบย่อหน้าใน C# ทำงานกับตัวคั่นลักษณะย่อหน้า C# จัดการโหนดย่อหน้าโดยใช้ C#"
type: docs
weight: 210
url: /th/net/working-with-paragraphs/
---

ย่อหน้าคือชุดอักขระที่รวมกันเป็นบล็อกแบบลอจิคัลและลงท้ายด้วยอักขระพิเศษ - *ตัวแบ่งย่อหน้า* ใน Aspose.Words ย่อหน้าจะแสดงโดยคลาส [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/)

## แทรกย่อหน้า

หากต้องการแทรกย่อหน้าใหม่ลงในเอกสาร คุณจะต้องแทรกอักขระตัวแบ่งย่อหน้าลงไป [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) ไม่เพียงแต่แทรกสตริงข้อความลงในเอกสาร แต่ยังเพิ่มตัวแบ่งย่อหน้าอีกด้วย

การจัดรูปแบบแบบอักษรปัจจุบันยังระบุโดยคุณสมบัติ [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) และการจัดรูปแบบย่อหน้าปัจจุบันจะถูกกำหนดโดยคุณสมบัติ [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) ในส่วนถัดไป เราจะอธิบายรายละเอียดเพิ่มเติมเกี่ยวกับการจัดรูปแบบย่อหน้า

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกย่อหน้าลงในเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## จัดรูปแบบย่อหน้า

การจัดรูปแบบย่อหน้าปัจจุบันแสดงโดยออบเจ็กต์ [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) ที่ส่งคืนโดยคุณสมบัติ [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) ออบเจ็กต์นี้สรุปคุณสมบัติการจัดรูปแบบย่อหน้าต่างๆ ที่มีอยู่ใน Microsoft Word คุณสามารถรีเซ็ตการจัดรูปแบบของย่อหน้าให้เป็นค่าเริ่มต้นได้อย่างง่ายดาย เช่น สไตล์ปกติ จัดชิดซ้าย ไม่มีการเยื้อง ไม่มีการเว้นวรรค ไม่มีเส้นขอบ ไม่มีการแรเงา ด้วยการเรียก [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าการจัดรูปแบบย่อหน้า:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## ใช้สไตล์ย่อหน้า

ออบเจ็กต์การจัดรูปแบบบางอย่าง เช่น **Font** หรือ **ParagraphFormat** รองรับสไตล์ สไตล์ในตัวหรือสไตล์ที่ผู้ใช้กำหนดจะแสดงด้วยออบเจ็กต์ [Style](https://reference.aspose.com/words/net/aspose.words/style/) ซึ่งมีคุณสมบัติสไตล์ที่เหมาะสม เช่น ชื่อ สไตล์พื้นฐาน แบบอักษร การจัดรูปแบบย่อหน้าสไตล์ และอื่นๆ

นอกจากนี้ ออบเจ็กต์ **Style** ยังเปิดเผยคุณสมบัติ [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) ซึ่งส่งคืนตัวระบุสไตล์ที่ไม่ขึ้นกับโลแคลซึ่งแสดงโดยค่าการแจงนับ [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) ความจริงก็คือชื่อของสไตล์ในตัวใน Microsoft Word ได้รับการแปลเป็นภาษาต่างๆ เมื่อใช้ตัวระบุสไตล์ คุณสามารถค้นหาสไตล์ที่ถูกต้องโดยไม่คำนึงถึงภาษาของเอกสาร ค่าการแจกแจงสอดคล้องกับสไตล์ Microsoft Word ในตัว เช่น *Normal*, *Heading 1*, *Heading 2* และอื่นๆ สไตล์ที่ผู้ใช้กำหนดทั้งหมดถูกตั้งค่าเป็นค่าการแจงนับ **StyleIdentifier.User**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้สไตล์ย่อหน้า:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### แทรกตัวคั่นสไตล์เพื่อใส่สไตล์ย่อหน้าที่แตกต่างกัน

คุณสามารถเพิ่มตัวคั่นรูปแบบที่ส่วนท้ายของย่อหน้าได้โดยใช้แป้นพิมพ์ลัด Ctrl+Alt+Enter ใน Microsoft Word คุณลักษณะนี้อนุญาตให้คุณใช้ลักษณะย่อหน้าสองแบบที่แตกต่างกันในย่อหน้าที่พิมพ์แบบลอจิคัลเดียวกัน หากคุณต้องการให้ข้อความบางส่วนจากจุดเริ่มต้นของหัวข้อใดหัวข้อหนึ่งปรากฏในสารบัญ แต่ไม่ต้องการให้หัวข้อทั้งหมดแสดงในสารบัญ คุณสามารถใช้ฟังก์ชันนี้ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกตัวคั่นสไตล์เพื่อรองรับสไตล์ย่อหน้าที่แตกต่างกัน:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### ระบุตัวคั่นลักษณะย่อหน้า

Aspose.Words เปิดเผยทรัพย์สินสาธารณะของ [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) ในคลาส `Paragraph` เพื่อระบุย่อหน้าด้วยตัวคั่นสไตล์ ดังที่แสดงในตัวอย่างด้านล่าง:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## ใช้เส้นขอบและการแรเงากับย่อหน้า

เส้นขอบใน Aspose.Words แสดงโดยคลาส [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) ซึ่งเป็นคอลเลกชันของออบเจ็กต์ [Border](https://reference.aspose.com/words/net/aspose.words/border/) ที่เข้าถึงได้โดยดัชนีหรือตามประเภทเส้นขอบ ประเภทของเส้นขอบจะแสดงโดยการแจงนับ [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) ค่าการแจกแจงบางค่าใช้กับองค์ประกอบเอกสารหลายรายการหรือเพียงองค์ประกอบเดียวเท่านั้น ตัวอย่างเช่น **BorderType.Bottom** ใช้กับย่อหน้าหรือเซลล์ตาราง ในขณะที่ **BorderType.DiagonalDown** ระบุเส้นขอบแนวทแยงในเซลล์ตารางเท่านั้น

ทั้งคอลเลกชั่นเส้นขอบและเส้นขอบแต่ละอันแยกกันมีคุณลักษณะที่คล้ายกัน เช่น สี รูปแบบของเส้น ความกว้างของเส้น ระยะห่างจากข้อความ และเงาที่เป็นตัวเลือก แสดงด้วยคุณสมบัติที่มีชื่อเดียวกัน คุณสามารถรับประเภทเส้นขอบที่แตกต่างกันได้โดยการรวมค่าคุณสมบัติ นอกจากนี้ ออบเจ็กต์ **BorderCollection** และ **Border** ยังช่วยให้คุณรีเซ็ตค่าเหล่านี้เป็นค่าเริ่มต้นได้โดยการเรียกเมธอด [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/)

{{% alert color="primary" %}}

โปรดทราบว่าเมื่อคุณสมบัติเส้นขอบถูกรีเซ็ตเป็นค่าเริ่มต้น เส้นขอบจะมองไม่เห็น

{{% /alert %}}

Aspose.Words ยังมีคลาส [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) ที่มีแอตทริบิวต์การแรเงาสำหรับองค์ประกอบเอกสาร คุณสามารถตั้งค่าพื้นผิวแรเงาและสีที่ต้องการซึ่งนำไปใช้กับพื้นหลังและพื้นหน้าขององค์ประกอบได้โดยใช้ค่าการแจงนับ [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) **TextureIndex** ยังช่วยให้คุณใช้รูปแบบต่างๆ กับออบเจ็กต์ **Shading** ได้ ตัวอย่างเช่น หากต้องการตั้งค่าสีพื้นหลังสำหรับองค์ประกอบเอกสาร ให้ใช้ค่า **TextureIndex.TextureSolid** และตั้งค่าสีแรเงาพื้นหน้าตามความเหมาะสม

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้เส้นขอบและการแรเงากับย่อหน้า:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## นับบรรทัดย่อหน้า

หากคุณต้องการนับจำนวนบรรทัดในย่อหน้าสำหรับเอกสาร Word ใดๆ คุณสามารถใช้ตัวอย่างโค้ดต่อไปนี้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}