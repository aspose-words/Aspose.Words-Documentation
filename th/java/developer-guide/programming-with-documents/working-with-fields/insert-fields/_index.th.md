---
title: แทรกช่องข้อมูล Java
second_title: Aspose.Words สําหรับ Java
articleTitle: แทรกช่องข้อมูล
linktitle: แทรกช่องข้อมูล
description: "วิธีการต่าง ๆ ในการใส่ช่องข้อมูลลงในเอกสารของคุณโดยใช้ Java."
type: docs
weight: 20
url: /th/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

มีวิธีต่าง ๆ หลายวิธีที่จะแทรกช่องในเอกสาร:

- ใช้ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- ใช้ [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- ใช้ [Aspose.Words Document Object Model (DOM)](/words/th/java/aspose-words-document-object-model/)

ใน บทความ นี้ เรา จะ พิจารณา แต่ ละ วิธี ใน ราย ละเอียด มาก ขึ้น และ วิเคราะห์ วิธี ที่ จะ ใส่ ช่อง ว่าง บาง อย่าง โดย ใช้ ทาง เลือก เหล่า นี้.

## แทรกช่องข้อมูลไปยังเอกสารโดยใช้ตัวสร้างเอกสาร

ใน Aspose.Words คือ [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)มีการใช้วิธีการใส่ช่องข้อมูลใหม่เข้าไปในเอกสาร พารามิเตอร์แรกยอมรับรหัสเต็มรูปแบบของสนามที่จะใส่ พารามิเตอร์ที่สอง จะเลือก และปล่อยให้ผลลัพธ์ของสนาม ถูกตั้งด้วยตนเอง หากยังไม่ได้จัดให้แล้ว สนามจะถูกอัปเดตโดยอัตโนมัติ คุณสามารถส่งต่อว่างหรือว่างไปยังพารามิเตอร์นี้ได้ เพื่อแทรกช่องใด ๆ ด้วยค่าที่ว่าง หากคุณไม่แน่ใจว่าเกี่ยวกับรหัสสนามเฉพาะ สร้างสนามใน Microsoft Word ก่อนและสลับกันดูรหัสสนาม

{{% alert color="primary" %}}

ถ้ารหัสสนามของคุณมีพารามิเตอร์บรรจุพื้นที่ แล้วมันต้องปิดภายในเครื่องหมายคําพูด มิฉะนั้นสนามในทั้งสอง Microsoft Word ถึง Aspose.Words อาจ ไม่ ได้ เป็น ไป ตาม ที่ คาด หมาย ไว้ เช่น เดียว กับ การ ทํา ให้ พารามิเตอร์ ถูก ตัด ขาด.

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการแทรกช่องรวมเข้าไปในเอกสารโดยใช้ **DocumentBuilder**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

มี การ ใช้ เทคนิค เดียว กัน นี้ เพื่อ สอด ร่อง ใน ทุ่ง นา อื่น ๆ.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกสนามในสาขาอื่นโดยใช้ **DocumentBuilder**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### ระบุภาษาท้องถิ่นที่ระดับสนาม

ตัวระบุภาษาเป็นตัวเลขสากลมาตรฐาน ที่ย่อมาจากภาษาในประเทศหรือภูมิภาคทางภูมิศาสตร์ ด้วย Aspose.Words, คุณสามารถกําหนดภาษาท้องถิ่นที่ระดับสนามโดยใช้ [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) ทรัพย์สินที่ได้รับหรือตั้งค่า ID ของท้องที่

ตัวอย่างโค้ดต่อไปนี้ แสดงวิธีการใช้ตัวเลือกนี้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### แทรกช่องข้อมูลที่ยังไม่ได้พิมพ์

หากคุณต้องการใส่ช่องข้อมูลที่ยังไม่ได้พิมพ์/ ว่าง (ไม่เติม){}) เหมือนกับ Microsoft Word อนุญาต คุณสามารถใช้ [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) วิธีที่มี [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) พารามิเตอร์ เพื่อแทรกช่องในเอกสารคํา คุณสามารถกด "Ctrl + F9" รวมกัน

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีแทรกช่องว่างเข้าไปในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### แทรก `COMPARE` ช่องข้อมูล

เดอะ `COMPARE` ช่องข้อมูล จะเปรียบเทียบค่าสองค่า แล้วคืนค่าเป็นตัวเลข 1 หากค่าเปรียบเทียบเป็น true หรือ 0 ถ้าเปรียบเทียบ false.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีเพิ่ม `COMPARE` ตัวสร้างเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### แทรก `IF` ช่องข้อมูล

เดอะ `IF` ช่องข้อมูลสามารถใช้ประเมินค่าการโต้แย้งได้ตามเงื่อนไข

ตัวอย่างรหัสต่อไปนี้แสดงวิธีเพิ่ม `IF` ตัวสร้างเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## แทรกช่องข้อมูลไปยังเอกสารโดยใช้ตัวสร้างช่องข้อมูล

วิธีอื่นที่จะแทรกสนามใน Aspose.Words คือ [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) ชั้นเรียน. มันให้ส่วนติดต่อที่คล่อง เพื่อระบุการสลับช่อง และค่าอาร์กิวเมนต์เป็นข้อความ, โหนด หรือแม้กระทั่งการวางผังสนาม

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีแทรกช่องในเอกสารโดยใช้ **FieldBuilder**

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## แทรกช่องข้อมูลโดยใช้ DOM

คุณยังสามารถแทรกชนิดของช่องข้อมูลได้โดยใช้ [Aspose.Words Document Object Model (DOM)](/words/th/java/aspose-words-document-object-model/). ในส่วนนี้ เราจะมาดูตัวอย่างกัน

### แทรกการผนวกรวม ช่องข้อมูลเป็นเอกสารโดยใช้ DOM

`MERGEFIELD` ช่องข้อมูลในเอกสารคํา [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) ชั้นเรียน. คุณสามารถใช้ **FieldMergeField** ห้องเรียนที่จะดําเนินการต่อไปนี้:

- ลบทั้งเธรด
- แสดงการฟอร์แมตของสนามรวม
- กําหนดข้อความที่อยู่ระหว่างตัวแบ่งสนามกับส่วนท้ายของสนามรวม
- ใช้กําหนดข้อความที่จะแทรกหลังจากทําการรวมช่องข้อมูลแล้ว หากช่องข้อมูลยังไม่ว่าง
- ลบทั้งเธรด

{{% alert color="primary" %}}

สําหรับรายละเอียดเพิ่มเติม ดู [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) ชั้น API.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่ม `MERGE` ใช้ช่องข้อมูล DOM ย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### แทรก Mail Merge `ADDRESSBLOCK` ค้นหาในเอกสารโดยใช้ DOM

เดอะ `ADDRESSBLOCK` ช่องข้อมูลที่ใช้แทรก mail merge ที่อยู่บล็อกในเอกสารคํา `ADDRESSBLOCK` ช่องข้อมูลในเอกสารคํา [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) ชั้นเรียน. คุณสามารถใช้ **FieldAddressBlock** ห้องเรียนที่จะดําเนินการต่อไปนี้:

- ลบทั้งเธรด
- ระบุว่าจะฟอร์แมตที่อยู่ต่าง ๆ ตามชื่อประเทศ/ regression ของผู้รับที่ถูกกําหนดโดย POSTs*CDE (Universal Post 2006) หรือไม่
- ระบุชื่อประเทศ/ ชื่อ region
- ลบทั้งเธรด
- ระบุหมายเลขภาษาที่ใช้เป็นรูปแบบที่อยู่

{{% alert color="primary" %}}

สําหรับรายละเอียดเพิ่มเติม ดู [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) ชั้น API.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่ม Mail Merge `ADDRESSBLOCK` ช่องข้อมูลโดยใช้ DOM ย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### แทรก `ADVANCE` ค้นหาในเอกสารโดยไม่ต้องใช้ตัวสร้างเอกสาร

เดอะ `ADVANCE` ช่องข้อมูลจะถูกใช้ในการปรับค่าข้อความที่ตามมาภายในบรรทัดด้านซ้ายขวาขึ้นหรือลง `ADVANCE` ช่องข้อมูลในเอกสารคํา [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) ชั้นเรียน. คุณสามารถใช้ **FieldAdvance** คลาสที่จะดําเนินการต่อไปนี้:

- ลบทั้งเธรด
- ลบทั้งเธรด
- ใช้กําหนดจํานวนของจุดต่าง ๆ ที่ข้อความต่อไปนี้จะถูกย้ายไปทางซ้าย, ขวา, ขึ้นหรือลง

{{% alert color="primary" %}}

สําหรับรายละเอียดเพิ่มเติม ดู [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) ชั้น API.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่ม `ADVANCE` ช่องข้อมูลโดยใช้ DOM ย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### แทรก `ASK` ค้นหาในเอกสารโดยไม่ต้องใช้ตัวสร้างเอกสาร

เดอะ `ASK` มีการใช้ช่องข้อมูลเพื่อแจ้งให้ผู้ใช้ใช้สําหรับข้อความที่จะกําหนดไปยังที่คั่นหน้าในเอกสารคํา `ASK` ช่องข้อมูลในเอกสารคํา [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) ชั้นเรียน. คุณสามารถใช้ **FieldAsk** คลาสที่จะดําเนินการต่อไปนี้:

- ระบุชื่อของที่คั่นหน้า
- ระบุการตอบสนองปริยายของผู้ใช้ (ค่าในหน้าต่างที่เรียกใช้)
- ลบทั้งเธรด mail merge ปฏิบัติการ
- ระบุข้อความพร้อม (หัวเรื่องหน้าต่างที่เรียกทํางาน)

{{% alert color="primary" %}}

สําหรับรายละเอียดเพิ่มเติม ดู [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) ชั้น API.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่ม `ASK` ช่องข้อมูลโดยใช้ DOM ย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### แทรก `AUTHOR` ค้นหาในเอกสารโดยไม่ต้องใช้ตัวสร้างเอกสาร

เดอะ `AUTHOR` ใช้กําหนดชื่อผู้เขียนเอกสารจาก `Document` คุณสมบัติ `AUTHOR` ช่องข้อมูลในเอกสารคํา [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) ชั้นเรียน. คุณสามารถใช้ **FieldAuthor** คลาสที่จะดําเนินการต่อไปนี้:

- ระบุชื่อผู้เขียนเอกสาร

{{% alert color="primary" %}}

สําหรับรายละเอียดเพิ่มเติม ดู [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) ชั้น API.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่ม `AUTHOR` ช่องข้อมูลโดยใช้ DOM ย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### แทรก `INCLUDETEXT` ค้นหาในเอกสารโดยไม่ต้องใช้ตัวสร้างเอกสาร

เดอะ `INCLUDETEXT` ช่องข้อมูลต่าง ๆ จะแทรกข้อความและกราฟฟิกที่อยู่ในเอกสารที่ชื่อในรหัสช่อง คุณสามารถแทรกเอกสารทั้งหมดหรือส่วนของเอกสาร ที่ถูกอ้างถึงได้โดยที่คั่นหน้า ทุ่ง นา นี้ ใน เอกสาร พระ คํา มี การ แสดง ภาพ ล่วง หน้า. คุณสามารถใช้ [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) คลาสที่จะดําเนินการต่อไปนี้:

- ระบุชื่อที่คั่นหน้าของเอกสารรวม
- ระบุตําแหน่งของเอกสาร

{{% alert color="primary" %}}

สําหรับรายละเอียดเพิ่มเติม ดู [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) ชั้น API.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่ม `INCLUDETEXT` ใช้ช่องข้อมูล DOM ย่อหน้าในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### แทรก `TOA` ค้นหาในเอกสารโดยไม่ต้องใช้ตัวสร้างเอกสาร

เดอะ `TOA` ฟิลด์สร้างและใส่ตารางของเจ้าหน้าที่ เดอะ `TOA` เก็บรายการต่าง ๆ ที่ระบุ `TA` ทุ่งหญ้า Microsoft คําในสํานักงานแทรก `TOA` ช่องข้อมูลเมื่อคุณคลิก # ตารางข้อมูลของเจ้าหน้าที่* ใน **ตารางของผู้มีอํานาจ** กลุ่มใน **References** แท็บ เมื่อคุณมอง `TOA` ในเอกสารของคุณ ไวยากรณ์เป็นแบบนี้

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

สําหรับรายละเอียดเพิ่มเติม ดู [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) ชั้น API.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่ม `TOA` ใช้ช่องข้อมูล DOM วรรคในเอกสาร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
