---
title: ระบุตัวเลือกการโหลดในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ระบุตัวเลือกการโหลด
linktitle: ระบุตัวเลือกการโหลด
description: "ตั้งค่าคุณสมบัติขั้นสูงเมื่อโหลดเอกสารโดยใช้Javaเพื่อให้ได้การควบคุมกระบวนการที่แม่นยำ."
type: docs
weight: 10
url: /th/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

เมื่อโหลดเอกสารคุณสามารถตั้งค่าคุณสมบัติขั้นสูงบางอย่างได้ Aspose.Wordsช่วยให้คุณมี[LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/)ชั้นซึ่งจะช่วยให้การควบคุมที่แม่นยำมากขึ้นของกระบวนการโหลด รูปแบบการโหลดบางรูปแบบมีคลาสที่สอดคล้องกันซึ่งมีตัวเลือกการโหลดสำหรับรูปแบบการโหลดนี้ตัวอย่างเช่นมี[PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/)สำหรับการโหลดไปยังรูปแบบPDFหรือ[TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/)สำหรับการโหลดไปยังTXT บทความนี้แสดงตัวอย่างของการทำงานกับตัวเลือกของ**LoadOptions**คลาส.

## ตั้งค่าเวอร์ชันMicrosoft Wordเพื่อเปลี่ยนลักษณะที่ปรากฏ

รุ่นที่แตกต่างกันของโปรแกรมMicrosoft Wordสามารถแสดงเอกสารในที่แตกต่างกัน ตัวอย่างเช่นมีปัญหาที่รู้จักกันดีกับเอกสารOOXMLเช่นDOCXหรือDOTXที่ผลิตโดยใช้สำนักงานWPS ในกรณีดังกล่าวองค์ประกอบของมาร์กอัปเอกสารสำคัญอาจขาดหายไปหรืออาจถูกตีความแตกต่างออกไปทำให้Microsoft Word2019 แสดงเอกสารดังกล่าวแตกต่างกันเมื่อเทียบกับMicrosoft Word2010.

โดยค่าเริ่มต้นAspose.Wordsเปิดเอกสารโดยใช้กฎMicrosoft Word2019 หากคุณต้องการทำให้การโหลดเอกสารปรากฏขึ้นตามที่ปรากฏในแอปพลิเคชันรุ่นก่อนหน้าMicrosoft Wordคุณควรระบุเวอร์ชันที่ต้องการอย่างชัดเจนโดยใช้คุณสมบัติของ[MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion)ของคลาสของ**LoadOptions**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าเวอร์ชันMicrosoft Wordด้วยตัวเลือกการโหลด:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## ตั้งค่าการตั้งค่าภาษาเพื่อเปลี่ยนลักษณะที่ปรากฏ

รายละเอียดของการแสดงเอกสารในMicrosoft Wordไม่เพียงแต่ขึ้นอยู่กับรุ่นของโปรแกรมประยุกต์และค่าคุณสมบัติ**MswVersion**แต่ยังเกี่ยวกับการตั้งค่าภาษาอีกด้วย Microsoft Wordอาจแสดงเอกสารที่แตกต่างกันขึ้นอยู่กับการตั้งค่า"การตั้งค่าภาษาสำนักงาน"ซึ่งสามารถพบได้ใน"ตัวเลือกไฟล์ Language ภาษา" ใช้กล่องโต้ตอบนี้ผู้ใช้สามารถเลือกเช่นภาษาหลักภาษาพิสูจน์อักษรภาษาที่แสดงและอื่นๆ Aspose.Wordsให้คุณสมบัติของ[LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences)เทียบเท่ากับกล่องโต้ตอบนี้ ถ้าผลลัพธ์Aspose.Wordsแตกต่างจากผลลัพธ์Microsoft Wordให้ตั้งค่าที่เหมาะสมสำหรับ**EditingLanguage**ซึ่งจะสามารถปรับปรุงเอกสารที่ส่งออกได้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าภาษาญี่ปุ่นเป็น**EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## ใช้WarningCallbackเพื่อควบคุมปัญหาขณะโหลดเอกสาร

เอกสารบางอย่างอาจเสียหายมีรายการที่ไม่ถูกต้องหรือมีคุณลักษณะที่ไม่ได้รับการสนับสนุนในปัจจุบันโดยAspose.Words ถ้าคุณต้องการทราบเกี่ยวกับปัญหาที่เกิดขึ้นขณะโหลดเอกสารAspose.Wordsจะมีอินเทอร์เฟซ[IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/).

ตัวอย่างรหัสต่อไปนี้แสดงการใช้งานของอินเทอร์เฟซ**IWarningCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

เมื่อต้องการรับข้อมูลเกี่ยวกับปัญหาทั้งหมดตลอดเวลาในการโหลดให้ใช้คุณสมบัติ[WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## ใช้ResourceLoadingCallbackเพื่อควบคุมการโหลดทรัพยากรภายนอก

เอกสารอาจมีลิงก์ภายนอกไปยังรูปภาพที่ตั้งอยู่ที่ใดที่หนึ่งบนดิสก์ภายในเครือข่ายหรืออินเท Aspose.Wordsโหลดภาพดังกล่าวลงในเอกสารโดยอัตโนมัติแต่มีสถานการณ์เมื่อกระบวนการนี้จะต้องถูกควบคุม ตัวอย่างเช่นในการตัดสินใจว่าเราจริงๆต้องโหลดภาพบางอย่างหรือบางทีอาจจะข้ามมัน ตัวเลือกการโหลด[ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback)ช่วยให้คุณสามารถควบคุมสิ่งนี้ได้.

ตัวอย่างรหัสต่อไปนี้แสดงการใช้งานของอินเทอร์เฟซ[IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัติ**ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## ใช้TempFolderเพื่อหลีกเลี่ยงการยกเว้นหน่วยความจำ

Aspose.Wordsรองรับเอกสารที่มีขนาดใหญ่มากที่มีหลายพันหน้าเต็มไปด้วยเนื้อหาที่อุดมไปด้วย การโหลดเอกสารดังกล่าวอาจต้องใช้มากRAM ในกระบวนการโหลดAspose.Wordsต้องการหน่วยความจำมากขึ้นเพื่อเก็บโครงสร้างชั่วคราวที่ใช้ในการแยกเอกสาร.

หากคุณมีปัญหากับข้อยกเว้นจากหน่วยความจำขณะโหลดเอกสารให้ลองใช้คุณสมบัติ[TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) ในกรณีนี้Aspose.Wordsจะจัดเก็บข้อมูลบางส่วนไว้ในแฟ้มชั่วคราวแทนที่จะเป็นหน่วยความจำและจะช่วย.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่า**TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## ตั้งค่าการเข้ารหัสอย่างชัดเจน

รูปแบบเอกสารที่ทันสมัยที่สุดจัดเก็บเนื้อหาของพวกเขาในยูนิโค้ดและไม่จำเป็นต้องมีกา บทความนี้ไม่มีการอ้างอิงจากเอกสารอ้างอิงหรือแหล่งข้อมูลโปรดช่วยพัฒนาบทความนี้โด Aspose.Wordsพยายามตรวจสอบการเข้ารหัสที่เหมาะสมโดยอัตโนมัติโดยค่าเริ่มต้น,แต่ในกรณีที่หายาก,คุณอาจจำเป็นต้องใช้การเข้ารหัสที่แตกต่างจากที่ตรวจพบโดยขั้นตอนวิธีการรับรู้การเข้ารหัสของเรา. ในกรณีนี้ให้ใช้คุณสมบัติ[Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding)เพื่อรับหรือตั้งค่าการเข้ารหัส.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าการเข้ารหัสเพื่อแทนที่การเข้ารหัสที่เลือกโดยอัตโน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## โหลดเอกสารที่เข้ารหัส

คุณสามารถป้อนเอกสารคำที่เข้ารหัสด้วยรหัสผ่าน การทำเช่นนี้ให้ใช้ตัวสร้างพิเศษเกินพิกัดซึ่งยอมรับวัตถุ[LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) อ็อบเจ็กต์นี้ประกอบด้วยคุณสมบัติ[Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword)ซึ่งระบุสตริงรหัสผ่าน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโหลดเอกสารที่เข้ารหัสด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

หากคุณไม่ทราบล่วงหน้าว่าแฟ้มถูกเข้ารหัสหรือไม่คุณสามารถใช้คลาสของ[FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/)ซึ่งมีวิธีการอรรถประโยชน์สำหรับการทำงานกับรูปแบบแฟ้มเช่นการตรวจหารูปแบบแฟ้มหรือการแปลงนามสกุลแฟ้มไปยัง/จากการแจงนับรูปแบบแฟ้ม เมื่อต้องการตรวจสอบว่าเอกสารถูกเข้ารหัสและต้องการรหัสผ่านเพื่อเปิดหรือไม่ให้ใช้คุณสมบัติ[IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบOpenDocumentไม่ว่าจะเป็นรหัสลับหรือไม่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
