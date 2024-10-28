---
title: การทำงานกับย่อหน้าในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับย่อหน้า
linktitle: การทำงานกับย่อหน้า
description: "แนวทางปฏิบัติในการจัดการโหนดย่อหน้าโดยใช้C++."
type: docs
weight: 210
url: /th/cpp/working-with-paragraphs/
---

ย่อหน้าคือชุดของอักขระรวมกันเป็นบล็อกตรรกะและลงท้ายด้วยอักขระพิเศษ-*paragraph break* ในAspose.Wordsย่อหน้าจะแสดงโดยคลาสของ[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## แทรกย่อหน้า

ในการแทรกย่อหน้าใหม่ลงในเอกสารในความเป็นจริงคุณจะต้องแทรกตัวละครแบ่งย่อหน้า [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/)แทรกไม่เพียงแต่สตริงข้อความในเอกสารเท่านั้นแต่ยังเพิ่มการแบ่งย่อหน้าด้วย.

การจัดรูปแบบแบบอักษรปัจจุบันจะถูกระบุโดยคุณสมบัติ[Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/)และการจัดรูปแบบย่อหน้าปัจจุบันจะถูกกำหนดโดยคุณสมบัติ[ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/) ในส่วนถัดไป,เราจะไปลงรายละเอียดเพิ่มเติมเกี่ยวกับการจัดรูปแบบย่อหน้า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกย่อหน้าลงในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## รูปแบบย่อหน้า

การจัดรูปแบบย่อหน้าปัจจุบันจะแสดงโดยออบเจกต์**ParagraphFormat**ที่ถูกส่งคืนโดยคุณสมบัติ**ParagraphFormat** วัตถุนี้ประกอบด้วยคุณสมบัติการจัดรูปแบบย่อหน้าต่างๆที่มีอยู่ในMicrosoft Word คุณสามารถรีเซ็ตการจัดรูปแบบย่อหน้าเพื่อเริ่มต้นให้เป็นรูปแบบปกติชิดซ้ายเยื้องไม่มีระยะห่างไม่มีเส้นขอบและไม่มีการแรเงาโดยการโทร[ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าการจัดรูปแบบย่อหน้า:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## ใช้สไตล์ย่อหน้า

บางรูปแบบวัตถุเช่นแบบอักษรหรือParagraphFormatรูปแบบการสนับสนุน สไตล์ที่ผู้ใช้กำหนดในตัวเดียวจะแสดงโดยออบเจกต์`Style`ที่มีคุณสมบัติลักษณะที่สอดคล้องกันเช่น.

นอกจากนี้ออบเจกต์**Style**มีคุณสมบัติ[StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/)ที่ส่งคืนตัวระบุสไตล์อิสระโลแคลที่แสดงโดยค่าการแจงนับ**StyleIdentifier** ประเด็นคือชื่อของลักษณะในตัวในMicrosoft Wordเป็นภาษาท้องถิ่นสำหรับภาษาที่แตกต่างกัน ใช้ตัวระบุลักษณะคุณสามารถค้นหาลักษณะที่ถูกต้องโดยไม่คำนึงถึงภาษาของเอกสาร ค่าการแจงนับสอดคล้องกับรูปแบบในตัวMicrosoft Wordเช่น*Normal*, *Heading 1*, *Heading 2* ฯลฯ รูปแบบที่ผู้ใช้กำหนดทั้งหมดจะถูกกำหนดค่า**StyleIdentifier.User**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้ลักษณะย่อหน้า:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## แทรกตัวคั่นสไตล์ที่จะนำรูปแบบที่แตกต่างกันย่อหน้า

สามารถเพิ่มตัวคั่นลักษณะไปยังส่วนท้ายของย่อหน้าได้โดยใช้แป้นพิมพ์ลัดMSคำ คุณลักษณะนี้ช่วยให้ลักษณะย่อหน้าต่างๆสองใช้ในย่อหน้าตรรกะหนึ่งพิมพ์ ถ้าคุณต้องการให้ข้อความบางส่วนจากจุดเริ่มต้นของหัวข้อเฉพาะปรากฏในตารางของเนื้อ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกตัวคั่นลักษณะเพื่อรองรับลักษณะย่อหน้าต่าง:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## ระบุตัวคั่นสไตล์ย่อหน้า

` `Aspose.Wordsให้ทรัพย์สินสาธารณะ[BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/)ลงในชั้นเรียน`Paragraph`อนุญาตให้ระบุย่อหน้าคั่นรูปแบบตามที่แสดงในตัวอย่:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## ใช้เส้นขอบและการแรเงากับย่อหน้า

เส้นขอบในAspose.Wordsจะแสดงโดย[BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/)คลาส-นี่คือคอลเลกชันของ[Border](https://reference.aspose.com/words/cpp/aspose.words/border/)ออบเจกต์ที่เข้าถึงได้โดยดัชนีหรือตาม ประเภทเส้นขอบจะแสดงโดยการแจงนับ`BorderType` ค่าบางอย่างของการนับมีผลบังคับใช้กับหลายหรือเพียงองค์ประกอบเอกสารหนึ่ง ตัวอย่างเช่น**BorderType.Bottom**ใช้ได้กับย่อหน้าหรือเซลล์ตารางในขณะที่**BorderType.DiagonalDown**ระบุขอบเส้นทแยงมุมในเซลล์ตาราง.

ทั้งคอลเลกชันชายแดนและแต่ละชายแดนแยกต่างหากมีคุณลักษณะที่คล้ายกันเช่นสีลักษณะเส้ คุณสมบัติของชื่อเดียวกัน คุณสามารถบรรลุประเภทเส้นขอบที่แตกต่างกันโดยการรวมค่าคุณสมบัติ นอกจากนี้วัตถุทั้ง**BorderCollection**และ**Border**ช่วยให้คุณสามารถรีเซ็ตค่าเหล่านี้เป็นค่าเริ่มต้นโดยการเรียกวิธีการ[ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

โปรดทราบว่าเมื่อคุณสมบัติเส้นขอบถูกรีเซ็ตเป็นค่าเริ่มต้นเส้นขอบจะมองไม่เห็น.

{{% /alert %}}

Aspose.Wordsนอกจากนี้ยังมี[Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/)ชั้นมีแอตทริบิวต์การแรเงาสำหรับองค์ประกอบของเอกสาร คุณสามารถตั้งค่าพื้นผิวการแรเงาที่ต้องการและสีที่ใช้กับพื้นหลังและเบื้องหน้าขององค์ป.

พื้นผิวการแรเงาถูกตั้งค่าด้วยค่าการแจงนับ[TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/)ที่ช่วยให้การประยุกต์ใช้รูปแบบต่างๆไปยังวัตถุ**Shading** ตัวอย่างเช่นในการตั้งค่าสีพื้นหลังสำหรับองค์ประกอบเอกสารให้ใช้ค่า[TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/)และตั้งค่าสีแรเงา.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้เส้นขอบและการแรเงากับย่อหน้า:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
