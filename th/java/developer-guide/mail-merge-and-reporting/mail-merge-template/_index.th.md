---
title: Mail Mergeแม่แบบในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: Mail Mergeแม่แบบ
linktitle: Mail Mergeแม่แบบ
type: docs
description: "สร้างเทมเพลตMail Mergeเพื่อกำหนดเนื้อหาคงที่ในเอกสารที่ส่งออกแล้วสร้างเอกสารผสานโดยใช้ฟิลด์ผสานในJava."
keywords: "create Mail Merge template Java, Mail Merge Java"
weight: 10
url: /th/java/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

เป็นเรื่องปกติที่จะใช้เทมเพลตผสานเป็นเอกสารพื้นฐานสำหรับการดำเนินการMail Mergeถ้าเป็นMail MergeหรือMail Merge Mail mergeกับภูมิภาคที่มีประสิทธิภาพมากขึ้นและเป็นที่นิยมกว่าที่เรียบง่ายmail merge. SimpleMail Mergeถือเป็นกรณีเฉพาะของMail Mergeกับพื้นที่ที่พื้นที่เป็นเอกสารทั้งหมด ทั้งหมดจะอธิบายไว้ในบทความถัดไป"ประเภทของการดำเนินการMail Merge"ในรายละเอียดเพิ่มเติม.

เทมเพลตช่วยให้มั่นใจได้ว่าข้อความในเอกสารที่ผสานเอาต์พุตถูกจัดรูปแบบอย่างถูกต้องและการดำเนินการMail Mergeจะรับประกันได้ว่าข้อความจากแหล่งข้อมูลจะถูกป้อนลงในเทมเพลตผสานอย่างถูกต้อง.

Aspose.Wordsให้ความสามารถในการสร้างMail Mergeเทมเพลตเพื่อกำหนดเนื้อหาคงที่และจากนั้นสร้างเอกสารผสานเอกสารโดยใช้ฟิลด์ผสาน ดังนั้นแม่แบบผสานจะมีข้อความที่จำเป็นซึ่งเป็นเหมือนกันในทุกเอกสารที่ส่งออกและเขตข้ ข้อมูลจากแหล่งข้อมูลที่ระบุจะถูกเพิ่มลงในเทมเพลตผสานผ่านฟิลด์เหล่านี้ในระหว่างการ.

## เทมเพลตMail Mergeคืออะไร

แม่แบบMail Mergeเป็นเอกสารส่วนบุคคลที่มีข้อมูลคงที่และฟิลด์ที่ผสานที่คุณต้องการให้ข้อความตัวแป แม่แบบผสานสามารถอยู่ในรูปแบบใดๆที่สนับสนุนฟิลด์เช่น, DOC, DOCX, DOT, DOTX, RTF. นอกจากนี้คุณยังสามารถใช้mustacheแม่แบบที่อธิบายไว้ในบทความ"Mustacheไวยากรณ์แม่แบบ"ในรายละเอียดเพิ่มเติม.

คุณสามารถสร้างเทมเพลตผสานให้เป็นแบบจำลองสำหรับเอกสารใหม่และควรมีข้อความห การเพิ่มฟิลด์ผสานภายในเทมเพลตจะแสดงข้อมูลการกำหนดค่าส่วนบุคคลเช่นชื่อหรือที่อยู่ การดำเนินการMail Mergeจะแทรกข้อมูลส่วนบุคคลจากแหล่งข้อมูลของคุณโดยอัตโนมัติไปยังเอกสารแม่แบบผสาน.

นอกจากนี้คุณสามารถเพิ่มพื้นที่Mail Mergeในเทมเพลตของคุณโดยการใส่ฟิลด์สองฟิลด์Mail Mergeเพื่อทำเครื่องหมายจุดเริ่มต้นและจุดสิ้นสุดของพื้นที่จดหมาย บทความถัดไป"ประเภทของการดำเนินการMail Merge"อธิบายว่าในรายละเอียดเพิ่มเติม.

## สร้างเทมเพลตMail Merge

คุณสามารถสร้างเทมเพลตและเพิ่มฟิลด์ผสานเฉพาะให้กับเทมเพลตซึ่งจะถูกแทนที่ด้วยค่าจากแหล่งข้อมูลด้วยตนเองเช่นใช้Microsoft Wordหรือโดยโปรแกรมโดยใช้Aspose.Words ในบทความนี้เราจะดูที่วิธีการเขียนโปรแกรมของการสร้างแม่แบบ.

ใช้คลาสของ[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)เพื่อสร้างเทมเพลตผสานที่จำเป็นโดยใช้Aspose.Words การเขียนข้อความโฆษณา,การเขียนในนามคนอื่น,บทความ,การเขียนบทความใหม่,การเขียน[InsertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput(java.lang.String,int,java.lang.String,java.lang.String,int)), [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField(int,boolean)), และ[InsertParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertParagraph())วิธีการ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีสร้างเทมเพลตMail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeTemplate-CreateMailMergeTemplate.java" >}}

รูปภาพด้านล่างแสดงเทมเพลตที่สร้างขึ้น:

<img src="/words/java/mail-merge-template/mail-merge-template-1.png" alt="mail_merge_template_aspose_words_java" style="width:650px"/>

## ปรับแต่งคุณสมบัติของเทมเพลทMail Merge

Aspose.Wordsช่วยให้คุณสามารถปรับแต่งแม่แบบของคุณผ่านคุณสมบัติมากมาย. การปรับแต่งแม่แบบจะอธิบายไว้ด้านล่างผ่านตัวอย่างของการปรับแต่งคุณสมบัติบางอย่า.

### ปรับแต่งคุณสมบัติของภาพ

คุณสามารถระบุคุณสมบัติของรูปภาพโดยใช้คลาสของ[ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/) โปรดทราบว่าคุณสามารถแทรกรูปภาพจากฐานข้อมูลตามที่อธิบายไว้ใน [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java#L226).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุชื่อไฟล์ภาพและขนาดภาพ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-ImageFieldMerging.java" >}}

### ปรับแต่งคุณสมบัติของข้อความ

คุณสามารถใช้คลาส [ข้อความ]https://reference.aspose.com/words/java/com.aspose.words/Fieldmergingargs#Text)คุณสมบัติเพื่อแทรกข้อความลงในเอกสารสำหรับฟิลด์ผสานปัจจุบัน นอกจากนี้คุณสามารถเปลี่ยนการจัดรูปแบบของข้อความและย่อหน้าภายในแม่แบบของคุณ](https://reference.aspose.com/words/java/com.aspose.words/font/) และ [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) ได้ คุณสามารถจัดการข้อความที่จะแทรกก่อนหรือหลังฟิลด์ผสานได้โดยใช้คุณสมบัติ [TextBefore](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextBefore) และ [TextAfter](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#TextAfter) ที่รวมอยู่ในคลาส [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกกล่องกาเครื่องหมายหรือHTMLระหว่างการดำเนินการMail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

นอกจากนี้คุณยังสามารถตรวจสอบการดำเนินงานของ`HandleMergeField`ชั้นจาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Mail_Merge_And_Reporting/WorkingWithFields.java).

{{% /alert %}}

## ดูเพิ่มเติม

* สำหรับรายละเอียดเพิ่มเติมเกี่ยวกับวิธีการสร้างแม่แบบในMicrosoft Wordด้วยตนเอง,โปรดตรวจสอบ [สร้างเทมเพลต](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) บทความในเอกสารMicrosoft
