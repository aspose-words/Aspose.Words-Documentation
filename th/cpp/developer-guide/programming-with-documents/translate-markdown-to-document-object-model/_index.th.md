---
title: แปลMarkdownไปยังรูปแบบวัตถุเอกสาร(DOM)
second_title: Aspose.WordsสำหรับC++
articleTitle: แปลMarkdownไปยังรูปแบบวัตถุเอกสาร(DOM)
linktitle: แปลMarkdownไปยังรูปแบบวัตถุเอกสาร(DOM)
type: docs
description: "ทาร์สเลทMarkdownเอกสารไปยังเอกสารรูปแบบวัตถุและกลับโดยใช้C++ ดังนั้นคุณสามารถทำงานกับที่ซับซ้อนที่มีอยู่Markdownและโปรแกรมสร้างเอกสารMarkdownจากรอยขีดข่วน."
weight: 20
url: /th/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

ในการอ่านจัดการและปรับเปลี่ยนเนื้อหาและการฟอร์แมตของเอกสารคุณต้องแปลไปยังโมเดลออบเจกต์ของเอกสารAspose.Words(DOM).

ในทางตรงกันข้ามกับเอกสารคำMarkdownไม่สอดคล้องกับDOMอธิบายไว้ใน [Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)](/words/cpp/aspose-words-document-object-model/) บทความ. อย่างไรก็ตามAspose.WordsมีกลไกของตัวเองสำหรับการแปลเอกสารMarkdownไปยังDOMและกลับ,เพื่อให้เราสามาร.

บทความนี้อธิบายวิธีการแปลคุณลักษณะต่างๆmarkdownเป็นAspose.WordsDOMและกลับไปยังรูปแบบMarkdown.

## ความซับซ้อนของการแปลMarkdown – DOM – Markdown

ปัญหาหลักของกลไกนี้ไม่ได้เป็นเพียงการแปลMarkdownถึงDOMแต่ยังจะทำการเปลี่ยนแปลงย้อนกลับ-เพื่อบันทึกเอกสารกลับไปยังรูปแบบMarkdownที่มีการสูญเสียน้อยที่สุด มีองค์ประกอบเช่นคำพูดหลายระดับซึ่งการเปลี่ยนแปลงย้อนกลับไม่น่ารำคาญ.

เครื่องมือแปลของเราช่วยให้ผู้ใช้ไม่เพียงแต่ทำงานกับองค์ประกอบที่ซับซ้อนในเอกสารที่มีอยู่Markdownแต่ยังสร้างเอกสารของตนเองในรูปแบบของMarkdownด้วยโครงสร้างเดิมตั้งแต่เริ่มต้น เพื่อสร้างองค์ประกอบต่างๆคุณจำเป็นต้องใช้รูปแบบที่มีชื่อเฉพาะตามกฎระเบียบบางอย่างที่อธิบายไว้ในบทความนี้ รูปแบบดังกล่าวสามารถสร้างโปรแกรม.

## หลักการแปลทั่วไป

เราใช้[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)การจัดรูปแบบสำหรับบล็อกแบบอินไลน์ เมื่อไม่มีการติดต่อโดยตรงสำหรับคุณลักษณะMarkdownในAspose.WordsDOMเราใช้รูปแบบตัวอักษรที่มีชื่อที่เริ่มต้นจาก.

สำหรับบล็อกคอนเทนเนอร์เราใช้มรดกสไตล์เพื่อแสดงคุณลักษณะMarkdownที่ซ้อนกัน ในกรณีนี้แม้ในขณะที่ไม่มีคุณลักษณะที่ซ้อนกัน,เรายังใช้รูปแบบย่อหน้าที่มีชื่อที่เริ่มต้นจากคำพิเศ.

รายการที่มีสัญลักษณ์แสดงหัวข้อย่อยและสั่งเป็นบล็อกคอนเทนเนอร์ในMarkdownเช่นกัน รทำรังของพวกเขาจะแสดงในDOMเช่นเดียวกับบล็อกคอนเทนเนอร์อื่นๆทั้งหมดโดยใช้การสืบทอ อย่างไรก็ตาม,นอกจากนี้,รายการในDOMมีการจัดรูปแบบตัวเลขที่สอดคล้องกันทั้งในรูปแบบราย.

## บล็อกอินไลน์

เราใช้[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)การจัดรูปแบบเมื่อแปล**Bold**,*Italic*หรือ~~Strikethrough~~อินไลน์markdownคุณสมบัติ.

| Markdownคุณลักษณะ | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

เราใช้รูปแบบอักขระที่มีชื่อที่เริ่มต้นจากคำว่า`InlineCode`ตามด้วยจุดเสริม`(.)`และจำนวนของติ๊กหลัง```(`)```สำหรับคุณลักษณะ`InlineCode` หากมีข้อผิดพลาดหลายข้อผิดพลาดจะมีการใช้เครื่องหมายย้อนกลับหนึ่งตัวโดยค่าเริ่มต้น.

| Markdownคุณลักษณะ | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | คลาส[FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | คลาส[FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | คลาส[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## บล็อกคอนเทนเนอร์

เอกสารเป็นลำดับของคอนเทนเนอร์บล็อกเช่นส่วนหัวย่อหน้ารายการใบเสนอราคาและอื่ บล็อกคอนเทนเนอร์สามารถแบ่งออกเป็น2ชั้น:บล็อกใบและภาชนะบรรจุที่ซับซ้อน บล็อกใบสามารถมีเนื้อหาแบบอินไลน์เท่านั้น Contชนะบรรจุที่ซับซ้อนในที่สุดก็สามารถมีบล็อกภาชนะอื่นๆรวมทั้งบล็อกใบ.

### บล็อกใบ

ตารางด้านล่างแสดงตัวอย่างการใช้บล็อกใบMarkdownในAspose.Words:

| Markdownคุณลักษณะ | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | นี่เป็นย่อหน้าง่ายๆที่มีรูปร่างHorizontalRuleที่สอดคล้องกัน:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`ที่ไหน(1<=เอ็น <= 9).<br />นี้ถูกแปลเป็นสไตล์ในตัวและควรจะตรงกับรูปแบบที่ระบุ(ไม่อนุญาตให้ต่อท้ายหรือคำนำหน้า)<br />มิฉะนั้นมันจะเป็นเพียงย่อหน้าปกติที่มีสไตล์ที่สอดคล้องกัน. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`ขึ้นอยู่กับ`"Heading N"`สไตล์<br />ถ้า(ยังไม่มีข้อความ>=2),แล้ว`"Heading 2"`จะถูกใช้,มิฉะนั้น`"Heading 1"`<br />คำต่อท้ายใดๆที่ได้รับอนุญาตแต่ผู้นำเข้าAspose.Wordsใช้หมายเลข"1"และ"2"ตามลำดับ. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />`[.]`และ`[info string]`เป็นตัวเลือก. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Ersชนะบรรจุที่ซับซ้อน

ตารางด้านล่างแสดงตัวอย่างของการใช้Markdownคอนเทนเนอร์ที่ซับซ้อนในAspose.Words:

| Markdownคุณลักษณะ | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />ต่อท้ายในชื่อสไตล์เป็นตัวเลือกแต่ผู้นำเข้าAspose.Wordsใช้หมายเลขเรียงลำดับ1, 2, 3, .... ในกรณีของคำพูดที่ซ้อนกัน<br />รังจะถูกกำหนดผ่านทางรูปแบบที่สืบทอด. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | รายการที่มีสัญลักษณ์แสดงโดยใช้หมายเลขย่อหน้า:<br />`get_ListFormat()->ApplyBulletDefault()`<br />สามารถมี3ประเภทของรายการที่มีสัญลักษณ์ กต่างกันในรูปแบบตัวเลขของระดับแรกมาก เหล่านี้คือ:`‘-’`,`‘+’`หรือ`‘*’`ตามลำดับ. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | รายการสั่งซื้อจะถูกแสดงโดยใช้หมายเลขย่อหน้า:<br />`get_ListFormat()->ApplyNumberDefault()`<br />สามารถมีเครื่องหมายรูปแบบหมายเลข2:‘.’และ‘)’ เครื่องหมายเริ่มต้นคือ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### โต๊ะ

Aspose.Wordsยังช่วยให้การแปลตารางเป็นDOMดังแสดงด้านล่าง:

| Markdownคุณลักษณะ | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/),[Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)และ[Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/)ชั้นเรียน. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## ดูเพิ่มเติม

* [การทำงานกับMarkdownคุณสมบัติ](/words/cpp/working-with-markdown-features/)

