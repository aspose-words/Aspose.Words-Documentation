---
title: ตัวเลือกการโหลดที่ระบุใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ตัวเลือกต่าง ๆ ของการโหลด
linktitle: ตัวเลือกต่าง ๆ ของการโหลด
description: "ตั้งค่าคุณสมบัติขั้นสูงเมื่อทําการโหลดเอกสารโดยใช้ Java เพื่อให้ควบคุมกระบวนการได้แม่นยํามากขึ้น"
type: docs
weight: 10
url: /th/java/specify-load-options/
---

เมื่อมีการเรียกเอกสาร คุณสามารถตั้งค่าคุณสมบัติบางอย่างได้ Aspose.Words ให้คุณกับ [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) คลาสนี้อนุญาตให้ควบคุมกระบวนการโหลดได้แม่นยํามากขึ้น รูปแบบการโหลดบางแบบมีคลาสที่สอดคล้องกัน ซึ่งบรรจุตัวเลือกในการโหลดในรูปแบบนี้ ตัวอย่างเช่น มี [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) สําหรับการโหลดในรูปแบบ PDF หรือ [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) สําหรับการโหลดไปที่ TXT บทความ นี้ ให้ ตัว อย่าง ของ การ ทํา งาน ด้วย ทาง เลือก ต่าง ๆ **LoadOptions** ชั้นเรียน.

## ตั้งค่า Microsoft Word รุ่นที่จะเปลี่ยนแปลงรูปลักษณ์

รุ่นที่แตกต่างกันของ Microsoft Word โปรแกรมสามารถแสดงเอกสารต่าง ๆ ได้ ยกตัวอย่างเช่น เกิดปัญหาที่เป็นที่รู้จักกันดีกับเอกสาร OOXML เช่น DOCX หรือ DOTX ผลิตจากสํานักงาน WPS ใน กรณี ดัง กล่าว อาจ ขาด ส่วน ที่ เป็น เอกสาร สําคัญ หรือ อาจ ตี ความ ได้ ว่า เป็น สาเหตุ ที่ ต่าง ออก ไป Microsoft Word 2019 เพื่อแสดงเอกสารดังกล่าวที่แตกต่างไปเมื่อเทียบกับ Microsoft Word 2010.

ค่าปริยาย Aspose.Words เปิดเอกสารโดยใช้ Microsoft Word 2019 กฎ พ.ศ. หากคุณต้องการทําให้การโหลดเอกสารปรากฏว่ามันเกิดขึ้นในครั้งก่อนหน้า Microsoft Word รุ่นของโปรแกรม คุณควรจะระบุรุ่นที่ต้องการโดยตรงโดยใช้ [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) สมบัติของ **LoadOptions** ชั้นเรียน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่า Microsoft Word รุ่นที่มีตัวเลือกในการโหลด:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## ตั้งค่าภาษาเพื่อเปลี่ยนรูปลักษณ์

รายละเอียดของการแสดงเอกสารใน Microsoft Word ไม่เพียงแค่ขึ้นอยู่กับรุ่นของโปรแกรมเท่านั้น **MswVersion** ค่าคุณสมบัติ แต่อยู่ที่การตั้งค่าภาษาด้วย Microsoft Word อาจแสดงเอกสารที่แตกต่างกัน ขึ้นอยู่กับการตั้งค่า "Office language Constrution" ซึ่งสามารถพบได้ใน "File' ตัวเลือก → Languge" ตัว อย่าง เช่น การ ใช้ กล่องโต้ตอบ นี้ ผู้ ใช้ สามารถ เลือก ภาษา หลัก, การ พิสูจน์ ภาษา, การ แสดง ภาษา, และ อื่น ๆ ได้. Aspose.Words ให้ [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) คุณสมบัติเทียบเท่ากับกล่องนี้ ถ้า Aspose.Words การแสดงผลแตกต่างจาก Microsoft Word ส่งออก, ตั้งค่าที่เหมาะสมสําหรับ **EditingLanguage** - นี้สามารถปรับปรุงเอกสารการแสดงผล

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ทํา ให้ ญี่ปุ่น เป็น **EditingLanguage**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## ใช้ WarningCallback เพื่อ ควบคุม ปัญหา ขณะโหลดเอกสาร

บางเอกสารอาจจะเสียหาย, มีรายการที่ใช้ไม่ได้, หรือยังมีคุณสมบัติที่ยังไม่รองรับอยู่ Aspose.Words. หากคุณต้องการรู้เกี่ยวกับปัญหาที่เกิดขึ้นขณะโหลดเอกสาร Aspose.Words ให้ [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) อินเตอร์เฟส

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการ **IWarningCallback** ส่วนติดต่อ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

เพื่อหาข้อมูลเกี่ยวกับปัญหาทั้งหมด ตลอดระยะเวลาโหลด ใช้ [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) ทรัพย์สิน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## ใช้ปูมบันทึกของทรัพยากร เรียกกลับเพื่อควบคุมทรัพยากรภายนอก

เอกสารอาจบรรจุที่อยู่เชื่อมโยงภายนอกไปยังภาพที่ตั้งบางแห่งบนดิสก์, เครือข่าย, หรืออินเทอร์เน็ต Aspose.Words ใส่ ภาพ เช่น นั้น ลง ใน เอกสาร โดย อัตโนมัติ แต่ มี สถานการณ์ ที่ ต้อง ควบคุม กระบวนการ นี้. ตัว อย่าง เช่น เพื่อ จะ ตัดสิน ใจ ว่า เรา จําเป็น ต้อง บรรจุ ภาพพจน์ บาง อย่าง หรือ บาง ที ข้าม รูป นั้น ไป. เดอะ [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) ตัวเลือกในการโหลด ให้คุณได้ควบคุมมัน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการ [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) ส่วนติดต่อ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้ **ResourceLoadingCallback** คุณสมบัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## ใช้แฟลชฟลายเดอร์เพื่อหลีกเลี่ยงการยกเว้นหน่วยความจํา

Aspose.Words สนับสนุน เอกสาร ขนาด ใหญ่ ซึ่ง มี หน้า หนังสือ มาก มาย หลาย พัน หน้า. การโหลดเอกสารดังกล่าวอาจจะต้องใช้หน่วยความจํามาก ในการโหลด Aspose.Words ต้องการหน่วยความจํามากขึ้น เพื่อเก็บโครงสร้างชั่วคราวที่ใช้วิเคราะห์เอกสาร

หากคุณมีปัญหากับหน่วยความจํายกเว้นขณะโหลดเอกสาร ให้ลองเรียกใช้ [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) ทรัพย์สิน ในกรณีนี้ Aspose.Words จะ มี การ เก็บ ข้อมูล บาง อย่าง ไว้ ใน แฟ้มชั่วคราว แทน ที่ จะ เป็น ความ จํา และ การ ทํา เช่น นี้ จะ ช่วย ไม่ ให้ มี ข้อ ยก เว้น เช่น นั้น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่า **TempFolder**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## ตั้งค่าชุดรหัสอักขระแบบสรุป

รูปแบบเอกสารสมัยใหม่ส่วนใหญ่ เก็บเนื้อหาไว้ในยูนิโค้ด และไม่จําเป็นต้องมีการจัดการพิเศษ ในทางตรงกันข้าม ยังมีเอกสารอีกหลายฉบับ ที่ใช้รหัสก่อนรหัสยูนิส และบางครั้งก็พลาดข้อมูลการเข้ารหัส Aspose.Words พยายามตรวจสอบรหัสภาษาให้โดยอัตโนมัติ โดยปริยายแล้ว แต่กรณีหายาก คุณอาจจะต้องใช้รหัสภาษาที่แตกต่างจาก ในกรณีนี้ ใช้ [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) ทรัพย์สินที่จะได้รับหรือตั้งค่ารหัส

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีตั้งค่าการเข้ารหัส เพื่อใช้แทนการเข้ารหัสที่เลือกโดยอัตโนมัติ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## โหลดเอกสารที่ถูกเข้ารหัส

คุณโหลดได้ เอกสารคําเข้ารหัสด้วยรหัสผ่าน เพื่อทําสิ่งนี้ ใช้ตัวสร้างที่เกินความสามารถพิเศษ ซึ่งยอมรับ [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) วัตถุ วัตถุนี้บรรจุ [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) คุณสมบัติซึ่งกําหนดข้อความรหัสผ่าน

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการโหลดเอกสารที่มีรหัสผ่าน:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

หากคุณไม่ทราบว่าแฟ้มถูกเข้ารหัสไว้หรือไม่ คุณสามารถเรียกใช้ [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) คลาสซึ่งมีวิธีการจัดการประโยชน์ต่าง ๆ สําหรับการทํางานในรูปแบบแฟ้ม เช่น การตรวจสอบรูปแบบแฟ้ม หรือการแปลงนามสกุลแฟ้มเป็น/ จากรูปแบบ Uneumations เพื่อตรวจสอบว่าเอกสารถูกเข้ารหัสไว้หรือไม่ และต้องการรหัสผ่านในการเปิดมัน ให้ใช้ [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) ทรัพย์สิน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีตรวจสอบ OpenDocument ไม่ว่าจะเป็นการเข้ารหัสหรือไม่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
