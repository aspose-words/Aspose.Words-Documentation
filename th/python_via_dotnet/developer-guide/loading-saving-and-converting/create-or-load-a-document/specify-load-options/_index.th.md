---
title: ระบุตัวเลือกการโหลดใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ระบุตัวเลือกการโหลด
linktitle: ระบุตัวเลือกการโหลด
description: "ควบคุมกระบวนการโหลดได้แม่นยำยิ่งขึ้นโดยใช้ Python"
type: docs
weight: 10
url: /th/python-net/specify-load-options/
---

เมื่อโหลดเอกสาร คุณสามารถตั้งค่าคุณสมบัติขั้นสูงบางอย่างได้ Aspose.Words ให้คลาส [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) แก่คุณ ซึ่งช่วยให้ควบคุมกระบวนการโหลดได้แม่นยำยิ่งขึ้น รูปแบบการโหลดบางรูปแบบมีคลาสที่สอดคล้องกันซึ่งมีตัวเลือกการโหลดสำหรับรูปแบบการโหลดนี้ เช่น มี [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) สำหรับการโหลดเป็นรูปแบบ PDF หรือ [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) สำหรับการโหลดไปยัง TXT บทความนี้แสดงตัวอย่างการทำงานกับตัวเลือกของคลาส [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/)

## ตั้งค่าเวอร์ชัน Microsoft Word เพื่อเปลี่ยนรูปลักษณ์

แอปพลิเคชัน Microsoft Word เวอร์ชันต่างๆ สามารถแสดงเอกสารในรูปแบบที่แตกต่างกันได้ ตัวอย่างเช่น มีปัญหาที่ทราบกันดีเกี่ยวกับเอกสาร OOXML เช่น DOCX หรือ DOTX ที่สร้างโดยใช้ WPS Office ในกรณีดังกล่าว องค์ประกอบมาร์กอัปเอกสารที่สำคัญอาจหายไปหรืออาจถูกตีความแตกต่างออกไป ทำให้ Microsoft Word 2019 แสดงเอกสารดังกล่าวแตกต่างจาก Microsoft Word 2010

ตามค่าเริ่มต้น Aspose.Words จะเปิดเอกสารโดยใช้กฎ Microsoft Word 2019 หากคุณต้องการให้การโหลดเอกสารปรากฏขึ้นเหมือนกับที่จะเกิดขึ้นในแอปพลิเคชัน Microsoft Word เวอร์ชันก่อนหน้า คุณควรระบุเวอร์ชันที่ต้องการอย่างชัดเจนโดยใช้คุณสมบัติ [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) ของคลาส [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าเวอร์ชัน Microsoft Word พร้อมตัวเลือกการโหลด:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## ตั้งค่ากำหนดภาษาเพื่อเปลี่ยนรูปลักษณ์

รายละเอียดของการแสดงเอกสารใน Microsoft Word ไม่เพียงขึ้นอยู่กับเวอร์ชันของแอปพลิเคชันและค่าคุณสมบัติ [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) เท่านั้น แต่ยังขึ้นอยู่กับการตั้งค่าภาษาด้วย Microsoft Word อาจแสดงเอกสารแตกต่างกันไปขึ้นอยู่กับการตั้งค่ากล่องโต้ตอบ "การตั้งค่าภาษาของ Office" ซึ่งสามารถพบได้ใน "ไฟล์ → ตัวเลือก → ภาษา" การใช้กล่องโต้ตอบนี้ผู้ใช้สามารถเลือกได้ เช่น ภาษาหลัก ภาษาการพิสูจน์อักษร ภาษาที่แสดง และอื่นๆ Aspose.Words จัดเตรียมคุณสมบัติ [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) ให้เทียบเท่ากับกล่องโต้ตอบนี้ หากเอาต์พุต Aspose.Words แตกต่างจากเอาต์พุต Microsoft Word ให้ตั้งค่าที่เหมาะสมสำหรับ [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) ซึ่งจะช่วยปรับปรุงเอกสารเอาต์พุตได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าภาษาญี่ปุ่นเป็น [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## ใช้ TempFolder เพื่อหลีกเลี่ยงข้อยกเว้นหน่วยความจำ

Aspose.Words รองรับเอกสารที่มีขนาดใหญ่มากซึ่งมีเนื้อหามากมายหลายพันหน้า การโหลดเอกสารดังกล่าวอาจต้องใช้ RAM มาก ในกระบวนการโหลด Aspose.Words ต้องการหน่วยความจำเพิ่มเติมเพื่อเก็บโครงสร้างชั่วคราวที่ใช้ในการแยกวิเคราะห์เอกสาร

หากคุณมีปัญหากับข้อยกเว้นหน่วยความจำไม่เพียงพอขณะโหลดเอกสาร ให้ลองใช้คุณสมบัติ [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) ในกรณีนี้ Aspose.Words จะจัดเก็บข้อมูลบางส่วนไว้ในไฟล์ชั่วคราวแทนหน่วยความจำ และสามารถช่วยหลีกเลี่ยงข้อยกเว้นดังกล่าวได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่า [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## ตั้งค่าการเข้ารหัสอย่างชัดเจน

รูปแบบเอกสารสมัยใหม่ส่วนใหญ่จัดเก็บเนื้อหาในรูปแบบ Unicode และไม่ต้องการการจัดการพิเศษ ในทางกลับกัน ยังมีเอกสารจำนวนมากที่ใช้การเข้ารหัสแบบ pre-Unicode และบางครั้งอาจพลาดข้อมูลการเข้ารหัส หรือไม่สนับสนุนข้อมูลการเข้ารหัสโดยธรรมชาติด้วยซ้ำ Aspose.Words พยายามตรวจหาการเข้ารหัสที่เหมาะสมโดยอัตโนมัติตามค่าเริ่มต้น แต่ในบางกรณีที่เกิดขึ้นไม่บ่อยนัก คุณอาจจำเป็นต้องใช้การเข้ารหัสที่แตกต่างจากการเข้ารหัสที่ตรวจพบโดยอัลกอริธึมการจดจำการเข้ารหัสของเรา ในกรณีนี้ ให้ใช้คุณสมบัติ [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) เพื่อรับหรือตั้งค่าการเข้ารหัส

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าการเข้ารหัสเพื่อแทนที่การเข้ารหัสที่เลือกโดยอัตโนมัติ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## โหลดเอกสารที่เข้ารหัส

คุณสามารถโหลดเอกสาร Word ที่เข้ารหัสด้วยรหัสผ่านได้ เมื่อต้องการทำเช่นนี้ ให้ใช้ตัวสร้างพิเศษโอเวอร์โหลด ซึ่งยอมรับวัตถุ [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) วัตถุนี้มีคุณสมบัติ [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) ซึ่งระบุสตริงรหัสผ่าน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดเอกสารที่เข้ารหัสด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

หากคุณไม่ทราบล่วงหน้าว่าไฟล์ถูกเข้ารหัสหรือไม่ คุณสามารถใช้คลาส [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) ซึ่งมีวิธีการอรรถประโยชน์ในการทำงานกับรูปแบบไฟล์ เช่น การตรวจจับรูปแบบไฟล์หรือการแปลงนามสกุลไฟล์เป็น/จากการแจงนับรูปแบบไฟล์ หากต้องการตรวจสอบว่าเอกสารถูกเข้ารหัสและต้องใช้รหัสผ่านในการเปิดหรือไม่ ให้ใช้คุณสมบัติ [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตรวจสอบเอกสารว่ามีการเข้ารหัสหรือไม่:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
