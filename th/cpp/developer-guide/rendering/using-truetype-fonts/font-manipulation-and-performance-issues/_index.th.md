---
title: การจัดการแบบอักษรและปัญหาประสิทธิภาพในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การจัดการแบบอักษรและปัญหาประสิทธิภาพการทำงาน
linktitle: การจัดการแบบอักษรและปัญหาประสิทธิภาพการทำงาน
description: "Aspose.WordsสำหรับC++ ใช้ชื่อเต็มตัวอักษรชื่อสกุลรุ่นรูปแบบที่จะหาข้อมูลตัวอักษรที่จำเป็นหรือทดแทนที่เหมาะสมส FontSettingsช่วยให้คุณสามารถเพิ่มความเร็วในการโหลดของเอกสาร."
type: docs
weight: 11
url: /th/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

กลไกการจัดการแบบอักษรที่มีอยู่ทั้งหมดอยู่ในชั้นเรียน[FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) คลาสนี้รับผิดชอบในการดึงแบบอักษรภายในแหล่งที่มาแบบอักษรที่กำหนดไว้เช่นเดียวกับก.

## การแยกแบบอักษรที่แก้ไขแล้ว

แบบอักษรจะถูกวิเคราะห์ในหลายขั้นตอน:

1. การได้รับข้อมูลสำหรับแบบอักษร,การแก้ไขจากแบบอักษรที่มีอยู่ทั้งหมด.
1. การแยกแบบอักษรที่ได้รับการแก้ไขเพื่อให้ได้สัญลักษณ์และตัวชี้วัดที่มีอยู่(แนวนอนและแนวตั้ง).
1. การแยกแบบอักษรที่แก้ไขแล้วสำหรับการฝังและการตั้งค่าย่อย.

เมื่อAspose.Wordsพบแบบอักษรในเอกสารเป็นครั้งแรกจะพยายามขอรับข้อมูลแบบอักษรพื้นฐานเช่นชื่อเต็มแบบอักษรชื่อสกุลรุ่นสไตล์จากไฟล์แบบอักษรที่อยู่ในแหล่งข้อมูลแบบอักษรแต่ละตัว หลังจากดึงแบบอักษรทั้งหมดแล้วAspose.Wordsใช้รายละเอียดเหล่านี้เพื่อค้นหาข้อมูลแบบอักษรที่จำเป็นหรือการแทนที่ที่เหมาะสมสำหรับแบบอักษรที่ร้องขอ.

## ปัญหาประสิทธิภาพเมื่อมีการเปลี่ยนแบบอักษร

เนื่องจากขั้นตอนที่อธิบายไว้ข้างต้นเป็นเวลานาน,มันอาจส่งผลกระทบต่อประสิทธิภาพกา อย่างไรก็ตามแต่ละอินสแตนซ์ของ**FontSettings**มีแคชของตัวเองซึ่งสามารถลดเวลาในการประมวลผล ตัวอย่างเช่น,คุณสามารถแบ่งปันอินสแตนซ์ของ**FontSettings**คลาสระหว่างเอกสารที่แตกต่างกัน,ซึ่งจะช่ ตัวอย่างต่อไปนี้แสดงให้เห็นถึงสิ่งนี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

ในกรณีที่**FontSettings**ไม่ได้กำหนดไว้อย่างชัดเจนAspose.Wordsใช้ค่าดีฟอลต์**FontSettings**อินสแตนซ์ อินสแตนซ์นี้จะใช้ร่วมกันโดยอัตโนมัติระหว่างเอกสารและสามารถแยกได้ดังนี้:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## ใช้อินสแตนซ์ดีฟอลต์FontSettings

หากคุณแน่ใจว่าเอกสารการประมวลผลทั้งหมดต้องการการตั้งค่าแบบอักษรเดียวกันขอแนะนำให้ตั้งค่าและใช้อินสแตนซ์เริ่มต้น**FontSettings** สมมติว่าคุณจำเป็นต้องใช้แหล่งที่มาแบบอักษรเดียวกันสำหรับเอกสารทั้งหมดของคุณ ในกรณีนี้,คุณก็สามารถแก้ไขอินสแตนซ์เริ่มต้นดังต่อไปนี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

กำหนดเอง**FontSettings**มีลำดับความสำคัญสูงกว่าอินสแตนซ์เริ่มต้น.

{{% /alert %}}