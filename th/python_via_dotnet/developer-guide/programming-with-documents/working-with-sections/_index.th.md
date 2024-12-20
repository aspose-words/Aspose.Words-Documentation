---
title: การทำงานกับส่วนต่างๆ ใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับส่วนต่างๆ
linktitle: การทำงานกับส่วนต่างๆ
description: "สร้างและจัดการส่วนและตัวแบ่งส่วนในเอกสารโดยใช้ Python แทรกส่วนลงในเอกสาร Python ลบส่วน Python คัดลอกส่วนระหว่างเอกสาร"
type: docs
weight: 120
url: /th/python-net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

บางครั้งคุณต้องการเอกสารที่ไม่มีการจัดรูปแบบเหมือนกันในทุกหน้า ตัวอย่างเช่น คุณอาจต้องแก้ไขรูปแบบหมายเลขหน้า มีขนาดหน้าและการวางแนวที่แตกต่างกัน หรือมีเอกสารหน้าแรกเป็นหน้าปกโดยไม่มีหมายเลขใดๆ คุณสามารถบรรลุเป้าหมายนั้นได้ด้วยส่วนต่างๆ

ส่วนต่างๆ คือโหนดระดับที่ควบคุมหัวกระดาษและท้ายกระดาษ การวางแนว คอลัมน์ ระยะขอบ การจัดรูปแบบหมายเลขหน้า และอื่นๆ

Aspose.Words ช่วยให้คุณจัดการส่วนต่างๆ แบ่งเอกสารออกเป็นส่วนๆ และทำการเปลี่ยนแปลงการจัดรูปแบบที่ใช้กับส่วนใดส่วนหนึ่งเท่านั้น Aspose.Words จัดเก็บข้อมูลเกี่ยวกับการจัดรูปแบบส่วนต่างๆ เช่น ส่วนหัวและส่วนท้าย การตั้งค่าหน้า และการตั้งค่าคอลัมน์ในตัวแบ่งส่วน

บทความนี้จะอธิบายวิธีการทำงานกับส่วนและตัวแบ่งส่วน

## ตัวแบ่งส่วนและส่วนคืออะไร

ส่วนเอกสารจะแสดงด้วยคลาส [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) และ [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) ออบเจ็กต์ส่วนเป็นรายการย่อยของโหนด [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) และสามารถเข้าถึงได้ผ่านคุณสมบัติ [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) คุณสามารถจัดการโหนดเหล่านั้นได้โดยใช้วิธีการบางอย่าง เช่น [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node) และอื่นๆ

ตัวแบ่งส่วนเป็นตัวเลือกที่แบ่งหน้าเอกสารออกเป็นส่วนต่างๆ ด้วยเค้าโครงที่ปรับแต่งได้

## ประเภทของตัวแบ่งส่วน

Aspose.Words ช่วยให้คุณสามารถแยกและจัดรูปแบบเอกสารโดยใช้ตัวแบ่งส่วนต่างๆ ของการแจงนับ [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/):

- SectionBreak ต่อเนื่อง
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

คุณยังสามารถใช้การแจงนับ [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) เพื่อเลือกประเภทตัวแบ่งที่ใช้เฉพาะกับส่วนแรกเท่านั้น เช่น NewColumn, NewPage, EvenPage และ OddPage

## จัดการส่วน

เนื่องจากส่วนเป็นโหนดคอมโพสิตปกติ การจัดการโหนดทั้งหมด API จึงสามารถใช้เพื่อจัดการส่วนต่างๆ ได้ เพื่อเพิ่ม ลบ และการดำเนินการอื่นๆ บนส่วนต่างๆ คุณสามารถอ่านเพิ่มเติมเกี่ยวกับโหนดได้ในบทความ [Aspose.Words Document Object Model (DOM)](/words/th/python-net/aspose-words-document-object-model/)

ในทางกลับกัน คุณยังสามารถใช้ `DocumentBuilder` API เพื่อทำงานกับส่วนต่างๆ ได้ ในบทความนี้ เราจะเน้นไปที่วิธีการทำงานกับส่วนต่างๆ โดยเฉพาะ

## แทรกหรือลบตัวแบ่งส่วน

Aspose.Words ช่วยให้คุณสามารถแทรกตัวแบ่งส่วนลงในข้อความโดยใช้วิธี [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกตัวแบ่งส่วนลงในเอกสาร:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

ใช้วิธี [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) เพื่อลบตัวแบ่งส่วน ถ้าคุณไม่ต้องการเอาตัวแบ่งส่วนใดส่วนหนึ่งออกและลบเนื้อหาของส่วนนั้นแทน คุณสามารถใช้วิธี [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบตัวแบ่งส่วน:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

โปรดทราบว่าตัวแบ่งส่วนจะมีข้อมูลเกี่ยวกับส่วนที่อยู่ก่อนหน้า ไม่ใช่ส่วนที่อยู่หลังส่วนนั้น ดังนั้น หากคุณลบตัวแบ่งส่วน ข้อความก่อนตัวแบ่งที่ถูกลบจะได้รับคุณสมบัติของตัวแบ่งส่วนตามนั้น ซึ่งอาจทำให้เอกสารทั้งหมดกลายเป็นแนวนอน หรือส่วนหัวและส่วนท้ายเปลี่ยนแปลงหรือหายไปทั้งหมด

{{% /alert %}}

## ย้ายส่วน

หากคุณต้องการย้ายส่วนจากตำแหน่งหนึ่งไปยังอีกตำแหน่งหนึ่งในเอกสารของคุณ คุณจะต้องได้รับดัชนีของส่วนนั้น Aspose.Words ช่วยให้คุณได้รับตำแหน่งส่วนจาก [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) คุณสามารถใช้คุณสมบัติ [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) เพื่อรับส่วนทั้งหมดในเอกสารของคุณได้ แต่ถ้าคุณต้องการรับเฉพาะส่วนแรก คุณสามารถใช้คุณสมบัติ [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเข้าถึงส่วนแรกและวนซ้ำผ่านลูกของโหนดคอมโพสิต:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## ระบุเค้าโครงส่วน

บางครั้งคุณต้องการให้เอกสารของคุณดูดีขึ้นด้วยการสร้างเค้าโครงที่สร้างสรรค์สำหรับส่วนต่างๆ ของเอกสาร หากคุณต้องการระบุประเภทของตารางส่วนปัจจุบัน คุณสามารถเลือกโหมดเค้าโครงส่วนได้โดยใช้การแจงนับ [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/):

- ค่าเริ่มต้น
- กริด
-ไลน์กริด
- SnapToChars

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการจำกัดจำนวนบรรทัดที่แต่ละเพจอาจมี:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## แก้ไขส่วน

เมื่อคุณเพิ่มส่วนใหม่ลงในเอกสารของคุณ จะไม่มีเนื้อหาหรือย่อหน้าที่คุณสามารถแก้ไขได้ Aspose.Words ช่วยให้คุณรับประกันได้ว่าส่วนต่างๆ มีเนื้อหาที่มีอย่างน้อยหนึ่งย่อหน้าโดยใช้วิธี [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) โดยจะเพิ่มโหนด Body (หรือ HeaderFooter) ลงในเอกสารโดยอัตโนมัติ จากนั้นจึงเพิ่มย่อหน้าลงไป

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเตรียมโหนดส่วนใหม่โดยใช้ **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### ผนวกหรือเติมเนื้อหา

หากคุณต้องการวาดรูปร่างหรือเพิ่มข้อความหรือรูปภาพที่จุดเริ่มต้น/จุดสิ้นสุดของส่วน คุณสามารถใช้วิธี [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) และ [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) ของคลาส [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการผนวกเนื้อหาของส่วนที่มีอยู่:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### โคลนส่วน

Aspose.Words ช่วยให้คุณสามารถทำซ้ำส่วนได้โดยสร้างสำเนาแบบเต็มโดยใช้วิธี [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการโคลนส่วนแรกในเอกสารของคุณ:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### คัดลอกส่วนระหว่างเอกสาร

ในบางกรณี คุณอาจมีเอกสารขนาดใหญ่ที่มีหลายส่วน และคุณต้องการคัดลอกเนื้อหาของส่วนจากเอกสารหนึ่งไปยังอีกเอกสารหนึ่ง

Aspose.Words ช่วยให้คุณสามารถคัดลอกส่วนต่างๆ ระหว่างเอกสารโดยใช้วิธี [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการคัดลอกส่วนระหว่างเอกสาร:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### ทำงานกับส่วนหัวและส่วนท้ายของส่วน

กฎพื้นฐานสำหรับการแสดงส่วนหัวหรือส่วนท้ายสำหรับแต่ละส่วนนั้นค่อนข้างง่าย:

1. หากส่วนนั้นไม่มีส่วนหัว/ส่วนท้ายเป็นของตัวเองบางประเภท ก็จะถูกนำมาจากส่วนก่อนหน้า
2. ประเภทของส่วนหัว/ส่วนท้ายที่แสดงบนเพจจะถูกควบคุมโดยการตั้งค่าส่วน "หน้าแรกต่างกัน" และ "หน้าคี่และคู่ต่างกัน" หากปิดใช้งาน ชื่อเรื่องของส่วนนั้นจะถูกละเว้น

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้าง 2 ส่วนที่มีส่วนหัวต่างกัน:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

หากคุณต้องการลบข้อความของส่วนหัวและส่วนท้ายโดยไม่ต้องลบวัตถุ [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) ในเอกสารของคุณ คุณสามารถใช้วิธี [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) นอกจากนี้ คุณสามารถใช้วิธี [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) เพื่อลบรูปร่างทั้งหมดออกจากหัวกระดาษและท้ายกระดาษในเอกสารของคุณ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการล้างเนื้อหาของส่วนหัวและส่วนท้ายทั้งหมดในส่วน:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

ตัวอย่างโค้ดต่อไปนี้วิธีการลบรูปร่างทั้งหมดออกจากส่วนท้ายของส่วนหัวทั้งหมดในส่วน:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## ปรับแต่งคุณสมบัติของเพจในส่วน

ก่อนที่จะพิมพ์หน้าหรือเอกสาร คุณอาจต้องการปรับแต่งและปรับเปลี่ยนขนาดและเค้าโครงของหน้าเดียวหรือทั้งเอกสาร ด้วยการตั้งค่าหน้า คุณสามารถเปลี่ยนการตั้งค่าของหน้าเอกสาร เช่น ระยะขอบ การวางแนว และขนาดสำหรับการพิมพ์หน้าแรกหรือหน้าคี่ที่แตกต่างกัน

Aspose.Words ช่วยให้คุณปรับแต่งคุณสมบัติของหน้าและส่วนโดยใช้คลาส [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติเช่นขนาดหน้าและการวางแนวสำหรับส่วนปัจจุบัน:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแก้ไขคุณสมบัติของเพจในทุกส่วน:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## ดูสิ่งนี้ด้วย

- [ระดับลอจิคัลของโหนดในเอกสาร](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [แทรกและผนวกเอกสาร](/words/th/python-net/insert-and-append-documents/)
