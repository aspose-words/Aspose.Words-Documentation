---
title: แทรกและต่อท้ายเอกสารในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: แทรกและผนวกเอกสาร
linktitle: แทรกและผนวกเอกสาร
description: "รวมเอกสารเป็นหนึ่ง:แทรกหรือผนวกเอกสารลงในใหม่หรือที่มีอยู่โดยใช้การค้นหาและแท."
type: docs
weight: 80
url: /th/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

บางครั้งก็จะต้องรวมเอกสารหลายเป็นหนึ่ง คุณสามารถทำเช่นนี้ด้วยตนเองหรือคุณสามารถใช้คุณลักษณะแทรกAspose.Wordsหรือต่อท้าย.

การดำเนินการแทรกช่วยให้คุณสามารถแทรกเนื้อหาของเอกสารที่สร้างไว้ก่อนหน้านี้ลงใ.

ในทางกลับกันคุณลักษณะภาคผนวกช่วยให้คุณสามารถเพิ่มเอกสารเฉพาะที่ส่วนท้ายของเอ.

บทความนี้อธิบายวิธีการแทรกหรือต่อท้ายเอกสารไปยังอีกหนึ่งวิธีอื่นและอธิบายถึงคุณสมบั.

## แทรกเอกสาร

ดังกล่าวข้างต้นในAspose.Wordsเอกสารจะแสดงเป็นต้นไม้ของโหนดและการดำเนินงานของการแทรก.

คุณสามารถแทรกเอกสารในสถานที่ต่างๆได้หลายรูปแบบ ตัวอย่างเช่นคุณสามารถแทรกเอกสารผ่านการดำเนินการแทนที่ฟิลด์ผสานระหว่างการ.

คุณยังสามารถใช้วิธีการ[InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/)ซึ่งคล้ายกับการแทรกเอกสารในMicrosoft Wordเพื่อแทรกเอกสารทั้งหมดที่ตำแ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเอกสารโดยใช้วิธีการ`InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

ย่อยต่อไปนี้อธิบายตัวเลือกในระหว่างที่คุณสามารถแทรกเอกสารหนึ่งไปยังอีก.

### แทรกเอกสารระหว่างการค้นหาและแทนที่การทำงาน{#insert-a-document-during-find-and-replace-operation}

คุณสามารถแทรกเอกสารขณะดำเนินการค้นหาและแทนที่การดำเนินงาน ตัวอย่างเช่นเอกสารสามารถประกอบด้วยย่อหน้าที่มีข้อความ[INTRODUCTION]และ[CONCLUSION] แต่ในเอกสารสุดท้ายคุณจะต้องเปลี่ยนย่อหน้าเหล่านั้นด้วยเนื้อหาที่ได้รับจากเอกสารภายนอกอื่น เพื่อให้บรรลุว่า,คุณจะต้องสร้างตัวจัดการสำหรับเหตุการณ์แทนที่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตัวจัดการสำหรับเหตุการณ์แทนที่จะใช้ในภายหลังใ:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเนื้อหาของเอกสารหนึ่งไปยังอีกในระหว่างการค้น:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### แทรกเอกสารระหว่างการทำงานMail Merge{#insert-a-document-during-mail-merge-operation}

คุณสามารถแทรกเอกสารลงในฟิลด์ผสานระหว่างการดำเนินการmail merge ตัวอย่างเช่นเทมเพลตmail mergeสามารถมีฟิลด์ผสานเช่น[สรุป] แต่ในเอกสารสุดท้ายคุณต้องแทรกเนื้อหาที่ได้รับจากเอกสารภายนอกอื่นลงในฟิลด์นี้ผสาน เพื่อให้บรรลุที่,คุณจะต้องสร้างตัวจัดการสำหรับเหตุการณ์ผสาน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตัวจัดการสำหรับเหตุการณ์การรวมการใช้ในภายห:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเอกสารลงในฟิลด์ผสานโดยใช้ตัวจัดการที่สร้างขึ้น:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### แทรกเอกสารที่บุ๊กมาร์ก

คุณสามารถนำเข้าแฟ้มข้อความลงในเอกสารและแทรกทันทีหลังจากที่บุ๊กมาร์กที่คุณได้กำหน เมื่อต้องการทำเช่นนี้สร้างย่อหน้าที่คั่นหน้าที่คุณต้องการแทรกเอกสาร.

ตัวอย่างการเข้ารหัสต่อไปนี้แสดงวิธีการแทรกเนื้อหาของเอกสารหนึ่งไปยังคั่นหน้าในเอก:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

โปรดทราบว่าบุ๊กมาร์กไม่ควรใส่หลายย่อหน้าหรือข้อความที่คุณต้องการให้ปรากฏในเอกสา.

{{% /alert %}}

## ต่อท้ายเอกสาร

คุณอาจมีกรณีการใช้งานที่คุณต้องการรวมหน้าเพิ่มเติมจากเอกสารไปยังจุดสิ้นสุดของเอก การทำเช่นนี้,คุณเพียงแค่ต้องเรียกวิธีการ[AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/)เพื่อเพิ่มเอกสารไปยังจุดสิ้นสุดของอีกคนหนึ่ง.

{{% alert color="primary" %}}

โปรดทราบว่า [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) เป็นวิธีระดับโหนดภายในเอกสาร ตัวอย่างเช่น คุณสามารถสร้างย่อหน้า ตั้งค่าคุณสมบัติการจัดรูปแบบ จากนั้นผนวกย่อหน้าดังกล่าวเป็นย่อหน้าย่อยในเนื้อหาโดยใช้วิธี **AppendChild**.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการต่อท้ายเอกสารไปยังจุดสิ้นสุดของเอกสารอื่น:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## นำเข้าและแทรกโหนดด้วยตนเอง{#import-and-insert-nodes-manually}

Aspose.Wordsช่วยให้คุณสามารถแทรกและผนวกเอกสารโดยอัตโนมัติโดยไม่มีข้อกำหนดการนำเข้าก่อนหน้านี้ อย่างไรก็ตามถ้าคุณต้องการแทรกหรือต่อท้ายโหนดเฉพาะของเอกสารของคุณเช่นส่วนหรื.

เมื่อคุณต้องการแทรกหรือต่อท้ายส่วนหรือย่อหน้าหนึ่งไปยังอีกส่วนหนึ่งคุณจะต้องอิมพอร์ตโหนดของโครงสร้างโหนดเอกสารแรกลงในโหนดที่สองโดยใช้วิธีการ[ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/) หลังจากอิมพอร์ตโหนดของคุณคุณต้องใช้วิธีการ[InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/)เพื่อแทรกโหนดใหม่หลัง/ก่อนโหนดอ้างอิง นี้ช่วยให้คุณสามารถกำหนดกระบวนการแทรกโดยการอิมพอร์ตโหนดจากเอกสารและแทรก.

นอกจากนี้คุณยังสามารถใช้วิธีการ[AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/)เพื่อเพิ่มโหนดที่ระบุใหม่ในตอนท้ายของรายการของโหนด.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีอิมพอร์ตโหนดด้วยตนเองและแทรกโหนดเหล่านี้หลังจากโหนดที่เฉพาะเจาะจงโดยใช้วิธีการ**InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

การอิมพอร์ตสร้างโหนดใหม่ที่เป็นสำเนาของโหนดต้นฉบับและเหมาะสำหรับการแทรกลงใ.

{{% /alert %}}

เนื้อหาจะถูกนำเข้าในส่วนเอกสารปลายทางตามส่วนซึ่งหมายความว่าการตั้งค่าเช่นการ นอกจากนี้ยังมีประโยชน์ที่จะทราบว่าคุณสามารถกำหนดการตั้งค่าการจัดรูปแบบเมื่อคุณแท.

## คุณสมบัติทั่วไปสำหรับแทรกและผนวกเอกสาร{#common-properties-for-insert-and-append-documents}

ทั้ง[InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/)และ [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) วิธียอมรับ[ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/)และ[ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/)เป็นพารามิเตอร์อินพุต **ImportFormatMode**ช่วยให้คุณสามารถควบคุมวิธีการรวมการจัดรูปแบบเอกสารเมื่อคุณนำเข้าเนื้อหาจากเอกสารหนึ่งไปยังอีกเอกสารหนึ่งโดยการเลือกโหมดรูปแบบต่างๆเช่น[UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/),[KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/)และ[KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) **ImportFormatOptions**ช่วยให้คุณสามารถเลือกตัวเลือกการนำเข้าที่แตกต่างกันเช่น[IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), และ[SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Wordsช่วยให้คุณสามารถปรับการแสดงภาพของเอกสารที่เกิดขึ้นเมื่อเอกสารสองฉบับถูกเพิ่มเข้าด้วยกันในการแทรกหรือต่อท้ายการทำงานโดยใช้คุณสมบัติ[Section](https://reference.aspose.com/words/cpp/aspose.words/section/)และ[PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup) คุณสมบัติ**PageSetup**มีคุณลักษณะทั้งหมดของส่วนเช่น[SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), และอื่นๆ กรณีการใช้งานที่พบบ่อยที่สุดคือการตั้งค่าคุณสมบัติ**SectionStart**เพื่อกำหนดว่าเนื้อหาที่เพิ่มจะปรากฏใน.

{{% alert color="primary" %}}

โปรดทราบว่าคุณสมบัติ**Section**และ**PageSetup**ไม่สามารถควบคุมวิธีการแทรกเอกสารสอง/ต่อท้ายเข้าด้วยกัน ยนรูปลักษณ์ของเอกสารผลลัพธ์ของคุณเท่านั้น.

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการต่อท้ายเอกสารหนึ่งไปยังอีกในขณะที่รักษาเนื้อหาจากกา:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
