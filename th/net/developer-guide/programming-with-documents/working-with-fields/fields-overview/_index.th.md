---
title: ภาพรวมช่องใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: ภาพรวมของฟิลด์
linktitle: ภาพรวมของฟิลด์
description: "คุณลักษณะฟิลด์ในรายละเอียด รหัสฟิลด์ และผลลัพธ์ของฟิลด์ที่อธิบายใน Aspose.Words สำหรับ .NET"
type: docs
weight: 10
url: /th/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words เป็นไลบรารีคลาสที่ออกแบบมาสำหรับการประมวลผลเอกสาร Microsoft Word ฝั่งเซิร์ฟเวอร์ และรองรับช่องต่างๆ ด้วยวิธีต่อไปนี้:

- ฟิลด์ทั้งหมดในเอกสารจะถูกเก็บรักษาไว้ระหว่างการเปิด/บันทึกและการแปลง
- สามารถอัปเดตผลลัพธ์ของฟิลด์ส่วนใหญ่ได้

ในบทความนี้ เราจะเรียนรู้เพิ่มเติมเกี่ยวกับโครงสร้างช่อง ช่องที่รองรับใน Aspose.Words และรายละเอียดการทำงานกับช่องดังกล่าว

## โครงสร้างสนาม

ฟิลด์ประกอบด้วย:

- โหนดเริ่มต้นของฟิลด์และโหนดคั่นใช้เพื่อรวมเนื้อหาที่ประกอบขึ้นเป็นโค้ดฟิลด์ (โดยปกติจะเป็นข้อความธรรมดา)
- ตัวคั่นฟิลด์และจุดสิ้นสุดของฟิลด์จะรวมผลลัพธ์ของฟิลด์ไว้ด้วย ซึ่งสามารถประกอบด้วยเนื้อหาหลายประเภทตั้งแต่การเรียกใช้ข้อความ ย่อหน้า ไปจนถึงตาราง
- บางฟิลด์อาจไม่มีตัวคั่น ซึ่งหมายความว่าเนื้อหาทั้งหมดประกอบขึ้นเป็นโค้ดฟิลด์
- รหัสฟิลด์จะกำหนดพฤติกรรมของฟิลด์ และประกอบด้วยตัวระบุฟิลด์ และมักจะเป็นพารามิเตอร์อื่นๆ เช่น ชื่อฟิลด์และสวิตช์
- ผลลัพธ์ของฟิลด์ประกอบด้วยการประเมินล่าสุดของฟิลด์ ค่านี้จะถูกเก็บไว้ในผลลัพธ์ของฟิลด์และเป็นสิ่งที่แสดงให้ผู้ใช้เห็น บางฟิลด์อาจไม่มีผลฟิลด์ใด ๆ ดังนั้นจะไม่แสดงสิ่งใดในเอกสาร ในทำนองเดียวกันบางฟิลด์อาจไม่ได้รับการอัปเดตดังนั้นจึงไม่มีผลลัพธ์ของฟิลด์เช่นกัน

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

เนื้อหาที่ประกอบเป็นโค้ดฟิลด์จะถูกจัดเก็บเป็นโหนด [Run](https://reference.aspose.com/words/net/aspose.words/run/) ระหว่าง [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) และ [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) ผลลัพธ์ของฟิลด์จะถูกจัดเก็บไว้ระหว่างโหนด **FieldSeparator** และ [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) และสามารถประกอบด้วยเนื้อหาประเภทต่างๆ ได้ โดยปกติผลลัพธ์ของฟิลด์จะมีเพียงข้อความที่ประกอบด้วยโหนด **Run** อย่างไรก็ตาม เป็นไปได้ที่โหนด **FieldEnd** จะอยู่ในย่อหน้าที่ต่างกันโดยสิ้นเชิง และทำให้ผลลัพธ์ของฟิลด์ประกอบด้วยโหนด [ระดับลอจิคัลของโหนดในเอกสาร](/words/th/net/logical-levels-of-nodes-in-a-document/) เช่น โหนด **Table** และ **Paragraph** เช่นกัน

ต่อไปนี้คือภาพวิธีจัดเก็บช่องใน Aspose.Words โดยใช้ตัวอย่าง "*DocumentExplorer"* ซึ่งอยู่ใน [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## ช่องใน Aspose.Words Document Object Model (DOM)

เมื่อโหลดเอกสารลงใน Aspose.Words ช่องของเอกสารจะถูกโหลดลงใน [Aspose.Words Document Object Model (DOM)](/words/th/net/aspose-words-document-object-model/) เป็นชุดของส่วนประกอบ (โหนด) ที่แยกจากกัน โหลดฟิลด์เดียวเป็นคอลเลกชันของโหนด **FieldStart**, **FieldSeparator** และ **FieldEnd** พร้อมด้วยเนื้อหาที่อยู่ระหว่างโหนดเหล่านี้ หากฟิลด์ไม่มีผลลัพธ์ของฟิลด์ ก็จะไม่มีโหนด **FieldSeparator** โหนดเหล่านี้ทั้งหมดจะพบได้ในบรรทัดเสมอ (ในฐานะลูกของ [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) หรือ [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)

ใน Aspose.Words แต่ละโหนด **FieldXXX** ได้มาจาก [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/) คลาสนี้จัดเตรียมคุณสมบัติเพื่อตรวจสอบประเภทของฟิลด์ที่แสดงโดยโหนดที่ระบุผ่านคุณสมบัติ [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) ตัวอย่างเช่น **FieldType.FieldMergeField** แสดงถึงฟิลด์ผสานในเอกสาร

{{% alert color="primary" %}}

มีบางช่องเฉพาะที่มีอยู่ในเอกสาร Word ที่ไม่ได้นำเข้าไปยัง Aspose.Words เป็นชุดของโหนด **FieldXXX** ตัวอย่างเช่น ฟิลด์ `LINK` และฟิลด์ `INCLUDEPICTURE` จะถูกนำเข้าไปยัง Aspose.Words เป็นออบเจ็กต์ [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) ออบเจ็กต์นี้มีคุณสมบัติในการทำงานกับข้อมูลรูปภาพที่ปกติจัดเก็บไว้ในฟิลด์เหล่านี้ หากต้องการนำเข้าฟิลด์ `INCLUDEPICTURE` เป็นโหนด **FieldXXX** จะต้องระบุตัวเลือก [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) เป็น **true**

ช่องแบบฟอร์มจะถูกนำเข้าไปยัง Aspose.Words ในรูปแบบคลาสพิเศษของตนเองด้วย คลาส [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) แสดงถึงเขตข้อมูลแบบฟอร์มในเอกสาร Word และจัดเตรียมวิธีการเพิ่มเติมที่เฉพาะเจาะจงกับเขตข้อมูลแบบฟอร์ม

{{% /alert %}}

## ฟิลด์ที่รองรับ

Aspose.Words เวอร์ชันปัจจุบันรองรับการคำนวณช่องต่อไปนี้:

- = (สูตร)
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
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## การแยกวิเคราะห์ฟิลด์ที่ซับซ้อน

Aspose.Words ปฏิบัติตามวิธีที่ Microsoft Word ประมวลผลช่องต่างๆ และด้วยเหตุนี้จึงจัดการได้อย่างถูกต้อง:

- ฟิลด์ที่ซ้อนกัน:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- อาร์กิวเมนต์ของฟิลด์อาจเป็นผลมาจากฟิลด์ที่ซ้อนกัน
- สามารถซ้อนฟิลด์ต่างๆ ไว้ในรหัสฟิลด์และผลลัพธ์ของฟิลด์ได้
- ช่องว่าง/ไม่มีการเว้นวรรค, เครื่องหมายคำพูด/ไม่มีเครื่องหมายคำพูด, อักขระหลีกในช่อง ฯลฯ:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- ฟิลด์ที่ครอบคลุมหลายย่อหน้า

### ฟิลด์สูตร

Aspose.Words มีการใช้งาน Formula Engine อย่างจริงจังและรองรับสิ่งต่อไปนี้:

- ตัวดำเนินการทางคณิตศาสตร์และตรรกะ:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- ฟังก์ชั่น:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- การอ้างอิงถึงบุ๊กมาร์ก:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- สวิตช์การจัดรูปแบบตัวเลข:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

รองรับฟังก์ชันต่อไปนี้ในนิพจน์: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE

### ช่อง `IF` และ `COMPARE`

นิพจน์ `IF` บางส่วนที่ Aspose.Words สามารถคำนวณได้ง่ายควรช่วยให้คุณทราบว่าคุณลักษณะนี้มีประสิทธิภาพเพียงใด:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### ช่อง `DATE` และ `TIME`

Aspose.Words รองรับสวิตช์การจัดรูปแบบวันที่และเวลาทั้งหมดที่มีอยู่ใน Microsoft Word ตัวอย่างบางส่วน ได้แก่

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### ช่อง Mail Merge

Aspose.Words ไม่จำกัดความซับซ้อนของช่อง Mail Merge ในเอกสารของคุณ และรองรับช่อง `IF` และช่องสูตรที่ซ้อนกัน และยังคำนวณชื่อช่องผสานโดยใช้สูตรได้ด้วย

ตัวอย่างบางส่วนของช่อง Mail Merge ที่ Aspose.Words รองรับ:

- สวิตช์ฟิลด์ Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- เขตข้อมูลผสานที่ซ้อนกันในสูตร:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- คำนวณชื่อของเขตข้อมูลผสานที่รันไทม์:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- การย้ายแบบมีเงื่อนไขไปยังบันทึกถัดไปในแหล่งข้อมูล:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### ฟอร์แมตสวิตช์

ช่องในเอกสารอาจมีสวิตช์การจัดรูปแบบที่ระบุวิธีจัดรูปแบบค่าผลลัพธ์ Aspose.Words รองรับสวิตช์รูปแบบต่อไปนี้:

- \\\@ – การจัดรูปแบบวันที่และเวลา
- \\\# – การจัดรูปแบบตัวเลข
- \\\* ตัวพิมพ์ใหญ่
- \\\* เฟิร์สแคป
- \\\* ต่ำกว่า
- \\\* บน
- \\\* CHARFORMAT – จัดรูปแบบผลลัพธ์ตามอักขระตัวแรกของโค้ดฟิลด์
- \\\* MERGEFORMAT – จัดรูปแบบผลลัพธ์ตามรูปแบบผลลัพธ์เก่า

### การจัดรูปแบบ Date และตัวเลขในฟิลด์

เมื่อ Aspose.Words คำนวณผลลัพธ์ของฟิลด์ มักจะจำเป็นต้องแยกวิเคราะห์สตริงเป็นตัวเลขหรือค่าวันที่ และยังต้องจัดรูปแบบกลับเป็นสตริงด้วย ตามค่าเริ่มต้น Aspose.Words จะใช้วัฒนธรรมเธรดปัจจุบันเพื่อดำเนินการแยกวิเคราะห์และจัดรูปแบบเมื่อคำนวณค่าของฟิลด์ในระหว่างการอัพเดตฟิลด์ และ Mail Merge นอกจากนี้ยังมีตัวเลือกที่ให้ไว้ในรูปแบบของคลาส [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) ซึ่งช่วยให้สามารถควบคุมได้มากขึ้นว่าจะใช้วัฒนธรรมใดในระหว่างการอัพเดตภาคสนาม

- โดยค่าเริ่มต้น คุณสมบัติ [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) จะถูกตั้งค่าเป็น [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) ซึ่งจัดรูปแบบฟิลด์โดยใช้วัฒนธรรมเธรดปัจจุบัน
- คุณสมบัตินี้สามารถตั้งค่าเป็น [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) ได้ ดังนั้นภาษาที่ตั้งค่าจากรหัสฟิลด์ของฟิลด์จะถูกใช้สำหรับการจัดรูปแบบแทน

### การจัดรูปแบบโดยใช้วัฒนธรรมของเธรดปัจจุบัน

หากต้องการควบคุมวัฒนธรรมที่ใช้ในระหว่างการคำนวณภาคสนาม เพียงตั้งค่าคุณสมบัติ **Thread.CurrentThread.CurrentCulture** ให้เป็นวัฒนธรรมที่คุณเลือกก่อนที่จะเรียกใช้การคำนวณภาคสนาม

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเปลี่ยนวัฒนธรรมที่ใช้ในการจัดรูปแบบฟิลด์ในระหว่างการอัพเดต:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

การใช้วัฒนธรรมปัจจุบันเพื่อจัดรูปแบบฟิลด์ทำให้ระบบสามารถควบคุมวิธีการจัดรูปแบบฟิลด์ทั้งหมดในเอกสารระหว่างการอัปเดตฟิลด์ได้อย่างง่ายดายและสม่ำเสมอ

### การจัดรูปแบบโดยใช้วัฒนธรรมในเอกสาร

ในทางกลับกัน Microsoft Word จัดรูปแบบแต่ละฟิลด์ตามภาษาของข้อความที่พบในฟิลด์ (โดยเฉพาะ การเรียกใช้จากโค้ดฟิลด์) บางครั้งในระหว่างการอัปเดตฟิลด์ นี่อาจเป็นลักษณะการทำงานที่ต้องการ ตัวอย่างเช่น ถ้าคุณมีเอกสารโกลบอลไลซ์ที่มีเนื้อหาที่ประกอบด้วยภาษาต่างๆ มากมาย และต้องการให้แต่ละฟิลด์ให้เกียรติสถานที่ที่ใช้จากข้อความ Aspose.Words ยังรองรับฟังก์ชันนี้ด้วย

คลาส [Document](https://reference.aspose.com/words/net/aspose.words/document/) จัดเตรียมคุณสมบัติ [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) ซึ่งมีสมาชิกซึ่งสามารถใช้เพื่อควบคุมวิธีการอัปเดตฟิลด์ภายในเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีระบุตำแหน่งวัฒนธรรมที่ใช้สำหรับการจัดรูปแบบวันที่ในระหว่างการอัพเดตฟิลด์และเลือก Mail Merge จาก:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
