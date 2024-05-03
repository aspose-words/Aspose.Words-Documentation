---
title: ทํางานกับ Markdown คุณสมบัติใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับ Markdown คุณสมบัติต่าง ๆ
linktitle: ทํางานกับ Markdown คุณสมบัติต่าง ๆ
description: "วิธี ใช้ งาน Markdown คุณสมบัติที่ใช้ Java. ลักษณะ เหล่า นี้ ทุก อย่าง มี การ แสดง ให้ เห็น ว่า เป็น แบบ หรือ แบบ ที่ ตรง กัน."
type: docs
weight: 420
url: /th/java/working-with-markdown-features/
---

บทความ นี้ พิจารณา วิธี ที่ จะ ใช้ Markdown คุณสมบัติที่ใช้ Aspose.Words. Markdown เป็นวิธีง่ายๆ ในการฟอร์แมตข้อความธรรมดา ที่สามารถแปลงเป็น HTML ได้ Aspose.Words รองรับรายการต่อไปนี้ Markdown คุณสมบัติ:

- มุ่งหน้า
- กล่องข้อความ
- กฎทางแนวนอน
- การเน้นตัวหนา
- เน้นตัวเอียง

เดอะ Markdown การใช้งานคุณสมบัติส่วนใหญ่ต่อไปนี้ `CommonMark` สัดส่วนใน Aspose.Words API และ ลักษณะ ทุก อย่าง ก็ ถูก แทน ด้วย แบบ หรือ แบบ ที่ ตรง กัน. ซึ่งหมายความว่า

- ตัวหนาและตัวตั้งตัวแทน `Font.Bold` ถึง `Font.Italic`
- มุ่งหน้าไปเป็นวรรคที่ 1 มุ่งหน้า 6 รูปแบบ
- การอ้างถึงคือ paragraphy with " Quoto" ในชื่อสไตล์
- แนวนอนคือย่อหน้าที่มี `HorizontalRule` รูปร่าง

{{% alert color="primary" %}}

มีความแตกต่างของการแปล Markdown ถึง Aspose.Words Document Object Model (DOM) อธิบายในบทความ [แปล Markdown ถึง Document Object Model (DOM)](/words/th/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown เอกสารต่าง ๆ ที่มีเครื่องหมาย (imphases)

ส่วนนี้แสดงให้เห็นวิธีผลิต markdown เอกสารที่มีหัวเรื่องอยู่ด้านล่าง:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

ส่วนต่าง ๆ ของโค้ดต่อไปนี้สามารถใช้ในการสร้างส่วนต่าง ๆ ด้านบนได้ markdown เอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown เอกสารที่มีหัวเรื่อง

ส่วนนี้แสดงให้เห็นวิธีผลิต markdown เอกสารที่มีหัวเรื่องอยู่ด้านล่าง:

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

ส่วน ต่าง ๆ ของ รหัส ต่อ ไป นี้ สามารถ ใช้ เพื่อ ผลิต ส่วน ที่ อยู่ ข้าง บน ได้ markdown เอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown เอกสารที่มีส่วนที่อ้างถึงบล็อก

ส่วนนี้แสดงให้เห็นวิธีผลิต markdown เอกสารที่มีการอ้างถึงบล็อกตามที่กําหนดด้านล่างนี้:

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

ส่วน ต่าง ๆ ของ รหัส ต่อ ไป นี้ สามารถ ใช้ เพื่อ ผลิต ส่วน ที่ อยู่ ข้าง บน ได้ markdown เอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown เอกสารมีกฏทางแนวนอน

ส่วนนี้แสดงให้เห็นวิธีผลิต markdown เอกสารทางแนวนอน กฎที่กําหนดให้:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

ส่วนต่าง ๆ ของโค้ดต่อไปนี้สามารถใช้ในการสร้างส่วนต่าง ๆ ด้านบนได้ markdown เอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## กําลังอ่าน Markdown เอกสาร

รหัสต่อไปนี้แสดงวิธีการอ่าน markdown เอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## ระบุ Markdown บันทึกตัวเลือก

Aspose.Words API ให้ [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) คลาสที่จะกําหนดตัวเลือกเพิ่มเติมขณะบันทึกเอกสาร Markdown รูปแบบ

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ระบุ ข้อ แตก ต่าง Markdown บันทึกทางเลือก

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## วิธี จัด เนื้อหา ภาย ใน โต๊ะ ขณะ ส่ง ออก ไป Markdown

Aspose.Words API ให้ [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) การเรียงรวมซึ่งกําหนดทิศทางการจัดตําแหน่งที่จะจัดเรียงเนื้อหาในตารางระหว่างการส่งออกไปยัง Markdown เอกสาร ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี จัด เรียง เนื้อหา ภาย ใน โต๊ะ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
