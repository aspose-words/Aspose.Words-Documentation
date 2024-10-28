---
title: การทำงานกับส่วนในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับส่วน
linktitle: การทำงานกับส่วน
description: "การทำความเข้าใจแนวคิดส่วนเอกสารและการปฏิบัติในการจัดการโดยใช้C++ แทรกส่วนลงในเอกสารC++ ลบส่วนC++ คัดลอกส่วนระหว่างเอกสาร."
type: docs
weight: 120
url: /th/cpp/working-with-sections/
---

บางครั้งคุณต้องการเอกสารที่ไม่มีการจัดรูปแบบเดียวกันในทุกหน้า ตัวอย่างเช่นคุณอาจจำเป็นต้องปรับเปลี่ยนรูปแบบหมายเลขหน้ามีขนาดและการวางแนว คุณสามารถบรรลุที่มีส่วน.

ส่วนคือโหนดระดับที่ควบคุมส่วนหัวและท้ายกระดาษการวางแนวคอลัมน์ขอบการจัดรูปแบบหม.

Aspose.Wordsอนุญาตให้คุณจัดการส่วนแบ่งเอกสารออกเป็นส่วนและทำการเปลี่ยนแปลงการจัดรูปแบบ Aspose.Wordsจัดเก็บข้อมูลเกี่ยวกับการจัดรูปแบบส่วนเช่นส่วนหัวและท้ายกระดาษการตั้งค่าหน้าเว็บแ.

บทความนี้อธิบายวิธีการทำงานกับส่วนและตัวแบ่งส่วน.

## สิ่งที่แบ่งส่วนและส่วนคือ

ส่วนเอกสารจะแสดงโดยชั้นเรียน[Section](https://reference.aspose.com/words/cpp/aspose.words/section/)และ[SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/) วัตถุส่วนเป็นเด็กทันทีของโหนด[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)และสามารถเข้าถึงได้ผ่านทางคุณสมบัติ[Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) คุณสามารถจัดการโหนดเหล่านั้นได้โดยใช้วิธีการบางอย่างเช่น[Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), และอื่นๆ.

แบ่งส่วนเป็นตัวเลือกที่แบ่งหน้าเอกสารออกเป็นส่วนที่มีรูปแบบที่ปรับแต่งได้.

## ประเภทของการแบ่งส่วน

Aspose.Wordsช่วยให้คุณสามารถแยกและจัดรูปแบบเอกสารโดยใช้ส่วนแบ่งที่แตกต่างกันของการแจงนับ[BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

คุณยังสามารถใช้การแจงนับ[SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/)เพื่อเลือกประเภทการหยุดพักที่ใช้ได้เฉพาะส่วนแรกเช่นNewColumn, NewPage, EvenPage, และOddPage.

## จัดการส่วน

เนื่องจากส่วนคือโหนดคอมโพสิตปกติการจัดการโหนดทั้งหมดAPIสามารถใช้เพื่อจัดการส่วน:เพิ่ คุณสามารถอ่านเพิ่มเติมเกี่ยวกับโหนดในบทความ [Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)](/words/cpp/aspose-words-document-object-model/).

ในทางกลับกันคุณยังสามารถใช้`DocumentBuilder`APIเพื่อทำงานกับส่วนต่างๆได้ ในบทความนี้เราจะมุ่งเน้นไปที่วิธีนี้โดยเฉพาะอย่างยิ่งของการทำงานกับส่วน.

## แทรกหรือลบตัวแบ่งส่วน

Aspose.Wordsช่วยให้คุณสามารถแทรกการแบ่งส่วนลงในข้อความโดยใช้วิธีการ[InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกแบ่งส่วนในเอกสาร:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

ใช้วิธีการ[Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/)เพื่อลบตัวแบ่งส่วน หากคุณไม่จำเป็นต้องลบตัวแบ่งส่วนที่เฉพาะเจาะจงและลบเนื้อหาของส่วนนั้นแทน,คุณสามารถใช้วิธีการ[ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาตัวแบ่งส่วน:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

โปรดทราบว่าการแบ่งส่วนมีข้อมูลเกี่ยวกับส่วนที่ไปก่อนหน้านี้ไม่ได้เป็นส่วนที่ไปหลังจากที่ ดังนั้นถ้าคุณลบตัวแบ่งส่วน,ข้อความก่อนที่จะแบ่งออกจะได้รับคุณสมบัติของการแบ่งส่วนต่อไ มารถทำให้เอกสารทั้งหมดกลายเป็นแนวนอนหรือส่วนหัวและท้ายกระดาษมีการเปลี่ยนแป.

{{% /alert %}}

## ย้ายส่วน

ถ้าคุณต้องการย้ายส่วนจากตำแหน่งหนึ่งไปยังอีกตำแหน่งหนึ่งในเอกสารของคุณคุณจำเป็นต้ Aspose.Wordsช่วยให้คุณสามารถรับตำแหน่งส่วนจาก[SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/) คุณสามารถใช้คุณสมบัติ[Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/)เพื่อรับส่วนทั้งหมดในเอกสารของคุณ แต่ถ้าคุณต้องการรับเฉพาะส่วนแรกคุณสามารถใช้คุณสมบัติ[FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเข้าถึงส่วนแรกและทำซ้ำผ่านเด็กของโหนดคอมโพสิต:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## ระบุเค้าโครงส่วน

บางครั้งคุณต้องการให้เอกสารของคุณดูดีขึ้นด้วยการสร้างโครงร่างที่สร้างสรรค์สำหรับส่ หากคุณต้องการระบุประเภทของตารางส่วนปัจจุบันคุณสามารถเลือกโหมดเค้าโครงส่วนโดยใช้การแจงนับ[SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- ค่าปริยาย
- กริด
- LineGrid
- SnapToChars

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีจำกัดจำนวนบรรทัดที่แต่ละหน้าอาจมี:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## แก้ไขส่วน

เมื่อคุณเพิ่มส่วนใหม่ในเอกสารของคุณจะไม่มีเนื้อความหรือย่อหน้าที่คุณสามารถแก้ไขได้ Aspose.Wordsช่วยให้คุณสามารถรับประกันได้ว่าส่วนที่มีเนื้อความที่มีอย่างน้อยหนึ่งย่อหน้าโดยใช้วิธีการ[EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/)–มันจะเพิ่มโหนดเนื้อความ(หรือHeaderFooter)ลงในเอกสารโดยอัตโนมัติและเพิ่มย่อหน้าลงไป.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเตรียมโหนดส่วนใหม่โดยใช้**EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### ผนวกหรือลอกเนื้อหา

ถ้าคุณต้องการวาดรูปร่างหรือเพิ่มข้อความหรือรูปภาพที่จุดเริ่มต้น/จุดสิ้นสุดของส่วนคุณสามารถใช้วิธีการ[AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/)และ[PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/)ของชั้นเรียน[Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการผนวกเนื้อหาของส่วนที่มีอยู่:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### โคลนส่วน

Aspose.Wordsช่วยให้คุณสามารถทำซ้ำส่วนโดยการสร้างสำเนาเต็มรูปแบบของมันโดยใช้วิธีการ[Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการโคลนส่วนแรกในเอกสารของคุณ:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### คัดลอกส่วนระหว่างเอกสาร

ในบางกรณีคุณอาจมีเอกสารขนาดใหญ่มีหลายส่วนและคุณต้องการคัดลอกเนื้อหาของส่วนจ.

Aspose.Wordsช่วยให้คุณสามารถคัดลอกส่วนระหว่างเอกสารโดยใช้วิธีการ[ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการคัดลอกส่วนระหว่างเอกสาร:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### ทำงานร่วมกับส่วนหัวและส่วนท้าย

กฎพื้นฐานสำหรับการแสดงส่วนหัวหรือส่วนท้ายสำหรับแต่ละส่วนจะค่อนข้างง่าย:

1. ถ้าส่วนไม่ได้มีส่วนหัวของตัวเอง/ส่วนท้ายของบางประเภทแล้วมันจะถูกนำมาจากส่วนก่อนห.
2. ประเภทของส่วนหัว/ส่วนท้ายที่แสดงบนหน้าจะถูกควบคุมโดย"หน้าแรกที่แตกต่างกัน"และ"หน้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้าง2ส่วนที่มีส่วนหัวที่แตกต่างกัน:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

ถ้าคุณต้องการลบข้อความของส่วนหัวและท้ายกระดาษโดยไม่ต้องลบ[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)วัตถุในเอกสารของคุณคุณสามารถใช้วิธีการ[ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/) นอกจากนี้คุณสามารถใช้วิธีการ[DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/)เพื่อลบรูปร่างทั้งหมดออกจากส่วนหัวและท้ายกระดาษในเ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการล้างเนื้อหาของส่วนหัวและท้ายกระดาษทั้งหมดในส่วน:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

ตัวอย่างรหัสต่อไปนี้วิธีการเอารูปร่างทั้งหมดออกจากส่วนหัวท้ายกระดาษทั้งหมดในส่วน:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## ปรับแต่งคุณสมบัติของเพจในส่วน

ก่อนที่จะพิมพ์หน้าหรือเอกสารคุณอาจต้องการปรับแต่งและปรับเปลี่ยนขนาดและเค้าโครงข ด้วยการตั้งค่าหน้าคุณสามารถเปลี่ยนการตั้งค่าของหน้าเอกสารเช่นระยะขอบการวางแนว.

Aspose.Wordsอนุญาตให้คุณปรับแต่งคุณสมบัติของเพจและส่วนโดยใช้คลาสของ[PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติเช่นขนาดหน้าและการวางแนวสำหรับส่วน:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแก้ไขคุณสมบัติของเพจในทุกส่วน:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## ดูเพิ่มเติม

- [ระดับตรรกะของโหนดในเอกสาร](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [แทรกและผนวกเอกสาร](/words/cpp/insert-and-append-documents/)