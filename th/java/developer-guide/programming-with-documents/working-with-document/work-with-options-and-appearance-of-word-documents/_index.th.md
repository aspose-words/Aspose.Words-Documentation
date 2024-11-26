---
title: ตัวเลือกและลักษณะของเอกสารคำ
second_title: Aspose.WordsสำหรับJava
articleTitle: ทำงานกับตัวเลือกและลักษณะของเอกสารคำ
linktitle: ทำงานกับตัวเลือกและลักษณะของเอกสารคำ
description: "ควบคุมลักษณะที่ปรากฏของเอกสารคำโดยคำนึงถึงความแตกต่างระหว่างรุ่นต่างๆMicrosoft Wordโดยใช้Java."
type: docs
weight: 40
url: /th/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจต้องเปลี่ยนลักษณะที่ปรากฏของเอกสารตัวอย่างเช่นตั้งค่ากำหนดภาษาหAspose.Wordsให้ความสามารถในการควบคุมวิธีการที่จะแสดงเอกสารเช่นเดียวกับตัวเลือกเพิ่มเติมบ บทความนี้อธิบายถึงความเป็นไปได้ดังกล่าว.

## ตั้งค่าตัวเลือกการแสดงเอกสาร

คุณสามารถควบคุมวิธีการแสดงเอกสารในMicrosoft Wordโดยใช้ชั้นเรียน[ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) คุณสามารถตั้งค่าการซูมเอกสารโดยใช้คุณสมบัติ[ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent)หรือโหมดมุมมองโดยใช้คุณสมบัติ[ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตรวจสอบให้แน่ใจว่าเอกสารจะแสดงที่ 50%เมื่อเปิดในMicrosoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบสำหรับตัวอย่างนี้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word2013 ไม่ได้เขียนปัจจัยการซูมใดๆไปยังเอกสารและไม่ได้ตั้งค่าการซูมเริ่มต้นจากค่าที่เขียนลงในเอกสารอีกต่อไปแต่ดูเหมือนว่าจะใช้ปัจจัยการซูมของเอกสารที่เปิดล่าสุด.

{{% /alert %}}

## ตั้งค่าตัวเลือกการแสดงหน้าเว็บ

หากคุณต้องการตั้งค่าจำนวนอักขระต่อบรรทัดให้ใช้คุณสมบัติ[CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) นอกจากนี้คุณยังสามารถตั้งค่าจำนวนบรรทัดต่อหน้าสำหรับเอกสารคำ–ใช้คุณสมบัติ[LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage)เพื่อรับ.

{{% alert color="primary" %}}

ในMicrosoft Wordคุณสามารถตั้งค่าพารามิเตอร์เดียวกันโดยใช้แท็บ"ตารางเอกสาร"ในกล่องโต้ตอบ"ตั้งค่า.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าจำนวนอักขระต่อบรรทัดและจำนวนบรรทัดต่อหน้าสำหรับเอกสารMicrosoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## ตั้งค่าการตั้งค่าภาษา

การแสดงเอกสารในMicrosoft Wordขึ้นอยู่กับการตั้งค่าภาษาใดเป็นค่าดีฟอลต์สำหรับเอกสารนี้ หากไม่มีการตั้งค่าภาษาเป็นค่าเริ่มต้นMicrosoft Wordจะใช้ข้อมูลจากกล่องโต้ตอบ"ตั้งค่าการตั้งค่าภาษาสำนักงาน"ซึ่งสามารถพบได้ภายใต้"ตัวเลือกไฟล์ Language→ภาษา"ในMicrosoft Word2019.

ด้วยAspose.Wordsคุณยังสามารถตั้งค่าการกำหนดลักษณะภาษาโดยใช้ชั้นเรียน[LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) นอกจากนี้โปรดทราบว่าสำหรับการแสดงผลที่ถูกต้องของเอกสารของคุณจำเป็นต้องตั้งค่าเวอร์ชันMicrosoft Wordที่กระบวนการโหลดเอกสารควรตรงกันซึ่งสามารถทำได้โดยใช้คุณสมบัติ[MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion).

{{% alert color="primary" %}}

หากเอกสารที่สร้างขึ้นAspose.Wordsดูไม่เป็นไปตามที่คาดไว้ให้ตรวจสอบค่า**LanguagePreferences**และ**MswVersion**และปรับค่าหากจำเป็นเพื่อให้ตรงกับการตั้งค่าสำหรับเวอร์ชันMicrosoft Wordของคุณ.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีเพิ่มภาษาญี่ปุ่นในการแก้ไขภาษา:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งภาษารัสเซียเป็นภาษาการแก้ไขเริ่มต้น:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## การบริหารจัดการโปรเจค

วิธี[OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int)อนุญาตให้เพิ่มประสิทธิภาพเนื้อหาของเอกสารรวมทั้งพฤติกรรมเริ่มต้นAspose.Wordsสำหรับเวอร์ชันใดเวอร์ชันหนึ่งของMicrosoft Word คุณสามารถใช้วิธีนี้เพื่อป้องกันไม่ให้Microsoft Wordแสดงริบบิ้น"โหมดความเข้ากันได้"เมื่อโหลดเอกสาร โปรดทราบว่าคุณอาจต้องตั้งค่าคุณสมบัติ`Compliance`เป็นIso29500_2008_Transitionalหรือสูงกว่า.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มประสิทธิภาพเนื้อหาเอกสารสำหรับMicrosoft Word2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
