---
title: ระบุตัวเลือกการโหลดใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ระบุตัวเลือกการโหลด
linktitle: ระบุตัวเลือกการโหลด
description: "ควบคุมกระบวนการโหลดได้แม่นยำยิ่งขึ้นโดยใช้ C#"
type: docs
weight: 10
url: /th/net/specify-load-options/
---

เมื่อโหลดเอกสาร คุณสามารถตั้งค่าคุณสมบัติขั้นสูงบางอย่างได้ Aspose.Words ให้คลาส [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) แก่คุณ ซึ่งช่วยให้ควบคุมกระบวนการโหลดได้แม่นยำยิ่งขึ้น รูปแบบการโหลดบางรูปแบบมีคลาสที่สอดคล้องกันซึ่งมีตัวเลือกการโหลดสำหรับรูปแบบการโหลดนี้ เช่น มี [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) สำหรับการโหลดเป็นรูปแบบ PDF หรือ [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) สำหรับการโหลดไปยัง TXT บทความนี้จะแสดงตัวอย่างการทำงานกับตัวเลือกของคลาส **LoadOptions**

## ตั้งค่าเวอร์ชัน Microsoft Word เพื่อเปลี่ยนรูปลักษณ์

แอปพลิเคชัน Microsoft Word เวอร์ชันต่างๆ สามารถแสดงเอกสารในรูปแบบที่แตกต่างกันได้ ตัวอย่างเช่น มีปัญหาที่ทราบกันดีเกี่ยวกับเอกสาร OOXML เช่น DOCX หรือ DOTX ที่สร้างโดยใช้ WPS Office ในกรณีดังกล่าว องค์ประกอบมาร์กอัปเอกสารที่สำคัญอาจหายไปหรืออาจถูกตีความแตกต่างออกไป ทำให้ Microsoft Word 2019 แสดงเอกสารดังกล่าวแตกต่างจาก Microsoft Word 2010

ตามค่าเริ่มต้น Aspose.Words จะเปิดเอกสารโดยใช้กฎ Microsoft Word 2019 หากคุณต้องการให้การโหลดเอกสารปรากฏขึ้นเหมือนกับที่จะเกิดขึ้นในแอปพลิเคชัน Microsoft Word เวอร์ชันก่อนหน้า คุณควรระบุเวอร์ชันที่ต้องการอย่างชัดเจนโดยใช้คุณสมบัติ [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) ของคลาส **LoadOptions**

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าเวอร์ชัน Microsoft Word พร้อมตัวเลือกการโหลด:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## ตั้งค่ากำหนดภาษาเพื่อเปลี่ยนรูปลักษณ์

รายละเอียดของการแสดงเอกสารใน Microsoft Word ไม่เพียงขึ้นอยู่กับเวอร์ชันของแอปพลิเคชันและค่าคุณสมบัติ **MswVersion** เท่านั้น แต่ยังขึ้นอยู่กับการตั้งค่าภาษาด้วย Microsoft Word อาจแสดงเอกสารแตกต่างกันไปขึ้นอยู่กับการตั้งค่ากล่องโต้ตอบ "การตั้งค่าภาษาของ Office" ซึ่งสามารถพบได้ใน "ไฟล์ → ตัวเลือก → ภาษา" การใช้กล่องโต้ตอบนี้ผู้ใช้สามารถเลือกได้ เช่น ภาษาหลัก ภาษาการพิสูจน์อักษร ภาษาที่แสดง และอื่นๆ Aspose.Words จัดเตรียมคุณสมบัติ [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) ให้เทียบเท่ากับกล่องโต้ตอบนี้ หากเอาต์พุต Aspose.Words แตกต่างจากเอาต์พุต Microsoft Word ให้ตั้งค่าที่เหมาะสมสำหรับ **EditingLanguage** ซึ่งจะช่วยปรับปรุงเอกสารเอาต์พุตได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าภาษาญี่ปุ่นเป็น **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## ใช้ WarningCallback เพื่อควบคุมปัญหาขณะโหลดเอกสาร

เอกสารบางรายการอาจเสียหาย มีรายการที่ไม่ถูกต้อง หรือมีฟีเจอร์ที่ Aspose.Words ไม่รองรับในปัจจุบัน หากคุณต้องการทราบปัญหาที่เกิดขึ้นขณะโหลดเอกสาร Aspose.Words จะมีอินเทอร์เฟซ [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) ให้

ตัวอย่างโค้ดต่อไปนี้แสดงการใช้งานอินเทอร์เฟซ **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

หากต้องการรับข้อมูลเกี่ยวกับปัญหาทั้งหมดตลอดระยะเวลาโหลด ให้ใช้คุณสมบัติ [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## ใช้ ResourceLoadingCallback เพื่อควบคุมการโหลดทรัพยากรภายนอก

เอกสารอาจมีลิงก์ภายนอกไปยังรูปภาพที่อยู่ในดิสก์ภายในเครื่อง เครือข่าย หรืออินเทอร์เน็ต Aspose.Words จะโหลดรูปภาพดังกล่าวลงในเอกสารโดยอัตโนมัติ แต่มีบางสถานการณ์ที่จำเป็นต้องควบคุมกระบวนการนี้ ตัวอย่างเช่น เพื่อตัดสินใจว่าเราจำเป็นต้องโหลดรูปภาพบางรูปจริงๆ หรืออาจข้ามรูปภาพนั้นไป ตัวเลือกการโหลด [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) ช่วยให้คุณสามารถควบคุมสิ่งนี้ได้

ตัวอย่างโค้ดต่อไปนี้แสดงการใช้งานอินเทอร์เฟซ [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้คุณสมบัติ **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## ใช้ TempFolder เพื่อหลีกเลี่ยงข้อยกเว้นหน่วยความจำ

Aspose.Words รองรับเอกสารที่มีขนาดใหญ่มากซึ่งมีเนื้อหามากมายหลายพันหน้า การโหลดเอกสารดังกล่าวอาจต้องใช้ RAM มาก ในกระบวนการโหลด Aspose.Words ต้องการหน่วยความจำเพิ่มเติมเพื่อเก็บโครงสร้างชั่วคราวที่ใช้ในการแยกวิเคราะห์เอกสาร

หากคุณมีปัญหากับข้อยกเว้นหน่วยความจำไม่เพียงพอขณะโหลดเอกสาร ให้ลองใช้คุณสมบัติ [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) ในกรณีนี้ Aspose.Words จะจัดเก็บข้อมูลบางส่วนไว้ในไฟล์ชั่วคราวแทนหน่วยความจำ และสามารถช่วยหลีกเลี่ยงข้อยกเว้นดังกล่าวได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่า **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## ตั้งค่าการเข้ารหัสอย่างชัดเจน

รูปแบบเอกสารสมัยใหม่ส่วนใหญ่จัดเก็บเนื้อหาในรูปแบบ Unicode และไม่ต้องการการจัดการพิเศษ ในทางกลับกัน ยังมีเอกสารจำนวนมากที่ใช้การเข้ารหัสแบบ pre-Unicode และบางครั้งก็พลาดข้อมูลการเข้ารหัส หรือไม่รองรับข้อมูลการเข้ารหัสโดยธรรมชาติด้วยซ้ำ Aspose.Words พยายามตรวจหาการเข้ารหัสที่เหมาะสมโดยอัตโนมัติตามค่าเริ่มต้น แต่ในบางกรณีที่เกิดขึ้นไม่บ่อยนัก คุณอาจจำเป็นต้องใช้การเข้ารหัสที่แตกต่างจากการเข้ารหัสที่ตรวจพบโดยอัลกอริธึมการจดจำการเข้ารหัสของเรา ในกรณีนี้ ให้ใช้คุณสมบัติ [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) เพื่อรับหรือตั้งค่าการเข้ารหัส

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าการเข้ารหัสเพื่อแทนที่การเข้ารหัสที่เลือกโดยอัตโนมัติ:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## โหลดเอกสารที่เข้ารหัส

คุณสามารถโหลดเอกสาร Word ที่เข้ารหัสด้วยรหัสผ่านได้ เมื่อต้องการทำเช่นนี้ ให้ใช้ตัวสร้างพิเศษโอเวอร์โหลด ซึ่งยอมรับวัตถุ [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) วัตถุนี้มีคุณสมบัติ [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) ซึ่งระบุสตริงรหัสผ่าน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโหลดเอกสารที่เข้ารหัสด้วยรหัสผ่าน:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

หากคุณไม่ทราบล่วงหน้าว่าไฟล์ถูกเข้ารหัสหรือไม่ คุณสามารถใช้คลาส [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) ซึ่งมีวิธีการอรรถประโยชน์ในการทำงานกับรูปแบบไฟล์ เช่น การตรวจจับรูปแบบไฟล์หรือการแปลงนามสกุลไฟล์เป็น/จากการแจงนับรูปแบบไฟล์ หากต้องการตรวจสอบว่าเอกสารถูกเข้ารหัสและต้องใช้รหัสผ่านในการเปิดหรือไม่ ให้ใช้คุณสมบัติ [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตรวจสอบ OpenDocument ว่าถูกเข้ารหัสหรือไม่:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
