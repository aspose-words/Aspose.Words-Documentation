---
title: Mail Merge แม่แบบใน C++
second_title: Aspose.Words สำหรับ C++
articleTitle: Mail Merge เทมเพลต
linktitle: Mail Merge เทมเพลต
type: docs
description: "สร้าง Mail Merge แม่แบบเพื่อกำหนดเนื้อหาคงที่ในเอกสารผลลัพธ์และจากนั้นสร้างเอกสารผสานโดยใช้ฟิลด์."
keywords: "create Mail Merge template с++"
weight: 10
url: /th/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

เป็นเรื่องธรรมดาที่จะใช้แม่แบบผสานเป็นเอกสารฐานสำหรับ Mail Merge การดำเนินงานอย่างใดอย่างหนึ่งถ้ามันเป็นเรื่องง่าย Mail Merge หรือ Mail Merge กับภูมิภาค Mail merge กับภูมิภาคที่มีประสิทธิภาพมากขึ้นและเป็นที่นิยมกว่าที่เรียบง่าย mail merge. ง่าย Mail Merge ถือเป็นกรณีเฉพาะของ Mail Merge กับภูมิภาคที่ภูมิภาคเป็นเอกสารทั้งหมด ทั้งหมดจะมีการอธิบายไว้ในบทความถัดไป"ประเภทของ Mail Merge การดำเนินงาน"ในรายละเอียดเพิ่มเติม.

แม่แบบเพื่อให้แน่ใจว่าข้อความในเอกสารที่ผสานเอาต์พุตจะถูกจัดรูปแบบอย่างถูกต้องและ Mail Merge การดำเนินการรับประกันว่าข้อความจากแหล่งข้อมูลที่ถูกป้อนอย่างถูกต้องในแม่แบบผสาน.

Aspose.Words ให้ความสามารถในการสร้าง Mail Merge แม่แบบเพื่อกำหนดเนื้อหาคงที่และจากนั้นสร้างเอกสารผสานโดยใช้เขตข้อมูลผสาน ดังนั้นแม่แบบผสานจะมีข้อความที่จำเป็นซึ่งเป็นเหมือนกันในทุกเอกสารที่ส่งออกและเขตข้ ข้อมูลจากแหล่งข้อมูลที่ระบุจะถูกเพิ่มลงในเทมเพลตผสานผ่านฟิลด์เหล่านี้ในระหว่างการ.

## อะไรคือสิ่งที่ Mail Merge เทมเพลต

A Mail Merge แม่แบบเป็นเอกสารส่วนบุคคลที่ประกอบด้วยข้อมูลคงที่และเขตข้อมูลที่ผสานที่คุณต้องการใ แม่แบบผสานสามารถอยู่ในรูปแบบใดๆที่สนับสนุนฟิลด์เช่น, DOC, DOCX, DOT, DOTX, RTF. นอกจากนี้คุณยังสามารถใช้ mustache แม่แบบที่อธิบายไว้ในบทความ"Mustache ไวยากรณ์แม่แบบ"ในรายละเอียดเพิ่มเติม.

คุณสามารถสร้างเทมเพลตผสานให้เป็นแบบจำลองสำหรับเอกสารใหม่และควรมีข้อความห การเพิ่มฟิลด์ผสานภายในเทมเพลตจะแสดงข้อมูลการกำหนดค่าส่วนบุคคลเช่นชื่อหรือที่อยู่ A Mail Merge การดำเนินการจะแทรกข้อมูลส่วนบุคคลจากแหล่งข้อมูลของคุณไปยังเอกสารแม่แบบผสา.

นอกจากนี้คุณสามารถเพิ่ม Mail Merge ภูมิภาคในเทมเพลตของคุณโดยการใส่สอง Mail Merge ฟิลด์เพื่อทำเครื่องหมายจุดเริ่มต้นและจุดสิ้นสุดของพื้นที่อีเมล บทความถัดไป"ประเภทของ Mail Merge การดำเนินงาน"อธิบายว่าในรายละเอียดมากขึ้น.

## สร้าง Mail Merge เทมเพลต

คุณสามารถสร้างแม่แบบและเพิ่มเขตข้อมูลผสานที่เฉพาะเจาะจงไปยังมันที่จะถูกแทนที่ด้วยค่าจากแหล่งข้อมูลอย่างใดอย่างหนึ่งด้วยตนเองเช่นการใช้ Microsoft Word หรือโปรแกรมโดยใช้ Aspose.Words. ในบทความนี้เราจะดูที่วิธีการเขียนโปรแกรมของการสร้างแม่แบบ.

ใช้ [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) คลาสที่จะสร้างแม่แบบผสานที่จำเป็นโดยใช้ Aspose.Words. การเขียนข้อความโฆษณา,การเขียนในนามคนอื่น,บทความ,การเขียนบทความใหม่,การเขียน [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) และ [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/) กเขา.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้าง Mail Merge เทมเพลต:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

รูปภาพด้านล่างแสดงเทมเพลตที่สร้างขึ้น:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## ปรับแต่ง Mail Merge คุณสมบัติเทมเพลต

Aspose.Words ช่วยให้คุณสามารถปรับแต่งแม่แบบของคุณผ่านคุณสมบัติมากมาย การปรับแต่งแม่แบบจะอธิบายไว้ด้านล่างผ่านตัวอย่างของการปรับแต่งคุณสมบัติบางอย่า.

### ปรับแต่งคุณสมบัติของภาพ

คุณสามารถระบุคุณสมบัติของรูปภาพได้โดยใช้ [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/) ชั้นเรียน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุชื่อไฟล์ภาพและขนาดภาพ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### ปรับแต่งคุณสมบัติของข้อความ

คุณสามารถใช้ [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) คุณสมบัติเพื่อแทรกข้อความลงในเอกสารสำหรับฟิลด์ผสานปัจจุบัน นอกจากนี้คุณสามารถเปลี่ยนการจัดรูปแบบของข้อความและย่อหน้าภายในแม่แบบของคุณ [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) และ [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) ยวข้อง คุณสามารถจัดการกับข้อความที่จะแทรกก่อนหรือหลังเขตข้อมูลผสานโดยใช้ [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) และ [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) คุณสมบัติที่รวมอยู่ใน [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) ชั้นเรียน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกกล่องกาเครื่องหมายหรือ HTML ระหว่าง Mail Merge การดำเนินงาน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

นอกจากนี้คุณยังสามารถตรวจสอบการดำเนินงานของ `HandleMergeField` ชั้นเรียนจาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## ดูเพิ่มเติม

* สำหรับรายละเอียดเพิ่มเติมเกี่ยวกับวิธีการสร้างแม่แบบใน Microsoft Word ด้วยตนเองโปรดตรวจสอบ [สร้างเทมเพลต](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) บทความใน Microsoft เอกสารประกอบ
