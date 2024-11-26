---
title: เปรียบเทียบเอกสารใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: เปรียบเทียบเอกสาร
linktitle: เปรียบเทียบเอกสาร
description: "เปรียบเทียบเอกสารสองฉบับในรูปแบบที่รองรับ และแสดงการเปลี่ยนแปลงเนื้อหาโดยใช้ Python คุณสามารถใช้ตัวเลือกขั้นสูงเมื่อทำการเปรียบเทียบ"
type: docs
weight: 60
url: /th/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

การเปรียบเทียบเอกสารเป็นกระบวนการที่ระบุการเปลี่ยนแปลงระหว่างเอกสารสองฉบับและมีการเปลี่ยนแปลงเป็นการแก้ไข กระบวนการนี้เปรียบเทียบเอกสารสองฉบับใดๆ รวมถึงเวอร์ชันของเอกสารเฉพาะฉบับเดียว จากนั้นการเปลี่ยนแปลงระหว่างเอกสารทั้งสองจะแสดงเป็นการแก้ไขในเอกสารฉบับแรก

วิธีการเปรียบเทียบทำได้โดยการเปรียบเทียบคำในระดับตัวอักษรหรือระดับคำ หากคำมีการเปลี่ยนแปลงอย่างน้อยหนึ่งอักขระ ผลลัพธ์ที่ได้จะแสดงเป็นการเปลี่ยนแปลงของทั้งคำ ไม่ใช่อักขระ กระบวนการเปรียบเทียบนี้เป็นงานปกติในอุตสาหกรรมด้านกฎหมายและการเงิน

แทนที่จะค้นหาความแตกต่างระหว่างเอกสารหรือเวอร์ชันต่างๆ ด้วยตนเอง คุณสามารถใช้ Aspose.Words เพื่อเปรียบเทียบเอกสารและรับการเปลี่ยนแปลงเนื้อหาในรูปแบบ ส่วนหัว/ส่วนท้าย ตาราง และอื่นๆ ได้

บทความนี้อธิบายวิธีการเปรียบเทียบเอกสารและวิธีการระบุคุณสมบัติการเปรียบเทียบขั้นสูง

{{% alert color="primary" %}}

**ลองออนไลน์**

คุณสามารถเปรียบเทียบเอกสารสองฉบับทางออนไลน์ได้โดยใช้เครื่องมือ [การเปรียบเทียบเอกสารออนไลน์](https://products.aspose.app/words/comparison)

โปรดทราบว่าเครื่องมือนี้ใช้วิธีการเปรียบเทียบตามที่อธิบายไว้ด้านล่างเพื่อให้แน่ใจว่าได้รับผลลัพธ์ที่เท่าเทียมกัน ดังนั้นคุณจะได้รับผลลัพธ์เดียวกันแม้จะใช้เครื่องมือเปรียบเทียบออนไลน์หรือโดยใช้วิธีเปรียบเทียบใน Aspose.Words

{{% /alert %}}

## ข้อจำกัดและรูปแบบไฟล์ที่รองรับ {#limitations-and-supported-file-formats}

การเปรียบเทียบเอกสารเป็นคุณลักษณะที่ซับซ้อนมาก การรวมเนื้อหามีหลายส่วนที่ต้องวิเคราะห์เพื่อรับรู้ความแตกต่างทั้งหมด สาเหตุของความซับซ้อนนี้เกิดจากการที่ Aspose.Words มีเป้าหมายเพื่อให้ได้ผลลัพธ์การเปรียบเทียบแบบเดียวกับอัลกอริธึมการเปรียบเทียบ Microsoft Word

ข้อจำกัดทั่วไปสำหรับเอกสารสองฉบับที่จะเปรียบเทียบคือ ต้องไม่มีการแก้ไขก่อนที่จะเรียกวิธีการเปรียบเทียบ เนื่องจากข้อจำกัดนี้มีอยู่ใน Microsoft Word

{{% alert color="primary" %}}

โปรดทราบว่าคุณสามารถเปรียบเทียบเอกสารสองฉบับใดก็ได้ภายใน [รูปแบบเอกสารที่รองรับ](/words/th/python-net/supported-document-formats/) โดยพื้นฐานแล้ว คุณสามารถเปรียบเทียบออบเจ็กต์เอกสารและแม้แต่คุณสามารถสร้างออบเจ็กต์เหล่านั้นตั้งแต่เริ่มต้นโดยไม่ต้องมีรูปแบบเฉพาะใดๆ เลย

{{% /alert %}}

## เปรียบเทียบสองเอกสาร {#compare-two-documents}

เมื่อคุณเปรียบเทียบเอกสาร ความแตกต่างของเอกสารหลังกับเอกสารฉบับแรกจะแสดงเป็นการแก้ไขกับเอกสารฉบับแรก เมื่อคุณแก้ไขเอกสาร การแก้ไขแต่ละครั้งจะมีการแก้ไขของตัวเองหลังจากรันเมธอดการเปรียบเทียบ

Aspose.Words ช่วยให้คุณสามารถระบุความแตกต่างของเอกสารโดยใช้วิธี [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) ซึ่งคล้ายกับคุณลักษณะการเปรียบเทียบเอกสาร Microsoft Word ช่วยให้ตรวจสอบเอกสารหรือเวอร์ชันเอกสารเพื่อค้นหาความแตกต่างและการเปลี่ยนแปลง รวมถึงการปรับเปลี่ยนการจัดรูปแบบ เช่น การเปลี่ยนแบบอักษร การเปลี่ยนระยะห่าง การเพิ่มคำและย่อหน้า

จากผลการเปรียบเทียบสามารถกำหนดเอกสารว่าเท่ากันหรือไม่เท่ากันได้ เอกสารคำว่า "เท่ากัน" หมายความว่าวิธีการเปรียบเทียบไม่สามารถแสดงการเปลี่ยนแปลงเป็นการแก้ไขได้ ซึ่งหมายความว่าทั้งข้อความในเอกสารและการจัดรูปแบบข้อความจะเหมือนกัน แต่อาจมีความแตกต่างอื่นๆ ระหว่างเอกสาร ตัวอย่างเช่น Microsoft Word รองรับเฉพาะการแก้ไขรูปแบบสำหรับสไตล์ และคุณไม่สามารถแสดงถึงการแทรก/การลบสไตล์ได้ ดังนั้นเอกสารจึงสามารถมีชุดรูปแบบที่แตกต่างกันได้ และวิธีการ [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) ยังคงไม่มีการแก้ไข

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตรวจสอบว่าเอกสารสองฉบับเท่ากันหรือไม่:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีใช้วิธี `Compare` กับเอกสารสองฉบับ:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## ระบุคุณสมบัติการเปรียบเทียบขั้นสูง {#specify-advanced-comparing-properties}

มีคุณสมบัติต่างๆ มากมายของคลาส [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) ซึ่งคุณสามารถใช้เมื่อต้องการเปรียบเทียบเอกสาร

ตัวอย่างเช่น Aspose.Words ช่วยให้คุณละเว้นการเปลี่ยนแปลงที่เกิดขึ้นระหว่างการดำเนินการเปรียบเทียบสำหรับออบเจ็กต์บางประเภทภายในเอกสารต้นฉบับ คุณสามารถเลือกคุณสมบัติที่เหมาะสมสำหรับประเภทออบเจ็กต์ เช่น [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) และอื่นๆ ได้โดยการตั้งค่าเป็น `True`

นอกจากนี้ Aspose.Words ยังมีคุณสมบัติ [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) ที่คุณสามารถระบุได้ว่าจะติดตามการเปลี่ยนแปลงตามอักขระหรือตามคำ

คุณสมบัติทั่วไปอีกประการหนึ่งคือตัวเลือกที่เอกสารจะแสดงการเปลี่ยนแปลงการเปรียบเทียบ ตัวอย่างเช่น "กล่องโต้ตอบเปรียบเทียบเอกสาร" ใน Microsoft Word มีตัวเลือก "แสดงการเปลี่ยนแปลงใน" ซึ่งจะส่งผลต่อผลลัพธ์การเปรียบเทียบด้วย Aspose.Words จัดเตรียมคุณสมบัติ [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) ที่ตอบสนองวัตถุประสงค์นี้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติการเปรียบเทียบขั้นสูง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
