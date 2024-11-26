---
title: แปลMarkdownถึงDOM
second_title: Aspose.WordsสำหรับJava
articleTitle: แปลMarkdownไปยังรูปแบบวัตถุเอกสาร(DOM)
linktitle: แปลMarkdownไปยังรูปแบบวัตถุเอกสาร(DOM)
type: docs
description: "ทาร์สเลทMarkdownเอกสารไปยังเอกสารรูปแบบวัตถุและด้านหลัง ดังนั้นคุณสามารถทำงานกับที่ซับซ้อนที่มีอยู่Markdownและโปรแกรมสร้างMarkdownเอกสารจากรอยขีดข่วนโดยใช้Java."
weight: 20
url: /th/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

ในการอ่านจัดการและปรับเปลี่ยนเนื้อหาและการฟอร์แมตของเอกสารคุณต้องแปลไปยังโมเดลออบเจกต์ของเอกสารAspose.Words(DOM).

ในทางตรงกันข้ามกับเอกสารคำMarkdownไม่สอดคล้องกับDOMอธิบายไว้ใน [Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)](/words/java/aspose-words-document-object-model/) บทความ. อย่างไรก็ตามAspose.WordsมีกลไกของตัวเองสำหรับการแปลเอกสารMarkdownไปยังDOMและกลับ,เพื่อให้เราสามาร.

บทความนี้อธิบายวิธีการแปลคุณลักษณะต่างๆmarkdownเป็นAspose.WordsDOMและกลับไปยังรูปแบบMarkdown.

## ความซับซ้อนของการแปลMarkdown – DOM – Markdown

ปัญหาหลักของกลไกนี้ไม่ได้เป็นเพียงการแปลMarkdownถึงDOMแต่ยังจะทำการเปลี่ยนแปลงย้อนกลับ-เพื่อบันทึกเอกสารกลับไปยังรูปแบบMarkdownที่มีการสูญเสียน้อยที่สุด มีองค์ประกอบเช่นคำพูดหลายระดับซึ่งการเปลี่ยนแปลงย้อนกลับไม่น่ารำคาญ.

เครื่องมือแปลของเราช่วยให้ผู้ใช้ไม่เพียงแต่ทำงานกับองค์ประกอบที่ซับซ้อนในเอกสารที่มีอยู่Markdownแต่ยังสร้างเอกสารของตนเองในรูปแบบของMarkdownด้วยโครงสร้างเดิมตั้งแต่เริ่มต้น เพื่อสร้างองค์ประกอบต่างๆคุณจำเป็นต้องใช้รูปแบบที่มีชื่อเฉพาะตามกฎระเบียบบางอย่างที่อธิบายไว้ในบทความนี้ รูปแบบดังกล่าวสามารถสร้างโปรแกรม.

## หลักการแปลทั่วไป

เราใช้[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)การจัดรูปแบบสำหรับบล็อกแบบอินไลน์ เมื่อไม่มีการติดต่อโดยตรงสำหรับคุณลักษณะMarkdownในAspose.WordsDOMเราใช้รูปแบบตัวอักษรที่มีชื่อที่เริ่มต้นจาก.

สำหรับบล็อกคอนเทนเนอร์เราใช้มรดกสไตล์เพื่อแสดงคุณลักษณะMarkdownที่ซ้อนกัน ในกรณีนี้แม้ในขณะที่ไม่มีคุณลักษณะที่ซ้อนกัน,เรายังใช้รูปแบบย่อหน้าที่มีชื่อที่เริ่มต้นจากคำพิเศ.

รายการที่มีสัญลักษณ์แสดงหัวข้อย่อยและสั่งเป็นบล็อกคอนเทนเนอร์ในMarkdownเช่นกัน รทำรังของพวกเขาจะแสดงในDOMเช่นเดียวกับบล็อกคอนเทนเนอร์อื่นๆทั้งหมดโดยใช้การสืบทอ อย่างไรก็ตาม,นอกจากนี้,รายการในDOMมีการจัดรูปแบบตัวเลขที่สอดคล้องกันทั้งในรูปแบบราย.

## บล็อกอินไลน์

เราใช้[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)การจัดรูปแบบเมื่อแปล**Bold**,*Italic*หรือ~~Strikethrough~~อินไลน์markdownคุณสมบัติ.

| Markdownคุณลักษณะ | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

เราใช้ลักษณะอักขระที่มีชื่อที่เริ่มต้นจากคำว่า`InlineCode`ตามด้วยจุดตัวเลือก`(.)`และจำนวนของติ๊กหลัง```(`)```สำหรับคุณลักษณะ`InlineCode` หากมีข้อผิดพลาดหลายข้อผิดพลาดจะมีการใช้เครื่องหมายย้อนกลับหนึ่งตัวโดยค่าเริ่มต้น.

| Markdownคุณลักษณะ | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | คลาส[FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[ลิงก์ข้อความ](url)`<br />`[ลิงก์ข้อความ](<url>"title")`<br />`[ลิงก์ข้อความ](url 'title')`<br />`[ลิงก์ข้อความ](url (title))` | คลาส[FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![ข้อความ](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![ข้อความ](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![ข้อความ](/words/java/translate-markdown-to-document-object-model/url (title))` | คลาส[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## บล็อกคอนเทนเนอร์

เอกสารเป็นลำดับของคอนเทนเนอร์บล็อกเช่นส่วนหัวย่อหน้ารายการใบเสนอราคาและอื่ บล็อกภาชนะสามารถแบ่งออกเป็น 2 ชั้น:บล็อกใบและภาชนะบรรจุที่ซับซ้อน บล็อกใบสามารถมีเนื้อหาแบบอินไลน์เท่านั้น Contชนะบรรจุที่ซับซ้อนในที่สุดก็สามารถมีบล็อกภาชนะอื่นๆรวมทั้งบล็อกใบ.

### บล็อกใบ

ตารางด้านล่างแสดงตัวอย่างการใช้บล็อกใบMarkdownในAspose.Words:

| Markdownคุณลักษณะ | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | นี่เป็นย่อหน้าง่ายๆที่มีรูปร่างHorizontalRuleที่สอดคล้องกัน:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`ที่ไหน(1<=เอ็น <= 9).<br />นี้ถูกแปลเป็นสไตล์ในตัวและควรจะตรงกับรูปแบบที่ระบุ(ไม่อนุญาตให้ต่อท้ายหรือคำนำหน้า)<br />มิฉะนั้นมันจะเป็นเพียงย่อหน้าปกติที่มีสไตล์ที่สอดคล้องกัน. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`ขึ้นอยู่กับ'หัวข้อไม่มีสไตล์<br />ถ้า(ยังไม่มีข้อความ>=2)แล้ว'Heading 2'จะถูกใช้มิฉะนั้น'Heading 1'<br />คำต่อท้ายใดๆที่ได้รับอนุญาตแต่Aspose.Wordsผู้นำเข้าใช้หมายเลข"1"และ"2"ตามลำดับ. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Ersชนะบรรจุที่ซับซ้อน

ตารางด้านล่างแสดงตัวอย่างของการใช้Markdownคอนเทนเนอร์ที่ซับซ้อนในAspose.Words:

| Markdownคุณลักษณะ | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />ชื่อต่อท้ายในลักษณะเป็นตัวเลือกแต่ผู้นำเข้าAspose.Wordsใช้หมายเลขเรียงลำดับ 1, 2, 3, .... ในกรณีของคำพูดที่ซ้อนกัน<br />รังจะถูกกำหนดผ่านทางรูปแบบที่สืบทอด. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | รายการที่มีสัญลักษณ์แสดงโดยใช้หมายเลขย่อหน้า:<br />`ListFormat.ApplyBulletDefault()`<br />สามารถมี 3 ประเภทของรายการสัญลักษณ์ กต่างกันในรูปแบบตัวเลขของระดับแรกมาก เหล่านี้คือ:`‘-’`,`‘+’`หรือ`‘*’`ตามลำดับ. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | รายการสั่งซื้อจะถูกแสดงโดยใช้หมายเลขย่อหน้า:<br />`ListFormat.ApplyNumberDefault()`<br />อาจมีเครื่องหมายรูปแบบหมายเลข 2 ตัว:‘.’และ‘)’ เครื่องหมายเริ่มต้นคือ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### โต๊ะ

Aspose.Wordsยังช่วยให้การแปลตารางเป็นDOMดังแสดงด้านล่าง:

| Markdownคุณลักษณะ | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/),[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)และ[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)ชั้นเรียน. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## ดูเพิ่มเติม

* [การทำงานกับMarkdownคุณสมบัติ](/words/java/working-with-markdown-features/)

