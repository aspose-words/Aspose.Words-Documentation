---
title: ระบุตัวเลือกการบันทึกใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ตัวเลือกการจัดเก็บ
linktitle: ตัวเลือกการจัดเก็บ
description: "ตั้งค่าคุณสมบัติขั้นสูงเมื่อบันทึกเอกสารโดยใช้ Java เพื่อให้ควบคุมกระบวนการได้แม่นยํามากขึ้น"
type: docs
weight: 20
url: /th/java/specify-save-options/
---

เมื่อมีการบันทึกเอกสาร คุณสามารถตั้งค่าคุณสมบัติบางอย่างได้ Aspose.Words ให้คุณกับ [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) คลาสนี้ช่วยให้ควบคุมกระบวนการประหยัดได้แม่นยํามากขึ้น มีงานล้นมือ **Save** วิธีที่ยอมรับ **SaveOptions** วัตถุ - มันควรเป็นวัตถุที่ได้มาจาก **SaveOptions** ชั้นเรียน. ฟอร์แมตการบันทึกแต่ละรูปแบบมีคลาสที่สัมพันธ์กัน ซึ่งมีตัวเลือกในการบันทึกรูปแบบนี้ ตัวอย่างเช่น มี [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) สําหรับบันทึกในรูปแบบ PDF [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) สําหรับบันทึก Markdown รูปแบบหรือ [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) ที่บันทึกภาพ บทความ นี้ ให้ ตัว อย่าง ของ การ ทํา งาน ใน ชั้น เรียน เลือก บาง อย่าง ที่ ได้ มา จาก **SaveOptions**.

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีตั้งค่าตัวเลือกการบันทึก ก่อนที่จะบันทึกเอกสารเป็น HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

บทความ นี้ พรรณนา คุณสมบัติ บาง อย่าง ที่ คุณ สามารถ ควบคุม ได้ เมื่อ เก็บ เอกสาร.

## เข้ารหัสเอกสาร ด้วยรหัสผ่าน

ใช้ **Password** คุณสมบัติที่จะใช้ค้นหาหรือตั้งรหัสผ่านสําหรับเอกสารที่ถูกเข้ารหัสไว้ ใช้ **Password** คุณสมบัติของคลาสที่เข้าคู่กับรูปแบบเอกสารที่เลือกไว้

ตัวอย่างเช่น เมื่อบันทึกเอกสารไปที่ DoC หรือ DOT รูปแบบ, ใช้ [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) สมบัติของ [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) ชั้นเรียน.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีตั้งค่ารหัสผ่านสําหรับใช้เข้ารหัสเอกสารโดยใช้วิธีการการเข้ารหัส RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

เมื่อมีการบันทึกเอกสารในรูปแบบ ODT ให้ใช้ [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) สมบัติของ [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) ชั้นเรียน.

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีโหลดและบันทึกการเข้ารหัส OpenDocument ด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

ไม่ใช่รูปแบบที่รองรับการเข้ารหัสและการใช้ **Password** ทรัพย์สิน

## แสดงการแจ้งให้ทราบความคืบหน้าของการบันทึกเอกสาร

Aspose.Words ให้ความสามารถในการใช้ [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) คุณสมบัติที่จะใช้แจ้งเหตุเกี่ยวกับความคืบหน้าการบันทึกเอกสาร

ขณะนี้มีการใช้งานเมื่อบันทึกไปยัง DOCX, BlatOpc, DOCM DOTเอ็ม DOTX, HTML, MHTM, EPUB, XamlFlow, XamlFlowPack, หรือรูปแบบ TXT

## ปรับปรุงเวลาการสร้างเอกสาร

Aspose.Words ให้ความสามารถในการใช้ [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) คุณสมบัติที่จะใช้หาหรือตั้งค่าวันที่สร้างเอกสารใน UTC คุณสามารถปรับปรุงค่านี้ได้ก่อนที่จะบันทึก [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) ทางเลือก

ตัวอย่างรหัสต่อไปนี้ แสดงให้เห็นว่าจะปรับปรุงเวลาการสร้างเอกสารอย่างไร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## ปรับปรุงคุณสมบัติการบันทึกล่าสุด

Aspose.Words ให้ความสามารถในการใช้ [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) คุณสมบัติเพื่อหาหรือตั้งค่าค่า กําหนดว่า [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) ทรัพย์สินได้รับการปรับปรุง ก่อนที่จะบันทึก

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีตั้งค่าคุณสมบัตินี้ และบันทึกเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## บันทึกภาพขาวดําโดยใช้รูปแบบภาพแบบ 1 บิตต่อพิกเซล

เพื่อควบคุมตัวเลือกการบันทึกภาพ **ImageSaveOptions** มี การ ใช้ ห้อง เรียน. ตัวอย่างเช่น คุณสามารถใช้ [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) คุณสมบัติที่จะใช้ตั้งค่ารูปแบบของพิกเซลสําหรับภาพที่สร้าง โปรดสังเกตว่ารูปแบบพิกเซลของภาพที่ส่งออก อาจแตกต่างจากค่าที่ตั้งไว้ เนื่องจากงานของ GDI+

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการบันทึกภาพขาวดํา แบบบิตต่อพิกเซล:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
