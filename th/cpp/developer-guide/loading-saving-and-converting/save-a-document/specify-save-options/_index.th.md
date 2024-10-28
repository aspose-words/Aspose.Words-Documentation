---
title: ระบุตัวเลือกการบันทึกในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ระบุตัวเลือกการบันทึก
linktitle: ระบุตัวเลือกการบันทึก
description: "ควบคุมกระบวนการบันทึกได้อย่างแม่นยำยิ่งขึ้น."
type: docs
weight: 10
url: /th/cpp/specify-save-options/
---

เมื่อบันทึกเอกสารคุณสามารถตั้งค่าคุณสมบัติขั้นสูงบางอย่างได้ Aspose.Wordsให้คุณมี[SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/)ชั้นซึ่งจะช่วยให้การควบคุมที่แม่นยำมากขึ้นของกระบวนการบันทึก มีการโอเวอร์โหลดของวิธีการ**Save**ที่ยอมรับวัตถุ**SaveOptions**–มันควรจะเป็นวัตถุของชั้นเรียนที่ได้มาจากชั้นเรียน**SaveOptions** แต่ละรูปแบบการบันทึกจะมีคลาสที่สอดคล้องกันซึ่งมีตัวเลือกการบันทึกสำหรับรูปแบบการบันทึกนี้ตัวอย่างเช่นมี[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)เพื่อบันทึกลงในรูปแบบPDF[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions)เพื่อบันทึกลงในรูปแบบMarkdownหรือ[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)เพื่อบันทึกลงในรูปภาพ บทความนี้แสดงตัวอย่างการทำงานกับคลาสตัวเลือกบางอย่างที่ได้มาจาก**SaveOptions**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าตัวเลือกการบันทึกก่อนที่จะบันทึกเอกสารลงในHTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

บทความอธิบายคุณสมบัติบางอย่างที่คุณสามารถควบคุมเมื่อบันทึกเอกสาร.

## เข้ารหัสเอกสารด้วยรหัสผ่าน

ใช้คุณสมบัติ**Password**เพื่อรับหรือตั้งรหัสผ่านสำหรับเอกสารที่เข้ารหัส ใช้คุณสมบัติ**Password**ของคลาสที่เกี่ยวข้องเพื่อทำงานกับรูปแบบเอกสารที่เลือก.

ตัวอย่างเช่นเมื่อบันทึกเอกสารไปยังDOCหรือDOTรูปแบบใช้คุณสมบัติ[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/)ของคลาสของ[DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่ารหัสผ่านเพื่อเข้ารหัสเอกสารโดยใช้วิธีการเข้ารหัสRC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

เมื่อบันทึกเอกสารไปยังรูปแบบODTใช้คุณสมบัติ[Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/)ของคลาส[OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดและบันทึกOpenDocumentเข้ารหัสด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

การเข้ารหัสและการใช้พร็อพเพอร์ตี้**Password**.

## แสดงการแจ้งเตือนความคืบหน้าในการบันทึกเอกสาร

Aspose.Wordsให้ความสามารถในการใช้[ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/)คุณสมบัติที่จะได้รับการแจ้งเตือนเกี่ยวกับความคืบหน้าของก.

ขณะนี้สามารถใช้ได้เมื่อบันทึกไปที่DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, หรือTXTรูปแบบ.

## ปรับปรุงเวลาในการสร้างเอกสาร

Aspose.Wordsให้ความสามารถในการใช้[CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/)คุณสมบัติที่จะได้รับหรือตั้งวันที่สร้างเอกสารในUTC คุณยังสามารถอัปเดตค่านี้ก่อนที่จะบันทึกโดยใช้ตัวเลือก[UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับปรุงเวลาในการสร้างเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## อัปเดตคุณสมบัติที่บันทึกไว้ล่าสุด

Aspose.Wordsให้ความสามารถในการใช้คุณสมบัติ[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/)เพื่อรับหรือตั้งค่าการกำหนดว่าคุณสมบัติของ[LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/)ได้รับการปรับปรุงก่อนที่จะบันทึก.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัตินี้และบันทึกเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## บันทึกภาพขาวดำด้วยรูปแบบหนึ่งบิตต่อพิกเซล

เมื่อต้องการควบคุมตัวเลือกการบันทึกภาพจะใช้คลาส**ImageSaveOptions** ตัวอย่างเช่นคุณสามารถใช้คุณสมบัติ[PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/)เพื่อตั้งค่ารูปแบบพิกเซลสำหรับรูปภาพที่สร้างขึ้น โปรดทราบว่ารูปแบบพิกเซลของภาพที่ส่งออกอาจแตกต่างจากค่าที่ตั้งไว้เนื่องจากการทำงานของGDI+.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกภาพขาวดำด้วยรูปแบบหนึ่งบิตต่อพิกเซล:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
