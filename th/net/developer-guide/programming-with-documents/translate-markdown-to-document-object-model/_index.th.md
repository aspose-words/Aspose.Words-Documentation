---
title: แปล Markdown เป็น DOM
second_title: Aspose.Words สำหรับ .NET
articleTitle: แปล Markdown เป็น Document Object Model (DOM)
linktitle: แปล Markdown เป็น Document Object Model (DOM)
type: docs
description: "แปลเอกสาร Markdown เป็น Document Object Model และย้อนกลับโดยใช้ C# คุณจึงสามารถทำงานกับ Markdown ที่มีอยู่ที่ซับซ้อนและสร้างเอกสาร Markdown โดยทางโปรแกรมตั้งแต่เริ่มต้นได้"
weight: 20
url: /th/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

หากต้องการอ่าน จัดการ และแก้ไขเนื้อหาและการจัดรูปแบบของเอกสารโดยทางโปรแกรม คุณต้องแปลเป็น Aspose.Words Document Object Model (DOM)

ตรงกันข้ามกับเอกสาร Word Markdown ไม่สอดคล้องกับ DOM ที่อธิบายไว้ในบทความ [Aspose.Words Document Object Model (DOM)](/words/th/net/aspose-words-document-object-model/) อย่างไรก็ตาม Aspose.Words มีกลไกของตัวเองในการแปลเอกสาร Markdown เป็น DOM และย้อนหลัง เพื่อให้เราสามารถทำงานกับองค์ประกอบต่างๆ เช่น การจัดรูปแบบข้อความ ตาราง ส่วนหัว และอื่นๆ ได้สำเร็จ

บทความนี้จะอธิบายวิธีการแปลฟีเจอร์ต่างๆ ของ markdown เป็น Aspose.Words DOM และแปลงกลับเป็นรูปแบบ Markdown ได้อย่างไร

## ความซับซ้อนของการแปล Markdown – DOM – Markdown

ปัญหาหลักของกลไกนี้ไม่ใช่แค่การแปล Markdown เป็น DOM เท่านั้น แต่ยังต้องทำการแปลงแบบย้อนกลับด้วย เพื่อบันทึกเอกสารกลับเป็นรูปแบบ Markdown โดยสูญเสียน้อยที่สุด มีองค์ประกอบหลายอย่าง เช่น เครื่องหมายคำพูดหลายระดับ ซึ่งการแปลงแบบย้อนกลับไม่ใช่เรื่องเล็กน้อย

เครื่องมือแปลของเราช่วยให้ผู้ใช้ไม่เพียงทำงานกับองค์ประกอบที่ซับซ้อนในเอกสาร Markdown ที่มีอยู่ แต่ยังสามารถสร้างเอกสารของตนเองในรูปแบบ Markdown ด้วยโครงสร้างดั้งเดิมตั้งแต่ต้น หากต้องการสร้างองค์ประกอบต่างๆ คุณต้องใช้สไตล์ที่มีชื่อเฉพาะตามกฎบางอย่างที่อธิบายไว้ในบทความนี้ สไตล์ดังกล่าวสามารถสร้างโดยทางโปรแกรมได้

## หลักการแปลทั่วไป

เราใช้การจัดรูปแบบ [Font](https://reference.aspose.com/words/net/aspose.words/font/) สำหรับบล็อกแบบอินไลน์ เมื่อไม่มีการโต้ตอบโดยตรงสำหรับคุณลักษณะ Markdown ใน Aspose.Words DOM เราจะใช้ลักษณะอักขระที่มีชื่อที่ขึ้นต้นด้วยคำพิเศษบางคำ

สำหรับบล็อกคอนเทนเนอร์ เราใช้การสืบทอดรูปแบบเพื่อแสดงคุณลักษณะ Markdown ที่ซ้อนกัน ในกรณีนี้ แม้ว่าจะไม่มีคุณลักษณะที่ซ้อนกัน แต่เราก็ยังใช้ลักษณะย่อหน้าด้วยชื่อที่ขึ้นต้นด้วยคำพิเศษบางคำ

รายการสัญลักษณ์แสดงหัวข้อย่อยและลำดับคือคอนเทนเนอร์บล็อกใน Markdown เช่นกัน การซ้อนของพวกมันจะแสดงในรูปแบบ DOM เช่นเดียวกับบล็อกคอนเทนเนอร์อื่นๆ ทั้งหมดที่ใช้การสืบทอดสไตล์ อย่างไรก็ตาม นอกจากนี้ รายการใน DOM มีการจัดรูปแบบตัวเลขที่สอดคล้องกันในรูปแบบรายการหรือการจัดรูปแบบย่อหน้า

## บล็อกแบบอินไลน์

เราใช้การจัดรูปแบบ [Font](https://reference.aspose.com/words/net/aspose.words/font/) เมื่อแปลคุณลักษณะ markdown แบบอินไลน์ **Bold**, *Italic* หรือ ~~Strikethrough~~

|  คุณสมบัติ Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

เราใช้ลักษณะอักขระที่มีชื่อที่ขึ้นต้นด้วยคำว่า `InlineCode` ตามด้วย dot `(.)` ที่เป็นตัวเลือก และ backticks ```(`)``` จำนวนหนึ่งสำหรับฟีเจอร์ `InlineCode` หากพลาด backtick ไปจำนวนหนึ่ง ระบบจะใช้ backtick หนึ่งอันเป็นค่าเริ่มต้น

|  คุณสมบัติ Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  คลาส [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  คลาส [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  คลาส [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## บล็อกคอนเทนเนอร์

เอกสารคือลำดับของบล็อกคอนเทนเนอร์ เช่น ส่วนหัว ย่อหน้า รายการ เครื่องหมายคำพูด และอื่นๆ บล็อกคอนเทนเนอร์แบ่งได้เป็น 2 ประเภท: บล็อกใบและคอนเทนเนอร์แบบซับซ้อน บล็อกใบไม้มีได้เฉพาะเนื้อหาแบบอินไลน์เท่านั้น ในทางกลับกัน คอนเทนเนอร์ที่ซับซ้อนก็สามารถมีบล็อกคอนเทนเนอร์อื่นๆ ได้ รวมถึงบล็อกใบไม้ด้วย

### บล็อกใบ

ตารางด้านล่างแสดงตัวอย่างการใช้บล็อก Markdown Leaf ใน Aspose.Words:

|  คุณสมบัติ Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  นี่คือย่อหน้าธรรมดาที่มีรูปร่างตามแนวนอน:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”` โดยที่ (1&lt;= N &lt;= 9)<br /> ข้อมูลนี้ได้รับการแปลเป็นรูปแบบบิวท์อินและควรเป็นรูปแบบที่ระบุทุกประการ (ไม่อนุญาตให้ใช้ส่วนต่อท้ายหรือคำนำหน้า)<br /> มิฉะนั้นจะเป็นเพียงย่อหน้าธรรมดาที่มีสไตล์สอดคล้องกัน |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (ถ้าระดับหัวเรื่อง 1)<br /> `---` (หากส่วนหัวระดับ 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”` ตามรูปแบบ `“Heading N”`<br /> ถ้า (N &gt;= 2) จะใช้ `“Heading 2”` มิฉะนั้นจะใช้ `“Heading 1”`<br /> อนุญาตให้ใช้ส่วนต่อท้ายใดก็ได้ แต่ผู้นำเข้า Aspose.Words ใช้ตัวเลข "1" และ "2" ตามลำดับ |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` และ `[info string]` เป็นทางเลือก |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### คอนเทนเนอร์ที่ซับซ้อน

ตารางด้านล่างแสดงตัวอย่างการใช้ Markdown Complex Containers ใน Aspose.Words:

|  คุณสมบัติ Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> ส่วนต่อท้ายในชื่อลักษณะเป็นทางเลือก แต่ตัวนำเข้า Aspose.Words ใช้หมายเลขลำดับ 1, 2, 3, …. ในกรณีที่มีเครื่องหมายคำพูดซ้อนกัน<br /> การซ้อนถูกกำหนดผ่านสไตล์ที่สืบทอดมา |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  รายการสัญลักษณ์แสดงหัวข้อย่อยจะแสดงโดยใช้หมายเลขย่อหน้า:<br /> `ListFormat.ApplyBulletDefault()`<br /> รายการสัญลักษณ์แสดงหัวข้อย่อยสามารถมีได้ 3 ประเภท ต่างกันเพียงรูปแบบการกำหนดหมายเลขของระดับแรกเท่านั้น เหล่านี้คือ: `‘-’`, `‘+’` หรือ `‘*’` ตามลำดับ |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  รายการที่เรียงลำดับจะแสดงโดยใช้หมายเลขย่อหน้า:<br /> `ListFormat.ApplyNumberDefault()`<br /> เครื่องหมายรูปแบบตัวเลขมีได้ 2 แบบ: '." และ ')'. เครื่องหมายเริ่มต้นคือ '.' |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### ตาราง

Aspose.Words ยังอนุญาตให้แปลตารางเป็น DOM ดังที่แสดงด้านล่าง:

|  คุณสมบัติ Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `ก | b`<br />`-|-`<br />`c | ด` |  คลาส [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) และ [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## ดูสิ่งนี้ด้วย

* [การทำงานกับคุณสมบัติ Markdown](/words/th/net/working-with-markdown-features/)

