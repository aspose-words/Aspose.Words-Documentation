---
title: แปลงเอกสารเป็นMarkdownในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: แปลงเอกสารเป็นMarkdown
linktitle: แปลงเอกสารเป็นMarkdown
type: docs
description: "แปลงเอกสารในรูปแบบโหลดที่รองรับเป็นMarkdownและในทางกลับกันโดยใช้Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /th/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdownเป็นรูปแบบที่นิยมใช้ในการมาร์กอัปข้อความและจะมีการแปลงต่อไปHTML, PDF, DOCX, หรือรูปแบบอื่นๆ นักพัฒนาหลายคนเลือกรูปแบบนี้สำหรับการเขียนเอกสารเตรียมบทความสำหรับการตีพิมพ์.

Markdownเป็นที่นิยมมากเพราะมันเป็นเรื่องง่ายที่จะทำงานกับรูปแบบนี้เช่นเดียวกับที่จะสามารถแ ด้วยเหตุนี้Aspose.Wordsจึงให้ความสามารถในการแปลงเอกสารใน[รูปแบบการโหลดที่สนับสนุนใดๆ](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)เป็นMarkdownและในทางกลับกัน–Aspose.Wordsยังรองรับความนิยมมากที่สุด[บันทึกรูปแบบ](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

ตอนนี้ฟังก์ชันการทำงานสำหรับการทำงานกับรูปแบบMarkdownกำลังได้รับการพัฒนาอย่างแข็งขันเพื่อให้คุณมีโอกาสมากขึ้นสำหรับการทำงานที่สะดวกและสะดวกสบายกับเอกสาร.

## แปลงเอกสารเป็นMarkdown

ในการแปลงเอกสารเป็นMarkdownคุณเพียงแค่ต้องโหลดเอกสารในรูปแบบใดก็ได้ที่สนับสนุนหรือส จากนั้นคุณจำเป็นต้องบันทึกเอกสารลงในรูปแบบMarkdown.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงDOCXเป็นMarkdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นMarkdown

Aspose.Wordsให้ความสามารถในการใช้ชั้นเรียน[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)ในการทำงานกับตัวเลือกขั้นสูงเมื่อบันทึกเอกสารในรูปแบบMarkdown นอกจากคุณสมบัติการสืบทอดหรือการบรรทุกเกินพิกัดอื่นๆยังมีการเพิ่มคุณสมบัติที่เฉพาะเจาะจงสำหรับรูปแบบMarkdownด้วย ตัวอย่างเช่น[TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/)คุณสมบัติเพื่อควบคุมการจัดตำแหน่งของเนื้อหาในตารางหรือ[ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback)และ[ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder)เพื่อควบคุมวิธีการบันทึกภาพเมื่อแปลงเอกสารเป็นรูปแบบMarkdown.

## รองรับคุณสมบัติMarkdown

Aspose.Wordsขณะนี้รองรับคุณสมบัติดังต่อไปนี้Markdownซึ่งส่วนใหญ่เป็นไปตามข้อกำหนด`CommonMark`ในAspose.WordsAPIและจะแสดงเป็นรูปแบบที่เหมาะสมหรือการจัดรูปแบบโดยตรง:

* ส่วนหัวเป็นย่อหน้าที่มีHeading 1–Heading 6รูปแบบ
* คำคมบล็อกเป็นย่อหน้าที่มี"อ้าง"ในชื่อสไตล์
* IndentedCodeเป็นย่อหน้าที่มี"IndentedCode"ในชื่อสไตล์
* FencedCodeเป็นย่อหน้าที่มี"FencedCode"ในชื่อสไตล์
* InlineCodeจะรันด้วย"InlineCode"ในชื่อสไตล์`Font`
* กฎแนวนอนเป็นย่อหน้าที่มีรูปร่าง`HorizontalRule`
* เน้นตัวหนา
* เน้นตัวเอียง
* StrikeThroughการจัดรูปแบบ
* รายการเป็นย่อหน้าที่มีหมายเลขหรือสัญลักษณ์
* ตารางจะแสดงด้วยคลาสของ`Table`
* ลิงก์ถูกแสดงเป็นคลาสของ`FieldHyperlink`

ตัวอย่างต่อไปนี้แสดงวิธีการสร้างเอกสารที่มีลักษณะบางอย่างและบันทึกไว้ที่Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

ผลลัพธ์ของตัวอย่างรหัสนี้แสดงด้านล่าง.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## เคล็ดลับที่เป็นประโยชน์

มีหลายความแตกต่างและกรณีที่น่าสนใจที่มีการเรียนรู้ซึ่งคุณสามารถทำงานกับMarkdownไฟล์ที่มีความยืดหยุ่นมากขึ้นและสะดวกสบาย ตัวอย่างเช่นมีความสามารถในการใช้:

* SetextHeadingที่ช่วยให้คุณสร้างส่วนหัวหลายบรรทัดในMarkdownในขณะที่ส่วนหัวปกติในMarkdownสามารถเป็นบรรทัดเดียว SetextHeadingขึ้นอยู่กับ"หัวข้อไม่มีข้อความ"รูปแบบและระดับของมันสามารถเป็น 1 หรือ 2 ถ้าไม่มีข้อความใน"หัวข้อไม่มีข้อความ"มากกว่าหรือเท่ากับ 2 แล้วSetextHeadingที่ตรงกันจะขึ้นอยู่กับ"Heading 2"มิฉะนั้นใน"Heading 1".
* เครื่องหมายที่แตกต่างกันสำหรับรายการที่มีสัญลักษณ์แสดงหัวข้อย่อยระดับแรก("-","+"หรือ"*"เครื่องหมายเริ่มต้นคือ"-")และประเภทที่แตกต่างกันของหมายเลขสำหรับรายการสั่งซื้อ("."หรือ")"เครื่องหมายเริ่มต้นคือ".").
