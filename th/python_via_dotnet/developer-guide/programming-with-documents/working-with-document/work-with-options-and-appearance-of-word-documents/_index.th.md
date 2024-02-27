---
title: ตัวเลือกและเอกสาร Word ลักษณะที่ปรากฏ
second_title: Aspose.Words สำหรับ Python
articleTitle: ทำงานกับตัวเลือกและรูปลักษณ์ของเอกสาร Word
linktitle: ทำงานกับตัวเลือกและรูปลักษณ์ของเอกสาร Word
description: "ควบคุมลักษณะที่ปรากฏของเอกสาร Word โดยคำนึงถึงความแตกต่างระหว่าง Microsoft Word เวอร์ชันต่างๆ โดยใช้ Python"
type: docs
weight: 40
url: /th/python-net/work-with-word-document-options-and-appearance/
---

บางครั้งคุณอาจต้องเปลี่ยนรูปลักษณ์ของเอกสาร เช่น ตั้งค่าภาษาหรือจำนวนบรรทัดต่อหน้า Aspose.Words ให้ความสามารถในการควบคุมวิธีการแสดงเอกสาร รวมถึงตัวเลือกเพิ่มเติมบางอย่าง บทความนี้จะอธิบายความเป็นไปได้ดังกล่าว

## ตั้งค่าตัวเลือกการแสดงเอกสาร

คุณสามารถควบคุมวิธีการแสดงเอกสารใน Microsoft Word ได้โดยใช้คลาส [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/) ตัวอย่างเช่น คุณสามารถตั้งค่าการซูมเอกสารโดยใช้คุณสมบัติ [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) หรือโหมดมุมมองโดยใช้คุณสมบัติ [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตรวจสอบให้แน่ใจว่าเอกสารแสดงที่ 50% เมื่อเปิดใน Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตสำหรับตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 ไม่ได้เขียนปัจจัยการซูมใดๆ ลงในเอกสาร และไม่ได้ตั้งค่าการซูมเริ่มต้นจากค่าที่เขียนลงในเอกสารอีกต่อไป แต่ดูเหมือนว่าจะใช้ปัจจัยการซูมของเอกสารที่เปิดครั้งล่าสุดแทน

{{% /alert %}}

## ตั้งค่าตัวเลือกการแสดงหน้า

หากคุณต้องการกำหนดจำนวนอักขระต่อบรรทัด ให้ใช้คุณสมบัติ [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/) คุณยังสามารถกำหนดจำนวนบรรทัดต่อหน้าสำหรับเอกสาร Word ได้ โดยใช้คุณสมบัติ [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) เพื่อรับหรือกำหนดจำนวนบรรทัดต่อหน้าในตารางเอกสาร

{{% alert color="primary" %}}

ใน Microsoft Word คุณสามารถตั้งค่าพารามิเตอร์เดียวกันได้โดยใช้แท็บ "Document Grid" ในกล่องโต้ตอบ "ตั้งค่าหน้ากระดาษ" เมื่อติดตั้งการรองรับภาษาเอเชียเท่านั้น

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตั้งค่าจำนวนอักขระต่อบรรทัดและจำนวนบรรทัดต่อหน้าสำหรับเอกสาร Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## ตั้งค่ากำหนดภาษา

การแสดงเอกสารใน Microsoft Word ขึ้นอยู่กับภาษาที่ถูกตั้งค่าเป็นค่าเริ่มต้นสำหรับเอกสารนี้ หากไม่มีการตั้งค่าภาษาเป็นค่าเริ่มต้น Microsoft Word จะใช้ข้อมูลจากกล่องโต้ตอบ "ตั้งค่าการตั้งค่าภาษาของ Office" ซึ่งสามารถพบได้ภายใต้ "ไฟล์ → ตัวเลือก → ภาษา" ใน Microsoft Word 2019

ด้วย Aspose.Words คุณยังสามารถตั้งค่ากำหนดภาษาโดยใช้คลาส [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/) ได้อีกด้วย โปรดทราบว่าเพื่อให้การแสดงเอกสารของคุณถูกต้อง จำเป็นต้องตั้งค่าเวอร์ชัน Microsoft Word ที่กระบวนการโหลดเอกสารควรตรงกัน ซึ่งสามารถทำได้โดยใช้คุณสมบัติ [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/)

{{% alert color="primary" %}}

หากเอกสาร Aspose.Words ที่สร้างไม่เป็นไปตามที่คาดไว้ ให้ตรวจสอบค่า [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) และ [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) และปรับเปลี่ยนหากจำเป็นเพื่อให้ตรงกับการตั้งค่าสำหรับเวอร์ชัน Microsoft Word ของคุณ

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเพิ่มภาษาญี่ปุ่นให้กับภาษาสำหรับการแก้ไข:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าภาษารัสเซียเป็นภาษาสำหรับการแก้ไขเริ่มต้น:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## ปรับเอกสารให้เหมาะสมสำหรับเวอร์ชัน Word โดยเฉพาะ

วิธีการ [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) ช่วยให้สามารถปรับเนื้อหาเอกสารให้เหมาะสม รวมถึงลักษณะการทำงานของ Aspose.Words เริ่มต้นสำหรับ Microsoft Word เวอร์ชันใดเวอร์ชันหนึ่งโดยเฉพาะ คุณสามารถใช้วิธีนี้เพื่อป้องกันไม่ให้ Microsoft Word แสดงริบบิ้น "โหมดความเข้ากันได้" เมื่อโหลดเอกสาร โปรดทราบว่าคุณอาจต้องตั้งค่าคุณสมบัติ [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) เป็น [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) หรือสูงกว่าด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีปรับเนื้อหาเอกสารให้เหมาะสมสำหรับ Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
