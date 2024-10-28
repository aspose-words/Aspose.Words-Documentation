---
title: ใช้การจัดรูปแบบที่กำหนดเองไปยังฟิลด์ในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ใช้การจัดรูปแบบที่กำหนดเองไปยังฟิลด์
linktitle: ใช้การจัดรูปแบบที่กำหนดเองไปยังฟิลด์
description: "จัดรูปแบบและประเมินผลฟิลด์โดยใช้C++."
type: docs
weight: 40
url: /th/cpp/applying-custom-formatting-to-fields/
---

บางครั้งผู้ใช้ต้องใช้การจัดรูปแบบที่กำหนดเองกับฟิลด์ ในบทความนี้เราจะดูที่คู่ของตัวอย่างของวิธีการนี้สามารถทำได้.

หากต้องการเรียนรู้ตัวเลือกเพิ่มเติมให้ดูรายการคุณสมบัติทั้งหมดของแต่ละฟิลด์ในชั้นเรียนที่ตรงกันใน[Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## วิธีการใช้การจัดรูปแบบที่กำหนดเองเพื่อผลลัพธ์ฟิลด์

Aspose.Wordsให้APIสำหรับการจัดรูปแบบที่กำหนดเองของผลลัพธ์ของฟิลด์ คุณสามารถใช้อินเตอร์เฟซ[IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/)เพื่อควบคุมวิธีการจัดรูปแบบผลลัพธ์ของฟิลด์ คุณสามารถใช้สวิตช์รูปแบบตัวเลขเช่น\#"###",สวิตช์รูปแบบวันที่/เวลาเช่น\@"MM.ปปปป"และสวิทช์รูปแบบตัวเลขเช่น\*ลำดับ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้การจัดรูปแบบที่กำหนดเองสำหรับผลลัพธ์ฟิลด์:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## วิธีการประเมินเงื่อนไข`IF`

ถ้าคุณต้องการประเมิน`IF`เงื่อนไขหลังจากmail mergeคุณสามารถใช้วิธีการ[EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/)ที่ส่งกลับผลลัพธ์ของการประ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้วิธีการนี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## วิธีการใช้การจัดรูปแบบที่กำหนดเองไปยังเขตเวลา

โดยค่าเริ่มต้นAspose.Wordsอัพเดต`TIME`ฟิลด์ที่มีรูปแบบเวลาสั้นๆวัฒนธรรมปัจจุบัน หากคุณต้องการจัดรูปแบบฟิลด์`TIME`ตามความต้องการของคุณ,คุณสามารถบรรลุนี้โดยการใช้อินเตอร์เฟซ[IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้การจัดรูปแบบแบบกำหนดเองกับฟิลด์`TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}