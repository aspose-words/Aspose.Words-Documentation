---
title: เปิดเอกสารแบบอ่านอย่างเดียวในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: เปิดเอกสารแบบอ่านอย่างเดียว
linktitle: เปิดเอกสารแบบอ่านอย่างเดียว
description: "ทำให้เอกสารของคุณอ่านอย่างเดียวเพื่อให้เนื้อหาที่สามารถคัดลอกหรืออ่านแต่ไม่ได้ปรับ."
type: docs
weight: 10
url: /th/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

บางครั้งคุณอาจมีเอกสารที่ต้องการรีวิวแต่คุณไม่ต้องการให้ผู้ตรวจทานทำการสุ่มปรับเปลี่ Aspose.Wordsอนุญาตให้คุณอนุญาตให้เอกสารของคุณอ่านอย่างเดียวเพื่อให้เนื้อหาสามารถคัดลอกหรืออ่ ลบหรือเพิ่มเนื้อหาในเอกสารของคุณ.

{{% alert color="primary" %}}

ใช้ตัวเลือกแบบอ่านอย่างเดียวกับเอกสารของคุณไม่ได้ป้องกันไม่ให้บุคคลสร้างสำเนาใหม่.

{{% /alert %}}

บทความนี้อธิบายวิธีการทำเอกสารแบบอ่านอย่างเดียว.

## สร้างเอกสารแบบอ่านอย่างเดียว

Aspose.Wordsมีคลาสสาธารณะ[WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/)ที่ระบุการตั้งค่าการป้องกันการเขียนสำหรับเอกสาร คุณไม่ได้สร้างอินสแตนซ์ของคลาสนี้โดยตรง.

การป้องกันการเขียนแสดงว่าผู้เขียนได้แนะนำให้เปิดเอกสารเป็นแบบอ่านอย่างเดียวและ/.

Aspose.Wordsอนุญาตให้คุณทำเอกสารแบบอ่านอย่างเดียวเพื่อจำกัดการแก้ไขโดยใช้คุณสมบัติ[ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/)และวิธีการ[SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

ในMicrosoft Wordคุณสามารถสร้างเอกสารแบบอ่านอย่างเดียวในลักษณะที่คล้ายกันโดยใช้ทั้งสอง:

* "เปิดอ่านอย่างเดียวเสมอ"(ข้อมูลไฟล์ Protect Protect Protect ปกป้องเอกสาร)
* "รหัสผ่านเพื่อแก้ไข"(บันทึกเป็นเครื่องมือ→Options ตัวเลือกทั่วไป Password รหัสผ่าน)

{{% /alert %}}

{{% alert color="primary" %}}

ผู้ใช้ยังสามารถจำกัดการแก้ไขเอกสารได้โดยการเลือก[ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/)เป็น**ReadOnly**แต่นี่เป็นอีกคุณสมบัติหนึ่งที่ให้ มีฟังก์ชั่นดังกล่าวในMicrosoft WordตามลำดับจะดำเนินการในAspose.Words.

**ProtectionType**

{{% /alert %}}

คุณสมบัติ**ReadOnlyRecommended**จะปลอดภัยด้วยรหัสผ่านดังนั้นหากคุณไม่ได้ตั้งรหัสผ่านก่อนที่จะใช้คุณสมบัติ**ReadOnlyRecommended**ผู้ใช้อื่ คุณสามารถเข้าถึงการตั้งค่าการป้องกันเอกสารและตั้งรหัสผ่านป้องกันการเขียนผ่านวิธี**SetPassword**.

{{% alert color="primary" %}}

โปรดทราบว่ารหัสผ่านที่ถูกตั้งเป็นเพียงคุณสมบัติในเอกสารที่สามารถเอาออกได้ถ้าคุณ รรักษาความปลอดภัยของเอกสาร.

{{% /alert %}}

หากคุณต้องการตรวจสอบว่าเอกสารมีรหัสผ่านการป้องกันการเขียนที่จำกัดการแก้ไขหรือไม่ คุณสามารถใช้คุณสมบัติ [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/) ได้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำเอกสารแบบอ่านอย่างเดียว:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## ลบข้อจำกัดแบบอ่านอย่างเดียว

หากคุณไม่ต้องการให้ผู้ใช้เปิดเอกสารของคุณเป็นแบบอ่านอย่างเดียวคุณสามารถตั้งค่าคุณสมบัติ**ReadOnlyRecommened**เป็น*false*หรือเลือก**ProtectionType**เป็น**NoProtection**.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาการเข้าถึงแบบอ่านอย่างเดียวสำหรับเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
