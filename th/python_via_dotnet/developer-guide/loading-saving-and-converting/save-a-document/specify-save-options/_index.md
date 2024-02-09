---
title: ระบุตัวเลือกการบันทึกใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ระบุตัวเลือกการบันทึก
linktitle: ระบุตัวเลือกการบันทึก
description: "ควบคุมกระบวนการบันทึกได้แม่นยำยิ่งขึ้นโดยใช้ Python"
type: docs
weight: 10
url: /th/python-net/specify-save-options/
---

เมื่อบันทึกเอกสาร คุณสามารถตั้งค่าคุณสมบัติขั้นสูงบางอย่างได้ Aspose.Words มีคลาส [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) ซึ่งช่วยให้สามารถควบคุมกระบวนการบันทึกได้แม่นยำยิ่งขึ้น มีวิธีการ [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) มากเกินไปที่ยอมรับวัตถุ [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) ซึ่งควรเป็นวัตถุของคลาสที่ได้มาจากคลาส [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) รูปแบบการบันทึกแต่ละรูปแบบมีคลาสที่สอดคล้องกันซึ่งมีตัวเลือกการบันทึกสำหรับรูปแบบการบันทึกนี้ เช่น มี [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) สำหรับการบันทึกเป็นรูปแบบ PDF หรือ [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) สำหรับการบันทึกลงในรูปภาพ บทความนี้แสดงตัวอย่างการทำงานกับคลาสตัวเลือกบางคลาสที่ได้มาจาก [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตัวเลือกการบันทึกก่อนบันทึกเอกสารเป็น HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

บทความนี้จะอธิบายคุณสมบัติบางอย่างที่คุณสามารถควบคุมได้เมื่อบันทึกเอกสาร

## เข้ารหัสเอกสารด้วยรหัสผ่าน

ใช้คุณสมบัติ **รหัสผ่าน** เพื่อรับหรือตั้งรหัสผ่านสำหรับเอกสารที่เข้ารหัส ใช้คุณสมบัติ **รหัสผ่าน** ของคลาสที่เกี่ยวข้องเพื่อทำงานกับรูปแบบเอกสารที่เลือก

ตัวอย่างเช่น เมื่อบันทึกเอกสารเป็นรูปแบบ DOC หรือ DOT ให้ใช้คุณสมบัติ [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) ของคลาส [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตั้งรหัสผ่านเพื่อเข้ารหัสเอกสารโดยใช้วิธีการเข้ารหัส RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

เมื่อบันทึกเอกสารเป็นรูปแบบ Docx ให้ใช้คุณสมบัติ [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) ของคลาส [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดและบันทึก Docx ที่เข้ารหัสด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

ไม่ใช่ทุกรูปแบบที่รองรับการเข้ารหัสและการใช้คุณสมบัติ **รหัสผ่าน**

## อัปเดตเวลาการสร้างเอกสาร

Aspose.Words มอบความสามารถในการใช้คุณสมบัติ [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) เพื่อรับหรือกำหนดวันที่สร้างเอกสารในรูปแบบ UTC คุณยังอัปเดตค่านี้ก่อนบันทึกโดยใช้ตัวเลือก [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) ได้ด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการอัพเดตเวลาการสร้างเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## อัปเดตคุณสมบัติที่บันทึกไว้ล่าสุด

Aspose.Words ให้ความสามารถในการใช้คุณสมบัติ [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) เพื่อรับหรือตั้งค่าเพื่อพิจารณาว่าคุณสมบัติ [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) ได้รับการอัปเดตก่อนบันทึกหรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัตินี้และบันทึกเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## บันทึกภาพขาวดำด้วยรูปแบบหนึ่งบิตต่อพิกเซล

เพื่อควบคุมตัวเลือกการบันทึกรูปภาพ จะใช้คลาส [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) ตัวอย่างเช่น คุณสามารถใช้คุณสมบัติ [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) เพื่อตั้งค่ารูปแบบพิกเซลสำหรับรูปภาพที่สร้างขึ้น โปรดทราบว่ารูปแบบพิกเซลของภาพที่ส่งออกอาจแตกต่างจากค่าที่ตั้งไว้เนื่องจากการทำงานของ Skia

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบันทึกรูปภาพขาวดำด้วยรูปแบบหนึ่งบิตต่อพิกเซล:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
