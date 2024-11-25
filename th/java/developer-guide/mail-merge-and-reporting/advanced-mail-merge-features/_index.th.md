---
title: ขั้นสูงMail MergeคุณสมบัติในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ขั้นสูงMail Mergeคุณสมบัติ
linktitle: ขั้นสูงMail Mergeคุณสมบัติ
type: docs
description: "Aspose.WordsสำหรับJavaมีคุณลักษณะขั้นสูงMail Mergeบางอย่างที่ช่วยให้คุณสามารถดำเนินการเพิ่มเติมMail Mergeการปรับแต่ ตัวอย่างเช่นการได้รับข้อมูลเกี่ยวกับโครงสร้างแม่แบบกฎการตั้งค่าการทำความสะอาดหลังจากการดำเนินการMail Mergeและอื่นๆ."
keywords: "use advanced Mail Merge features java, Mail Merge java"
weight: 50
url: /th/java/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsให้คุณสมบัติและวิธีการเพิ่มเติมMail Mergeที่ช่วยให้คุณสามารถดำเนินการปรับแต่งเพิ่มเติมของกระบวนการMail Mergeทั้งในแบบง่ายๆMail MergeหรือMail Mergeกับภูมิภาค.

คุณลักษณะขั้นสูงMail Mergeประกอบด้วยแต่ไม่จำกัดเฉพาะการรับข้อมูลเกี่ยวกับโครงสร้างเทมเพลตก่อนดำเนินการดำเนินการMail Mergeการตั้งค่ากฎสำหรับการดำเนินการMail Mergeและการทำความสะอาดในระหว่างการดำเนินการMail Merge บทความนี้จะครอบคลุมเพียงไม่กี่คุณสมบัติและตัวอย่างที่จะแสดงวิธีการใช้คุณลักษณะขั้นสู.

## กำหนดกฎสำหรับMail Mergeการดำเนินงาน

การเพิ่มกฎลงในแม่แบบของคุณช่วยให้คุณสามารถทำให้กระบวนการเวิร์กโฟลว์มีประสิท การใช้กฎMail Mergeคุณสามารถตั้งค่าเนื้อหาที่สามารถเปลี่ยนแปลงได้อย่างรวดเร็วและหลีกเลี่ยงความจำเป็นในการสร้างเอกสารหลายรายการ.

Aspose.Wordsอนุญาตให้คุณกำหนดเองMail Mergeตามกฎที่ทำงานเมื่อคุณดำเนินการMail Mergeการดำเนินงานและการควบ ตัวอย่างเช่นเมื่อคุณสร้างอีเมลหรือจดหมายที่จะส่งให้กับลูกค้าทั้งหมดของคุณ คุณสามารถตั้งค่ากฎเพื่อให้ตัวอักษรอาจประกอบด้วยข้อมูลต่างๆตามค่าที่แตกต่างกันในบาง.

ลองดูที่กฎMail Mergeที่คุณสามารถใช้ได้.

### ใช้ฟิลด์ถัดไปที่จะผสานระเบียนข้อมูลในเอกสารปัจจุบัน

คุณสามารถใช้ฟิลด์[Next](https://reference.aspose.com/words/java/com.aspose.words/fieldnext/)เพื่อรวมบันทึกข้อมูลถัดไปลงในเอกสารที่ผสานผลลัพธ์ปัจจุบันแทนที่จะเริ่ ใช้เพื่อแสดงระเบียนหลายรายการในเอกสารเดียว.

### ใช้ฟิลด์NextIfและSkipIfเพื่อเปรียบเทียบสองนิพจน์

คุณสามารถใช้ฟิลด์[NextIf](https://reference.aspose.com/words/java/com.aspose.words/fieldnextif/)หรือฟิลด์[SkipIf](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/)ถ้าคุณต้องการเปรียบเทียบสองนิพจน์([right](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getRightExpression)และ[left](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#getLeftExpression)นิพจน์)โดยบาง[operator](https://reference.aspose.com/words/java/com.aspose.words/fieldskipif/#getComparisonOperator).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Wordsจะผสานการบันทึกข้อมูลถัดไปลงในเอกสารผสานปัจจุบันและฟิลด์ผสานทั้งหมดในแม่แบบที่อยู่หลังฟิลด์*NextIf*จะถูกแทนที่ด้วยค่าจากระเบียนข้อมูลถัดไปแทนที่จะเป็นระเบียนข้อมูลปัจจุบัน. | Aspose.Wordsจะรวมบันทึกข้อมูลถัดไปลงในเอกสารผสานใหม่. |
| `SkipIf` | Aspose.Wordsจะยกเลิกเอกสารผสานปัจจุบันย้ายไปยังบันทึกข้อมูลถัดไปในแหล่งข้อมูลและเริ่มต้นเอกสารผสานใหม่. | Aspose.Wordsจะดำเนินการต่อเอกสารผสานปัจจุบัน. |

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเปรียบเทียบนิพจน์สองนิพจน์กับ**NextIf**หรือ**SkipIf**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-AdvancedMailMergeFeatures-CompareTwoExpressions.java" >}}

## รับข้อมูลเกี่ยวกับโครงสร้างแม่แบบ

Aspose.Wordsช่วยให้คุณสามารถรวบรวมข้อมูลที่แตกต่างกันในเทมเพลตของคุณผ่านทางหลายวิธี. ตัวอย่างเช่นคุณอาจต้องดูชื่อของเขตข้อมูลที่ผสานหรือลำดับชั้นของพื้นที่ในเทมเพลตของคุณ ตอนนี้เราจะอธิบายตัวแปรที่เป็นไปได้ที่จะได้รับข้อมูลบางอย่างที่เฉพาะเจาะจงจากแม่แ.

### รับชื่อฟิลด์ผสาน

คุณสามารถพบสถานการณ์ที่คุณต้องการผสานข้อมูลกับเขตข้อมูลผสานที่สร้างขึ้นโดยผู้อื่นแล ดังนั้นเพื่อให้บรรลุวัตถุประสงค์Mail Mergeอันดับแรกคุณจะต้องอ่านและแสดงชื่อของเขตข้อมูลทั้งหมดผสาน Aspose.Wordsช่วยให้คุณสามารถรับคอลเลกชันของชื่อฟิลด์ผสานโดยใช้วิธีการ[GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับชื่อของเขตข้อมูลผสานทั้งหมดในเทมเพลต:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}

### รับข้อมูลเกี่ยวกับภูมิภาคผสาน

คุณอาจมีสถานการณ์สมมติซึ่งคุณต้องการทำความเข้าใจวิธีการจัดโครงสร้างเทมเพลตขอ คุณสามารถใช้วิธีการบางอย่างเพื่อรวบรวมข้อมูลที่จำเป็นทั้งหมดเกี่ยวกับพื้นที่ผสานหรือเพื่อรับลำดับชั้นของพื้นที่ผสานในเทมเพลตของคุณเช่นวิธีการ[GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) คุณสามารถใช้คุณสมบัติและวิธีการของ[MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/)คลาสตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับลำดับชั้นของพื้นที่ผสาน:

**Java**
{{< highlight java >}}

MailMergeRegionInfo regionInfo = doc.getMailMerge().getRegionsHierarchy();

{{< /highlight >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับพื้นที่ผสานเฉพาะภายในเทมเพลตของคุณตามชื่อ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ExecuteMailMergeWithRegions-GetRegionsByName.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

### เพิ่มเขตข้อมูลที่แมป

Aspose.Wordsช่วยให้คุณสามารถแมปชื่อของฟิลด์ในแหล่งข้อมูลและชื่อของฟิลด์Mail Mergeในเทมเพลตโดยใช้คุณสมบัติ[MappedDataFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getMappedDataFields)โดยอัตโนมัติ ลของคุณคุณมีชื่อฟิลด์"นามสกุล"หรือรูปแบบอื่นเช่น"Last_Name"หรือ"LastName"แล้วฟิลด์ในแหล่งข้อมูลจะแมปไปยังฟิลด์ ถ้าเทมเพลตผสานถูกผสานกับแหล่งข้อมูลจำนวนมากฟิลด์ที่แม็พทำให้ไม่จำเป็นต้องป้อนฟิลด์.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มฟิลด์ที่แม็พโดยใช้วิธีการ[Add](https://reference.aspose.com/words/java/com.aspose.words/mappeddatafieldcollection/#add-java.lang.String-java.lang.String)เมื่อฟิลด์ผสานในเทมเพลตแ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-MappedFieldNames.java" >}}
