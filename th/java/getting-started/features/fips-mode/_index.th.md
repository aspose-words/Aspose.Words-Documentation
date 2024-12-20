﻿---
title: โหมดFIPS
second_title: Aspose.WordsสำหรับJava
articleTitle: โหมดFIPS
linktitle: โหมดFIPS
description: "Aspose.WordsสำหรับJavaใช้อัลกอริทึมการเข้ารหัสและแฮหลายอย่างเมื่อประมวลผลเอกสารเพื่อให้สอดคล้องกับมาตรฐานFIPS."
type: docs
weight: 80
url: /th/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Wordsใช้อัลกอริทึมการเข้ารหัสและแฮหลายอย่างเมื่อประมวลผลเอกสารและบทความนี้อธิบายถึงวิธีการที่เกี่ยวข้องกับมาตรฐานFIPS.

มาตรฐานการประมวลผลข้อมูลของรัฐบาลกลาง(FIPS)เป็นชุดของมาตรฐานที่เผยแพร่อย่างเปิด.

## BouncyCastleเพื่อช่วยเหลือ

Aspose.WordsสำหรับJavaและAspose.WordsสำหรับAndroidใช้ปราสาทเด้งFIPSJARสำหรับการเข้ารหัสถอดรหัสและลงนามในเอกสาร JARได้รับการออกแบบและดำเนินการเพื่อให้ตรงกับFIPS140-2 ระดับที่ 1 ความต้องการ.

FIPS140-2 เป็นมาตรฐานความปลอดภัยคอมพิวเตอร์ของรัฐบาลสหรัฐที่ใช้ในการอนุมัติโมดูลการเข้ มาตรฐานนี้ระบุข้อกำหนดด้านความปลอดภัยที่จะได้รับความพึงพอใจโดยโมดูลการเข้ารหั สำหรับรายละเอียดเพิ่มเติมเกี่ยวกับFIPS140-2 โปรดดูที่ [NISTสิ่งพิมพ์](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Wordsสำหรับ.NETใช้รุ่นปราสาทเด้งทั่วไปโดยไม่มีการสนับสนุนสำหรับFIPS.

## การเปิดใช้งานโหมดFIPS

เริ่มต้นจากรุ่น18.10Aspose.Wordsจะช่วยให้การทำงานในสองโหมด:ทั่วไปและFIPS.

โดยค่าเริ่มต้นAspose.Wordsทำงานในโหมดทั่วไปจึงไม่มีข้อจำกัดในการใช้อัลกอริทึมและคีย์ในกรณีนี้.

คุณสามารถสลับAspose.Wordsจากโหมดทั่วไปเป็นโหมดFIPSโดยใช้วิธีการต่อไปนี้:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

ลอดภัยที่คุณไม่สามารถเปลี่ยนโหมดกลับไปทั่วไปที่รันไทม์.

นอกจากนี้โปรดทราบว่าAspose.Wordsไม่สามารถรับรู้โดยอัตโนมัติว่าระบบปฏิบัติการของคุณอยู่ในโหมดFIPSดังนั้นคุณต้องสลับโหมดAspose.WordsไปยังFIPSอย่างชัดเจน

ใช้วิธีการต่อไปนี้เพื่อให้แน่ใจว่าAspose.WordsสำหรับJavaอยู่ในโหมดFIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

เมื่อโหมดFIPSเปิดอยู่คำแอสโพสจะป้องกันไม่ให้คุณใช้อัลกอริทึมการเข้ารหัสลับและคีย์บางอย่า.

ตัวอย่างเช่นเมื่อพยายามเปิดเอกสารที่เข้ารหัสODTขณะที่โหมดFIPSกำลังทำงานอยู่คุณอาจเห็นข้อยกเว้นต่อไปนี้:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException:ความพยายามที่จะเปิดแฟ้มODTซึ่งใช้อัลกอริทึมปลาปักเป้า อัลกอริทึมนี้ไม่ได้อยู่ในรายการอัลกอริทึมที่ได้รับการอนุมัติFIPS.

{{% /alert %}}

นี้เกิดขึ้นเนื่องจากอัลกอริทึมปลาปักเป้าไม่ได้อยู่ในรายการอัลกอริทึมที่ได้รับการอนุมัติFIPS.

ข้อยกเว้นที่คล้ายกันอาจเกิดขึ้นถ้าคีย์ของความยาวที่ไม่เหมาะสมจะใช้:

UnapprovedSecurityOperationException:คุณไม่สามารถใช้คีย์ที่มีขนาด 1024 สำหรับRSAในโหมดFIPS.

สำหรับรายละเอียดเพิ่มเติมในรายการอัลกอริทึมที่ได้รับการอนุมัติโปรดดูที่ [BouncyCastleคู่มือผู้ใช้](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf)"อัลกอริทึมการเข้ารหัส(สมมาตร)".


