---
title: แปลงเอกสารเป็น Markdown ใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: แปลงเอกสารเป็น Markdown
linktitle: แปลงเอกสารเป็น Markdown
type: docs
description: "แปลงเอกสารในรูปแบบการโหลดใด ๆ ที่รองรับ Markdown และในทางกลับกัน โดยใช้ Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /th/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown เป็นรูปแบบที่นิยมใช้สําหรับการทําเครื่องหมายข้อความ และจะถูกเปลี่ยนเป็น HTML, PDF, DOCX หรือรูปแบบอื่น ๆ ผู้พัฒนาหลายคนเลือกรูปแบบนี้สําหรับการเขียนเอกสาร เตรียมบทความสําหรับตีพิมพ์บนบล็อก อธิบายโครงการ และอื่น ๆ

Markdown เป็นที่ได้รับความนิยมมาก เนื่องจากง่ายต่อการทํางานกับรูปแบบนี้ เช่นเดียวกับที่อาจถูกเปลี่ยนเป็นรูปแบบอื่น ๆ ด้วยเหตุผลนี้ Aspose.Words ให้ความสามารถในการแปลงเอกสารเป็น [รูปแบบการโหลดที่สนับสนุน](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) ถึง Markdown และในทางกลับกัน Aspose.Words ยังสนับสนุนคนที่ได้รับความนิยมมากที่สุด [บันทึกรูปแบบ](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

ตอนนี้ ความสามารถในการทํางานกับ Markdown มี การ พัฒนา รูป แบบ ต่าง ๆ อย่าง กระตือรือร้น เพื่อ ทํา ให้ คุณ มี โอกาส มาก ขึ้น ที่ จะ ทํา งาน ที่ สะดวก สบาย ด้วย เอกสาร ต่าง ๆ.

## แปลงเอกสารเป็น Markdown

แปลงเอกสารเป็น <span notrans="<span notrans=" Markdown"=""></span>'"> คุณแค่ต้องโหลดเอกสารในรูปแบบที่รองรับ หรือสร้างโปรแกรมใหม่ งั้นคุณก็ต้องบันทึกเอกสาร Markdown รูปแบบ

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแปลง DOCX เป็น Markdown

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## กําหนดตัวเลือกบันทึกเมื่อแปลงเป็น Markdown

Aspose.Words ให้ความสามารถในการใช้ [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) คลาสที่จะทํางานกับตัวเลือกขั้นสูง เมื่อมีการบันทึกเอกสาร Markdown รูปแบบ นอกจากการสืบทอดหรือการโอเวอร์โหลดคุณสมบัติอื่น ๆ คุณสมบัติหลายอย่างที่เจาะจงสําหรับ Markdown ได้มีการเพิ่มรูปแบบด้วย ยกตัวอย่างเช่น [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) คุณสมบัติที่จะใช้ควบคุมการจัดตําแหน่งเนื้อหาในตาราง หรือ [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) ถึง [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) เพื่อควบคุมวิธีบันทึกภาพเมื่อมีการแปลงเอกสารเป็น Markdown รูปแบบ

## รับการรองรับ Markdown คุณสมบัติต่าง ๆ

Aspose.Words รองรับต่อไปนี้ Markdown คุณสมบัติ ซึ่ง ส่วน ใหญ่ ตาม มา `CommonMark` ข้อกําหนดใน Aspose.Words API และเป็นตัวแทนของรูปแบบที่เหมาะสม หรือรูปแบบโดยตรง:

* การ มุ่ง หน้า เป็น วรรค ที่ มี หัว เรื่อง 1 – มุ่ง หน้า ไป ทาง 6 แบบ
* บล็อกตัวย่อคือ วรรคที่มี "ฟ้า" ในชื่อสไตล์
* SteadedCode is paragraph with "indedCode" ในชื่อสไตล์
* (เพลง) รหัสคือ paragraph with "FourcedCode" ในชื่อสไตล์
* InlineCode ดําเนินการด้วย "InlineCode" ใน `Font` ชื่อรูปแบบ
* กฎในแนวนอนคือ วรรคกับ `HorizontalRule` รูปร่าง
* เน้น หนัก
* เน้น ตัว เอน
*
* รายการ ต่าง ๆ นับ หรือ วรรค ที่ ออก เสียง ออก มา
* โต๊ะนี้แสดงด้วย `Table` ชั้น
* ลิ้งค์แสดงเป็น `FieldHyperlink` ชั้น

ตัว อย่าง ต่อ ไป นี้ แสดง วิธี สร้าง เอกสาร ด้วย แบบ บาง อย่าง และ เก็บ ไว้ Markdown

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

ผล ของ ตัว อย่าง รหัส นี้ ปรากฏ ข้าง ล่าง.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## ข้อ แนะ ที่ มี ประโยชน์

มีหลายความแตกต่างและกรณีที่น่าสนใจ มีการเรียนรู้ที่คุณสามารถทํางานกับ Markdown แฟ้มที่ยืดหยุ่นกว่าและง่าย ตัว อย่าง เช่น มี ความ สามารถ ที่ จะ ใช้:

* setext haading ที่ช่วยให้คุณสามารถสร้างหัวหลายบรรทัดใน <span notrans="<span notrans=" Markdown"=""></span>'"> ในขณะที่กําลังมุ่งไป Markdown สามารถเป็นสายเดียว September Hading เป็นพื้นฐานจากรูปแบบ "Hading N" และระดับของมันคือ 1 หรือ 2 ถ้า N ใน "Hading N" มากกว่าหรือเท่ากับ 2 แล้ว Setext Hading ก็มาจาก "Hading 2" ไม่เช่นนั้น บน "Hading 1"
* เครื่องหมายต่าง ๆ สําหรับอันดับแรกของรายการปล่อยข่าว ("-", "+" หรือ "*", เครื่องหมายปริยายคือ "-") และชนิดต่าง ๆ ของจํานวนรายการลําดับ (" หรือ ""). เครื่องหมายปริยายคือ ".".
