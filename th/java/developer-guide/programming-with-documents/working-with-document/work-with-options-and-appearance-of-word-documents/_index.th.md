---
title: ตัวเลือกและรูปลักษณ์ของเอกสารคํา
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับตัวเลือกและรูปลักษณ์ของเอกสารคํา
linktitle: ทํางานกับตัวเลือกและรูปลักษณ์ของเอกสารคํา
description: "ควบคุม การ ปรากฏ ของ เอกสาร คํา ที่ พิจารณา ความ แตก ต่าง ระหว่าง เอกสาร ต่าง ๆ Microsoft Word รุ่นที่ใช้ Java."
type: docs
weight: 40
url: /th/java/work-with-word-document-options-and-appearance/
---

บาง ครั้ง คุณ อาจ จําเป็น ต้อง เปลี่ยน รูป แบบ การ ปรากฏ ของ เอกสาร เพื่อ เป็น การ กําหนด จํานวน ภาษา ต่อ หน้า.Aspose.Words ให้ ความ สามารถ ใน การ ควบคุม วิธี แสดง เอกสาร รวม ทั้ง ทาง เลือก อื่น ๆ ด้วย. บทความ นี้ พรรณนา ความ เป็น ไป ได้ ดัง กล่าว.

## ตั้งค่าตัวเลือกการแสดงผลเอกสาร

คุณสามารถควบคุมการแสดงเอกสารได้ Microsoft Word ใช้ [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) ชั้นเรียน. ตัวอย่างเช่น คุณสามารถตั้งค่าการย่อ/ ขยายเอกสารโดยใช้ [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) คุณสมบัติ, หรือโหมดมุมมองที่ใช้ [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) ทรัพย์สิน

ตัวอย่างรหัสต่อไปนี้ แสดงให้เห็นว่าจะตรวจสอบอย่างไร ให้แสดงเอกสารที่ 50% เมื่อเปิดใช้ Microsoft Word

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบสําหรับตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 ไม่ได้เขียนตัวย่อขยายไปยังเอกสาร และไม่ได้ตั้งค่าการย่อ/ ขยายปริยายจากค่าที่เขียนมาถึงเอกสารแทน มันกลับดูเหมือนจะใช้ตัวย่อขยายของเอกสารที่เปิดล่าสุดแทน

{{% /alert %}}

## ตั้งค่าตัวเลือกการแสดงผลหน้ากระดาษ

หากคุณต้องการกําหนดจํานวนตัวอักษรต่อบรรทัด ให้ใช้ [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) ทรัพย์สิน คุณสามารถกําหนดจํานวนบรรทัดต่อหน้าสําหรับเอกสารคํา – ใช้ [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) คุณสมบัติที่จะใช้หาหรือตั้งค่าจํานวนบรรทัดต่อหน้าในตารางเอกสาร

{{% alert color="primary" %}}

ใน Microsoft Word, คุณสามารถตั้งค่าพารามิเตอร์เดียวกันได้ โดยใช้แท็บ "Document Raw" ในกล่อง "การตั้งค่าหน้า" เฉพาะเมื่อมีการติดตั้งการรองรับภาษาเอเชียเท่านั้น

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงจํานวนตัวอักษรต่อบรรทัด และจํานวนบรรทัดต่อหน้า Microsoft Word เอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## ตั้งค่าภาษา

กําลังแสดงเอกสารใน Microsoft Word ขึ้นอยู่กับว่าจะให้ภาษาใดเป็นค่าปริยายของเอกสารนี้ หากไม่มีการตั้งภาษาไว้เป็นค่าปริยาย Microsoft Word รับข้อมูลจากกล่องโต้ตอบ "ตั้งค่าภาษาสํานักงาน" ซึ่งยกตัวอย่าง สามารถพบได้ใน "แฟ้ม' ตัวเลือก ○ ภาษา" ใน Microsoft Word 2019.

ด้วย Aspose.Words, คุณยังสามารถตั้งค่าภาษาโดยใช้ [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) ชั้นเรียน. โปรดสังเกตว่าสําหรับการแสดงผลที่ถูกต้องของเอกสารของคุณ จําเป็นในการตั้ง Microsoft Word รุ่นที่โพรเซสในการโหลดเอกสารควรตรงกัน - สามารถทําได้โดยการใช้ [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) ทรัพย์สิน

{{% alert color="primary" %}}

ถ้า Aspose.Words เอกสารที่สร้างมาไม่ได้ดูเป็นตามที่คาดหวัง ให้ตรวจสอบ **LanguagePreferences** ถึง **MswVersion** ค่าและปรับแก้ หากจําเป็นในการจับคู่การตั้งค่าของคุณ Microsoft Word รุ่น

{{% /alert %}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี เพิ่ม ภาษา ญี่ปุ่น:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการตั้งภาษารัสเซียเป็นภาษาแก้ไขปริยาย:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## ปรับ ตั้ง เอกสาร สําหรับ ส่วน ประกอบ รุ่นของคํา

เดอะ [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) วิธีการอนุญาตให้ทําการปรับแต่งเนื้อหาของเอกสารได้ดีขึ้น รวมทั้งค่าปริยายด้วย Aspose.Words พฤติกรรมสําหรับรุ่นเฉพาะของ Microsoft Word. คุณสามารถใช้วิธีนี้เพื่อป้องกัน Microsoft Word จากการแสดง "โหมดความเข้ากันได้" ริบบิ้นเมื่อเอกสารโหลด สังเกตว่าคุณอาจจําเป็นต้องตั้งค่า `Compliance` 2551. ทรัพย์สินของ Iso29500_2008. ทรัพย์สินที่เพิ่มขึ้นหรือสูงกว่า.

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีปรับแต่งเนื้อหาของเอกสาร Microsoft Word 2016: ค.ศ

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
