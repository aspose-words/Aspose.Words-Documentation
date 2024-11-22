---
title: ใช้ `DocumentBuilder` แทรกธาตุของเอกสาร
second_title: Aspose.Words สําหรับ Java
articleTitle: ใช้ `DocumentBuilder` แทรกธาตุของเอกสาร
linktitle: ใช้ `DocumentBuilder` แทรกธาตุของเอกสาร
type: docs
description: "แทรกองค์ประกอบของเอกสารโดยใช้การสร้างเอกสาร Java."
weight: 10
url: /th/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

เดอะ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ใช้ในการแก้ไขเอกสาร บทความ นี้ อธิบาย และ อธิบาย วิธี ทํา งาน หลาย อย่าง.

## แทรกข้อความ

ผ่านข้อความที่คุณต้องการจะแทรกเข้าไปในเอกสาร [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)วิธี การฟอร์แมตข้อความถูกกําหนดโดย `Font` ทรัพย์สินออบเจกต์นี้จะบรรจุคุณสมบัติของแบบอักษรที่แตกต่างกัน (ชื่อเต็ม, ขนาดตัวอักษร, สี เป็นต้น) คุณสมบัติบางอย่างที่สําคัญของแบบอักษรนี้ แสดงด้วย [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) คุณสมบัติที่ช่วยให้คุณเข้าถึงมันโดยตรง นี่คือคุณสมบัติของบูเลอัน [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), ถึง [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

หมายเหตุว่า การฟอร์แมตตัวอักษรที่คุณตั้งไว้จะถูกนําไปใช้กับข้อความทั้งหมดที่แทรกมาจากตําแหน่งปัจจุบันในเอกสาร เป็นต้น

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้ แทรกข้อความแบบสมบูรณ์โดยใช้ตัวสร้างเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## กําลังแทรกย่อหน้า

ตัวสร้างเอกสาร. เขียนลงเนื้อความ จะแทรกข้อความเข้าไปในเอกสารเช่นกัน แต่นอกจากนี้ มันจะเพิ่มการหยุดย่อหน้า การฟอร์แมตแบบอักษรในปัจจุบันนี้ยังเป็นการกําหนดโดยตัวสร้างเอกสารด้วย รับ คุณสมบัติของแบบอักษรและรูปแบบย่อหน้าปัจจุบัน ถูกกําหนดโดยตัวสร้างเอกสาร GetPraphormat

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี สอด วรรค หนึ่ง ลง ใน เอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## กําลังแทรกตาราง

อัลกอริทึมพื้นฐานที่จะสร้างตารางที่ใช้ `DocumentBuilder` เรียบง่าย:

1 เริ่มตารางโดยใช้ [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1 แทรกเซลล์โดยใช้ [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). นี่จะเริ่มใหม่โดยอัตโนมัติ ถ้าจําเป็น ใช้ [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) คุณสมบัติที่จะกําหนดการฟอร์แมตเซลล์
1 แทรกเนื้อหาเซลล์โดยใช้ `DocumentBuilder` วิธี
1 ทําซ้ําขั้นตอนที่ 2 และ 3 จนกว่าแถวจะสมบูรณ์
1 เรียก [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) เพื่อจบแถวปัจจุบัน ถ้า จําเป็น ก็ ใช้ [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) คุณสมบัติที่จะระบุการฟอร์แมตแถว
1 ทําซ้ําขั้นตอนที่ 2 - 5 จนกว่าตารางจะเสร็จ
1 เรียก [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) เพื่อก่อสร้างโต๊ะให้เสร็จ วิธี การ สร้าง ตาราง

### กําลังเริ่มตาราง

เรียกตัวสร้างเอกสารก่อน เริ่ม ตารางเป็นก้าวแรกในการสร้างโต๊ะ มันยังสามารถเรียกว่าภายในเซลล์ ในกรณีนี้ มันเริ่มต้นโต๊ะทํารัง วิธีต่อไปที่จะเรียกคือ ตัวสร้างเอกสาร. intserent accesselp.

### แทรกเซลล์

หลังจากที่คุณโทรหานักสร้างเอกสาร แทรก เซลล์, เซลล์ใหม่ถูกสร้างขึ้น และเนื้อหาใดๆ ที่คุณเพิ่มโดยใช้วิธีการอื่น ๆ `DocumentBuilder` คลาสจะถูกเพิ่มไปยังเซลล์ปัจจุบัน เพื่อเริ่มต้นห้องขังใหม่ในแถวเดียวกัน โทรหาผู้สร้างเอกสาร แทรก ห้องขังอีกแล้ว ใช้ตัวสร้างเอกสาร ฟอร์แมตคุณสมบัติเพื่อระบุการฟอร์แมตเซลล์ มันจะคืนค่าเป็น [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) วัตถุที่เป็นตัวแทนของการฟอร์แมตทั้งหมด สําหรับเซลล์ตาราง

### จบแถว

เรียกตัวสร้างเอกสารล่าสุด แถวเพื่อจบแถวปัจจุบัน ถ้าคุณโทรหานักสร้างเอกสาร แทรก ห้องขังทันทีหลังจากนั้น ตารางที่ต่อเนื่องในแถวใหม่ ใช้ `DocumentBuilder.RowFormat` คุณสมบัติที่จะระบุการฟอร์แมตแถว มันจะคืนค่าเป็น [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) วัตถุที่แสดงถึงการฟอร์แมตทั้งหมด สําหรับแถวตาราง

### จบตาราง

เรียกตัวสร้างเอกสารล่าสุด ตารางที่จะเสร็จสิ้นตารางปัจจุบัน วิธี นี้ ควร เรียก ว่า หลัง จาก สร้าง เอกสาร เพียง ครั้ง เดียว. จุดจบถูกเรียก เมื่อเรียกตัวสร้างเอกสารจบ ตารางย้ายเคอร์เซอร์ออกจากเซลล์ปัจจุบันไปยังตําแหน่งหลังจากที่ตาราง ตัว อย่าง ต่อ ไป นี้ แสดง ให้ เห็น วิธี สร้าง ตาราง ที่ มี 2 แถว และ 2 คอลัมน์.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## แทรกตัวหยุด

หากคุณต้องการเริ่มบรรทัด, ย่อหน้า, คอลัมน์, ส่วน, หรือหน้าโดยตรง เรียกตัวสร้างเอกสาร ใส่แทรกเตอร์ ผ่านวิธีการนี้ ชนิดของเบรคที่คุณต้องการจะใส่ที่แสดงด้วย `BreakType` การเผาศพ
ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ สอด หน้า เข้า ไป ใน เอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## แทรกรูปภาพ

ผู้สร้างเอกสาร ให้ข้อมูลมากเกินไป [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) วิธีการต่าง ๆ ที่จะช่วยให้คุณสามารถแทรกข้อมูลเข้าหรือภาพลอยได้ หากภาพเป็น menufile ของ EMF หรือแฟ้มประเภท WMF ภาพจะถูกแทรกเข้าไปในเอกสารในรูปแบบ metafile ภาพอื่น ๆ จะถูกจัดเก็บในรูปแบบ PNG ตัวสร้างเอกสาร. int วิธีการถ่ายภาพสามารถใช้ภาพจากแหล่งต่าง ๆ ได้:

- จากแฟ้มหรือ `URL` ผ่านพารามิเตอร์ของข้อความ
- จากลําธารที่ผ่าน `Stream` พารามิเตอร์
- ลบวัตถุ
- จากอาร์เรย์ไบต์โดยผ่านพารามิเตอร์
- และคนอื่นๆ

สําหรับนักสร้างเอกสารแต่ละคน แทรก วิธีการต่าง ๆ ของภาพ มีส่วนที่มากเกินไป ซึ่งจะช่วยให้คุณสามารถแทรกภาพโดยใช้ตัวเลือกต่อไปนี้ได้:

- ในบรรทัดหรือลอยในตําแหน่งเฉพาะ
- ขนาดร้อยละหรือขนาดกําหนดเอง

ยิ่ง กว่า นั้น ผู้ สร้าง เอกสาร. วิธีการมองภาพกลับเป็น [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) วัตถุที่เพิ่งถูกสร้างขึ้นและแทรกเข้าไป เพื่อที่คุณจะได้ปรับเปลี่ยนคุณสมบัติของรูปร่าง

### แทรกรูปภาพในบรรทัด

ส่งข้อความเดี่ยวแทนแฟ้มที่บรรจุอิมเมจไปยังตัวสร้างเอกสาร แทรก รูปภาพที่จะแทรกภาพเข้าไปในเอกสารเป็นกราฟิกแบบข้อความ ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการแทรกภาพในตําแหน่งเคอร์เซอร์ไปยังเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### แทรกรูปภาพแบบฟลอต (ตําแหน่งเฉพาะ)

ตัวอย่างนี้ จะทําการแทรกภาพลอยจากแฟ้มหรือ `URL` ที่ตําแหน่งและขนาดที่ระบุ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## แทรกที่คั่นหน้า

ในการแทรกที่คั่นหน้าเข้าไปในเอกสาร คุณควรจะทําต่อไปนี้:

1 เรียก [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) ส่งชื่อที่ต้องการของที่คั่นหน้าไป
1 แทรกข้อความที่คั่นหน้าโดยใช้ `DocumentBuilder` วิธี
1 เรียก [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) ผ่านมันชื่อเดียวกับที่คุณใช้ในการสร้างเอกสาร. เริ่มทําสมุด

ที่คั่นหน้าสามารถซ้อนทับและสแปนช่วงใด ๆ ได้ ในการสร้างที่คั่นหน้าที่ถูกต้อง คุณจะต้องเรียกทั้งโปรแกรมสร้างเอกสาร เริ่มสร้างและสร้างเอกสาร. dendbookmark ด้วยชื่อที่คั่นหน้าเดียวกัน

จะไม่สนใจการสร้างที่คั่นหน้าหรือที่คั่นหน้าที่ซ้ํากันเมื่อบันทึกเอกสาร

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีแทรกที่คั่นหน้าเข้าไปในเอกสารโดยใช้ตัวสร้างเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## แทรกช่องข้อมูล

ช่องข้อมูลใน Microsoft Word เอกสาร ประกอบ ด้วย รหัส สนาม และ ผล งาน. รหัสสนามก็เหมือนกับสูตร และผลของสนาม คือมูลค่าที่สูตรผลิต นอก จาก นี้ รหัส สนาม อาจ มี การ เปลี่ยน แปลง สนาม ซึ่ง เป็น คํา สั่ง เพิ่ม เติม ให้ ทํา การ กระทํา บาง อย่าง โดย เฉพาะ. คุณสามารถสลับไปมาระหว่างการแสดงรหัสในช่องข้อมูลและผลลัพธ์ในเอกสารของคุณ Microsoft Word ใช้ปุ่มพิมพ์ลัด Alt+F9. รหัสในช่องข้อมูลปรากฏระหว่างการวางเงื่อนปีก (Shelp) { } ) ใช้ [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) เพื่อสร้างช่องข้อมูลในเอกสาร คุณต้องระบุชนิดของสนาม, รหัส สนาม และค่าของสนาม หากคุณไม่แน่ใจว่าเกี่ยวกับรหัสสนามเฉพาะ สร้างสนามใน Microsoft Word ก่อนและสลับกันดูรหัสสนาม
ตัวอย่างโค้ดต่อไปนี้ จะแทรกช่องรวมเข้าไปในเอกสารโดยใช้ตัวสร้างเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## แทรก `Form` ช่องข้อมูล

ช่องข้อมูล Form เป็นกรณีเฉพาะของสนามคํา ที่อนุญาตให้ใช้ "โต้ตอบ" กับผู้ใช้ สนามในแบบฟอร์ม Microsoft Word รวมถึงข้อความ, คอมโบบ็อกซ์ และกล่องเช็ค ผู้สร้างเอกสารมีวิธีการพิเศษในการแทรกช่องรูปแบบแต่ละประเภทเข้าไปในเอกสาร: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int). [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), ถึง [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). โปรดสังเกตว่า หากคุณกําหนดชื่อสําหรับช่องข้อมูลในแบบฟอร์ม แล้วคั่นหน้าจะถูกสร้างโดยอัตโนมัติโดยใช้ชื่อเดียวกัน

### กําลังแทรกข้อความเข้า

ตัวสร้างเอกสาร. intertText input เพื่อแทรกเครื่องหมายแทรกไปยังเอกสาร ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกช่องป้อนข้อความ ในเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### แทรก `CheckBox`

เรียกตัวสร้างเอกสาร Check Box เพื่อแทรกกล่องตรวจสอบเข้าไปในเอกสาร ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีใส่ช่อง checkbox ในเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### แทรกกล่องคอมโบ

เรียกตัวสร้างเอกสารComboBox เพื่อแทรกกล่องคอมโบเข้าไปในเอกสาร ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกช่องกล่องคอมโบในเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## การแทรกภาษาท้องถิ่นที่ระดับสนาม

ระบุรายการได้ ในท้องที่ระดับภาคสนามตอนนี้ และสามารถควบคุมได้ดีขึ้น ภาษาท้องถิ่นName ID สามารถเชื่อมโยงกับแต่ละสนาม ในเครื่องสร้างเอกสาร ตัว อย่าง ข้าง ล่าง แสดง ให้ เห็น วิธี ใช้ ทาง เลือก นี้.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## กําลังแทรก HTML

คุณสามารถแทรกข้อความ HTML ที่บรรจุเอกสาร HTML หรือเอกสาร HTML ทั้งชุดได้อย่างง่ายดาย ส่งสายนี้ไปที่ตัวสร้างเอกสาร แทรก วิธี Html หนึ่งในแนวทางการใช้งานที่มีประโยชน์ของวิธีการนี้ คือการจัดเก็บข้อความ HTML ไว้ในฐานข้อมูล และแทรกมันเข้าไปในเอกสารในระหว่าง Mail Merge เพื่อ จะ ได้ ข้อมูล ที่ ถูก เพิ่ม เข้า มา แทน ที่ จะ สร้าง โดย ใช้ วิธี การ ต่าง ๆ ของ ผู้ สร้าง เอกสาร. ตัวอย่างรหัสต่อไปนี้ จะแสดงการแทรก HTML ไปยังเอกสารโดยใช้ตัวสร้างเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## กําลังแทรกลิงก์ไฮเปอร์ลิงก์

ใช้ตัวสร้างเอกสาร. intertHyperlink เพื่อแทรกไฮเปอร์ลิงก์เข้าไปในเอกสาร วิธีการนี้ยอมรับพารามิเตอร์สามตัว: ข้อความของลิงก์ที่จะแสดงในเอกสาร, เชื่อมโยงไปยังที่อยู่เชื่อมโยง (URL หรือชื่อของที่คั่นหน้าภายในเอกสาร), และพารามิเตอร์ บูเลียนที่ควรจะแสดง true ถ้า `URL` ชื่อของที่คั่นหน้าภายในเอกสาร ผู้สร้างเอกสาร. intertHyperlink. internal เรียกข้อมูลภายในว่า Magnature.inserfailed. วิธีการมักเพิ่ม postrophes ที่จุดเริ่มต้นและจุดสิ้นสุดของที่อยู่ URL หมายเหตุว่า คุณต้องกําหนดรูปแบบแบบอักษรสําหรับข้อความการแสดงผลแบบไฮเปอร์ลิงก์โดยตรงโดยใช้ `Font` ทรัพย์สิน ตัวอย่างโค้ดต่อไปนี้ จะแทรกไฮเปอร์ลิงก์เข้าไปในเอกสารโดยใช้ตัวสร้างเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## แทรก สารบัญ

คุณสามารถใส่ `TOC` ช่องข้อมูลข้อความเข้าเอกสารในตําแหน่งปัจจุบัน [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) วิธี วิธีการสร้างเอกสาร. intertTableOfftents จะทําการแทรกเท่านั้น `TOC` เปิดเอกสาร เพื่อที่จะสร้างตารางของเนื้อหาและแสดงตามหมายเลขหน้าทั้งสอง **Document.UpdateFields**ต้องเรียกวิธีการหลังจากการแทรกข้อมูลในช่องข้อมูล ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ สอด แผ่น เนื้อหา เข้า ไป ใน เอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## แทรกวัตถุ

ถ้าคุณต้องการเรียก Ole Abject [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## ตั้งค่าชื่อแฟ้มและส่วนขยายเมื่อแทรกวัตถุ Ole

แพกเกจ OLE เป็นมรดก และ "ไม่ต้องเก็บเอกสาร" จะใช้เก็บวัตถุที่ฝังอยู่ หากไม่รู้จักตัวจัดการ OLE เร็ว Windows รุ่นต่าง ๆ เช่น Windows 3.1, 95 และ 98 มีแพ็คเกจ โปรแกรมตัวอย่างที่จะใช้ฝังข้อมูลประเภทใด ๆ ไว้ในเอกสาร ตอนนี้ โปรแกรมนี้ถูกกันออกจาก Windows แต่ MSS คําและโปรแกรมอื่น ๆ ยังคงใช้มันเพื่อฝังข้อมูลหากตัวจัดการ OLE หายไปหรือไม่รู้จัก คลาสของ OlePackage อนุญาตให้เข้าถึงคุณสมบัติของแพกเกจ OLE ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีตั้งค่าชื่อแฟ้ม, ส่วนขยาย และแสดงชื่อของแพกเกจ OLE

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## รับข้อมูล OLLL

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ได้ โอเล วัตถุข้อมูลดิบที่ใช้ `OleFormat.GetRawData`() วิธี

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## แทรกทางแนวนอน กฎในเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีใส่กฎทางแนวนอนเป็นเอกสารโดยใช้ `DocumentBuilder.InsertHorizontalRule` วิธี

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## ทํางานกับรูปร่าง

### แทรกอินไลน์และเส้นประอิสระ

คุณสามารถแทรกรูปอินไลน์ด้วยชนิดและขนาดที่ระบุ และเปลี่ยนรูปร่างได้อย่างอิสระ โดยมีตําแหน่ง, ขนาด, และตัวตัดข้อความเป็นเอกสารที่ใช้ `DocumentBuilder.InsertShape` วิธี เดอะ `DocumentBuilder.InsertShape` วิธีการสามารถแทรกรูปร่าง DML ไปยังโมเดลเอกสารได้ เอกสารจะต้องถูกจัดเก็บในรูปแบบแฟ้ม ซึ่งรองรับรูปแบบ DML ไม่เช่นนั้นโหนดจะถูกแปลงเป็นรูป VML ขณะบันทึกเอกสาร ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี สอด รูป แบบ เหล่า นี้ เข้า ไป ใน เอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### สร้างสี่เหลี่ยมมุม Snipp

คุณสามารถสร้างสี่เหลี่ยมมุมได้โดยใช้ Aspose.Words. รูปทรงชนิดคือซิงเกิลคอร์เนอร์สนิพเพิร์ด ท็อปคอร์เนอร์สสสนิพเพิร์ด, PythCorners Snipped, TopCorners One Rounded One Snipped, One CornerRounded, TopCorners Rounded, และ PythCorners Rounded. สร้างรูปทรง DML โดยใช้ `DocumentBuilder.InsertShape` วิธีการที่มีรูปร่างเหล่านี้ ชนิดเหล่านี้ไม่สามารถใช้ในการสร้างรูปร่างแบบ VML ได้ ความพยายามที่จะสร้างรูปร่างโดยการใช้ผู้สร้างสาธารณะของคลาส "Shape" เพิ่มข้อยกเว้น "NotSupported Exception" ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี สอด รูป แบบ เหล่า นี้ เข้า ไป ใน เอกสาร.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### นําเข้ารูปร่างและคณิตศาสตร์ XML เป็นรูปร่าง DOM

คุณสามารถใช้ `LoadOptions.ConvertShapeToOfficeMath` คุณสมบัติในการแปลงรูปทรงด้วย EquationXML เป็นวัตถุคณิตศาสตร์สํานักงาน ค่าปริยายของคุณสมบัตินี้ ตรงกับพฤติกรรมแบบ MSW แบบ I. รูปทรงกับสมการ XML ไม่ได้แปลงเป็นวัตถุคณิตศาสตร์ในสํานักงาน

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
