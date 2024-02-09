---
title: แปลงเอกสารเป็น Markdown ในรูปแบบ C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แปลงเอกสารเป็น Markdown
linktitle: แปลงเอกสารเป็น Markdown
type: docs
description: "แปลงเอกสารในรูปแบบโหลดที่รองรับเป็น Markdown และในทางกลับกันโดยใช้ C#"
keywords: how to convert a document to markdown c#
weight: 40
url: /th/net/convert-a-document-to-markdown/
---

Markdown เป็นรูปแบบยอดนิยมที่ใช้ในการมาร์กอัปข้อความและแปลงเป็น HTML, PDF, DOCX หรือรูปแบบอื่นๆ เพิ่มเติม นักพัฒนาหลายคนเลือกรูปแบบนี้สำหรับการเขียนเอกสาร เตรียมบทความสำหรับการตีพิมพ์ในบล็อก อธิบายโครงการ และอื่นๆ

Markdown ได้รับความนิยมอย่างมากเนื่องจากง่ายต่อการใช้งานกับรูปแบบนี้ และสามารถแปลงเป็นรูปแบบอื่นได้อย่างง่ายดาย ด้วยเหตุนี้ Aspose.Words จึงมีความสามารถในการแปลงเอกสารใน [รูปแบบการโหลดที่รองรับ](https://reference.aspose.com/words/net/aspose.words/loadformat/) เป็น Markdown และในทางกลับกัน Aspose.Words ยังรองรับ [บันทึกรูปแบบ](https://reference.aspose.com/words/net/aspose.words/saveformat/) ยอดนิยมส่วนใหญ่อีกด้วย

ขณะนี้ฟังก์ชันการทำงานกับรูปแบบ Markdown กำลังได้รับการพัฒนาอย่างแข็งขันเพื่อให้คุณมีโอกาสมากขึ้นในการทำงานกับเอกสารที่สะดวกและสบาย

## แปลงเอกสาร

หากต้องการแปลงเอกสารเป็น Markdown คุณเพียงแค่ต้องโหลดเอกสารในรูปแบบที่รองรับหรือสร้างเอกสารใหม่โดยทางโปรแกรม จากนั้นคุณจะต้องบันทึกเอกสารเป็นรูปแบบ Markdown

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแปลง DOCX เป็น Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

คุณยังสามารถระบุโฟลเดอร์จริงที่คุณต้องการบันทึกรูปภาพเมื่อส่งออกเอกสารเป็นรูปแบบ Markdown ตามค่าเริ่มต้น Aspose.Words จะบันทึกรูปภาพในโฟลเดอร์เดียวกับที่บันทึกไฟล์เอกสาร แต่คุณสามารถแทนที่ลักษณะการทำงานนี้ได้โดยใช้คุณสมบัติ [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/)

การระบุโฟลเดอร์ผ่าน **ImagesFolder** ยังมีประโยชน์หากคุณบันทึกเอกสารลงในสตรีมและ Aspose.Words ไม่มีโฟลเดอร์สำหรับบันทึกรูปภาพ

หากไม่มี **ImagesFolder** ที่ระบุ **ImagesFolder** จะถูกสร้างขึ้นโดยอัตโนมัติ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการระบุโฟลเดอร์สำหรับรูปภาพเมื่อบันทึกเอกสารลงในสตรีม:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็น Markdown

Aspose.Words ให้ความสามารถในการใช้คลาส [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) เพื่อทำงานกับตัวเลือกขั้นสูงเมื่อบันทึกเอกสารเป็นรูปแบบ Markdown คุณสมบัติส่วนใหญ่จะสืบทอดหรือโอเวอร์โหลดคุณสมบัติที่มีอยู่แล้วภายในคลาส [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) Namespace อื่นๆ นอกจากนั้น ยังมีการเพิ่มคุณสมบัติจำนวนหนึ่งที่เฉพาะเจาะจงสำหรับรูปแบบ Markdown อีกด้วย ตัวอย่างเช่น คุณสมบัติ [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) เพื่อควบคุมการจัดแนวเนื้อหาในตาราง หรือ [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) และ [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) เพื่อควบคุมวิธีการบันทึกรูปภาพเมื่อแปลงเอกสารเป็นรูปแบบ Markdown

## คุณสมบัติ Markdown ที่รองรับ

ปัจจุบัน Aspose.Words รองรับฟีเจอร์ Markdown ต่อไปนี้ ซึ่งส่วนใหญ่เป็นไปตามข้อกำหนด `CommonMark` ใน Aspose.Words API และแสดงเป็นรูปแบบที่เหมาะสมหรือการจัดรูปแบบโดยตรง:

* ส่วนหัวคือย่อหน้าที่มีรูปแบบหัวข้อ 1 – หัวข้อ 6
* Blockquotes คือย่อหน้าที่มี "Quote" อยู่ในชื่อรูปแบบ
* IndentedCode คือย่อหน้าที่มี "IndentedCode" ในชื่อสไตล์
* FencedCode คือย่อหน้าที่มี "FencedCode" ในชื่อสไตล์
* InlineCode ทำงานด้วย "InlineCode" ในชื่อรูปแบบ `Font`
* กฎแนวนอนคือย่อหน้าที่มีรูปร่าง `HorizontalRule`
* เน้นตัวหนา
* เน้นตัวเอียง
* การจัดรูปแบบ StrikeThrough
* รายการเป็นย่อหน้าที่มีหมายเลขหรือหัวข้อย่อย
* ตารางแสดงด้วยคลาส `Table`
* ลิงก์จะแสดงเป็นคลาส `FieldHyperlink`

ตัวอย่างต่อไปนี้แสดงวิธีสร้างเอกสารด้วยสไตล์บางอย่างและบันทึกลงใน Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

ผลลัพธ์ของตัวอย่างโค้ดนี้แสดงอยู่ด้านล่าง

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## เคล็ดลับที่เป็นประโยชน์

มีความแตกต่างและกรณีที่น่าสนใจหลายประการโดยได้เรียนรู้ว่าไฟล์ Markdown ใดที่คุณสามารถทำงานกับไฟล์ Markdown ได้อย่างยืดหยุ่นและสะดวกยิ่งขึ้น ตัวอย่างเช่น มีความสามารถในการใช้งาน:

* SetextHeading ที่ให้คุณสร้างส่วนหัวแบบหลายบรรทัดใน Markdown ในขณะที่ส่วนหัวปกติใน Markdown ต้องเป็นบรรทัดเดียวเท่านั้น SetextHeading ขึ้นอยู่กับสไตล์ "Heading N" และระดับของมันสามารถเป็นได้เพียง 1 หรือ 2 เท่านั้น ถ้า N ใน "Heading N" มากกว่าหรือเท่ากับ 2 ดังนั้น SetextHeading ที่สอดคล้องกันจะขึ้นอยู่กับ "Heading 2" มิฉะนั้นจะอยู่บน "หัวข้อที่ 1".
* เครื่องหมายที่แตกต่างกันสำหรับระดับแรกของรายการสัญลักษณ์แสดงหัวข้อย่อย ("-", "+" หรือ "*" เครื่องหมายเริ่มต้นคือ "-") และการกำหนดหมายเลขประเภทต่างๆ สำหรับรายการที่เรียงลำดับ ("." หรือ ")" เครื่องหมายเริ่มต้นคือ ".")
