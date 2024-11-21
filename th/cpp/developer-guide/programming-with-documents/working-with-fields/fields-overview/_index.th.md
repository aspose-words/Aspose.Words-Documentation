---
title: ภาพรวมฟิลด์ในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ภาพรวมฟิลด์
linktitle: ภาพรวมฟิลด์
description: "ฟิลด์คุณลักษณะในรายละเอียดรหัสฟิลด์และผลฟิลด์อธิบายใน Aspose.WordsสำหรับC++."
type: docs
weight: 10
url: /th/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsเป็นไลบรารีชั้นที่ออกแบบมาสำหรับการประมวลผลฝั่งเซิร์ฟเวอร์ของเอกสารMicrosoft Wordและสนับสนุ:

- ฟิลด์ทั้งหมดในเอกสารจะถูกเก็บรักษาไว้ในระหว่างการเปิด/บันทึกและการแปลง
- มันเป็นไปได้ที่จะปรับปรุงผลของเขตข้อมูลมากที่สุด

ในบทความนี้เราจะเรียนรู้เพิ่มเติมเกี่ยวกับโครงสร้างฟิลด์ฟิลด์ที่สนับสนุนในAspose.Wordsและรายละเ.

## โครงสร้างฟิลด์

เขตข้อมูลประกอบด้วย:

- โหนดเริ่มต้นฟิลด์และตัวคั่นจะใช้เพื่อครอบคลุมเนื้อหาซึ่งสร้างรหัสฟิลด์(ปกติเป็นข้อความล.
- ตัวคั่นฟิลด์และปลายเขตข้อมูลครอบคลุมผลลัพธ์ฟิลด์ นี้สามารถสร้างขึ้นจากประเภทต่างๆของเนื้อหาตั้งแต่การทำงานของข้อความย่อหน้าตารา.
- บางฟิลด์อาจไม่มีตัวคั่นซึ่งหมายความว่าเนื้อหาทั้งหมดสร้างรหัสฟิลด์.
- รหัสฟิลด์กำหนดลักษณะการทำงานของฟิลด์และประกอบด้วยตัวระบุฟิลด์และพารามิเตอร์อื่.
- ผลลัพธ์ฟิลด์มีการประเมินผลล่าสุดของฟิลด์ ค่านี้จะถูกเก็บไว้ในผลลัพธ์ของฟิลด์และเป็นสิ่งที่แสดงให้กับผู้ใช้ บางเขตข้อมูลอาจไม่มีผลลัพธ์ฟิลด์ใดๆจึงจะไม่แสดงอะไรในเอกสาร ในทำนองเดียวกันบางเขตข้อมูลอาจไม่ได้รับการปรับปรุงดังนั้นจึงยังจะไม่มีผลฟิลด์.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

เนื้อหาที่สร้างรหัสฟิลด์จะถูกเก็บไว้เป็น[Run](https://reference.aspose.com/words/cpp/class/aspose.words.run)โหนดระหว่าง[FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/)และ[FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/) ผลลัพธ์ของฟิลด์จะถูกเก็บไว้ระหว่าง**FieldSeparator**และ[FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/)โหนดและสามารถสร้างขึ้นจากชนิดของเนื้อหา โดยปกติแล้วผลลัพธ์ของฟิลด์จะมีเพียงข้อความที่สร้างขึ้นจาก**Run**โหนดแต่ก็เป็นไปได้สำหรับ**FieldEnd**โหนดที่จะอยู่ในย่อหน้าที่แตกต่างกันอย่างสิ้นเชิง,และทำให้ผลลัพธ์ของฟิลด์ประกอบด้วย [โหนดระดับบล็อก](/words/cpp/logical-levels-of-nodes-in-a-document/) เช่น**Table**และ**Paragraph**โหนดเช่นกัน.

ต่อไปนี้เป็นมุมมองของวิธีการจัดเก็บฟิลด์ในAspose.Wordsโดยใช้ตัวอย่าง"*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## ฟิลด์ในแบบจำลองวัตถุเอกสารAspose.Words(DOM)

เมื่อเอกสารถูกโหลดลงในAspose.Wordsฟิลด์ของเอกสารจะถูกโหลดลงใน [Aspose.Wordsรูปแบบวัตถุเอกสาร](/words/cpp/aspose-words-document-object-model/) เป็นชุดขององค์ประกอบที่แยกต่างหาก(โหนด) ฟิลด์เดียวถูกโหลดเป็นคอลเล็กชันของ**FieldStart**,**FieldSeparator**และ**FieldEnd**โหนดพร้อมกับเนื้อหาในระหว่างโหนดเหล่านี้ ถ้าฟิลด์ไม่มีผลลัพธ์ฟิลด์แล้วจะไม่มีโหนด**FieldSeparator** ทั้งหมดของโหนดเหล่านี้จะพบแบบอินไลน์เสมอ(เป็นเด็กของ[Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph)หรือ[SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

ในAspose.Wordsแต่ละโหนด**FieldXXX**มาจาก[FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/) คลาสนี้จัดเตรียมคุณสมบัติเพื่อตรวจสอบชนิดของฟิลด์ที่แสดงโดยโหนดที่ระบุผ่านคุณสมบัติ[FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/) ตัวอย่างเช่น**FieldType.FieldMergeField**แสดงฟิลด์ผสานในเอกสาร.

{{% alert color="primary" %}}

มีบางเขตข้อมูลที่มีอยู่ในเอกสารคำที่ไม่ได้นำเข้าเป็นAspose.Wordsเป็นคอลเลกชันของโหนด**FieldXXX** ตัวอย่างเช่นฟิลด์`LINK`และฟิลด์`INCLUDEPICTURE`จะถูกนำเข้าในAspose.Wordsเป็นวัตถุ`Shape` อ็อบเจ็กต์นี้จัดเตรียมคุณสมบัติเพื่อทำงานกับข้อมูลรูปภาพที่จัดเก็บในฟิลด์เหล่านี้ เมื่อต้องการอิมพอร์ตฟิลด์`INCLUDEPICTURE`เป็นโหนด**FieldXXX**ตัวเลือก[PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/)ต้องระบุเป็น**true**.

ฟิลด์แบบฟอร์มจะถูกนำเข้าเป็นAspose.Wordsเป็นชั้นเรียนพิเศษของตัวเอง คลาส[FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/)แสดงเขตข้อมูลฟอร์มในเอกสารคำและจัดเตรียมวิธีการเพิ่มเติมที่เฉพาะเจาะจง.

{{% /alert %}}

## ฟิลด์ที่รองรับ

การคำนวณฟิลด์ต่อไปนี้ได้รับการสนับสนุนในเวอร์ชันปัจจุบันของAspose.Words:

- =(สูตร)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## การแยกฟิลด์ที่มีความซับซ้อน

Aspose.WordsตามวิธีการMicrosoft Wordฟิลด์ประมวลผลและเป็นผลให้มันได้อย่างถูกต้องจัดการ:

- ฟิลด์ที่ซ้อนกัน:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- อาร์กิวเมนต์ฟิลด์อาจเป็นผลมาจากเขตข้อมูลที่ซ้อนกัน
- ฟิลด์สามารถซ้อนกันภายในรหัสฟิลด์เช่นเดียวกับในผลสนาม
- ช่องว่าง/ไม่มีช่องว่าง,คำคม/ไม่มีคำพูด,ตัวละครหลบหนีในฟิลด์อื่นๆ:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- ฟิลด์ที่ครอบคลุมในหลายย่อหน้า

### ฟิลด์สูตร

Aspose.Wordsให้การดำเนินการอย่างจริงจังของเครื่องยนต์สูตรและสนับสนุนต่อไปนี้:

- ตัวดำเนินการทางคณิตศาสตร์และตรรกะ:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- ฟังก์ชั่น:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- การอ้างอิงถึงบุ๊กมาร์ก:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- สวิทช์การจัดรูปแบบหมายเลข:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

ฟังก์ชันต่อไปนี้ในนิพจน์ได้รับการสนับสนุน: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

เพียงบางส่วนของนิพจน์`IF`ที่Aspose.Wordsสามารถคำนวณได้อย่างง่ายดายควรให้ความคิดของคุณลักษณะนี้มีประสิทธิภาพเพียงใด:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Wordsรองรับสวิทช์การจัดรูปแบบวันที่และเวลาทั้งหมดที่มีอยู่ในMicrosoft Wordตัวอย่างบางส่วนคือ:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Mergeฟิลด์

Aspose.Wordsกำหนดข้อจำกัดเกี่ยวกับความซับซ้อนของmail mergeเขตข้อมูลในเอกสารของคุณและสนับสนุนเขตข้อมูลที่ซ้อนกัน`IF`และสูตรและยังสามารถคำนวณชื่อฟิลด์ผสานโดยใช้สูตร.

ตัวอย่างบางส่วนของmail mergeฟิลด์ที่Aspose.Wordsสนับสนุน:

- สวิตช์ฟิลด์Mail merge:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- ฟิลด์ผสานซ้อนกันในสูตร:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- คำนวณชื่อของฟิลด์ผสานที่รันไทม์:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- ย้ายตามเงื่อนไขไปยังระเบียนถัดไปในแหล่งข้อมูล:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### สวิตช์รูปแบบ

ฟิลด์ในเอกสารสามารถมีสวิตช์การจัดรูปแบบที่ระบุว่าควรจัดรูปแบบค่าผลลัพธ์อย่างไร Aspose.Wordsรองรับสวิตช์รูปแบบต่อไปนี้:

- @-การจัดรูปแบบวันที่และเวลา
- \\\#–การจัดรูปแบบหมายเลข
- \\\\\\\\*แคป
- \\\\\\\\* FirstCap
- \\\\\\\\*ต่ำกว่า
- \\\\\\\\*บน
- \\\\\\\\*CHARFORMAT–ผลรูปแบบตามตัวอักษรตัวแรกของรหัสฟิลด์
- \\\\\\\\*MERGEFORMAT–รูปแบบผลลัพธ์ตามวิธีการจัดรูปแบบผลลัพธ์เดิม

### วันที่และตัวเลขการจัดรูปแบบในฟิลด์

เมื่อAspose.Wordsคำนวณผลลัพธ์ฟิลด์,มันมักจะต้องแยกสตริงเป็นตัวเลขหรือค่าวันที่และยังจัดรูปแบบมันกลับ string.By ค่าดีฟอลต์Aspose.Wordsใช้วัฒนธรรมเธรดปัจจุบันเพื่อทำการแยกและจัดรูปแบบเมื่อคำนวณค่าฟิลด์ในระหว่างการอัพเดตฟิลด์และmail merge นอกจากนี้ยังมีตัวเลือกที่ให้ไว้ในรูปแบบของชั้นเรียน[FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/)ซึ่งจะช่วยให้การควบคุมเพิ่มเติมผ่าน.

- โดยค่าดีฟอลต์คุณสมบัติ[FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/)ถูกตั้งค่าเป็น[CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/)ซึ่งจัดรูปแบบฟิลด์โดยใช้วัฒนธรรมเธรดปัจจุบัน
- คุณสมบัตินี้สามารถตั้งค่าเป็น[FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/)เพื่อให้ชุดภาษาจากรหัสฟิลด์ของฟิลด์ถูกใช้สำหรับการจัดรูปแ

### การจัดรูปแบบโดยใช้วัฒนธรรมของเธรดปัจจุบัน

ในการควบคุมวัฒนธรรมที่ใช้ในระหว่างการคำนวณภาคสนามเพียงแค่ตั้งค่าคุณสมบัติ**CurrentCulture**ให้เป็นวัฒนธรรมที่คุณเลือกก่อนที่จะเรียกการคำนวณภาคสนาม.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปลี่ยนวัฒนธรรมที่ใช้ในฟิลด์การจัดรูปแบบระหว่างการอั:

EXAMPLE

การใช้วัฒนธรรมปัจจุบันในการจัดรูปแบบฟิลด์ช่วยให้ระบบสามารถควบคุมได้อย่างง่ายดายและสม่ำเสมอวิธีการจัดรูปแบบฟิลด์ทั้งหมดในเอกสารในระหว่างการอัพเดตฟิลด์.

### การจัดรูปแบบโดยใช้วัฒนธรรมในเอกสาร

ในทางกลับกันMicrosoft Wordจัดรูปแบบแต่ละเขตข้อมูลตามภาษาของข้อความที่พบในเขตข้อมูล(โดยเฉพา บางครั้งในระหว่างการปรับปรุงฟิลด์นี้อาจเป็นลักษณะการทำงานที่ต้องการตัวอย่างเช่นถ้ Aspose.Wordsยังสนับสนุนการทำงานนี้.

คลาส[Document](https://reference.aspose.com/words/cpp/class/aspose.words.document)มีคุณสมบัติ[FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/)ซึ่งประกอบด้วยสมาชิกซึ่งสามารถใช้เพื่อควบคุมวิธีการปรับปรุงฟิลด์ภายใ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุว่าวัฒนธรรมที่ใช้สำหรับการจัดรูปแบบวันที่ระหว่างการอัพเดตฟิลด์และmail mergeถูกเลือกจาก:

EXAMPLE
