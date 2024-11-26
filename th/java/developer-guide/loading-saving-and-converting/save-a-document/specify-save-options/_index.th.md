---
title: ระบุตัวเลือกการบันทึกในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ระบุตัวเลือกการบันทึก
linktitle: ระบุตัวเลือกการบันทึก
description: "ตั้งค่าคุณสมบัติขั้นสูงเมื่อบันทึกเอกสารโดยใช้Javaเพื่อให้การควบคุมกระบวนการที่แม่นยำยิ่งขึ้."
type: docs
weight: 20
url: /th/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

เมื่อบันทึกเอกสารคุณสามารถตั้งค่าคุณสมบัติขั้นสูงบางอย่างได้ Aspose.Wordsให้คุณมี[SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)ชั้นซึ่งจะช่วยให้การควบคุมที่แม่นยำมากขึ้นของกระบวนการบันทึก มีวิธีการโอเวอร์โหลดของ**Save**ที่ยอมรับวัตถุ**SaveOptions**–มันควรจะเป็นวัตถุของชั้นเรียนที่ได้มาจากชั้นเรียน**SaveOptions** แต่ละรูปแบบการบันทึกจะมีคลาสที่สอดคล้องกันซึ่งมีตัวเลือกการบันทึกสำหรับรูปแบบการบันทึกนี้ตัวอย่างเช่นมี[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)เพื่อบันทึกลงในรูปแบบPDF[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)เพื่อบันทึกลงในรูปแบบMarkdownหรือ[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)เพื่อบันทึกลงในรูปภาพ บทความนี้แสดงตัวอย่างการทำงานกับคลาสตัวเลือกบางอย่างที่ได้มาจาก**SaveOptions**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าตัวเลือกการบันทึกก่อนที่จะบันทึกเอกสารลงในHTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

บทความอธิบายคุณสมบัติบางอย่างที่คุณสามารถควบคุมเมื่อบันทึกเอกสาร.

## เข้ารหัสเอกสารด้วยรหัสผ่าน

ใช้คุณสมบัติ**Password**เพื่อรับหรือตั้งรหัสผ่านสำหรับเอกสารที่เข้ารหัส ใช้คุณสมบัติ**Password**ของคลาสที่เกี่ยวข้องเพื่อทำงานกับรูปแบบเอกสารที่เลือก.

ตัวอย่างเช่นเมื่อบันทึกเอกสารไปยังDOCหรือDOTรูปแบบใช้คุณสมบัติ[Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password)ของคลาสของ[DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่ารหัสผ่านเพื่อเข้ารหัสเอกสารโดยใช้วิธีการเข้ารหัสRC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

เมื่อบันทึกเอกสารไปยังรูปแบบODTใช้คุณสมบัติ[Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password)ของคลาส[OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดและบันทึกOpenDocumentเข้ารหัสด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

การเข้ารหัสและการใช้พร็อพเพอร์ตี้**Password**.

## แสดงการแจ้งเตือนความคืบหน้าในการบันทึกเอกสาร

Aspose.Wordsให้ความสามารถในการใช้[ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback)คุณสมบัติที่จะได้รับการแจ้งเตือนเกี่ยวกับความคืบหน้าของก.

ขณะนี้สามารถใช้ได้เมื่อบันทึกไปที่DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, หรือTXTรูปแบบ.

## ปรับปรุงเวลาในการสร้างเอกสาร

Aspose.Wordsให้ความสามารถในการใช้[CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime)คุณสมบัติที่จะได้รับหรือตั้งวันที่สร้างเอกสารในUTC คุณยังสามารถอัปเดตค่านี้ก่อนที่จะบันทึกโดยใช้ตัวเลือก[UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการปรับปรุงเวลาในการสร้างเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## อัปเดตคุณสมบัติที่บันทึกไว้ล่าสุด

Aspose.Wordsให้ความสามารถในการใช้คุณสมบัติ[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty)เพื่อรับหรือตั้งค่าการกำหนดว่าคุณสมบัติของ[LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime)ได้รับการปรับปรุงก่อนที่จะบันทึก.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัตินี้และบันทึกเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## บันทึกภาพขาวดำด้วยรูปแบบหนึ่งบิตต่อพิกเซล

เมื่อต้องการควบคุมตัวเลือกการบันทึกภาพจะใช้คลาส**ImageSaveOptions** ตัวอย่างเช่นคุณสามารถใช้คุณสมบัติ[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat)เพื่อตั้งค่ารูปแบบพิกเซลสำหรับรูปภาพที่สร้างขึ้น โปรดทราบว่ารูปแบบพิกเซลของภาพที่ส่งออกอาจแตกต่างจากค่าที่ตั้งไว้เนื่องจากการทำงานของGDI+.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการบันทึกภาพขาวดำด้วยรูปแบบหนึ่งบิตต่อพิกเซล:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
