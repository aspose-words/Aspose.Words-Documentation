---
title: แปลงเอกสารเป็นMarkdownในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: แปลงเอกสารเป็นMarkdown
linktitle: แปลงเอกสารเป็นMarkdown
type: docs
description: "แปลงเอกสารในรูปแบบโหลดที่รองรับเป็นMarkdownและในทางกลับกันโดยใช้C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /th/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdownเป็นรูปแบบที่นิยมใช้ในการมาร์กอัปข้อความและการแปลงต่อไปHTML, PDF, DOCX, หรือรูปแบบอื่นๆ นักพัฒนาหลายคนเลือกรูปแบบนี้สำหรับการเขียนเอกสารเตรียมบทความสำหรับการตีพิมพ์.

Markdownเป็นที่นิยมมากเพราะมันเป็นเรื่องง่ายที่จะทำงานกับรูปแบบนี้เช่นเดียวกับที่จะสามารถแ ด้วยเหตุนี้Aspose.Wordsจึงให้ความสามารถในการแปลงเอกสารใน[any supported load format](https://reference.aspose.com/words/cpp/aspose.words/)เป็นMarkdownและในทางกลับกัน–Aspose.Wordsยังรองรับความนิยมมากที่สุด[save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

ตอนนี้ฟังก์ชันการทำงานสำหรับการทำงานกับรูปแบบMarkdownกำลังได้รับการพัฒนาอย่างแข็งขันเพื่อให้คุณมีโอกาสมากขึ้นสำหรับการทำงานที่สะดวกและสะดวกสบายกับเอกสาร.

## แปลงเอกสาร

ในการแปลงเอกสารเป็นMarkdownคุณเพียงแค่ต้องโหลดเอกสารในรูปแบบใดก็ได้ที่สนับสนุนหรือส จากนั้นคุณจำเป็นต้องบันทึกเอกสารลงในรูปแบบMarkdown.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลงDOCXเป็นMarkdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

นอกจากนี้คุณยังสามารถระบุโฟลเดอร์ทางกายภาพที่คุณต้องการบันทึกภาพเมื่อส่งออกเอกสารไปยังรูปแบบMarkdown โดยค่าเริ่มต้นAspose.Wordsบันทึกรูปภาพในโฟลเดอร์เดียวกันกับที่บันทึกแฟ้มเอกสารแต่คุณสามารถแทนที่ลักษณะการทำงานนี้โดยใช้คุณสมบัติ[ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

การระบุโฟลเดอร์ผ่าน**ImagesFolder**ก็มีประโยชน์เช่นกันถ้าคุณบันทึกเอกสารไปยังสตรีมและAspose.Wordsไม่มีโฟลเด.

หากไม่มี**ImagesFolder**ที่ระบุไว้ระบบจะถูกสร้างขึ้นโดยอัตโนมัติ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุโฟลเดอร์สำหรับรูปภาพเมื่อบันทึกเอกสารไปยังกระ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## ระบุตัวเลือกการบันทึกเมื่อแปลงเป็นMarkdown

Aspose.Wordsให้ความสามารถในการใช้ชั้นเรียน[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/)ในการทำงานกับตัวเลือกขั้นสูงเมื่อบันทึกเอกสารในรูปแบบMarkdown คุณสมบัติส่วนใหญ่จะสืบทอดหรือโหลดคุณสมบัติที่มีอยู่แล้วภายในคลาสเนมสเปซอื่น[Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) นอกจากนั้นยังมีการเพิ่มคุณสมบัติที่เฉพาะเจาะจงสำหรับรูปแบบMarkdownอีกด้วย ตัวอย่างเช่นคุณสมบัติ[TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/)เพื่อควบคุมการจัดตำแหน่งของเนื้อหาในตารางหรือ[ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/)และ[ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/)เพื่อควบคุมวิธีการบันทึกภาพเมื่อแปลงเอกสารเป็นรูปแบบMarkdown.

## รองรับคุณสมบัติMarkdown

Aspose.Wordsขณะนี้รองรับคุณสมบัติดังต่อไปนี้Markdownซึ่งส่วนใหญ่เป็นไปตามข้อกำหนด`CommonMark`ในAspose.WordsAPIและจะแสดงเป็นรูปแบบที่เหมาะสมหรือการจัดรูปแบบโดยตรง:

* ส่วนหัวเป็นย่อหน้าที่มีหัวข้อ1-หัวข้อ6รูปแบบ
* คำคมบล็อกเป็นย่อหน้าที่มี"อ้าง"ในชื่อสไตล์
* IndentedCodeเป็นย่อหน้าที่มี"IndentedCode"ในชื่อสไตล์
* FencedCodeเป็นย่อหน้าที่มี"FencedCode"ในชื่อสไตล์
* InlineCodeจะทำงานด้วย"InlineCode"ในชื่อสไตล์`Font`
* กฎแนวนอนเป็นย่อหน้าที่มีรูปร่าง`HorizontalRule`
* เน้นตัวหนา
* เน้นตัวเอียง
* StrikeThroughการจัดรูปแบบ
* รายการเป็นย่อหน้าที่มีหมายเลขหรือสัญลักษณ์
* ตารางจะแสดงด้วยคลาสของ`Table`
* ลิงก์ถูกแสดงเป็นคลาสของ`FieldHyperlink`

ตัวอย่างต่อไปนี้แสดงวิธีการสร้างเอกสารที่มีลักษณะบางอย่างและบันทึกไว้ที่Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

ผลลัพธ์ของตัวอย่างรหัสนี้แสดงด้านล่าง.

![markdown-example-aspose-words-cpp](markdown-example.png)

## เคล็ดลับที่เป็นประโยชน์

มีหลายความแตกต่างและกรณีที่น่าสนใจที่มีการเรียนรู้ซึ่งคุณสามารถทำงานกับMarkdownไฟล์ที่มีความยืดหยุ่นมากขึ้นและสะดวกสบาย ตัวอย่างเช่นมีความสามารถในการใช้:

* SetextHeadingที่ช่วยให้คุณสร้างส่วนหัวหลายบรรทัดในMarkdownในขณะที่ส่วนหัวปกติในMarkdownสามารถเป็นบรรทัดเดียว SetextHeadingขึ้นอยู่กับ"หัวข้อไม่มีข้อความ"และระดับของมันสามารถเป็น1หรือ2 ถ้าไม่มีข้อความใน"หัวข้อไม่มีข้อความ"มากกว่าหรือเท่ากับ2แล้วSetextHeadingที่ตรงกันจะขึ้นอยู่กับ"หัวข้อ2"มิฉะนั้นใน"หัวข้อ1".
* เครื่องหมายที่แตกต่างกันสำหรับรายการที่มีสัญลักษณ์แสดงหัวข้อย่อยระดับแรก("-","+"หรือ"*"เครื่องหมายเริ่มต้นคือ"-")และประเภทที่แตกต่างกันของหมายเลขสำหรับรายการสั่งซื้อ("."หรือ")"เครื่องหมายเริ่มต้นคือ".").
