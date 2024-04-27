---
title: แปล Markdown ถึง DOM
second_title: Aspose.Words สําหรับ Java
articleTitle: แปล Markdown ถึง Document Object Model (DOM)
linktitle: แปล Markdown ถึง Document Object Model (DOM)
type: docs
description: "Tarklate Markdown เอกสารที่จะ Document Object Model และกลับมา ดังนั้นคุณสามารถทํางานกับความซับซ้อนที่มีอยู่ Markdown และสร้างโปรแกรม Markdown เอกสารจากรอยขีดข่วนโดยใช้ Java."
weight: 20
url: /th/java/translate-markdown-to-document-object-model/
---

เพื่อโปรแกรมการอ่าน, จัด และแก้ไขเนื้อหาและรูปแบบของเอกสาร คุณต้องแปลมันไปยัง Aspose.Words Document Object Model (DOM)

ตรงข้ามกับเอกสารคํา Markdown ไม่สอดคล้องกับ DOM อธิบายใน [Aspose.Words Document Object Model (DOM)](/words/th/java/aspose-words-document-object-model/) บทความ. อย่างไรก็ตาม Aspose.Words ให้กลไกของมันเองสําหรับการแปล Markdown เอกสารที่จะ DOM และกลับมา เพื่อที่เราจะสามารถทํางานกับองค์ประกอบของพวกเขาได้สําเร็จ เช่น การเรียบเรียงข้อความ, ตาราง,ส่วนหัว, และอื่น ๆ

บทความ นี้ อธิบาย ว่า เหตุ ใด หลาย คน markdown สามารถแปลคุณสมบัติเป็น Aspose.Words DOM และกลับไป Markdown รูปแบบ

## ความ หมาย ของ การ แปล Markdown - DOM - Markdown

ความยากหลักของกลไกนี้ ไม่ใช่แค่การแปล Markdown ถึง DOM, แต่ยังทําการแปลงย้อนกลับด้วย -- เพื่อบันทึกเอกสารกลับไป Markdown รูปแบบที่มีการสูญเสียน้อยที่สุด มี ปัจจัย ต่าง ๆ เช่น การ ยก ข้อ ความ จาก หลาย ระดับ ซึ่ง การ เปลี่ยน แปลง ใน ทาง กลับ กัน ไม่ ใช่ เรื่อง เล็ก.

เครื่องยนต์ของเราอนุญาตให้ผู้ใช้ไม่เพียง แต่จะทํางานกับองค์ประกอบที่ซับซ้อนในที่มีอยู่ Markdown เอกสาร, และยังสร้างเอกสารของตัวเองใน Markdown ฟอร์แมตด้วยโครงสร้างดั้งเดิมจากรอยขีดข่วน เพื่อ จะ สร้าง องค์ ประกอบ ต่าง ๆ คุณ ต้อง ใช้ แบบ ที่ มี ชื่อ เฉพาะ ตาม กฎ บาง ข้อ ที่ พรรณนา ไว้ ใน บทความ นี้. รูป แบบ ดัง กล่าว สามารถ สร้าง ตาม โปรแกรม.

## การ แปล ทั่ว ไป หลัก การ

เราใช้ [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) ฟอร์แมตสําหรับบล็อกอินไลน์ เมื่อไม่มีการส่งข้อความโดยตรงสําหรับ Markdown แสดงใน Aspose.Words DOM, เราใช้ลักษณะลักษณะที่มีชื่อเริ่มต้นจากคําพิเศษบางคํา

สําหรับกล่องบรรจุเราใช้มรดกสไตล์เพื่อหมายถึงรัง Markdown โดดเด่น ใน กรณี นี้ แม้ แต่ เมื่อ ไม่ มี ลักษณะ เฉพาะ ตัว เรา ก็ ยัง ใช้ แบบ ย่อ ที่ มี ชื่อ เริ่ม จาก คํา พิเศษ บาง คํา ด้วย.

รายการที่ถูกยิงและเป็นระเบียบคือกล่องบรรจุใน Markdown เช่นกัน การ ทํา รัง ของ พวก เขา เป็น ภาพ แสดง ถึง DOM วิธีเดียวกับที่ตู้คอนเทนเนอร์อื่น ๆ ทั้งหมด ใช้มรดกสไตล์ อย่างไรก็ตาม รายการใน DOM ได้มีการฟอร์แมตตัวเลขตรงกันทั้งในรูปแบบรายการหรือแบบย่อหน้า

## แทรกบล็อก

เราใช้ [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) ฟอร์แมตเมื่อทําการแปล **Bold**, *Italic* หรือ # เอาชนะ... markdown โดดเด่น

|  Markdown คุณสมบัติ |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  ||
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  ||
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  ||

We use a mode play with a name that start from the word We use language we use a languages with a names from the word <span notrans="<span notrans=" `InlineCode`"=""></span>'"> ตามด้วยจุดทางเลือก `(.)` และเป็นกลุ่มชนจํานวนน้อย ```(`)``` สําหรับ `InlineCode` โดดเด่น หากไม่มีการใช้งานแบ็คติกอยู่จํานวนหนึ่ง จะเป็นการโดยปริยายแทน

|  Markdown คุณสมบัติ |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  ||
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  เดอะ [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) ชั้นเรียน |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  ||
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  เดอะ [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) ชั้นเรียน |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  ||
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  เดอะ [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ชั้นเรียน |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  ||

## ตัวบรรจุบล็อก

เอกสาร ฉบับ หนึ่ง เป็น ลําดับ ของ กล่อง ต่าง ๆ เช่น หัว เรื่อง, วรรค ต่าง ๆ, รายการ, ข้อ ความ ที่ ยก มา, และ อื่น ๆ. บล็อกบรรจุ สามารถแบ่งออกเป็น 2 ชั้นได้: บล็อกใบไม้และคอมพลิเนกซ์บรรจุ บล็อกใบไม้จะบรรจุเนื้อหาในบรรทัดได้เท่านั้น ส่วน ภาชนะ บรรจุ คอม ทริก ซ์ ก็ สามารถ บรรจุ บล็อก อื่น ๆ ได้ รวม ทั้ง บล็อก ใบ ไม้.

### บล็อคของใบไม้

ตารางด้านล่างนี้แสดงตัวอย่างของการใช้ Markdown บล็อกใบไม้ใน Aspose.Words

|  Markdown คุณสมบัติ |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  นี่เป็นย่อหน้าแบบง่าย ๆ ที่มีรูปทรงทางแนวนอนตรงกัน:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, โดย (1 <=N <=9).<br/>นี้จะถูกแปลเป็นรูปแบบภายในและควรจะตรงกับรูปแบบที่ระบุเป๊ะ (ไม่อนุญาตให้ใช้ส่วนนําหน้าหรือส่วนนําหน้า)<br/>มิ ฉะนั้น ก็ จะ เป็น เพียง วรรค ปกติ ที่ มี รูป แบบ ที่ ตรง กัน |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (ถ้ามุ่งหน้าไปยังระดับ 1)<br/>`---` (ถ้าไปยังระดับ 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, จาก `“Heading N”` สไตล์<br/>ถ้า (N >= 2) จากนั้น `“Heading 2”` จะถูกนําไปใช้อย่างไม่เพียงเท่านั้น `“Heading 1”`.<br/>อนุมัติได้ แต่ Aspose.Words ผู้นําเข้าใช้เลข "1" และ "2" ตามด้วย |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>เดอะ `[.]` ถึง `[info string]` เป็นทางเลือก |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### ตัวบรรจุคอมโพเน็กซ์

ตารางด้านล่างนี้แสดงตัวอย่างของการใช้ Markdown ตัวบรรจุคอมโพเน็กซ์ใน Aspose.Words

|  Markdown คุณสมบัติ |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>การแทนที่ในชื่อสไตล์เป็นตัวเลือก แต่ Aspose.Words ผู้นําเข้าใช้หมายเลขลําดับ 1, 2, 3 ... ในกรณีที่มีการอ้างถึงรัง<br/>การ ทํา รัง ได้ รับ การ นิยาม โดย วิธี การ ที่ สืบ ทอด มา |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  รายการ ที่ มี ลูก กระสุน แสดง ให้ เห็น โดย ใช้ วรรค:<br/>`ListFormat.ApplyBulletDefault()`<br/>อาจ มี ราย ชื่อ ที่ ถูก ยิง ออก ไป ถึง สาม ประเภท. พวกมันกระจายในรูปแบบตัวเลข ของระดับแรกมาก นี่คือ: `‘-’`, `‘+’` หรือ `‘*’` ตามนั้น |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  รายการลําดับจะแสดงโดยใช้ย่อหน้าหมายเลข:<br/>`ListFormat.ApplyNumberDefault()`<br/>มีเครื่องหมายตัวเลขอยู่ 2 ตัว: ‘.' เครื่องหมายปริยายคือ ‘.' |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### ตาราง

Aspose.Words ยังอนุญาตให้แปลตารางเป็น DOM, ที่แสดงด้านล่างนี้:

|  Markdown คุณสมบัติ |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>อะ | b`<br />`- | -`<br />`c | _ ' |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) ถึง [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) ชั้นเรียน |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## ดูด้วย

* [ทํางานกับ Markdown คุณสมบัติต่าง ๆ](/words/th/java/working-with-markdown-features/)

