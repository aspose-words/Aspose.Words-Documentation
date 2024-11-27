---
title: Mail Mergeแม่แบบในC#
second_title: Aspose.Wordsสำหรับ.NET
articleTitle: Mail Mergeแม่แบบ
linktitle: Mail Mergeแม่แบบ
type: docs
description: "สร้างเทมเพลตMail Mergeเพื่อกำหนดเนื้อหาคงที่ในเอกสารที่ส่งออกแล้วสร้างเอกสารผสานโดยใช้ฟิลด์ผสานในC#."
keywords: "create Mail Merge template с#"
weight: 10
url: /th/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

เป็นเรื่องปกติที่จะใช้เทมเพลตผสานเป็นเอกสารพื้นฐานสำหรับการดำเนินการMail Mergeถ้าเป็นMail MergeหรือMail Merge Mail mergeกับภูมิภาคที่มีประสิทธิภาพมากขึ้นและเป็นที่นิยมกว่าที่เรียบง่ายmail merge. ง่ายMail Mergeถือเป็นกรณีเฉพาะของMail Mergeกับภูมิภาคที่พื้นที่เป็นเอกสารทั้งหมด ทั้งหมดจะอธิบายไว้ในบทความถัดไป"ประเภทของการดำเนินการMail Merge"ในรายละเอียดเพิ่มเติม.

เทมเพลตช่วยให้มั่นใจได้ว่าข้อความในเอกสารที่ผสานเอาต์พุตถูกจัดรูปแบบอย่างถูกต้องและการดำเนินการMail Mergeจะรับประกันได้ว่าข้อความจากแหล่งข้อมูลจะถูกป้อนลงในเทมเพลตผสานอย่างถูกต้อง.

Aspose.Wordsให้ความสามารถในการสร้างMail Mergeเทมเพลตเพื่อกำหนดเนื้อหาคงที่และจากนั้นสร้างเอกสารผสานเอกสารโดยใช้ฟิลด์ผสาน ดังนั้นแม่แบบผสานจะมีข้อความที่จำเป็นซึ่งเป็นเหมือนกันในทุกเอกสารที่ส่งออกและเขตข้ ข้อมูลจากแหล่งข้อมูลที่ระบุจะถูกเพิ่มลงในเทมเพลตผสานผ่านฟิลด์เหล่านี้ในระหว่างการ.

## เทมเพลตMail Mergeคืออะไร

แม่แบบMail Mergeเป็นเอกสารส่วนบุคคลที่มีข้อมูลคงที่และฟิลด์ที่ผสานที่คุณต้องการให้ข้อความตัวแป แม่แบบผสานสามารถอยู่ในรูปแบบใดๆที่สนับสนุนฟิลด์เช่น, DOC, DOCX, DOT, DOTX, RTF. นอกจากนี้คุณยังสามารถใช้mustacheแม่แบบที่อธิบายไว้ในบทความ"Mustacheไวยากรณ์แม่แบบ"ในรายละเอียดเพิ่มเติม.

คุณสามารถสร้างเทมเพลตผสานให้เป็นแบบจำลองสำหรับเอกสารใหม่และควรมีข้อความห การเพิ่มฟิลด์ผสานภายในเทมเพลตจะแสดงข้อมูลการกำหนดค่าส่วนบุคคลเช่นชื่อหรือที่อยู่ การดำเนินการMail Mergeจะแทรกข้อมูลส่วนบุคคลจากแหล่งข้อมูลของคุณโดยอัตโนมัติไปยังเอกสารแม่แบบผสาน.

นอกจากนี้คุณสามารถเพิ่มพื้นที่Mail Mergeในเทมเพลตของคุณโดยการใส่ฟิลด์สองฟิลด์Mail Mergeเพื่อทำเครื่องหมายจุดเริ่มต้นและจุดสิ้นสุดของพื้นที่จดหมาย บทความถัดไป"ประเภทของการดำเนินการMail Merge"อธิบายว่าในรายละเอียดเพิ่มเติม.

## สร้างเทมเพลตMail Merge

คุณสามารถสร้างเทมเพลตและเพิ่มฟิลด์ผสานเฉพาะให้กับเทมเพลตซึ่งจะถูกแทนที่ด้วยค่าจากแหล่งข้อมูลด้วยตนเองเช่นใช้Microsoft Wordหรือโดยโปรแกรมโดยใช้Aspose.Words ในบทความนี้เราจะดูที่วิธีการเขียนโปรแกรมของการสร้างแม่แบบ.

ใช้คลาสของ[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)เพื่อสร้างเทมเพลตผสานที่จำเป็นโดยใช้Aspose.Words คุณสามารถรวมข้อความฟิลด์ผสานและการแบ่งบรรทัดในแม่แบบดังกล่าวโดยใช้วิธีการ[InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/),[InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/)และ[InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีสร้างเทมเพลตMail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

รูปภาพด้านล่างแสดงเทมเพลตที่สร้างขึ้น:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## ปรับแต่งคุณสมบัติของเทมเพลทMail Merge

Aspose.Wordsช่วยให้คุณสามารถปรับแต่งแม่แบบของคุณผ่านคุณสมบัติมากมาย. การปรับแต่งแม่แบบจะอธิบายไว้ด้านล่างผ่านตัวอย่างของการปรับแต่งคุณสมบัติบางอย่า.

### ปรับแต่งคุณสมบัติของภาพ

คุณสามารถระบุคุณสมบัติของรูปภาพโดยใช้คลาสของ[ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) โปรดทราบว่าคุณสามารถแทรกรูปภาพจากฐานข้อมูลตามที่อธิบายไว้ใน [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุชื่อไฟล์ภาพและขนาดภาพ:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### ปรับแต่งคุณสมบัติของข้อความ

คุณสามารถใช้คุณสมบัติ [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) เพื่อแทรกข้อความลงในเอกสารสำหรับฟิลด์ผสานปัจจุบันได้ นอกจากนี้ คุณยังสามารถเปลี่ยนการจัดรูปแบบของข้อความและย่อหน้าภายในเทมเพลตของคุณได้โดยใช้คลาส [Font](https://reference.aspose.com/words/net/aspose.words/font/) และ [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) คุณสามารถจัดการข้อความที่จะแทรกก่อนหรือหลังฟิลด์ผสานได้โดยใช้คุณสมบัติ [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) และ [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) ที่รวมอยู่ในคลาส [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกกล่องกาเครื่องหมายหรือHTMLระหว่างการดำเนินการMail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

นอกจากนี้คุณยังสามารถตรวจสอบการดำเนินงานของ`HandleMergeField`ชั้นจาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## ดูเพิ่มเติม

* สำหรับรายละเอียดเพิ่มเติมเกี่ยวกับวิธีการสร้างแม่แบบในMicrosoft Wordด้วยตนเอง,โปรดตรวจสอบ [สร้างเทมเพลต](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) บทความในเอกสารMicrosoft
