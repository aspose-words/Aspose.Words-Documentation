---
title: การทำงานกับMarkdownคุณสมบัติในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับMarkdownคุณสมบัติ
linktitle: การทำงานกับMarkdownคุณสมบัติ
description: "วิธีการใช้คุณลักษณะMarkdownโดยใช้Java นรูปแบบที่สอดคล้องกันหรือการจัดรูปแบบโดยตรง."
type: docs
weight: 420
url: /th/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

หัวข้อนี้อธิบายวิธีใช้คุณลักษณะMarkdownโดยใช้Aspose.Words Markdownเป็นวิธีง่ายๆในการจัดรูปแบบข้อความธรรมดาที่สามารถแปลงเป็นHTML Aspose.Wordsรองรับคุณลักษณะต่อไปนี้Markdown:

- หัวข้อ
- บล็อกคำพูด
- กฎแนวนอน
- เน้นตัวหนา
- เน้นตัวเอียง

การใช้งานคุณลักษณะMarkdownส่วนใหญ่จะเป็นไปตามข้อกำหนด`CommonMark`ในAspose.WordsAPIและคุณลักษณะทั้งหมดจะแสดงเป็นรูปแบบที่สอดคล้องกันหรือการจัดรูปแบบโดยตรง ซึ่งหมายความว่า

- ตัวหนาและตัวเอียงจะแสดงเป็น`Font.Bold`และ`Font.Italic`
- ส่วนหัวเป็นย่อหน้าที่มีลักษณะHeading 1-Heading 6
- คำพูดเป็นย่อหน้าที่มี"อ้าง"ในชื่อสไตล์
- HorizontalRuleเป็นย่อหน้าที่มีรูปร่าง`HorizontalRule`.

{{% alert color="primary" %}}

มีความแตกต่างของการแปลMarkdownไปยังAspose.Wordsรูปแบบวัตถุเอกสาร(DOM)ที่อธิบายไว้ในบทความ [แปลMarkdownไปยังรูปแบบวัตถุเอกสาร(DOM)](/words/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdownเอกสารที่มีการเน้น

ส่วนนี้จะแสดงวิธีการสร้างเอกสารmarkdownโดยเน้นตามที่ระบุไว้ด้านล่าง:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

ข้อมูลโค้ดต่อไปนี้สามารถใช้ในการผลิตเอกสารที่ให้ไว้ข้างต้นmarkdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdownเอกสารที่มีส่วนหัว

ส่วนนี้จะแสดงวิธีการสร้างเอกสารmarkdownด้วยส่วนหัวตามที่ระบุไว้ด้านล่าง:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

ข้อมูลโค้ดต่อไปนี้สามารถใช้ในการผลิตเอกสารที่ระบุไว้ข้างต้นmarkdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdownเอกสารที่มีคำพูดที่ถูกบล็อก

ส่วนนี้จะแสดงวิธีการสร้างเอกสารmarkdownด้วยใบเสนอราคาที่ถูกบล็อกตามที่ระบุไว้ด้านล่าง:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

ข้อมูลโค้ดต่อไปนี้สามารถใช้ในการผลิตเอกสารที่ระบุไว้ข้างต้นmarkdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdownเอกสารที่มีกฎแนวนอน

ส่วนนี้จะแสดงวิธีการสร้างเอกสารmarkdownด้วยกฎแนวนอนตามที่ระบุไว้ด้านล่าง:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

ข้อมูลโค้ดต่อไปนี้สามารถใช้ในการผลิตเอกสารที่ให้ไว้ข้างต้นmarkdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## การอ่านเอกสารMarkdown

ข้อมูลโค้ดต่อไปนี้จะแสดงวิธีการอ่านเอกสารmarkdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## ระบุตัวเลือกMarkdownบันทึก

Aspose.WordsAPIให้[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)คลาสที่จะระบุตัวเลือกเพิ่มเติมในขณะที่บันทึกเอกสารลงในรูปแบบMarkdown.

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการระบุตัวเลือกการบันทึกต่างๆMarkdown.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## วิธีการจัดเนื้อหาภายในตารางขณะส่งออกเป็นMarkdown

Aspose.WordsAPIให้[TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/)การแจงนับซึ่งกำหนดทิศทางการจัดตำแหน่งเพื่อจัดตำแหน่งเนื้อหาในตารางในขณะที่ส่งออกไปยังเอกสารMarkdown ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการจัดตำแหน่งเนื้อหาภายในตาราง.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
