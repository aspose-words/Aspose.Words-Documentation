---
title: ขั้นสูง Mail Merge คุณสมบัติใน C++
second_title: Aspose.Words สำหรับ C++
articleTitle: ขั้นสูง Mail Merge งคุณ
linktitle: ขั้นสูง Mail Merge งคุณ
type: docs
description: "Aspose.Words สำหรับ C++ ให้บางขั้นสูง Mail Merge คุณสมบัติที่ช่วยให้คุณสามารถดำเนินการต่อไป Mail Merge การปรับแต่ง ตัวอย่างเช่นการได้รับข้อมูลเกี่ยวกับโครงสร้างแม่แบบกฎการตั้งค่าการทำความสะอาดหลังจาก Mail Merge การดำเนินงานและอื่นๆ."
keywords: "use advanced Mail Merge features c++"
weight: 50
url: /th/cpp/advanced-mail-merge-features/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words มีบางเพิ่มเติม Mail Merge คุณสมบัติและวิธีการที่ช่วยให้คุณสามารถดำเนินการปรับแต่งเพิ่มเติมของ Mail Merge กระบวนการอย่างใดอย่างหนึ่งในง่าย Mail Merge หรือ Mail Merge กับภูมิภาค.

ขั้นสูง Mail Merge คุณสมบัติรวมถึงแต่ไม่จำกัดเฉพาะการได้รับข้อมูลเกี่ยวกับโครงสร้างแม่แบบก่อนที่จะดำเนินการ Mail Merge การดำเนินงานการตั้งค่ากฎสำหรับ Mail Merge การดำเนินงานและการทำความสะอาดขึ้นในช่วง Mail Merge การดำเนินงาน บทความนี้จะครอบคลุมเพียงไม่กี่คุณสมบัติและตัวอย่างที่จะแสดงวิธีการใช้คุณลักษณะขั้นสู.

## กำหนดกฎสำหรับ Mail Merge การดำเนินงาน

การเพิ่มกฎลงในแม่แบบของคุณช่วยให้คุณสามารถทำให้กระบวนการเวิร์กโฟลว์มีประสิท ใช้ Mail Merge คุณสามารถตั้งค่าเนื้อหาที่สามารถเปลี่ยนแปลงได้อย่างรวดเร็วและหลีกเลี่ยงความจำเป็น.

Aspose.Words ช่วยให้คุณสามารถปรับแต่ง Mail Merge ขึ้นอยู่กับกฎระเบียบที่ทำงานเมื่อคุณดำเนินการ Mail Merge การดำเนินงานและการควบคุมการรวมข้อมูล ตัวอย่างเช่นเมื่อคุณสร้างอีเมลหรือจดหมายที่จะส่งให้กับลูกค้าทั้งหมดของคุณ คุณสามารถตั้งค่ากฎเพื่อให้ตัวอักษรอาจประกอบด้วยข้อมูลต่างๆตามค่าที่แตกต่างกันในบาง.

ลองดูที่บาง Mail Merge กฎที่คุณสามารถใช้.

### ใช้ฟิลด์ถัดไปที่จะผสานระเบียนข้อมูลในเอกสารปัจจุบัน

คุณสามารถใช้ [Next](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnext/) ฟิลด์เพื่อผสานการบันทึกข้อมูลถัดไปลงในเอกสารที่ผสานผลลัพธ์ปัจจุบันแทนที่จะเริ่มต้นเอกส ใช้เพื่อแสดงระเบียนหลายรายการในเอกสารเดียว.

### ใช้ NextIf และ SkipIf ฟิลด์เพื่อเปรียบเทียบสองนิพจน์

คุณสามารถใช้อย่างใดอย่างหนึ่ง [NextIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldnextif) ฟิลด์หรือ [SkipIf](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/) ฟิลด์ถ้าคุณต้องการเปรียบเทียบสองนิพจน์([right]https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/) and [left](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/get_leftexpression/) การแสดงออก)โดยบาง [operator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldskipif/get_comparisonoperator/).

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words จะผสานบันทึกข้อมูลถัดไปลงในเอกสารผสานปัจจุบันและเขตข้อมูลทั้งหมดผสานในแม่แบบที่ *NextIf* ฟิลด์จะถูกแทนที่ด้วยค่าจากการบันทึกข้อมูลถัดไปมากกว่าการบันทึกข้อมูลปัจจุบัน. | Aspose.Words จะผสานการบันทึกข้อมูลถัดไปลงในเอกสารผสานใหม่. |
| `SkipIf` | Aspose.Words จะยกเลิกเอกสารผสานปัจจุบันย้ายไปยังระเบียนข้อมูลถัดไปในแหล่งข้อมูลและเริ่มต้นเอก. | Aspose.Words จะดำเนินการต่อเอกสารผสานปัจจุบัน. |

## รับข้อมูลเกี่ยวกับโครงสร้างแม่แบบ

Aspose.Words ช่วยให้คุณสามารถรวบรวมข้อมูลที่แตกต่างกันในเทมเพลตของคุณผ่านทางหลายวิธี ตัวอย่างเช่นคุณอาจต้องดูชื่อของเขตข้อมูลที่ผสานหรือลำดับชั้นของพื้นที่ในเทมเพลตของคุณ ตอนนี้เราจะอธิบายตัวแปรที่เป็นไปได้ที่จะได้รับข้อมูลบางอย่างที่เฉพาะเจาะจงจากแม่แ.

### รับชื่อฟิลด์ผสาน

คุณสามารถพบสถานการณ์ที่คุณต้องการผสานข้อมูลกับเขตข้อมูลผสานที่สร้างขึ้นโดยผู้อื่นแล ดังนั้นเพื่อให้บรรลุ Mail Merge วัตถุประสงค์แรกคุณจะต้องอ่านและแสดงชื่อของเขตข้อมูลทั้งหมดผสาน Aspose.Words ช่วยให้คุณได้รับคอลเลกชันของชื่อฟิลด์ผสานโดยใช้ [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) กเขา.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับชื่อของเขตข้อมูลผสานทั้งหมดในเทมเพลต:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}

### รับข้อมูลเกี่ยวกับภูมิภาคผสาน

คุณอาจมีสถานการณ์สมมติซึ่งคุณต้องการทำความเข้าใจวิธีการจัดโครงสร้างเทมเพลตขอ คุณสามารถใช้วิธีการบางอย่างเพื่อรวบรวมข้อมูลที่จำเป็นทั้งหมดเกี่ยวกับผสานพื้นที่หรือเ [GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/) กเขา คุณสามารถใช้คุณสมบัติและวิธีการของ [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) ชั้นเรียนตัวอย่างโค้ดต่อไปนี้แสดงวิธีรับลำดับชั้นของพื้นที่ผสาน:

{{< highlight csharp >}}

System::SharedPtr<MailMergeRegionInfo> regionInfo = doc->get_MailMerge()->GetRegionsHierarchy();

{{< /highlight >}}


{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### เพิ่มเขตข้อมูลที่แมป

Aspose.Words ช่วยให้คุณโดยอัตโนมัติแผนที่ชื่อของเขตข้อมูลในแหล่งข้อมูลของคุณและชื่อของ Mail Merge ฟิลด์ในแม่แบบโดยใช้ [MappedDataFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_mappeddatafields/) ทรัพย์สิน ตัวอย่างเช่นหากคุณมีชื่อฟิลด์ที่เรียกว่า"นามสกุล"ในเทมเพลตของคุณและในแหล่งข้อมูลของคุLastName"แล้วสนามในแหล่งข้อมูลโดยอัตโนมัติจะแมปไปยังสนามแมปที่สอดคล้องกัน ถ้าเทมเพลตผสานถูกผสานกับแหล่งข้อมูลจำนวนมากฟิลด์ที่แม็พทำให้ไม่จำเป็นต้องป้อนฟิลด์.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเพิ่มฟิลด์ที่แม็พโดยใช้ [Add](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mappeddatafieldcollection/add/) เมธอดเมื่อฟิลด์ผสานในแม่แบบและฟิลด์ข้อมูลในแหล่งข้อมูลมีชื่อแตกต่างกัน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-MappedDataFields.cpp" >}}
