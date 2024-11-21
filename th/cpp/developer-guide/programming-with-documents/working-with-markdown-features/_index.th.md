---
title: การทำงานกับMarkdownคุณสมบัติในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับMarkdownคุณสมบัติ
linktitle: การทำงานกับMarkdownคุณสมบัติ
description: "วิธีการใช้คุณลักษณะMarkdownโดยใช้C++ นรูปแบบที่สอดคล้องกันหรือการจัดรูปแบบโดยตรง."
type: docs
weight: 420
url: /th/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

หัวข้อนี้อธิบายวิธีใช้คุณลักษณะMarkdownโดยใช้Aspose.Words Markdownเป็นวิธีง่ายๆในการจัดรูปแบบข้อความธรรมดาที่สามารถแปลงเป็นHTML Aspose.Wordsรองรับคุณลักษณะต่อไปนี้Markdown:

- หัวข้อ
- บล็อกคำพูด
- กฎแนวนอน
- เน้นตัวหนา
- เน้นตัวเอียง

การใช้งานคุณลักษณะMarkdownส่วนใหญ่จะเป็นไปตามข้อกำหนด`CommonMark`ในAspose.WordsAPIและคุณลักษณะทั้งหมดจะแสดงเป็นรูปแบบที่สอดคล้องกันหรือการจัดรูปแบบโดยตรง ซึ่งหมายความว่า

- ตัวหนาและตัวเอียงจะแสดงเป็น`Font.Bold`และ`Font.Italic`.
- ส่วนหัวเป็นย่อหน้าที่มีหัวข้อ1-หัวข้อ6รูปแบบ.
- คำพูดเป็นย่อหน้าที่มี"อ้าง"ในชื่อสไตล์.
- HorizontalRuleเป็นย่อหน้าที่มีรูปร่างHorizontalRule.

{{% alert color="primary" %}}

มีความแตกต่างของการแปลMarkdownไปยังAspose.Wordsรูปแบบวัตถุเอกสาร(DOM)ที่อธิบายไว้ในบทความ [แปลMarkdownไปยังรูปแบบวัตถุเอกสาร(DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdownเอกสารที่มีการเน้น

ส่วนนี้จะแสดงวิธีการสร้างเอกสารmarkdownโดยเน้นตามที่ระบุไว้ด้านล่าง:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

ข้อมูลโค้ดต่อไปนี้สามารถใช้ในการผลิตเอกสารที่ให้ไว้ข้างต้นmarkdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


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

ข้อมูลโค้ดต่อไปนี้สามารถใช้ในการผลิตเอกสารที่ให้ไว้ข้างต้นmarkdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

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

ข้อมูลโค้ดต่อไปนี้สามารถใช้ในการผลิตเอกสารที่ให้ไว้ข้างต้นmarkdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdownเอกสารที่มีกฎแนวนอน

ส่วนนี้จะแสดงวิธีการสร้างเอกสารmarkdownด้วยกฎแนวนอนตามที่ระบุไว้ด้านล่าง:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

ข้อมูลโค้ดต่อไปนี้สามารถใช้ในการผลิตเอกสารที่ให้ไว้ข้างต้นmarkdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## การอ่านเอกสารMarkdown

ข้อมูลโค้ดต่อไปนี้จะแสดงวิธีการอ่านเอกสารmarkdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## ระบุตัวเลือกMarkdownบันทึก

Aspose.WordsAPIให้[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/)คลาสที่จะระบุตัวเลือกเพิ่มเติมในขณะที่บันทึกเอกสารลงในรูปแบบMarkdown.

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการระบุตัวเลือกการบันทึกต่างๆMarkdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## วิธีการจัดเนื้อหาภายในตารางขณะส่งออกเป็นMarkdown

Aspose.WordsAPIให้TableContentAlignmentการแจงนับซึ่งกำหนดทิศทางการจัดตำแหน่งเพื่อจัดตำแหน่งเนื้อหาในตารางในขณะที่ส่งออกไปยังเอกสารMarkdown ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการจัดตำแหน่งเนื้อหาภายในตาราง.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
