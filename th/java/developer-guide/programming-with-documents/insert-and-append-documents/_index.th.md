---
title: แทรกและต่อท้ายเอกสารในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: แทรกและผนวกเอกสาร
linktitle: แทรกและผนวกเอกสาร
description: "รวมเอกสารเข้าด้วยกัน:แทรกหรือต่อท้ายเอกสารลงในใหม่หรือที่มีอยู่โดยใช้การค้นหาและแทนที่,ผสาน,บุ๊กมาร์ก,หรือเพียงแค่ที่สิ้นสุดของเอกสารในJava."
type: docs
weight: 80
url: /th/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

บางครั้งก็จะต้องรวมเอกสารหลายเป็นหนึ่ง คุณสามารถทำเช่นนี้ด้วยตนเองหรือคุณสามารถใช้คุณลักษณะแทรกAspose.Wordsหรือต่อท้าย.

การดำเนินการแทรกช่วยให้คุณสามารถแทรกเนื้อหาของเอกสารที่สร้างไว้ก่อนหน้านี้ลงใ.

ในทางกลับกันคุณลักษณะภาคผนวกช่วยให้คุณสามารถเพิ่มเอกสารเฉพาะที่ส่วนท้ายของเอ.

บทความนี้อธิบายวิธีการแทรกหรือต่อท้ายเอกสารไปยังอีกหนึ่งวิธีอื่นและอธิบายถึงคุณสมบั.

## แทรกเอกสาร

ดังกล่าวข้างต้นในAspose.Wordsเอกสารจะแสดงเป็นต้นไม้ของโหนดและการดำเนินงานของการแทรก.

คุณสามารถแทรกเอกสารในสถานที่ต่างๆได้หลายรูปแบบ ตัวอย่างเช่นคุณสามารถแทรกเอกสารผ่านการดำเนินการแทนที่ฟิลด์ผสานระหว่างการ.

นอกจากนี้คุณยังสามารถใช้วิธีการ[InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int)หรือ[InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions)ซึ่งคล้ายกับการแทรกเอกสารในMicrosoft Wordเพื่อแทรกเอกสารทั้งหมดที่ตำแหน่งเคอร์เซอร์ปัจจุบันโดยไม่ต้องนำเข้าก่อนหน้านี้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเอกสารโดยใช้วิธีการ**InsertDocument**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเอกสารโดยใช้วิธีการ**InsertDocumentInline**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

ย่อยต่อไปนี้อธิบายตัวเลือกในระหว่างที่คุณสามารถแทรกเอกสารหนึ่งไปยังอีก.

### แทรกเอกสารระหว่างการค้นหาและแทนที่การทำงาน {#insert-a-document-during-find-and-replace-operation}

คุณสามารถแทรกเอกสารขณะดำเนินการค้นหาและแทนที่การดำเนินงาน ตัวอย่างเช่นเอกสารสามารถประกอบด้วยย่อหน้าที่มีข้อความ[INTRODUCTION]และ[CONCLUSION] แต่ในเอกสารสุดท้ายคุณจะต้องเปลี่ยนย่อหน้าเหล่านั้นด้วยเนื้อหาที่ได้รับจากเอกสารภายนอกอื่น เพื่อให้บรรลุว่า,คุณจะต้องสร้างตัวจัดการสำหรับเหตุการณ์แทนที่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตัวจัดการสำหรับเหตุการณ์แทนที่จะใช้ในภายหลังใ:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเนื้อหาของเอกสารหนึ่งไปยังอีกในระหว่างการค้น:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### แทรกเอกสารระหว่างการทำงานMail Merge {#insert-a-document-during-mail-merge-operation}

คุณสามารถแทรกเอกสารลงในฟิลด์ผสานระหว่างการดำเนินการMail Merge ตัวอย่างเช่นเทมเพลตMail Mergeสามารถมีฟิลด์ผสานเช่น[สรุป] แต่ในเอกสารสุดท้ายคุณต้องแทรกเนื้อหาที่ได้รับจากเอกสารภายนอกอื่นลงในฟิลด์นี้ผสาน เพื่อให้บรรลุที่,คุณจะต้องสร้างตัวจัดการสำหรับเหตุการณ์ผสาน.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างตัวจัดการสำหรับเหตุการณ์การรวมการใช้ในภายห:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเอกสารลงในฟิลด์ผสานโดยใช้ตัวจัดการที่สร้างขึ้น:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### แทรกเอกสารที่บุ๊กมาร์ก

คุณสามารถนำเข้าแฟ้มข้อความลงในเอกสารและแทรกทันทีหลังจากที่บุ๊กมาร์กที่คุณได้กำหน เมื่อต้องการทำเช่นนี้สร้างย่อหน้าที่คั่นหน้าที่คุณต้องการแทรกเอกสาร.

ตัวอย่างการเข้ารหัสต่อไปนี้แสดงวิธีการแทรกเนื้อหาของเอกสารหนึ่งไปยังคั่นหน้าในเอก:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

โปรดทราบว่าบุ๊กมาร์กไม่ควรใส่หลายย่อหน้าหรือข้อความที่คุณต้องการให้ปรากฏในเอกสา.

{{% /alert %}}

## ต่อท้ายเอกสาร

คุณอาจมีกรณีการใช้งานที่คุณต้องการรวมหน้าเพิ่มเติมจากเอกสารไปยังจุดสิ้นสุดของเอก การทำเช่นนี้,คุณเพียงแค่ต้องเรียกวิธีการ[AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int)เพื่อเพิ่มเอกสารไปยังจุดสิ้นสุดของอีกคนหนึ่ง.

{{% alert color="primary" %}}

โปรดทราบว่า [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) เป็นวิธีระดับโหนดภายในเอกสาร ตัวอย่างเช่น คุณสามารถสร้างย่อหน้า ตั้งค่าคุณสมบัติการจัดรูปแบบ จากนั้นผนวกย่อหน้าดังกล่าวเป็นย่อหน้าย่อยในเนื้อหาโดยใช้วิธี **AppendChild**.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการต่อท้ายเอกสารไปยังจุดสิ้นสุดของเอกสารอื่น:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## นำเข้าและแทรกโหนดด้วยตนเอง {#import-and-insert-nodes-manually}

Aspose.Wordsช่วยให้คุณสามารถแทรกและผนวกเอกสารโดยอัตโนมัติโดยไม่มีข้อกำหนดการนำเข้าก่อนหน้านี้ อย่างไรก็ตามถ้าคุณต้องการแทรกหรือต่อท้ายโหนดเฉพาะของเอกสารของคุณเช่นส่วนหรื.

เมื่อคุณต้องการแทรกหรือต่อท้ายส่วนหรือย่อหน้าหนึ่งไปยังอีกส่วนหนึ่งคุณจะต้องอิมพอร์ตโหนดของแผนผังโหนดเอกสารแรกเป็นโหนดที่สองโดยใช้วิธีการ[ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) หลังจากอิมพอร์ตโหนดของคุณคุณต้องใช้วิธีการ[InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node)เพื่อแทรกโหนดใหม่หลัง/ก่อนโหนดอ้างอิง นี้ช่วยให้คุณสามารถกำหนดกระบวนการแทรกโดยการอิมพอร์ตโหนดจากเอกสารและแทรก.

นอกจากนี้คุณยังสามารถใช้วิธีการ[AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node)เพื่อเพิ่มโหนดที่ระบุใหม่ในตอนท้ายของรายการของโหนด.

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีอิมพอร์ตโหนดด้วยตนเองและแทรกโหนดเหล่านี้หลังจากโหนดที่เฉพาะเจาะจงโดยใช้วิธีการ**InsertAfter**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

การอิมพอร์ตสร้างโหนดใหม่ที่เป็นสำเนาของโหนดต้นฉบับและเหมาะสำหรับการแทรกลงใ.

{{% /alert %}}

เนื้อหาจะถูกนำเข้าในส่วนเอกสารปลายทางตามส่วนซึ่งหมายความว่าการตั้งค่าเช่นการ นอกจากนี้ยังมีประโยชน์ที่จะทราบว่าคุณสามารถกำหนดการตั้งค่าการจัดรูปแบบเมื่อคุณแท.

## คุณสมบัติทั่วไปสำหรับแทรกและผนวกเอกสาร {#common-properties-for-insert-and-append-documents}

ทั้งวิธีการ[InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int)และ[AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int)ยอมรับ[ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/)และ[ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/)เป็นพารามิเตอร์อินพุต **ImportFormatMode**ช่วยให้คุณสามารถควบคุมวิธีการรวมการจัดรูปแบบเอกสารเมื่อคุณนำเข้าเนื้อหาจากเอกสารหนึ่งไปยังอีกเอกสารหนึ่งโดยเลือกโหมดรูปแบบต่างๆเช่น[UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES),[KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING)และ[KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES) **ImportFormatOptions**ช่วยให้คุณสามารถเลือกตัวเลือกการนำเข้าที่แตกต่างกันเช่น[IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), และ[SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Wordsช่วยให้คุณสามารถปรับการแสดงภาพของเอกสารที่เกิดขึ้นเมื่อเอกสารสองฉบับถูกเพิ่มเข้าด้วยกันในการแทรกหรือต่อท้ายการทำงานโดยใช้คุณสมบัติ[Section](https://reference.aspose.com/words/java/com.aspose.words/section/)และ[PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) คุณสมบัติ**PageSetup**มีคุณลักษณะทั้งหมดของส่วนเช่น[SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), และอื่นๆ กรณีการใช้งานที่พบบ่อยที่สุดคือการตั้งค่าคุณสมบัติ**SectionStart**เพื่อกำหนดว่าเนื้อหาที่เพิ่มจะปรากฏใน.

{{% alert color="primary" %}}

โปรดทราบว่าคุณสมบัติ**Section**และ**PageSetup**ไม่สามารถควบคุมวิธีการแทรกเอกสารสอง/ต่อท้ายเข้าด้วยกัน ยนรูปลักษณ์ของเอกสารผลลัพธ์ของคุณเท่านั้น.

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการต่อท้ายเอกสารหนึ่งไปยังอีกในขณะที่รักษาเนื้อหาจากกา:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
