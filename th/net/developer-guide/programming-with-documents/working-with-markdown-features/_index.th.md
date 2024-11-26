---
title: การทำงานกับคุณสมบัติ Markdown ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับคุณสมบัติ Markdown
linktitle: การทำงานกับคุณสมบัติ Markdown
description: "วิธีใช้คุณสมบัติ Markdown โดยใช้ C# คุณลักษณะทั้งหมดจะแสดงเป็นรูปแบบที่สอดคล้องกันหรือการจัดรูปแบบโดยตรง"
type: docs
weight: 420
url: /th/net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

หัวข้อนี้อธิบายวิธีการใช้คุณลักษณะ Markdown โดยใช้ Aspose.Words Markdown เป็นวิธีง่ายๆ ในการจัดรูปแบบข้อความธรรมดาที่สามารถแปลงเป็น HTML ได้อย่างง่ายดาย Aspose.Words รองรับคุณสมบัติ Markdown ต่อไปนี้:

- หัวเรื่อง
- บล็อกโควต
- กฎแนวนอน
- เน้นตัวหนา
- เน้นตัวเอียง

การใช้งานฟีเจอร์ Markdown ส่วนใหญ่เป็นไปตามข้อกำหนด `CommonMark` ใน Aspose.Words API และฟีเจอร์ทั้งหมดจะแสดงเป็นรูปแบบที่สอดคล้องกันหรือการจัดรูปแบบโดยตรง ซึ่งหมายความว่า

- ตัวหนาและตัวเอียงจะแสดงเป็น `Font.Bold` และ `Font.Italic`
- หัวเรื่องเป็นย่อหน้าที่มีหัวเรื่อง 1 - หัวเรื่อง 6 รูปแบบ
- เครื่องหมายคำพูดคือย่อหน้าที่มี "เครื่องหมายคำพูด" อยู่ในชื่อรูปแบบ
-HorizontalRule คือย่อหน้าที่มีรูปร่างของ HorizionalRule

{{% alert color="primary" %}}

มีความแตกต่างในการแปล Markdown เป็น Aspose.Words Document Object Model (DOM) ซึ่งอธิบายไว้ในบทความ [แปล Markdown เป็น Document Object Model (DOM)](/words/th/net/translate-markdown-to-document-object-model/)

{{% /alert %}}

## เอกสาร Markdown พร้อมเน้น

ส่วนนี้จะแสดงวิธีสร้างเอกสาร markdown โดยเน้นตามที่ระบุด้านล่าง

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

ข้อมูลโค้ดต่อไปนี้สามารถใช้เพื่อสร้างเอกสาร markdown ที่ระบุข้างต้น

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## เอกสาร Markdown พร้อมส่วนหัว

ส่วนนี้จะแสดงวิธีสร้างเอกสาร markdown โดยมีหัวข้อต่างๆ ดังต่อไปนี้:

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

ข้อมูลโค้ดต่อไปนี้สามารถใช้เพื่อสร้างเอกสาร markdown ที่ระบุข้างต้น

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## เอกสาร Markdown พร้อมเครื่องหมายคำพูดแบบบล็อก

ส่วนนี้จะแสดงวิธีสร้างเอกสาร markdown ด้วยเครื่องหมายคำพูดแบบบล็อกตามที่ระบุด้านล่าง:

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

ข้อมูลโค้ดต่อไปนี้สามารถใช้เพื่อสร้างเอกสาร markdown ที่ระบุข้างต้น

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## เอกสาร Markdown พร้อมกฎแนวนอน

ส่วนนี้จะแสดงวิธีสร้างเอกสาร markdown ด้วยกฎแนวนอนตามที่ระบุด้านล่าง:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

ข้อมูลโค้ดต่อไปนี้สามารถใช้เพื่อสร้างเอกสาร markdown ที่ระบุข้างต้น

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## การอ่านเอกสาร Markdown

ข้อมูลโค้ดต่อไปนี้จะแสดงวิธีการอ่านเอกสาร markdown

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## ระบุตัวเลือกการบันทึก Markdown

Aspose.Words API มีคลาส [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) เพื่อระบุตัวเลือกเพิ่มเติมขณะบันทึกเอกสารเป็นรูปแบบ Markdown

ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการระบุตัวเลือกการบันทึก Markdown ต่างๆ

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## วิธีจัดแนวเนื้อหาภายในตารางขณะส่งออกไปยัง Markdown

Aspose.Words API ให้การแจงนับ [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) ซึ่งกำหนดทิศทางการจัดตำแหน่งเพื่อจัดแนวเนื้อหาในตารางขณะส่งออกไปยังเอกสาร Markdown ตัวอย่างโค้ดต่อไปนี้สาธิตวิธีการจัดแนวเนื้อหาภายในตาราง

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
