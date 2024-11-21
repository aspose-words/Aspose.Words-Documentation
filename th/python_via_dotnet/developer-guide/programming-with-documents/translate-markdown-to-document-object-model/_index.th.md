---
title: แปล Markdown เป็น DOM
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: แปล Markdown เป็น Document Object Model (DOM)
linktitle: แปล Markdown เป็น Document Object Model (DOM)
type: docs
description: "แปลงเอกสาร Markdown เป็น Document Object Model และย้อนกลับโดยใช้ Python คุณจึงสามารถทำงานกับ Markdown ที่มีอยู่ที่ซับซ้อนและสร้างเอกสาร Markdown โดยทางโปรแกรมตั้งแต่เริ่มต้นได้"
weight: 20
url: /th/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

หากต้องการอ่าน จัดการ และแก้ไขเนื้อหาและการจัดรูปแบบของเอกสารโดยทางโปรแกรม คุณต้องแปลเป็น Aspose.Words Document Object Model (DOM)

ตรงกันข้ามกับเอกสาร Word Markdown ไม่สอดคล้องกับ DOM ที่อธิบายไว้ในบทความ [Aspose.Words Document Object Model (DOM)](/words/th/python-net/aspose-words-document-object-model/) อย่างไรก็ตาม Aspose.Words มีกลไกของตัวเองในการแปลเอกสาร Markdown เป็น DOM และย้อนหลัง เพื่อให้เราสามารถทำงานกับองค์ประกอบต่างๆ เช่น การจัดรูปแบบข้อความ ตาราง ส่วนหัว และอื่นๆ ได้สำเร็จ

บทความนี้จะอธิบายวิธีการแปลฟีเจอร์ต่างๆ ของ markdown เป็น Aspose.Words DOM และแปลงกลับเป็นรูปแบบ Markdown ได้อย่างไร

## ความซับซ้อนของการแปล Markdown – DOM – Markdown

ปัญหาหลักของกลไกนี้ไม่ใช่แค่การแปล Markdown เป็น DOM เท่านั้น แต่ยังต้องทำการแปลงแบบย้อนกลับด้วย เพื่อบันทึกเอกสารกลับเป็นรูปแบบ Markdown โดยสูญเสียน้อยที่สุด มีองค์ประกอบหลายอย่าง เช่น เครื่องหมายคำพูดหลายระดับ ซึ่งการแปลงแบบย้อนกลับไม่ใช่เรื่องเล็กน้อย

เครื่องมือแปลของเราช่วยให้ผู้ใช้ไม่เพียงทำงานกับองค์ประกอบที่ซับซ้อนในเอกสาร Markdown ที่มีอยู่ แต่ยังสามารถสร้างเอกสารของตนเองในรูปแบบ Markdown ด้วยโครงสร้างดั้งเดิมตั้งแต่ต้น หากต้องการสร้างองค์ประกอบต่างๆ คุณต้องใช้สไตล์ที่มีชื่อเฉพาะตามกฎบางอย่างที่อธิบายไว้ในบทความนี้ สไตล์ดังกล่าวสามารถสร้างโดยทางโปรแกรมได้

## หลักการแปลทั่วไป

เราใช้การจัดรูปแบบ [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) สำหรับบล็อกแบบอินไลน์ เมื่อไม่มีการโต้ตอบโดยตรงสำหรับคุณลักษณะ Markdown ใน Aspose.Words DOM เราจะใช้ลักษณะอักขระที่มีชื่อที่ขึ้นต้นด้วยคำพิเศษบางคำ

สำหรับบล็อกคอนเทนเนอร์ เราใช้การสืบทอดรูปแบบเพื่อแสดงคุณลักษณะ Markdown ที่ซ้อนกัน ในกรณีนี้ แม้ว่าจะไม่มีคุณลักษณะที่ซ้อนกัน แต่เราก็ยังใช้ลักษณะย่อหน้าด้วยชื่อที่ขึ้นต้นด้วยคำพิเศษบางคำ

รายการสัญลักษณ์แสดงหัวข้อย่อยและลำดับคือคอนเทนเนอร์บล็อกใน Markdown เช่นกัน การซ้อนของพวกมันจะแสดงในรูปแบบ DOM เช่นเดียวกับบล็อกคอนเทนเนอร์อื่นๆ ทั้งหมดที่ใช้การสืบทอดสไตล์ อย่างไรก็ตาม นอกจากนี้ รายการใน DOM มีการจัดรูปแบบตัวเลขที่สอดคล้องกันในรูปแบบรายการหรือการจัดรูปแบบย่อหน้า

## บล็อกแบบอินไลน์

เราใช้การจัดรูปแบบ [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) เมื่อแปลคุณลักษณะ markdown แบบอินไลน์ **Bold**, *Italic* หรือ ~~Strikethrough~~

|  คุณสมบัติ Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

เราใช้ลักษณะอักขระที่มีชื่อที่ขึ้นต้นด้วยคำว่า `InlineCode` ตามด้วย dot `(.)` ที่เป็นตัวเลือก และ backticks ```(`)``` จำนวนหนึ่งสำหรับฟีเจอร์ `InlineCode` หากพลาด backtick ไปจำนวนหนึ่ง ระบบจะใช้ backtick หนึ่งอันเป็นค่าเริ่มต้น

|  คุณสมบัติ Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Number of backticks is missed, one backtick will be used by default.
inlineCode1BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode")
builder.font.style = inlineCode1BackTicks
builder.writeln("Text with InlineCode style with 1 backtick")

# There will be 3 backticks.
inlineCode3BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode.3")
builder.font.style = inlineCode3BackTicks
builder.writeln("Text with InlineCode style with 3 backtick")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  คลาส [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  คลาส [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## บล็อกคอนเทนเนอร์

เอกสารคือลำดับของบล็อกคอนเทนเนอร์ เช่น ส่วนหัว ย่อหน้า รายการ เครื่องหมายคำพูด และอื่นๆ บล็อกคอนเทนเนอร์แบ่งได้เป็น 2 ประเภท: บล็อกใบและคอนเทนเนอร์แบบซับซ้อน บล็อกใบไม้มีได้เฉพาะเนื้อหาแบบอินไลน์เท่านั้น ในทางกลับกัน คอนเทนเนอร์ที่ซับซ้อนก็สามารถมีบล็อกคอนเทนเนอร์อื่นๆ ได้ รวมถึงบล็อกใบไม้ด้วย

### บล็อกใบ

ตารางด้านล่างแสดงตัวอย่างการใช้บล็อก Markdown Leaf ใน Aspose.Words:

|  คุณสมบัติ Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  นี่คือย่อหน้าธรรมดาที่มีรูปร่างตามแนวนอน:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"` โดยที่ (1&lt;= N &lt;= 9)<br /> ข้อมูลนี้ได้รับการแปลเป็นรูปแบบบิวท์อินและควรเป็นรูปแบบที่ระบุทุกประการ (ไม่อนุญาตให้ใช้ส่วนต่อท้ายหรือคำนำหน้า)<br /> มิฉะนั้นจะเป็นเพียงย่อหน้าธรรมดาที่มีสไตล์สอดคล้องกัน |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (ถ้าระดับหัวเรื่อง 1)<br /> `---` (หากส่วนหัวระดับ 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"` ตามรูปแบบ `"Heading N"`<br /> ถ้า (N &gt;= 2) จะใช้ `"Heading 2"` มิฉะนั้นจะใช้ `"Heading 1"`<br /> อนุญาตให้ใช้ส่วนต่อท้ายใดก็ได้ แต่ผู้นำเข้า Aspose.Words ใช้ตัวเลข "1" และ "2" ตามลำดับ |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.paragraph_format.style_name = "Heading 1"
builder.writeln("This is an H1 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading1 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading1")
builder.paragraph_format.style = setexHeading1
doc.styles.get_by_name("SetexHeading1").base_style_name = "Heading 1"
builder.writeln("Setex Heading level 1")

builder.paragraph_format.style = doc.styles.get_by_name("Heading 3")
builder.writeln("This is an H3 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading2 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading2")
builder.paragraph_format.style = setexHeading2
doc.styles.get_by_name("SetexHeading2").base_style_name = "Heading 3"

# Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.writeln("Setex Heading level 2")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.setext_heading_example.md"){{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.style_name = "IndentedCode[some suffix]"`     |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` และ `[info string]` เป็นทางเลือก |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### คอนเทนเนอร์ที่ซับซ้อน

ตารางด้านล่างแสดงตัวอย่างการใช้ Markdown Complex Containers ใน Aspose.Words:

|  คุณสมบัติ Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> ส่วนต่อท้ายในชื่อลักษณะเป็นทางเลือก แต่ตัวนำเข้า Aspose.Words ใช้หมายเลขลำดับ 1, 2, 3, …. ในกรณีที่มีเครื่องหมายคำพูดซ้อนกัน<br /> การซ้อนถูกกำหนดผ่านสไตล์ที่สืบทอดมา |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# By default a document stores blockquote style for the first level.
builder.paragraph_format.style_name = "Quote"
builder.writeln("Blockquote")

# Create styles for nested levels through style inheritance.
quoteLevel2 = doc.styles.add(aw.StyleType.PARAGRAPH, "Quote1")
builder.paragraph_format.style = quoteLevel2
doc.styles.get_by_name("Quote1").base_style_name = "Quote"
builder.writeln("1. Nested blockquote")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.quote_example.md"){{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  รายการสัญลักษณ์แสดงหัวข้อย่อยจะแสดงโดยใช้หมายเลขย่อหน้า:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> รายการสัญลักษณ์แสดงหัวข้อย่อยสามารถมีได้ 3 ประเภท ต่างกันเพียงรูปแบบการกำหนดหมายเลขของระดับแรกเท่านั้น เหล่านี้คือ: `'-'`, `'+'` หรือ `'*'` ตามลำดับ |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  รายการที่เรียงลำดับจะแสดงโดยใช้หมายเลขย่อหน้า:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> เครื่องหมายรูปแบบตัวเลขสามารถมีได้ 2 แบบ: `'.'` และ `')'` เครื่องหมายเริ่มต้นคือ `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### ตาราง

Aspose.Words ยังอนุญาตให้แปลตารางเป็น DOM ดังที่แสดงด้านล่าง:

|  คุณสมบัติ Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `เป็น\ | b`<br />`-\ | -`<br />`C\ | ด` |  คลาส [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) และ [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Add the first row.
builder.insert_cell()
builder.writeln("a")
builder.insert_cell()
builder.writeln("b")
builder.end_row()

# Add the second row.
builder.insert_cell()
builder.writeln("c")
builder.insert_cell()
builder.writeln("d")
builder.end_table()

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |                                                                |

## ดูสิ่งนี้ด้วย

* [การทำงานกับคุณสมบัติ Markdown](/words/th/python-net/working-with-markdown-features/)

