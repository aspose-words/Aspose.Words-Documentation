---
title: แนะ นํา ให้ ทํา งาน ใน เขต ประกาศ Java
second_title: Aspose.Words สําหรับ Java
articleTitle: คํา แนะ นํา สําหรับ เขต งาน
linktitle: คํา แนะ นํา สําหรับ เขต งาน
description: "บทความเกี่ยวกับรายละเอียด, รหัสและผลของสนามอธิบาย Aspose.Words สําหรับ Java."
type: docs
weight: 10
url: /th/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words เป็นไลบรารีคลาสที่ออกแบบสําหรับการประมวลผลของแม่ข่ายด้าน Microsoft Word เอกสารและส่วนรองรับในวิธีต่อไปนี้:

- ลบทั้งเธรด
- มันเป็นไปได้ที่จะปรับปรุงผลของสนามที่มากที่สุด

ใน บทความ นี้ เรา จะ เรียน รู้ มาก ขึ้น เกี่ยว กับ โครง สร้าง ใน ทุ่ง นา ที่ ได้ รับ การ สนับสนุน Aspose.Words, และรายละเอียดของการทํางานกับสาขาดังกล่าว

## โครงสร้างช่องข้อมูล

สนาม ที่ ประกอบ ด้วย:

- มี การ ใช้ โหนด เริ่ม และ ส่วน แบ่ง เพื่อ ครอบ คลุม เนื้อหา ซึ่ง ประกอบ เป็น รหัส สนาม (ปกติ แล้ว เป็น ข้อ ธรรมดา).
- การแยกสนามและสนามครอบคลุมผลลัพธ์ เรื่อง นี้ อาจ ประกอบ ด้วย เนื้อหา หลาก หลาย รูป แบบ ที่ มี ตั้ง แต่ การ อ่าน ข้อ ความ ไป จน ถึง วรรค ต่าง ๆ.
- บางสนามอาจจะไม่มีตัวแบ่ง ซึ่งแปลว่า เนื้อหาทั้งหมดเป็นรหัสสนาม
- รหัสสนามกําหนดพฤติกรรมของสนาม และประกอบด้วยตัวระบุสนาม และบ่อยครั้งตัวแปรอื่น ๆ เช่น ชื่อสนามและสลับ
- ผลของสนามมีการประเมินล่าสุดของสนาม ค่านี้จะถูกเก็บไว้ในผลลัพธ์ของช่อง และจะถูกแสดงกับผู้ใช้ด้วย นา บาง แห่ง อาจ ไม่ มี ผล อะไร ใน การ แสดง เอกสาร. ใน ทํานอง เดียว กัน อาจ ยัง ไม่ มี การ ปรับ ปรุง ทุ่ง นา บาง แห่ง ด้วย เหตุ นี้ จึง ไม่ มี ผล ใน นา ด้วย.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

เนื้อหาที่สร้างรหัสในช่องข้อมูลถูกเก็บไว้ [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) โหนดระหว่าง [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) ถึง [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). ผลของสนามถูกเก็บไว้ระหว่าง **FieldSeparator** ถึง [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) โหนดและสามารถประกอบไปด้วยเนื้อหาหลากหลายประเภท ตามปกติผลลัพธ์ของสนามจะมีเพียงแค่ข้อความที่ประกอบด้วยโหนดของการทํางาน อย่างไรก็ตามมันเป็นไปได้ที่โหนดสนามที่จะตั้งอยู่ในย่อหน้าที่แตกต่างกันอย่างสิ้นเชิงและจึงทําให้ผลของสนามประกอบด้วย [ระดับตรรกะของโหนดในเอกสาร](/words/th/java/logical-levels-of-nodes-in-a-document/) เช่น **Table** ถึง **Paragraph** โหนดด้วย

ต่อ ไป นี้ เป็น ทัศนะ ที่ ว่า มี การ เก็บ ไว้ ใน ทุ่ง นา อย่าง ไร Aspose.Words โดยใช้ตัวอย่าง "* เครื่องขยายสัญญาณ" [กิทูบ](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## ช่องข้อมูลใน Aspose.Words Document Object Model (DOM)

เมื่อมีการโหลดเอกสาร Aspose.Words'"> ช่องข้อมูลต่าง ๆ ของเอกสารถูกโหลดเข้าไปใน Aspose.Words Document Object Model เป็นชุดขององค์ประกอบที่แยกกัน ช่องข้อมูลเดียวถูกบรรจุไว้เป็นคลัง **FieldStart**, **FieldSeparator** ถึง **FieldEnd** โหนดพร้อมกับเนื้อหาระหว่างโหนดเหล่านี้ ถ้าสนามไม่มีผลในสาขา แล้วจะมีไม่มี **FieldSeparator** โหนด โหนดเหล่านี้ทั้งหมดจะพบในบรรทัด (เช่นลูก ๆ ของ [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) หรือ [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

ใน Aspose.Words แต่ละอัน **FieldXXX** โหนดมาจาก [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). คลาสนี้ให้คุณสมบัติตรวจสอบชนิดของสนามที่แสดงโดยโหนดที่ระบุผ่านทาง [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) ทรัพย์สิน ตัวอย่างเช่น `FieldType.FieldMergeField` แสดงถึงสนามรวมในเอกสาร

{{% alert color="primary" %}}

มีช่องข้อมูลบางรายการที่มีอยู่ในเอกสารคําที่ไม่ได้นําเข้า Aspose.Words เป็นของสะสม **FieldXXX** โหนด ยกตัวอย่างเช่น `LINK` สนามและ `INCLUDEPICTURE` กําลังนําเข้าข้อมูลเข้า Aspose.Words ในฐานะ [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) วัตถุ วัตถุนี้จะให้คุณสมบัติในการทํางานกับข้อมูลภาพปกติที่เก็บไว้ในช่องข้อมูลเหล่านี้ นําเข้า `INCLUDEPICTURE` ช่องข้อมูลเป็น **FieldXXX** โหนด [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) ต้องกําหนดตัวเลือกเป็น **true**.

มี การ นํา สนาม แม่ เหล็ก เข้า ไป ใน Aspose.Words ในระดับพิเศษของพวกเขา เดอะ [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) ชั้น เรียน หมาย ถึง สนาม แบบ ต่าง ๆ ใน เอกสาร พระ คํา และ จัด ให้ มี วิธี การ เพิ่ม เติม ที่ ใช้ ใน ภาค ปฏิบัติ โดย เฉพาะ.

{{% /alert %}}

## ช่องข้อมูลที่รองรับ

รองรับการคํานวณของช่องข้อมูลต่อไปนี้ในรุ่นปัจจุบัน Aspose.Words

- = (พ.ศ
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (รวมทั้ง Tot และ TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## สนาม ที่ มี ลักษณะ พิเศษ

Aspose.Words เดินไปตามทาง Microsoft Word ช่องข้อมูลของโพรเซส และผลก็คือ มันจัดการอย่างถูกต้อง:

- ทุ่งที่ตั้งรัง:
  `IF { =OR({ `COMPAR` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- การโต้แย้งในสนามอาจเป็นผลมาจากสนามที่ปู
- ทุ่งหญ้าสามารถถูกวางในรหัสสนามเช่นเดียวกับในผลลัพธ์
- พื้นที่/ ไม่เว้นช่องว่าง คําคม/ไม่มีคําคม, บุคคลผู้หลบหนีในสาขาอื่นๆ:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- สนามที่สแปนผ่านหลาย ๆ ย่อหน้า

### ช่องข้อมูลสูตร

Aspose.Words จัด เตรียม เครื่อง ยนต์ สูตร อย่าง จริงจัง และ สนับสนุน สิ่ง ต่อ ไป นี้:

- ผู้ดําเนินการทางคณิตศาสตร์และตรรกะ:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- ฟังก์ชัน:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- การอ้างถึงที่คั่นหน้า:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- เปลี่ยนรูปแบบตัวเลข:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

รองรับฟังก์ชันในพจน์ต่อไปนี้: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` ถึง `COMPARE` ช่องข้อมูล

แค่บางส่วน `IF` นิพจน์ที่ Aspose.Words สามารถคํานวณง่าย ๆ ควรจะให้คุณ ความคิดที่ว่าคุณสมบัตินี้มีประสิทธิภาพ

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` ถึง `TIME` ช่องข้อมูล

Aspose.Words รองรับสลับวันที่และเวลาทั้งหมดที่มี Microsoft Word, บางตัวอย่างก็คือ

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge ช่องข้อมูล

Aspose.Words ไม่จํากัดความซับซ้อน Mail Merge ช่องข้อมูลในเอกสารของคุณ และรองรับส่วนต่าง ๆ `IF` และ สนาม สูตร และ สามารถ คํานวณ ชื่อ สนาม รวม ด้วย โดย ใช้ สูตร.

บางตัวอย่างของ Mail Merge สนามที่ Aspose.Words รองรับ:

- Mail merge สลับช่อง:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- พื้นที่รวมรังในสูตร:
  `IF { `เม อร์เค เตอร์` Value1 } >= { `เม อร์เค เตอร์` Value2 } True False`
- คํานวณชื่อของสนามรวมเมื่อทํางาน:
  `MERGEFIELD { `หาก` { `เม อร์เค เตอร์` Value1 } >= { `เม อร์เค เตอร์` Value2 } FirstName"LastName" }`
- การย้ายเงื่อนไขไปยังบันทึกถัดไปในแหล่งข้อมูล:
  `NEXTIF { `เม อร์เค เตอร์` Value1 } <= { =IF(-2.45 >= 6*{ `เม อร์เค เตอร์` Value2 }, 2, -.45) }`

### สลับรูปแบบ

ช่อง ใน เอกสาร สามารถ มี การ เปลี่ยน แปลง รูป แบบ ต่าง ๆ ที่ ระบุ ว่า ควร ทํา อย่าง ไร จึง จะ ทํา อย่าง นั้น. Aspose.Words รองรับการสลับรูปแบบต่อไปนี้:

- @ - รูปแบบวันที่และเวลา
-\\\\# – รูปแบบตัวเลข
-\\\\\\\\* หมวก
-\\\\\\\\*ช่อง 1
-\\\\\\\\* ด้านล่าง
-\\\\\\\\* ด้านบน
-\\\\\\\\* CHARFFORMAT - ฟอร์แมตตามตัวอักษรแรกของรหัสสนาม
-\\\\\\\\* MERIFFTMAT - ฟอร์แมตตามรูปแบบที่ผลเก่าถูกจําแนก

### Date รูปแบบตัวเลขในช่องข้อมูล

เมื่อ Aspose.Words คํานวณผลของสนาม บ่อยครั้งที่ต้องวิเคราะห์ค่าสตริง เป็นจํานวนหรือวันที่ และต้องฟอร์แมตมันกลับไปเป็นข้อความด้วย ค่าปริยาย Aspose.Words ใช้วัฒนธรรมของเธรดปัจจุบันเพื่อทําการไล่จับและฟอร์แมตเมื่อคํานวณค่าในช่องข้อมูลระหว่างการปรับปรุงและ mail merge. นอกจากนี้ยังมีตัวเลือกต่างๆ ในรูปแบบของ [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) คลาสที่อนุญาตให้ควบคุมเพิ่มเติมว่า วัฒนธรรมไหนที่ใช้ระหว่างการปรับปรุงข้อมูล%

*โดยปริยายแล้ว [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) ตั้งค่าคุณสมบัติต่าง ๆ [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) ฟอร์แมตของช่องข้อมูลโดยใช้วัฒนธรรมของเธรดปัจจุบัน
* ทรัพย์ สิน นี้ สามารถ กําหนด ได้ [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) ดังนั้นภาษาที่ตั้งจากรหัสสนาม จึงถูกใช้สําหรับการฟอร์แมตแทน

### ฟอร์แมตโดยใช้วัฒนธรรมของเธรดปัจจุบัน

เพื่อควบคุมวัฒนธรรมที่ใช้ในระหว่างการคํานวณภาคสนาม **CurrentCulture** ทรัพย์สินสําหรับวัฒนธรรมในการตัดสินใจของคุณ ก่อนที่จะมีการลงมติในการคํานวณสนาม

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี เปลี่ยน วัฒนธรรม ที่ ใช้ ใน การ ปรับ ปรุง สนาม ระหว่าง การ ปรับ ปรุง:

EXMPLE (ใช้คอมโพเนนท์ปัจจุบันของ PublicHeadSettings. get Localae () และตั้งค่า Locale () แทนที่จะเป็นส่วนส่วนตัว `Thread.CurrentThread`การออกเสียง)

การใช้วัฒนธรรมปัจจุบันในการฟอร์แมตสนาม ทําให้ระบบสามารถควบคุมได้อย่างง่ายและต่อเนื่อง ว่าทุกสาขาในเอกสารถูกจัดรูปแบบอย่างไรระหว่างการปรับปรุงสนาม

### ฟอร์แมตโดยใช้วัฒนธรรมในเอกสาร

ในทางกลับกัน Microsoft Word ฟอร์แมตสาขาแต่ละสาขา โดยใช้ภาษาของข้อความที่พบในสาขางาน (โดยเฉพาะอย่างยิ่งคือ ประมวลผลจากรหัสสนาม) บาง ครั้ง ระหว่าง การ ปรับ ปรุง ใน เขต งาน อาจ เป็น พฤติกรรม ที่ ต้องการ ตัว อย่าง เช่น ถ้า คุณ มี เอกสาร ที่ ครอบ คลุม เนื้อหา ที่ ประกอบ ด้วย หลาย ภาษา และ ต้องการ ให้ แต่ ละ สาขา ให้ เกียรติ แก่ คน ท้อง ถิ่น ที่ ใช้ จาก ข้อ ความ นั้น. Aspose.Words ยัง สนับสนุน วิธี การ นี้ ด้วย.

เดอะ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) ชั้นเรียนให้ [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) คุณสมบัติที่มีสมาชิกซึ่งสามารถใช้ควบคุมการปรับปรุงช่องข้อมูลภายในเอกสารได้

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีระบุที่ตั้งของวัฒนธรรมที่ใช้สําหรับการฟอร์แมตวันที่ระหว่างการปรับปรุงสนาม Mail Merge เลือกจาก:

อิเล็กตรอน
