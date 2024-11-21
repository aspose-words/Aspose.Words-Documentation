---
title: แทรกฟิลด์ในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: แทรกฟิลด์
linktitle: แทรกฟิลด์
description: "วิธีการแทรกฟิลด์ลงในเอกสารของคุณด้วยC++."
type: docs
weight: 20
url: /th/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

มีหลายวิธีในการแทรกฟิลด์ลงในเอกสาร:

- ใช้[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- ใช้[FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- ใช้ [Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)](/words/cpp/aspose-words-document-object-model/)

ในบทความนี้เราจะดูที่แต่ละวิธีในรายละเอียดมากขึ้นและวิเคราะห์วิธีการแทรกเขตข้อมูลบางอย่างโดยใช้ตัวเลือกเหล่านี้.

## การใส่ฟิลด์ลงในเอกสารโดยใช้DocumentBuilder

ในAspose.Wordsวิธี[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)จะใช้ในการแทรกฟิลด์ใหม่ลงในเอกสาร พารามิเตอร์แรกยอมรับรหัสฟิลด์เต็มของฟิลด์ที่จะแทรก พารามิเตอร์ที่สองเป็นตัวเลือกและอนุญาตให้ฟิลด์ผลลัพธ์ของฟิลด์ที่จะตั้งค่าด้วยตนเอง อัพเดตโดยอัตโนมัติ คุณสามารถส่งผ่านโมฆะหรือว่างไปยังพารามิเตอร์นี้เพื่อแทรกฟิลด์ที่มีค่าฟิลด์ว่าง หากคุณไม่แน่ใจเกี่ยวกับไวยากรณ์รหัสฟิลด์เฉพาะ,สร้างฟิลด์ในMicrosoft Wordก่อนและสลับเพื่อดูรหัสฟิลด์.

{{% alert color="primary" %}}

ถ้าโค้ดเขตข้อมูลของคุณมีพารามิเตอร์ที่มีช่องว่างแล้วมันจะต้องอยู่ภายในเครื่องหมายคำพู มิฉะนั้นฟิลด์ทั้งในMicrosoft WordและAspose.Wordsอาจไม่ทำงานตามที่คาดไว้เนื่องจากพารามิเตอร์ถูกปฏิบัติโดยทั้งสอ

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ผสานลงในเอกสารโดยใช้**DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

เทคนิคเดียวกันจะใช้เพื่อแทรกฟิลด์ที่ซ้อนกันภายในฟิลด์อื่น.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ที่ซ้อนกันภายในฟิลด์อื่นโดยใช้**DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### ระบุโลแคลที่ระดับฟิลด์

ตัวระบุภาษาเป็นตัวย่อตัวเลขสากลมาตรฐานสำหรับภาษาในประเทศหรือภูมิภาคทางภูมิศ ด้วยAspose.Wordsคุณสามารถระบุโลแคลที่ระดับฟิลด์โดยใช้คุณสมบัติ[LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/)ซึ่งได้รับหรือตั้งค่าโลแคลของฟิลด์ID.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้ตัวเลือกนี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### แทรกเขตข้อมูลที่ไม่ได้พิมพ์/ว่างเปล่า

หากคุณต้องการแทรกฟิลด์ที่ไม่ได้พิมพ์/ว่างเปล่า({})เช่นเดียวกับMicrosoft Wordอนุญาต,คุณสามารถใช้วิธีการ[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield)กับ[FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)พารามิเตอร์. เมื่อต้องการแทรกฟิลด์ลงในเอกสารคำคุณสามารถกดปุ่ม"ควบคุมการ+F9".

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ว่างลงในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## การใส่ฟิลด์ลงในเอกสารโดยใช้FieldBuilder

ทางเลือกในการแทรกฟิลด์ในAspose.Wordsคือ[FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)คลาส จะมีอินเตอร์เฟซที่คล่องแคล่วในการระบุสวิทช์ฟิลด์และค่าอาร์กิวเมนต์เป็นข้อความโหนดห.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ลงในเอกสารโดยใช้**FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## การใส่ฟิลด์โดยใช้DOM

นอกจากนี้คุณยังสามารถแทรกประเภทต่างๆของเขตข้อมูลโดยใช้ [Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)](/words/cpp/aspose-words-document-object-model/). ในส่วนนี้เราจะดูตัวอย่างบางส่วน.

### การแทรกฟิลด์ผสานลงในเอกสารโดยใช้DOM

ฟิลด์`MERGEFIELD`ในเอกสารคำสามารถแสดงโดยคลาสของ[FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) คุณสามารถใช้**FieldMergeField**คลาสในการดำเนินการต่อไปนี้:

- ระบุชื่อของฟิลด์ผสาน
- ระบุการจัดรูปแบบของฟิลด์ผสาน
- ระบุข้อความที่อยู่ระหว่างตัวคั่นฟิลด์และฟิลด์สิ้นสุดของฟิลด์ผสาน
- ระบุข้อความที่จะแทรกหลังจากฟิลด์ผสานถ้าฟิลด์ไม่ว่างเปล่า
- ระบุข้อความที่จะแทรกก่อนฟิลด์ผสานถ้าฟิลด์ไม่ว่าง

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติมโปรดดูที่[FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/)ชั้นAPI.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มฟิลด์`MERGE`โดยใช้DOMไปยังย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### การแทรกฟิลด์บล็อกที่อยู่Mail Mergeลงในเอกสารโดยใช้DOM

ฟิลด์`ADDRESSBLOCK`ถูกใช้เพื่อแทรกบล็อกที่อยู่mail mergeในเอกสารคำ ฟิลด์`ADDRESSBLOCK`ในเอกสารคำสามารถแสดงโดย[FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/)ชั้น คุณสามารถใช้**FieldAddressBlock**คลาสในการดำเนินการต่อไปนี้:

- ระบุว่าจะใส่ชื่อของประเทศ/ภูมิภาคในฟิลด์หรือไม่
- ระบุว่าจะจัดรูปแบบที่อยู่ตามประเทศ/ภูมิภาคของผู้รับตามที่กำหนดโดยPOST*CODE(สหภาพไปรษณีย์สากล 2006)
- ระบุชื่อประเทศ/ภูมิภาคที่ยกเว้น
- ระบุชื่อและรูปแบบที่อยู่
- ระบุภาษาIDที่ใช้ในการจัดรูปแบบที่อยู่

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติมโปรดดูที่[FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/)ชั้นAPI.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มฟิลด์Mail Merge`ADDRESSBLOCK`โดยใช้DOMไปยังย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### การใส่ฟิลด์ล่วงหน้าลงในเอกสารโดยไม่ใช้DocumentBuilder

ฟิลด์`ADVANCE`ใช้เพื่อชดเชยข้อความที่ตามมาภายในบรรทัดไปทางซ้ายขวาขึ้นหรือลง ฟิลด์`ADVANCE`ในเอกสารคำสามารถแสดงโดยคลาสของ[FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) คุณสามารถใช้FieldAdvanceคลาสในการดำเนินการดังต่อไปนี้:

- ระบุจำนวนจุดที่ควรย้ายข้อความตามฟิลด์ในแนวตั้งจากขอบด้านบนของหน้า
- ระบุจำนวนจุดที่ควรย้ายข้อความตามฟิลด์ในแนวนอนจากขอบด้านซ้ายของคอลัมน์เฟรมหรื
- ระบุจำนวนจุดที่ข้อความตามฟิลด์ควรย้ายไปทางซ้ายขวาขึ้นหรือลง

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติมโปรดดูที่[FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/)ชั้นAPI.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มฟิลด์`ADVANCE`โดยใช้DOMไปยังย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### การแทรกฟิลด์`ASK`ลงในเอกสารโดยไม่ใช้DocumentBuilder

ฟิลด์`ASK`ถูกใช้เพื่อแจ้งให้ผู้ใช้กำหนดข้อความให้กับบุ๊กมาร์กในเอกสารคำ ฟิลด์`ASK`ในเอกสารคำสามารถแสดงโดย[FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/)ชั้น คุณสามารถใช้**FieldAsk**คลาสในการดำเนินการต่อไปนี้:

- ระบุชื่อของบุ๊กมาร์ก
- ระบุการตอบสนองของผู้ใช้ดีฟอลต์(ค่าเริ่มต้นที่มีอยู่ในหน้าต่างพร้อมท์)
- ระบุว่าควรได้รับคำตอบของผู้ใช้หนึ่งครั้งต่อการดำเนินการmail merge
- ระบุข้อความพร้อมท์(ชื่อของหน้าต่างพร้อมท์)

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติมโปรดดูที่[FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask)ชั้นAPI.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มฟิลด์`ASK`โดยใช้DOMไปยังย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### การแทรกฟิลด์`AUTHOR`ลงในเอกสารโดยไม่ใช้DocumentBuilder

ฟิลด์`AUTHOR`ใช้เพื่อระบุชื่อของผู้เขียนของเอกสารจากคุณสมบัติ`Document` ฟิลด์`AUTHOR`ในเอกสารคำสามารถแสดงโดย[FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/)ชั้น คุณสามารถใช้**FieldAuthor**คลาสในการดำเนินการต่อไปนี้:

- ระบุชื่อผู้เขียนเอกสาร

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติมโปรดดูที่[FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/)ชั้นAPI.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มฟิลด์`AUTHOR`โดยใช้DOMไปยังย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### การแทรกฟิลด์`INCLUDETEXT`ลงในเอกสารโดยไม่ใช้DocumentBuilder

ฟิลด์`INCLUDETEXT`แทรกข้อความและกราฟิกที่มีอยู่ในเอกสารที่มีชื่อในรหัสฟิลด์ คุณสามารถแทรกเอกสารทั้งหมดหรือบางส่วนของเอกสารที่อ้างถึงโดยบุ๊กมาร์ก ฟิลด์นี้ในเอกสารคำแสดงด้วยINCLUDETEXT คุณสามารถใช้คลาส[FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/)เพื่อดำเนินการดังต่อไปนี้:

- ระบุชื่อของบุ๊กมาร์กของเอกสารที่รวมอยู่
- ระบุตำแหน่งของเอกสาร

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติมโปรดดูที่[FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/)ชั้นAPI.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มฟิลด์`INCLUDETEXT`โดยใช้DOMไปยังย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### การแทรกฟิลด์`TOA`ลงในเอกสารโดยไม่ใช้DocumentBuilder

ฟิลด์`TOA`(*Table of Authorities*)สร้างและแทรกตารางของเจ้าหน้าที่ ฟิลด์`TOA`รวบรวมรายการที่ทำเครื่องหมายด้วยฟิลด์`TA`(*Table of Authorities Entry*) Microsoftคำสำนักงานแทรกฟิลด์`TOA`เมื่อคุณคลิก*Insert Table of Authorities*ในกลุ่ม**Table of Authorities**บนแท็บ**References** เมื่อคุณดูฟิลด์`TOA`ในเอกสารของคุณไวยากรณ์มีลักษณะเช่นนี้:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติมโปรดดูที่[FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/)ชั้นAPI.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มฟิลด์`TOA`โดยใช้DOMไปยังย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
