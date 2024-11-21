---
title: ทํางานกับย่อหน้าใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับย่อหน้า
linktitle: ทํางานกับย่อหน้า
description: "การจัดการโหนดย่อหน้าโดยใช้ Java."
type: docs
weight: 210
url: /th/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

วรรคเป็นชุดของตัวละครรวมกันเป็นบล็อกตรรกะและสิ้นสุดด้วยตัวละครพิเศษ - * ความหมาย * ใน Aspose.Words, วรรคนี้แสดงโดย [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) ชั้นเรียน.

## กําลังแทรกย่อหน้า

ที่ จริง เพื่อ จะ ใส่ วรรค ใหม่ ลง ใน เอกสาร คุณ ต้อง สอด วรรค หนึ่ง เข้า ไป ใน วรรค นั้น. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) แทรกข้อความเข้าไปในเอกสารไม่เพียงข้อความเท่านั้น แต่ยังเพิ่มข้อเสียด้วย

การฟอร์แมตแบบอักษรในปัจจุบันนี้ยังเป็นการกําหนดโดย [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) ทรัพย์สิน และรูปแบบย่อหน้าปัจจุบันถูกกําหนดโดย [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) ทรัพย์สิน ในส่วนต่อไป เราจะลงรายละเอียดเพิ่มเติมเกี่ยวกับ การตกแต่งย่อหน้า

ตัวอย่างรหัสต่อไปนี้แสดงวิธีแทรกย่อหน้าลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## รูปแบบย่อหน้า

การฟอร์แมตย่อหน้าปัจจุบัน [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) วัตถุที่กลับมาโดย [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) ทรัพย์สิน ออบเจกต์นี้จะครอบคลุมคุณสมบัติการฟอร์แมตของย่อหน้าต่าง ๆ ไว้ใน Microsoft Word. คุณสามารถตั้งค่ารูปแบบย่อหน้าให้กลับไปใช้ค่าปริยายได้อย่างง่ายดาย - รูปแบบปกติ, แบบเอียงซ้าย, ไม่มีระยะเยื้อง, ไม่มีช่องว่าง, ไม่มีขอบเขต, ไม่มีการแรเงา - โดยการเรียก [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี วาง แบบ ย่อ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## ปรับใช้รูปแบบย่อหน้า

การฟอร์แมตวัตถุบางแบบ เช่น แบบอักษร หรือ paraseFormat รูปแบบที่ใช้ร่วมหรือผู้ใช้แบบเดียว [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) วัตถุที่บรรจุคุณสมบัติรูปแบบที่สอดคล้องกัน เช่น ชื่อ, รูปแบบพื้นฐาน, แบบอักษร และ ย่อหน้าของการฟอร์แมต และอื่น ๆ

ยิ่งกว่านั้น **Style** วัตถุที่ให้ [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) คุณสมบัติที่ส่งค่ากลับมาเป็นรูปแบบที่ต้องการค่าในท้องถิ่น **StyleIdentifier** ราคาที่เพิ่มขึ้น ประเด็นคือชื่อของสไตล์ที่สร้างขึ้น Microsoft Word เป็นภาษาท้องถิ่นสําหรับภาษาที่แตกต่างกัน คุณ จะ พบ รูป แบบ ที่ ถูก ต้อง ได้ ไม่ ว่า จะ เป็น ภาษา ของ เอกสาร หรือ ไม่. ค่ามวลที่ตรงกับ Microsoft Word รูปแบบการสร้างภายในเช่น *Normal*, ♪Hading 1 ♪ ♪Hading 2* ฯลฯ รูปแบบที่ผู้ใช้กําหนดทั้งหมดถูกกําหนดให้ใช้ **สไตล์นิเตอร์ ค่าของผู้ใช้**.

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ใช้ รูป วรรค:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## แทรกรูปแบบสัญลักษณ์ที่จะใช้รูปแบบย่อหน้าที่แตกต่างกัน

ตัวแบ่งรูปแบบสามารถถูกเพิ่มไปยังท้ายย่อหน้าได้ โดยใช้ Ctrl + Alt + ใส่ปุ่มพิมพ์ลัดเข้าไปใน MSW บทความ นี้ เปิด ช่อง ให้ มี สอง ย่อ ย่อ ต่าง กัน ซึ่ง ใช้ ใน วรรค เดียว อย่าง มี เหตุ ผล. หากคุณต้องการข้อความบางส่วนจากตอนต้นของหัวข้อเฉพาะที่จะปรากฏในตารางของเนื้อหา แต่ไม่ต้องการให้ทั้งหัวในตารางของเนื้อหา คุณสามารถใช้คุณสมบัตินี้

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการแทรกตัวแบ่งรูปแบบไปยังรูปแบบย่อหน้าที่แตกต่างกัน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## ปรับใช้กรอบและตัดคํากับย่อหน้า

กรอบใน Aspose.Words แสดงโดย [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) คลาส นี่คือชุดสะสม [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) วัตถุที่เข้าถึงได้โดยดัชนีหรือชนิดชายแดน เดอะ `Border` ประเภทที่แสดงโดย [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) ปลดปล่อย ค่า บาง อย่าง ของ การ เผา ผลาญ ถูก นํา ไป ใช้ กับ ส่วน ประกอบ หลาย อย่าง หรือ เพียง ส่วน เดียว ของ เอกสาร. ยกตัวอย่างเช่น **BorderType.Bottom** ใช้กับทั้งย่อหน้าหรือเซลล์ตารางในขณะที่ **BorderType.DiagonalDown** กําหนดเส้นทแยงมุมในเซลล์ตารางเท่านั้น

ทั้งการสะสมกรอบและแต่ละขอบมีคุณลักษณะคล้ายสี, รูปแบบเส้น, ความกว้างเส้น, ระยะห่างจากข้อความ, และเงาทางเลือก มันแสดงด้วยคุณสมบัติของชื่อเดียวกัน คุณสามารถสร้างเขตแดนที่แตกต่างได้ โดยการรวมค่าทรัพย์สินเข้าด้วยกัน นอกจากนี้ ทั้งสอง **BorderCollection** ถึง **Border** วัตถุอนุญาตให้คุณปรับค่าเหล่านี้กลับไปใช้ค่าปริยายได้ โดยการเรียก [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) วิธี

{{% alert color="primary" %}}

หมายเหตุว่า เมื่อคุณสมบัติกรอบถูกปรับค่ากลับไปใช้ค่าปริยายแล้ว ขอบเขตจะมองไม่เห็น

{{% /alert %}}

Aspose.Words นอกจากนี้ยังมี [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) คลาสมีคุณลักษณะการแรเงา สําหรับองค์ประกอบของเอกสาร คุณสามารถตั้งค่าพื้นผิวเงาที่ต้องการ และสีที่ใช้กับพื้นหลังและส่วนประกอบของธาตุ

พื้นผิวเงาถูกตั้งค่าด้วย [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) ค่าสิ้นสุดที่อนุญาตให้ปรับใช้รูปแบบต่าง ๆ กับ **Shading** วัตถุ ตัวอย่างเช่น เพื่อตั้งค่าสีพื้นหลังสําหรับองค์ประกอบของเอกสาร ให้ใช้ `TextureIndex.TextureSolid` ตั้งค่าสีพื้นหน้าให้เหมาะสม ตัว อย่าง รหัส ที่ ให้ ไว้ ข้าง ล่าง นี้ แสดง ให้ เห็น วิธี ใช้ พรม แดน และ การ หลบ เลี่ยง วรรค หนึ่ง.

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ใช้ พรม แดน และ การ หลบ หลีก วรรค หนึ่ง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
