---
title: ภาพรวมช่องใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ภาพรวมของฟิลด์
linktitle: ภาพรวมของฟิลด์
description: "คุณสามารถเข้าถึงการแก้ไขฟิลด์โดยใช้ Python ช่องของเอกสารถูกโหลดลงใน Aspose.Words Document Object Model (DOM)"
type: docs
weight: 10
url: /th/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


โดยปกติแล้ว เมื่อแทรกช่องใน Microsoft Word แล้ว จะมีค่าล่าสุดอยู่แล้ว ตัวอย่างเช่น ถ้าฟิลด์นั้นเป็นสูตรหรือเลขหน้า ฟิลด์นั้นก็จะมีค่าที่คำนวณได้ถูกต้องสำหรับเวอร์ชันของเอกสารที่กำหนด แต่หากคุณมีแอปพลิเคชันที่สร้างหรือแก้ไขเอกสารที่มีฟิลด์ (เช่น รวมเอกสารสองฉบับหรือเติมข้อมูล) ดังนั้นเพื่อให้เอกสารมีประโยชน์ ฟิลด์ทั้งหมดควรได้รับการอัพเดตอย่างเหมาะสม

ฟิลด์ประกอบด้วย:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- โหนดเริ่มต้นของฟิลด์และโหนดคั่นใช้เพื่อรวมเนื้อหาที่ประกอบขึ้นเป็นโค้ดฟิลด์ (โดยปกติจะเป็นข้อความธรรมดา)
- ตัวคั่นฟิลด์และส่วนสิ้นสุดของฟิลด์จะรวมผลลัพธ์ของฟิลด์ไว้ด้วย ซึ่งสามารถประกอบด้วยเนื้อหาหลายประเภทตั้งแต่การเรียกใช้ข้อความ ย่อหน้า ไปจนถึงตาราง
- บางฟิลด์อาจไม่มีตัวคั่น ซึ่งหมายความว่าเนื้อหาทั้งหมดประกอบขึ้นเป็นโค้ดฟิลด์
- รหัสฟิลด์จะกำหนดพฤติกรรมของฟิลด์ และประกอบด้วยตัวระบุฟิลด์ และมักจะเป็นพารามิเตอร์อื่นๆ เช่น ชื่อฟิลด์และสวิตช์
- ผลลัพธ์ของฟิลด์ประกอบด้วยการประเมินล่าสุดของฟิลด์ ค่านี้จะถูกเก็บไว้ในผลลัพธ์ของฟิลด์และเป็นสิ่งที่แสดงให้ผู้ใช้เห็น บางฟิลด์อาจไม่มีผลฟิลด์ใด ๆ ดังนั้นจะไม่แสดงสิ่งใดในเอกสาร ในทำนองเดียวกันบางฟิลด์อาจไม่ได้รับการอัปเดตดังนั้นจึงไม่มีผลลัพธ์ของฟิลด์เช่นกัน

ต่อไปนี้คือภาพวิธีจัดเก็บช่องใน Aspose.Words โดยใช้ตัวอย่าง "*DocumentExplorer"* ซึ่งอยู่ใน [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words เป็นไลบรารีคลาสที่ออกแบบมาสำหรับการประมวลผลเอกสาร Microsoft Word ฝั่งเซิร์ฟเวอร์ และรองรับช่องต่างๆ ด้วยวิธีต่อไปนี้:

- ฟิลด์ทั้งหมดในเอกสารจะถูกเก็บรักษาไว้ระหว่างการเปิด/บันทึกและการแปลง
- สามารถอัปเดตผลลัพธ์ของฟิลด์ยอดนิยมบางฟิลด์ได้

## ช่องใน Microsoft Word

ช่องในเอกสาร Microsoft Word มีความซับซ้อน มีฟิลด์มากกว่า 50 ประเภท (แต่ละประเภทต้องมีขั้นตอนการคำนวณผลลัพธ์ของตัวเอง), สูตรและนิพจน์, บุ๊กมาร์กและการอ้างอิง, ฟังก์ชันและสวิตช์ต่างๆ ฟิลด์ยังสามารถซ้อนกันได้ โดยปกติเมื่อเปิดเอกสาร ผลลัพธ์ของฟิลด์ (ค่าของฟิลด์) จะแสดงสำหรับฟิลด์ทั้งหมดในเอกสาร คุณสามารถสลับการแสดงผลลัพธ์ของฟิลด์หรือรหัสฟิลด์ใน Microsoft Word สำหรับทุกฟิลด์ได้โดยการกด **ALT+F9**

| รหัสฟิลด์ | ผลการแข่งขัน |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### การแทรกฟิลด์ใน Microsoft Word

หากต้องการแทรกฟิลด์ใน Microsoft Word:

1. คลิกที่เมนู **Insert**
1. คลิกที่เมนูแบบเลื่อนลง **Quick Parts**
1. เลือก **Field**
1. คุณจะพบกับหน้าจอที่ให้คุณป้อนรายละเอียดของฟิลด์ได้ ทางด้านซ้าย คุณจะเห็นรายการฟิลด์ที่เป็นไปได้ และทางด้านขวาคือหน้าจอสำหรับแก้ไขคุณสมบัติของฟิลด์ด้วยสายตา<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. นอกจากนี้ คุณยังสามารถกดปุ่ม **Field Codes** ซึ่งช่วยให้คุณสามารถเขียนโค้ดฟิลด์ได้โดยตรง<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. สามารถแทรกสวิตช์ได้โดยใช้ปุ่ม **Options**<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. ใช้วิธีใดวิธีหนึ่ง กรอกข้อมูลที่เหมาะสมลงในช่องที่ต้องการ จากนั้นกด **Ok**
1. ฟิลด์นี้จะถูกแทรกลงในเอกสารที่ตำแหน่งเคอร์เซอร์ปัจจุบัน<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### กำลังอัปเดตฟิลด์ใน Microsoft Word

หากต้องการอัปเดตช่องเดียวใน Microsoft Word:

1. ย้ายเครื่องหมายรูปหมวกลงในช่องที่คุณต้องการอัปเดต
1. กด **F9** เพื่ออัปเดตฟิลด์

วิธีอัปเดตช่องทั้งหมดใน Microsoft Word:

1. กด **Ctrl+A** เพื่อเลือกเนื้อหาทั้งหมดในเอกสาร
1. กด **F9** เพื่ออัปเดตฟิลด์ทั้งหมดที่พบในส่วนที่เลือก

### การสลับระหว่างการแสดงโค้ดฟิลด์และผลลัพธ์ของฟิลด์

วิธีสลับรหัสฟิลด์ของฟิลด์เดียวใน Microsoft Word:

1. ย้ายเครื่องหมายรูปหมวกไปยังช่องที่ต้องการ
1. กด **SHIFT+F9** เพื่อสลับโค้ดฟิลด์สำหรับฟิลด์นี้เท่านั้น

วิธีสลับรหัสฟิลด์ของทุกฟิลด์ใน Microsoft Word:

1. กด **ALT+F9**

### การแปลงฟิลด์เป็นข้อความคงที่ใน Microsoft Word

หากต้องการแปลงฟิลด์ไดนามิกเป็นข้อความคงที่ใน Microsoft Word:

1. ย้ายเครื่องหมายรูปหมวกลงในช่องที่คุณต้องการแปลง
1. กด **Ctrl+Shift+F9** เพื่อแปลงฟิลด์เป็นข้อความคงที่

### การลบฟิลด์ใน Microsoft Word

หากต้องการลบฟิลด์ใน Microsoft Word:

1. เลือกเนื้อหาทั้งหมดที่ประกอบขึ้นเป็นฟิลด์ หากรหัสฟิลด์ปรากฏขึ้น จะต้องเลือกเครื่องหมายปีกกาเปิดและปิดด้วย
1. กด **Delete** เพื่อลบฟิลด์ทั้งหมด

## ช่องใน Aspose.Words

เมื่อโหลดเอกสารลงใน Aspose.Words ช่องของเอกสารจะถูกโหลดลงใน Aspose.Words Document Object Model เป็นชุดของส่วนประกอบ (โหนด) ที่แยกจากกัน โหลดฟิลด์เดียวเป็นคอลเลกชันของโหนด [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) และ [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) พร้อมด้วยเนื้อหาที่อยู่ระหว่างโหนดเหล่านี้ หากฟิลด์ไม่มีผลลัพธ์ของฟิลด์ ก็จะไม่มีโหนด [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) โหนดเหล่านี้ทั้งหมดจะพบได้ในบรรทัดเสมอ (ในฐานะลูกของ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) หรือ [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)

เนื้อหาที่ประกอบเป็นโค้ดฟิลด์จะถูกจัดเก็บเป็นโหนด [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) ระหว่าง [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) และ [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ผลลัพธ์ของฟิลด์จะถูกเก็บไว้ระหว่างโหนด [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) และ [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) และสามารถประกอบด้วยเนื้อหาประเภทต่างๆ ได้ โดยปกติแล้ว ผลลัพธ์ของฟิลด์จะมีเพียงข้อความที่ประกอบด้วยโหนด [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) อย่างไรก็ตาม เป็นไปได้ที่โหนด [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) จะอยู่ในย่อหน้าที่ต่างกันโดยสิ้นเชิง และทำให้ผลลัพธ์ของฟิลด์ประกอบด้วยโหนดระดับบล็อก เช่น โหนด [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) และ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) เช่นกัน

ใน Aspose.Words แต่ละโหนด **FieldXXX** ได้มาจาก [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/) คลาสนี้จัดเตรียมคุณสมบัติเพื่อตรวจสอบประเภทของฟิลด์ที่แสดงโดยโหนดที่ระบุผ่านคุณสมบัติ [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) ตัวอย่างเช่น [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) แสดงถึงฟิลด์ผสานในเอกสาร

{{% alert color="primary" %}}

มีบางช่องเฉพาะที่มีอยู่ในเอกสาร Word ที่ไม่ได้นำเข้าไปยัง Aspose.Words เป็นชุดของโหนด **FieldXXX** ตัวอย่างเช่น ฟิลด์ `LINK` และฟิลด์ `INCLUDEPICTURE` จะถูกนำเข้าไปยัง Aspose.Words เป็นออบเจ็กต์ [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ออบเจ็กต์นี้มีคุณสมบัติในการทำงานกับข้อมูลรูปภาพที่ปกติจัดเก็บไว้ในฟิลด์เหล่านี้

ช่องแบบฟอร์มจะถูกนำเข้าไปยัง Aspose.Words ในรูปแบบคลาสพิเศษของตนเองด้วย คลาส [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) แสดงถึงเขตข้อมูลแบบฟอร์มในเอกสาร Word และจัดเตรียมวิธีการเพิ่มเติมที่เฉพาะเจาะจงกับเขตข้อมูลแบบฟอร์ม

{{% /alert %}}

### ฟิลด์ที่รองรับระหว่างการอัพเดต

Aspose.Words เวอร์ชันปัจจุบันรองรับการคำนวณช่องต่อไปนี้:

- = (ช่องสูตร)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (รวม TOT และ TOF)
- ทีซี

### การแยกวิเคราะห์ที่ซับซ้อน

Aspose.Words ปฏิบัติตามวิธีที่ Microsoft Word ประมวลผลช่องต่างๆ และด้วยเหตุนี้จึงจัดการได้อย่างถูกต้อง:

- ทุ่งนาที่ซ้อนกัน
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- อาร์กิวเมนต์ของฟิลด์อาจเป็นผลมาจากฟิลด์ที่ซ้อนกัน
- สามารถซ้อนฟิลด์ภายในโค้ดฟิลด์และผลลัพธ์ของฟิลด์ได้
- ช่องว่าง/ไม่มีการเว้นวรรค เครื่องหมายคำพูด/ไม่มีเครื่องหมายคำพูด อักขระหลีกในช่อง ฯลฯ:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- ฟิลด์ที่ครอบคลุมหลายย่อหน้า

#### ฟิลด์สูตร

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

#### ช่อง `IF` และ `COMPARE`

นิพจน์ `IF` บางส่วนที่ Aspose.Words สามารถคำนวณได้ง่ายควรช่วยให้คุณทราบว่าคุณลักษณะนี้มีประสิทธิภาพเพียงใด:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### ช่อง `DATE` และ `TIME`

Aspose.Words รองรับสวิตช์การจัดรูปแบบวันที่และเวลาทั้งหมดที่มีอยู่ใน Microsoft Word ตัวอย่างบางส่วน ได้แก่

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### ช่อง Mail Merge

Aspose.Words ไม่จำกัดความซับซ้อนของช่อง Mail Merge ในเอกสารของคุณ และรองรับช่อง `IF` และช่องสูตรที่ซ้อนกัน และยังคำนวณชื่อช่องผสานโดยใช้สูตรได้ด้วย

ตัวอย่างบางส่วนของช่อง Mail Merge ที่ Aspose.Words รองรับ:

- สวิตช์ฟิลด์ Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- ฟิลด์ผสานที่ซ้อนกันในสูตร:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- คำนวณชื่อของเขตข้อมูลผสานที่รันไทม์:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- การย้ายแบบมีเงื่อนไขไปยังบันทึกถัดไปในแหล่งข้อมูล:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### ฟอร์แมตสวิตช์

ช่องในเอกสารอาจมีสวิตช์การจัดรูปแบบที่ระบุวิธีจัดรูปแบบค่าผลลัพธ์ Aspose.Words รองรับสวิตช์รูปแบบต่อไปนี้:

- @ - การจัดรูปแบบวันที่และเวลา
- \\\# - การจัดรูปแบบตัวเลข
- \\\\\\\\* ตัวพิมพ์ใหญ่
- \\\\\\\\* เฟิร์สแคป
- \\\\\\\\* ต่ำกว่า
- \\\\\\\\* บน
- \\\\\\\\* CHARFORMAT – จัดรูปแบบผลลัพธ์ตามอักขระตัวแรกของโค้ดฟิลด์
- \\\\\\\\* MERGEFORMAT – จัดรูปแบบผลลัพธ์ตามรูปแบบผลลัพธ์เก่า

#### การจัดรูปแบบ Date และตัวเลขในฟิลด์

เมื่อ Aspose.Words คำนวณผลลัพธ์ของฟิลด์ มักจะจำเป็นต้องแยกวิเคราะห์สตริงเป็นตัวเลขหรือค่าวันที่ และยังต้องจัดรูปแบบกลับเป็นสตริงด้วย ตามค่าเริ่มต้น Aspose.Words จะใช้วัฒนธรรมเธรดปัจจุบันเพื่อดำเนินการแยกวิเคราะห์และการจัดรูปแบบเมื่อคำนวณค่าของฟิลด์ในระหว่างการอัพเดตฟิลด์ และ Mail Merge นอกจากนี้ยังมีตัวเลือกที่ให้ไว้ในรูปแบบของคลาส [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) ซึ่งช่วยให้สามารถควบคุมได้มากขึ้นว่าจะใช้วัฒนธรรมใดในระหว่างการอัพเดตภาคสนาม

- ตามค่าเริ่มต้น คุณสมบัติ [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) จะถูกตั้งค่าเป็น [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) ซึ่งจัดรูปแบบฟิลด์โดยใช้วัฒนธรรมเธรดปัจจุบัน
- คุณสมบัตินี้สามารถตั้งค่าเป็น [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) ได้ ดังนั้นภาษาที่ตั้งค่าจากรหัสฟิลด์ของฟิลด์จะถูกใช้สำหรับการจัดรูปแบบแทน

#### การจัดรูปแบบโดยใช้วัฒนธรรมของเธรดปัจจุบัน

หากต้องการควบคุมวัฒนธรรมที่ใช้ในระหว่างการคำนวณภาคสนาม เพียงใช้วิธีการ **locale.setlocale** เพื่อตั้งค่าวัฒนธรรมที่คุณเลือกก่อนที่จะเรียกใช้การคำนวณภาคสนาม
ตัวอย่างด้านล่างแสดงวิธีเปลี่ยนวัฒนธรรมที่ใช้ในการจัดรูปแบบฟิลด์ระหว่างการอัพเดต

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

การใช้วัฒนธรรมปัจจุบันเพื่อจัดรูปแบบฟิลด์ทำให้ระบบสามารถควบคุมวิธีการจัดรูปแบบฟิลด์ทั้งหมดในเอกสารระหว่างการอัปเดตฟิลด์ได้อย่างง่ายดายและสม่ำเสมอ

#### การจัดรูปแบบโดยใช้วัฒนธรรมในเอกสาร

ในทางกลับกัน Microsoft Word จัดรูปแบบแต่ละฟิลด์ตามภาษาของข้อความที่พบในฟิลด์ (โดยเฉพาะ การเรียกใช้จากโค้ดฟิลด์) บางครั้งในระหว่างการอัปเดตฟิลด์ นี่อาจเป็นลักษณะการทำงานที่ต้องการ ตัวอย่างเช่น ถ้าคุณมีเอกสารโกลบอลไลซ์ที่มีเนื้อหาที่ประกอบด้วยภาษาต่างๆ มากมาย และต้องการให้แต่ละฟิลด์ให้เกียรติสถานที่ที่ใช้จากข้อความ Aspose.Words ยังรองรับฟังก์ชันนี้ด้วย

คลาส [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) จัดเตรียมคุณสมบัติ [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) ซึ่งมีสมาชิกซึ่งสามารถใช้เพื่อควบคุมวิธีการอัปเดตฟิลด์ภายในเอกสาร ตัวอย่างด้านล่างแสดงวิธีระบุตำแหน่งวัฒนธรรมที่ใช้สำหรับการจัดรูปแบบวันที่ระหว่างการอัปเดตฟิลด์และเลือก mail merge

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## การค้นหาโค้ดฟิลด์และผลลัพธ์ของฟิลด์

ฟิลด์ที่แทรกโดยใช้ [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) ส่งคืนออบเจ็กต์ [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) นี่คือคลาสส่วนหน้าซึ่งมีวิธีการที่เป็นประโยชน์ในการค้นหาคุณสมบัติของฟิลด์ดังกล่าวอย่างรวดเร็ว โปรดทราบว่าหากคุณกำลังมองหาเพียงชื่อของเขตข้อมูลผสานในเอกสาร คุณสามารถใช้วิธี [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) ในตัวแทนได้ ตัวอย่างด้านล่างแสดงวิธีรับชื่อของเขตข้อมูลผสานทั้งหมดในเอกสาร

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## วิธีเปลี่ยนชื่อเขตข้อมูลผสาน

ตัวอย่างด้านล่างแสดงวิธีการเปลี่ยนชื่อเขตข้อมูลผสานในเอกสาร Word

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
