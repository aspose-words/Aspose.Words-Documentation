---
title: ระบุตัวเลือกการบันทึกใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ระบุตัวเลือกการบันทึก
linktitle: ระบุตัวเลือกการบันทึก
description: "ควบคุมกระบวนการบันทึกได้แม่นยำยิ่งขึ้นโดยใช้ C#"
type: docs
weight: 10
url: /th/net/specify-save-options/
---

เมื่อบันทึกเอกสาร คุณสามารถตั้งค่าคุณสมบัติขั้นสูงบางอย่างได้ Aspose.Words มีคลาส [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) ซึ่งช่วยให้สามารถควบคุมกระบวนการบันทึกได้แม่นยำยิ่งขึ้น มีเมธอด **Save** มากเกินไปที่ยอมรับออบเจ็กต์ **SaveOptions** ซึ่งควรเป็นออบเจ็กต์ของคลาสที่ได้มาจากคลาส **SaveOptions** รูปแบบการบันทึกแต่ละรูปแบบมีคลาสที่สอดคล้องกันซึ่งมีตัวเลือกการบันทึกสำหรับรูปแบบการบันทึกนี้ เช่น มี [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) สำหรับการบันทึกเป็นรูปแบบ PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) สำหรับการบันทึกเป็นรูปแบบ Markdown หรือ [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) สำหรับการบันทึกลงในรูปภาพ บทความนี้จะแสดงตัวอย่างการทำงานกับคลาสตัวเลือกบางคลาสที่ได้มาจาก **SaveOptions**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าตัวเลือกการบันทึกก่อนบันทึกเอกสารเป็น HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)

{{% /alert %}}

บทความนี้จะอธิบายคุณสมบัติบางอย่างที่คุณสามารถควบคุมได้เมื่อบันทึกเอกสาร

## เข้ารหัสเอกสารด้วยรหัสผ่าน

ใช้คุณสมบัติ **Password** เพื่อรับหรือตั้งรหัสผ่านสำหรับเอกสารที่เข้ารหัส ใช้คุณสมบัติ **Password** ของคลาสที่เกี่ยวข้องเพื่อทำงานกับรูปแบบเอกสารที่เลือก

ตัวอย่างเช่น เมื่อบันทึกเอกสารเป็นรูปแบบ DOC หรือ DOT ให้ใช้คุณสมบัติ [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) ของคลาส [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตั้งรหัสผ่านเพื่อเข้ารหัสเอกสารโดยใช้วิธีการเข้ารหัส RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

เมื่อบันทึกเอกสารเป็นรูปแบบ Odt ให้ใช้คุณสมบัติ [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) ของคลาส [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดและบันทึก OpenDocument ที่เข้ารหัสด้วยรหัสผ่าน:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

ไม่ใช่ทุกรูปแบบที่รองรับการเข้ารหัสและการใช้คุณสมบัติ **Password**

## แสดงการแจ้งเตือนความคืบหน้าในการบันทึกเอกสาร

Aspose.Words ให้ความสามารถในการใช้คุณสมบัติ [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) เพื่อรับการแจ้งเตือนเกี่ยวกับความคืบหน้าของการบันทึกเอกสาร

ขณะนี้สามารถใช้งานได้แล้วเมื่อบันทึกเป็นรูปแบบ DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack หรือ TXT

## อัปเดตเวลาการสร้างเอกสาร

Aspose.Words มอบความสามารถในการใช้คุณสมบัติ [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) เพื่อรับหรือกำหนดวันที่สร้างเอกสารในรูปแบบ UTC คุณยังอัปเดตค่านี้ก่อนบันทึกโดยใช้ตัวเลือก [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) ได้ด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการอัพเดตเวลาการสร้างเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## อัปเดตคุณสมบัติที่บันทึกไว้ล่าสุด

Aspose.Words ให้ความสามารถในการใช้คุณสมบัติ [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) เพื่อรับหรือตั้งค่าเพื่อพิจารณาว่าคุณสมบัติ [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) ได้รับการอัปเดตก่อนบันทึกหรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัตินี้และบันทึกเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## ควบคุมทรัพยากรภายนอกเมื่อบันทึกเอกสารเป็น HTML หรือ SVG

หากต้องการแปลง HTML หรือ SVG เป็น PDF เพียงเรียกใช้เมธอด [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) แล้วระบุชื่อไฟล์ด้วยนามสกุล ".PDF" หากคุณต้องการโหลดรูปภาพ, CSS ฯลฯ จากแหล่งภายนอก คุณสามารถใช้ [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/) ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแปลง HTML เป็น PDF และโหลดรูปภาพจากแหล่งภายนอก:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## บันทึกภาพขาวดำด้วยรูปแบบหนึ่งบิตต่อพิกเซล

เพื่อควบคุมตัวเลือกการบันทึกรูปภาพ จะใช้คลาส **ImageSaveOptions** ตัวอย่างเช่น คุณสามารถใช้คุณสมบัติ [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) เพื่อตั้งค่ารูปแบบพิกเซลสำหรับรูปภาพที่สร้างขึ้น โปรดทราบว่ารูปแบบพิกเซลของภาพที่ส่งออกอาจแตกต่างจากค่าที่ตั้งไว้เนื่องจากการทำงานของ GDI+

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบันทึกรูปภาพขาวดำด้วยรูปแบบหนึ่งบิตต่อพิกเซล:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
