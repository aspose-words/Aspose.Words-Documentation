---
title: แทรกฟิลด์ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: แทรกฟิลด์
linktitle: แทรกฟิลด์
description: "วิธีแทรกช่องลงในเอกสารโดยใช้ C# – เรียนรู้วิธีต่างๆ พร้อมตัวอย่างโค้ด"
type: docs
weight: 20
url: /th/net/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

มีหลายวิธีในการแทรกฟิลด์ลงในเอกสาร:

* ใช้ [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* ใช้ [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* ใช้ [Aspose.Words Document Object Model (DOM)](/words/th/net/aspose-words-document-object-model/)

ในบทความนี้ เราจะดูรายละเอียดเพิ่มเติมแต่ละวิธีและวิเคราะห์วิธีแทรกฟิลด์บางฟิลด์โดยใช้ตัวเลือกเหล่านี้

## การแทรกฟิลด์ลงในเอกสารโดยใช้ DocumentBuilder

ใน Aspose.Words วิธีการ [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) ใช้เพื่อแทรกฟิลด์ใหม่ลงในเอกสาร พารามิเตอร์แรกยอมรับโค้ดฟิลด์แบบเต็มของฟิลด์ที่จะแทรก พารามิเตอร์ตัวที่สองเป็นทางเลือก และอนุญาตให้ตั้งค่าผลลัพธ์ของฟิลด์ด้วยตนเองได้ หากไม่ได้ระบุ ฟิลด์นี้จะได้รับการอัปเดตโดยอัตโนมัติ คุณสามารถส่งค่าว่างหรือค่าว่างให้กับพารามิเตอร์นี้เพื่อแทรกฟิลด์ที่มีค่าฟิลด์ว่างได้ หากคุณไม่แน่ใจเกี่ยวกับไวยากรณ์ของโค้ดฟิลด์ ให้สร้างฟิลด์ใน Microsoft Word ก่อน แล้วสลับเพื่อดูโค้ดของฟิลด์

{{% alert color="primary" %}}

หากโค้ดฟิลด์ของคุณมีพารามิเตอร์ที่มีการเว้นวรรค จะต้องอยู่ภายในเครื่องหมายคำพูด มิฉะนั้น ช่องในทั้ง Microsoft Word และ Aspose.Words อาจไม่ทำงานตามที่คาดไว้ เนื่องจากพารามิเตอร์จะถือว่าถูกตัดทอน

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกเขตข้อมูลผสานลงในเอกสารโดยใช้ **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

เทคนิคเดียวกันนี้ใช้ในการแทรกฟิลด์ที่ซ้อนกันภายในฟิลด์อื่น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกฟิลด์ที่ซ้อนกันภายในฟิลด์อื่นโดยใช้ **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### ระบุสถานที่ในระดับฟิลด์

ตัวระบุภาษาเป็นตัวย่อตัวเลขมาตรฐานสากลสำหรับภาษาในประเทศหรือภูมิภาคทางภูมิศาสตร์ ด้วย Aspose.Words คุณสามารถระบุ Locale ในระดับฟิลด์ได้โดยใช้คุณสมบัติ [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/) ซึ่งรับหรือตั้งค่า ID ตำแหน่งที่ตั้งของฟิลด์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้ตัวเลือกนี้:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### แทรกฟิลด์ที่ไม่ได้พิมพ์/ว่างเปล่า

หากคุณต้องการแทรกช่องที่ไม่ได้พิมพ์/ว่างเปล่า ({}) เช่นเดียวกับที่ Microsoft Word อนุญาต คุณสามารถใช้วิธี [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) กับพารามิเตอร์ [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) ได้ หากต้องการแทรกฟิลด์ลงในเอกสาร Word คุณสามารถกดคีย์ผสม "Ctrl + F9"

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกฟิลด์ว่างลงในเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## การแทรกฟิลด์ลงในเอกสารโดยใช้ FieldBuilder
อีกวิธีหนึ่งในการแทรกฟิลด์ใน Aspose.Words คือคลาส [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/) มีอินเทอร์เฟซที่คล่องแคล่วเพื่อระบุสวิตช์ฟิลด์และค่าอาร์กิวเมนต์เป็นข้อความ โหนด หรือแม้แต่ฟิลด์ที่ซ้อนกัน

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกฟิลด์ลงในเอกสารโดยใช้ **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## การแทรกฟิลด์โดยใช้ DOM

คุณยังสามารถแทรกฟิลด์ประเภทต่างๆ โดยใช้ [Aspose.Words Document Object Model (DOM)](/words/th/net/aspose-words-document-object-model/) ได้อีกด้วย ในส่วนนี้เราจะดูตัวอย่างบางส่วน

### การแทรกเขตข้อมูลผสานลงในเอกสารโดยใช้ DOM

ฟิลด์ `MERGEFIELD` ในเอกสาร Word สามารถแสดงได้ด้วยคลาส [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) คุณสามารถใช้คลาส **FieldMergeField** เพื่อดำเนินการต่อไปนี้:

- ระบุชื่อเขตข้อมูลผสาน
- ระบุการจัดรูปแบบของช่องผสาน
- ระบุข้อความที่อยู่ระหว่างตัวคั่นฟิลด์และส่วนท้ายของฟิลด์ผสาน
- ระบุข้อความที่จะแทรกหลังช่องผสานหากช่องไม่ว่างเปล่า
- ระบุข้อความที่จะแทรกก่อนช่องผสานหากช่องไม่ว่างเปล่า

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติม โปรดดู API ของคลาส [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มฟิลด์ `MERGE` โดยใช้ DOM ลงในย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### การแทรกฟิลด์ Mail Merge `ADDRESSBLOCK` ลงในเอกสารโดยใช้ DOM

ช่อง `ADDRESSBLOCK` ใช้เพื่อแทรกบล็อกที่อยู่ mail merge ในเอกสาร Word ฟิลด์ `ADDRESSBLOCK` ในเอกสาร Word สามารถแสดงด้วยคลาส [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) คุณสามารถใช้คลาส **FieldAddressBlock** เพื่อดำเนินการต่อไปนี้:

- ระบุว่าจะรวมชื่อประเทศ/ภูมิภาคในช่องหรือไม่
- ระบุว่าจะจัดรูปแบบที่อยู่ตามประเทศ/ภูมิภาคของผู้รับตามที่กำหนดโดย POST*CODE (Universal Postal Union 2006)
- ระบุชื่อประเทศ/ภูมิภาคที่ยกเว้น
- ระบุรูปแบบชื่อและที่อยู่
- ระบุรหัสภาษาที่ใช้ในการจัดรูปแบบที่อยู่

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติม โปรดดู API ของคลาส [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มฟิลด์ Mail Merge `ADDRESSBLOCK` โดยใช้ DOM ให้กับย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### การแทรกฟิลด์ `ADVANCE` ลงในเอกสารโดยไม่ต้องใช้ DocumentBuilder

ช่อง `ADVANCE` ใช้เพื่อชดเชยข้อความที่ตามมาภายในบรรทัดทางซ้าย ขวา ขึ้นหรือลง ฟิลด์ `ADVANCE` ในเอกสาร Word สามารถแสดงได้ด้วยคลาส [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) คุณสามารถใช้คลาส **FieldAdvance** เพื่อดำเนินการต่อไปนี้:

- ระบุจำนวนจุดที่ควรย้ายข้อความที่ตามหลังฟิลด์ในแนวตั้งจากขอบด้านบนของหน้า
- ระบุจำนวนจุดที่ควรย้ายข้อความที่ตามหลังฟิลด์ในแนวนอนจากขอบด้านซ้ายของคอลัมน์ กรอบ หรือกล่องข้อความ
- ระบุจำนวนจุดที่ข้อความที่อยู่หลังฟิลด์ควรเลื่อนไปทางซ้าย ขวา ขึ้นหรือลง

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติม โปรดดู API ของคลาส [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มฟิลด์ `ADVANCE` โดยใช้ DOM ลงในย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### การแทรกฟิลด์ `ASK` ลงในเอกสารโดยไม่ต้องใช้ DocumentBuilder

ช่อง `ASK` ใช้เพื่อแจ้งให้ผู้ใช้ป้อนข้อความเพื่อกำหนดให้กับบุ๊กมาร์กในเอกสาร Word ฟิลด์ `ASK` ในเอกสาร Word สามารถแสดงโดยคลาส [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) คุณสามารถใช้คลาส **FieldAsk** เพื่อดำเนินการต่อไปนี้:

- ระบุชื่อบุ๊คมาร์ค
- ระบุการตอบสนองของผู้ใช้เริ่มต้น (ค่าเริ่มต้นที่มีอยู่ในหน้าต่างแจ้ง)
- ระบุว่าควรได้รับการตอบสนองของผู้ใช้หนึ่งครั้งต่อการดำเนินการ mail merge หรือไม่
- ระบุข้อความพร้อมท์ (ชื่อของหน้าต่างพร้อมท์)

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติม โปรดดู API ของคลาส [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มฟิลด์ `ASK` โดยใช้ DOM ลงในย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### การแทรกฟิลด์ `AUTHOR` ลงในเอกสารโดยไม่ต้องใช้ DocumentBuilder

ฟิลด์ `AUTHOR` ใช้เพื่อระบุชื่อผู้เขียนเอกสารจากคุณสมบัติ `Document` ช่อง `AUTHOR` ในเอกสาร Word สามารถแสดงได้ด้วยคลาส [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) คุณสามารถใช้คลาส **FieldAuthor** เพื่อดำเนินการต่อไปนี้:

- ระบุชื่อผู้เขียนเอกสาร

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติม โปรดดู API ของคลาส [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มฟิลด์ `AUTHOR` โดยใช้ DOM ลงในย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### การแทรกฟิลด์ `INCLUDETEXT` ลงในเอกสารโดยไม่ต้องใช้ DocumentBuilder

ช่อง `INCLUDETEXT` จะแทรกข้อความและกราฟิกที่มีอยู่ในเอกสารที่มีชื่ออยู่ในโค้ดช่อง คุณสามารถแทรกเอกสารทั้งหมดหรือบางส่วนของเอกสารที่อ้างอิงโดยบุ๊กมาร์กได้ ฟิลด์นี้ในเอกสาร Word แสดงโดย INCLUDETEXT คุณสามารถใช้คลาส [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) เพื่อดำเนินการต่อไปนี้:

- ระบุชื่อบุ๊คมาร์คของเอกสารที่รวมไว้
- ระบุตำแหน่งของเอกสาร

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติม โปรดดู API ของคลาส [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มฟิลด์ `INCLUDETEXT` โดยใช้ DOM ลงในย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### การแทรกฟิลด์ `TOA` ลงในเอกสารโดยไม่ต้องใช้ DocumentBuilder

ช่อง `TOA` (*สารบัญหน่วยงาน*) จะสร้างและแทรกสารบัญหน่วยงาน ฟิลด์ `TOA` รวบรวมรายการที่ทำเครื่องหมายโดยฟิลด์ `TA` (*Table of Authorities Entry*) Microsoft Office Word จะแทรกฟิลด์ `TOA` เมื่อคุณคลิก *แทรกสารบัญ* ในกลุ่ม **ตารางอำนาจ** บนแท็บ **References** เมื่อคุณดูช่อง `TOA` ในเอกสารของคุณ ไวยากรณ์จะมีลักษณะดังนี้:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

สำหรับรายละเอียดเพิ่มเติม โปรดดู API ของคลาส [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเพิ่มฟิลด์ `TOA` โดยใช้ DOM ลงในย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
