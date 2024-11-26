---
title: Aspose.Words DOM
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) คือการแสดงเอกสาร Word ในหน่วยความจำ อ่าน จัดการ และแก้ไขเนื้อหาและการจัดรูปแบบของเอกสาร Word โดยใช้ Python"
weight: 10
url: /th/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model (DOM) เป็นตัวแทนในหน่วยความจำของเอกสาร Word Aspose.Words DOM ช่วยให้คุณสามารถอ่าน จัดการ และแก้ไขเนื้อหาและการจัดรูปแบบของเอกสาร Word โดยทางโปรแกรม

ส่วนนี้จะอธิบายคลาสหลักของ Aspose.Words DOM และความสัมพันธ์ โดยใช้คลาส Aspose.Words DOM คุณสามารถรับการเข้าถึงองค์ประกอบเอกสารและการจัดรูปแบบโดยทางโปรแกรม

## สร้าง {#create-a-document-objects-tree} ทรีออบเจ็กต์ `Document`

เมื่ออ่านเอกสารลงใน Aspose.Words DOM แผนผังออบเจ็กต์จะถูกสร้างขึ้นและองค์ประกอบประเภทต่างๆ ของเอกสารต้นฉบับจะมีออบเจ็กต์แผนผัง DOM ของตัวเองที่มีคุณสมบัติต่างๆ

### สร้างโครงสร้างโหนดเอกสาร {#build-document-nodes-tree}

เมื่อ Aspose.Words อ่านเอกสาร Word ลงในหน่วยความจำ จะสร้างออบเจ็กต์ประเภทต่างๆ ที่แสดงถึงองค์ประกอบต่างๆ ของเอกสาร การเรียกใช้ข้อความ ย่อหน้า ตาราง หรือส่วนทุกครั้งถือเป็นโหนด และแม้แต่ตัวเอกสารเองก็คือโหนด Aspose.Words กำหนดคลาสสำหรับโหนดเอกสารทุกประเภท

แผนผังเอกสารใน Aspose.Words เป็นไปตามรูปแบบการออกแบบคอมโพสิต:

- คลาสโหนดทั้งหมดได้รับมาจากคลาส [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) ซึ่งเป็นคลาสพื้นฐานใน Aspose.Words Document Object Model ในที่สุด
- โหนดที่สามารถมีโหนดอื่นได้ เช่น [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) หรือ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ได้มาจากคลาส [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) ซึ่งในทางกลับกันก็มาจากคลาส [Node](https://reference.aspose.com/words/python-net/aspose.words/node/)

แผนภาพด้านล่างแสดงการสืบทอดระหว่างคลาสโหนดของ Aspose.Words Document Object Model (DOM) ชื่อของคลาสนามธรรมเป็นภาษาตัวเอียง

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-คำ-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM ยังมีคลาสที่ไม่ใช่โหนด เช่น [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) หรือ [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) ซึ่งใช้เพื่อปรับแต่งรูปลักษณ์และสไตล์ภายในเอกสาร คลาสเหล่านี้ไม่ได้แสดงในไดอะแกรมนี้เนื่องจากไม่ได้สืบทอดมาจากคลาส [Node](https://reference.aspose.com/words/python-net/aspose.words/node/)

{{% /alert %}}

ลองดูตัวอย่าง รูปภาพต่อไปนี้แสดงเอกสาร Microsoft Word ที่มีเนื้อหาประเภทต่างๆ

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="เอกสารตัวอย่าง aspose คำ" style="width:700px"/>

เมื่ออ่านเอกสารด้านบนลงใน Aspose.Words DOM โครงสร้างของออบเจ็กต์จะถูกสร้างขึ้น ดังที่แสดงในสคีมาด้านล่าง

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-คำ" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) และจุดไข่ปลาอื่นๆ ทั้งหมดในไดอะแกรมคือออบเจ็กต์ Aspose.Words ที่แสดงองค์ประกอบของเอกสาร Word

### รับ {#get-a-node-type} ประเภท `Node`

แม้ว่าคลาส [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) จะเพียงพอที่จะแยกแยะโหนดต่างๆ จากกัน แต่ Aspose.Words จัดเตรียมการแจงนับ [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) เพื่อลดความซับซ้อนของงาน API บางอย่าง เช่น การเลือกโหนดประเภทเฉพาะ

สามารถรับประเภทของแต่ละโหนดได้โดยใช้คุณสมบัติ [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) คุณสมบัตินี้ส่งกลับค่าการแจงนับ [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) ตัวอย่างเช่น โหนดย่อหน้าที่แสดงโดยคลาส [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) จะส่งคืน [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph) และโหนดตารางที่แสดงโดยคลาส [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) จะส่งคืน [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table)

ตัวอย่างต่อไปนี้แสดงวิธีรับประเภทโหนดโดยใช้การแจงนับ [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## การนำทางแผนผังเอกสาร {#document-tree-navigation}

Aspose.Words แสดงถึงเอกสารเป็นแผนผังโหนด ซึ่งช่วยให้คุณนำทางระหว่างโหนดได้ ส่วนนี้อธิบายวิธีสำรวจและสำรวจโครงสร้างเอกสารใน Aspose.Words

เมื่อคุณเปิดเอกสารตัวอย่างที่แสดงไว้ก่อนหน้านี้ใน Document Explorer แผนผังโหนดจะปรากฏเหมือนกับที่แสดงใน Aspose.Words ทุกประการ

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="เอกสารในเอกสาร explorer" style="width:680px"/>

{{% alert color="primary" %}}

คุณสามารถเรียนรู้โปรเจ็กต์ตัวอย่าง "Document Explorer" ได้ใน [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples)

{{% /alert %}}

### ความสัมพันธ์ของโหนดเอกสาร {#document-nodes-relationships}

โหนดในแผนผังมีความสัมพันธ์ระหว่างกัน:

- โหนดที่มีโหนดอื่นคือ *parent.*
- โหนดที่อยู่ในโหนดหลักคือโหนด *child.* Child ของโหนดหลักเดียวกันคือโหนด *sibling*
- โหนด *root* จะเป็นโหนด [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) เสมอ

โหนดที่สามารถมีโหนดอื่นได้มาจากคลาส [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) และโหนดทั้งหมดได้รับมาจากคลาส [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) ในที่สุด คลาสพื้นฐานทั้งสองนี้มีวิธีการและคุณสมบัติทั่วไปสำหรับการนำทางและการปรับเปลี่ยนโครงสร้างต้นไม้

แผนภาพอ็อบเจ็กต์ UML ต่อไปนี้แสดงหลายโหนดของเอกสารตัวอย่างและความสัมพันธ์ระหว่างกันผ่านคุณสมบัติพาเรนต์ รายการย่อย และรายการพี่น้อง:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="เอกสารคอนโซลความสัมพันธ์ aspose คำ" style="width:370px"/>

#### เอกสารเป็นเจ้าของโหนด

โหนดจะอยู่ในเอกสารใดเอกสารหนึ่งเสมอ แม้ว่าจะเพิ่งสร้างหรือลบออกจากแผนผังก็ตาม เนื่องจากโครงสร้างทั่วทั้งเอกสารที่สำคัญ เช่น สไตล์และรายการจะถูกจัดเก็บไว้ในโหนด [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ตัวอย่างเช่น เป็นไปไม่ได้ที่จะมี [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) โดยไม่มี [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) เนื่องจากแต่ละย่อหน้ามีสไตล์ที่กำหนดซึ่งกำหนดไว้ทั่วโลกสำหรับเอกสาร กฎนี้ใช้เมื่อสร้างโหนดใหม่ การเพิ่ม [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ใหม่โดยตรงไปยัง DOM ต้องใช้วัตถุเอกสารที่ส่งผ่านไปยังตัวสร้าง

{{% alert color="primary" %}}

คุณสมบัติ [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) ส่งคืนเอกสารที่โหนดนั้นอยู่

{{% /alert %}}

เมื่อสร้างย่อหน้าใหม่โดยใช้ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ตัวสร้างจะมีคลาส [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) ที่เชื่อมโยงผ่านคุณสมบัติ [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) เสมอ

ตัวอย่างโค้ดต่อไปนี้แสดงให้เห็นว่าเมื่อสร้างโหนดใด ๆ เอกสารที่จะเป็นเจ้าของโหนดจะถูกกำหนดเสมอ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### โหนดหลัก

แต่ละโหนดมีพาเรนต์ที่ระบุโดยคุณสมบัติ [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) โหนดไม่มีโหนดหลัก นั่นคือ [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) คือ *None* ในกรณีต่อไปนี้:

- โหนดเพิ่งถูกสร้างขึ้นและยังไม่ได้เพิ่มลงในแผนผัง
- โหนดถูกลบออกจากแผนผังแล้ว
- นี่คือโหนด [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) รูทซึ่งมีโหนดพาเรนต์ไม่มีเสมอ

คุณสามารถลบโหนดออกจากพาเรนต์ได้โดยการเรียกเมธอด [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเข้าถึงโหนดพาเรนต์:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### โหนดย่อย

วิธีที่มีประสิทธิภาพที่สุดในการเข้าถึงโหนดลูกของ [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) คือผ่านคุณสมบัติ [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) และ [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) ที่ส่งคืนโหนดลูกแรกและโหนดสุดท้ายตามลำดับ หากไม่มีโหนดย่อย คุณสมบัติเหล่านี้จะส่งคืน *None*

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) ยังมีคอลเลกชัน [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) ที่เปิดใช้งานการเข้าถึงโหนดย่อยแบบจัดทำดัชนีหรือแจกแจง เมธอด [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) ส่งคืนคอลเลกชันโหนดสด ซึ่งหมายความว่าเมื่อใดก็ตามที่เอกสารมีการเปลี่ยนแปลง เช่น เมื่อโหนดถูกลบหรือเพิ่ม คอลเลกชัน **get_child_nodes** จะได้รับการอัปเดตโดยอัตโนมัติ

หากโหนดไม่มีลูก วิธีการ **get_child_nodes** จะส่งกลับคอลเลกชันที่ว่างเปล่า คุณสามารถตรวจสอบว่า [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) มีโหนดย่อยโดยใช้คุณสมบัติ [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) หรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการระบุโหนดลูกในทันทีของ [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) โดยใช้ตัวแจงนับที่มาจากคอลเลกชัน **get_child_nodes**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### โหนดพี่น้อง

คุณสามารถรับโหนดที่อยู่ข้างหน้าหรือตามโหนดใดโหนดหนึ่งได้ทันทีโดยใช้คุณสมบัติ [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) และ [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) ตามลำดับ หากโหนดเป็นโหนดลูกสุดท้ายของพาเรนต์ คุณสมบัติ [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) จะเป็น *None* ในทางกลับกัน หากโหนดเป็นโหนดลูกแรกของโหนดหลัก คุณสมบัติ [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) จะเป็น *None*

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเยี่ยมชมโหนดลูกทั้งทางตรงและทางอ้อมของโหนดคอมโพสิตอย่างมีประสิทธิภาพ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### พิมพ์การเข้าถึงโหนดลูกและผู้ปกครอง {#typed-access-to-child-and-parent-nodes}

จนถึงตอนนี้ เราได้พูดคุยถึงคุณสมบัติที่ส่งคืนประเภทฐานอย่างใดอย่างหนึ่ง – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) หรือ [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) แต่บางครั้งมีสถานการณ์ที่คุณอาจต้องส่งค่าไปยังคลาสโหนดเฉพาะ เช่น [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) หรือ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) นั่นคือคุณไม่สามารถหลีกหนีจากการคัดเลือกนักแสดงได้อย่างสมบูรณ์เมื่อทำงานกับ Aspose.Words DOM ซึ่งเป็นแบบประกอบ

เพื่อลดความจำเป็นในการแคสต์ คลาส Aspose.Words ส่วนใหญ่จะมีคุณสมบัติและคอลเลกชั่นที่ให้การเข้าถึงแบบเข้มงวด การเข้าถึงด้วยการพิมพ์มีรูปแบบพื้นฐานสามรูปแบบ:

- โหนดพาเรนต์เปิดเผยคุณสมบัติ **แรก_XXX** และ **สุดท้าย_XXX** ที่พิมพ์ ตัวอย่างเช่น [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) มีคุณสมบัติ [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) และ [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) ในทำนองเดียวกัน [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) มีคุณสมบัติเช่น [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) และอื่นๆ
- โหนดพาเรนต์เปิดเผยคอลเลกชันที่พิมพ์ของโหนดย่อย เช่น [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) และอื่นๆ
- โหนดย่อยให้การเข้าถึงแบบพิมพ์ไปยังพาเรนต์ เช่น [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) และอื่นๆ

คุณสมบัติที่พิมพ์เป็นเพียงทางลัดที่มีประโยชน์ซึ่งบางครั้งให้การเข้าถึงได้ง่ายกว่าคุณสมบัติทั่วไปที่สืบทอดมาจาก [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) และ [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัติที่พิมพ์เพื่อเข้าถึงโหนดของโครงสร้างเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
