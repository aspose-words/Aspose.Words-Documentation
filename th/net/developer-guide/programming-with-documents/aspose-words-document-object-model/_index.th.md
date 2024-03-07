---
title: Aspose.Words Document Object Model (DOM) ใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) คือการแสดงเอกสาร Word ในหน่วยความจำ อ่าน จัดการ และแก้ไขเนื้อหาและการจัดรูปแบบของเอกสาร Word โดยใช้ C#"
weight: 10
url: /th/net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM) เป็นตัวแทนในหน่วยความจำของเอกสาร Word Aspose.Words DOM ช่วยให้คุณสามารถอ่าน จัดการ และแก้ไขเนื้อหาและการจัดรูปแบบของเอกสาร Word โดยทางโปรแกรม

ส่วนนี้จะอธิบายคลาสหลักของ Aspose.Words DOM และความสัมพันธ์ โดยใช้คลาส Aspose.Words DOM คุณสามารถรับการเข้าถึงองค์ประกอบเอกสารและการจัดรูปแบบโดยทางโปรแกรม

## สร้าง {#create-a-document-objects-tree} ทรีออบเจ็กต์ `Document`

เมื่ออ่านเอกสารลงใน Aspose.Words DOM แผนผังออบเจ็กต์จะถูกสร้างขึ้นและองค์ประกอบประเภทต่างๆ ของเอกสารต้นฉบับจะมีออบเจ็กต์แผนผัง DOM ของตัวเองที่มีคุณสมบัติต่างๆ

### สร้างแผนผังโหนดเอกสาร {#build-document-nodes-tree}

เมื่อ Aspose.Words อ่านเอกสาร Word ลงในหน่วยความจำ จะสร้างออบเจ็กต์ประเภทต่างๆ ที่แสดงถึงองค์ประกอบต่างๆ ของเอกสาร การเรียกใช้ข้อความ ย่อหน้า ตาราง หรือส่วนทุกครั้งถือเป็นโหนด และแม้แต่ตัวเอกสารเองก็คือโหนด Aspose.Words กำหนดคลาสสำหรับโหนดเอกสารทุกประเภท

แผนผังเอกสารใน Aspose.Words เป็นไปตามรูปแบบการออกแบบคอมโพสิต:

- คลาสโหนดทั้งหมดได้รับมาจากคลาส [Node](https://reference.aspose.com/words/net/aspose.words/node/) ซึ่งเป็นคลาสพื้นฐานใน Aspose.Words Document Object Model ในที่สุด
- โหนดที่สามารถมีโหนดอื่นได้ เช่น **Section** หรือ **Paragraph** ได้มาจากคลาส [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) ซึ่งในทางกลับกันก็มาจากคลาส **Node**

แผนภาพด้านล่างแสดงการสืบทอดระหว่างคลาสโหนดของ Aspose.Words Document Object Model (DOM) ชื่อของคลาสนามธรรมเป็นภาษาตัวเอียง

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-คำ-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM ยังมีคลาสที่ไม่ใช่โหนด เช่น [Style](https://reference.aspose.com/words/net/aspose.words/style/) หรือ [Font](https://reference.aspose.com/words/net/aspose.words/font/) ซึ่งใช้เพื่อปรับแต่งรูปลักษณ์และสไตล์ภายในเอกสาร คลาสเหล่านี้ไม่ได้แสดงในไดอะแกรมนี้เนื่องจากไม่ได้สืบทอดมาจากคลาส `Node`

{{% /alert %}}

ลองดูตัวอย่าง รูปภาพต่อไปนี้แสดงเอกสาร Microsoft Word ที่มีเนื้อหาประเภทต่างๆ

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="เอกสารตัวอย่าง aspose คำ" style="width:700px"/>

เมื่ออ่านเอกสารด้านบนลงใน Aspose.Words DOM โครงสร้างของออบเจ็กต์จะถูกสร้างขึ้น ดังที่แสดงในสคีมาด้านล่าง

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-คำ" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/) และจุดไข่ปลาอื่นๆ ทั้งหมดในไดอะแกรมคือออบเจ็กต์ Aspose.Words ที่แสดงองค์ประกอบของเอกสาร Word

### รับ {#get-a-node-type} ประเภท `Node`

แม้ว่าคลาส [Node](https://reference.aspose.com/words/net/aspose.words/node/) จะเพียงพอที่จะแยกแยะโหนดต่างๆ จากกัน แต่ Aspose.Words จัดเตรียมการแจงนับ [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) เพื่อลดความซับซ้อนของงาน API บางอย่าง เช่น การเลือกโหนดประเภทเฉพาะ

ประเภทของแต่ละโหนดสามารถรับได้โดยใช้คุณสมบัติ [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) คุณสมบัตินี้ส่งกลับค่าการแจงนับ **NodeType** ตัวอย่างเช่น โหนดย่อหน้าที่แสดงโดยคลาส **Paragraph** จะส่งคืน **NodeType**.**Paragraph** และโหนดตารางที่แสดงโดยคลาส **Table** จะส่งคืน **NodeType**.**Table**

ตัวอย่างต่อไปนี้แสดงวิธีรับประเภทโหนดโดยใช้การแจงนับ **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## การนำทางแผนผังเอกสาร {#document-tree-navigation}

Aspose.Words แสดงถึงเอกสารเป็นแผนผังโหนด ซึ่งช่วยให้คุณนำทางระหว่างโหนดได้ ส่วนนี้อธิบายวิธีสำรวจและสำรวจโครงสร้างเอกสารใน Aspose.Words

เมื่อคุณเปิดเอกสารตัวอย่างที่แสดงไว้ก่อนหน้านี้ใน Document Explorer แผนผังโหนดจะปรากฏเหมือนกับที่แสดงใน Aspose.Words ทุกประการ

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="เอกสารในเอกสาร explorer" style="width:680px"/>

{{% alert color="primary" %}}

คุณสามารถเรียนรู้โปรเจ็กต์ตัวอย่าง "Document Explorer" ได้ใน [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)

{{% /alert %}}

### ความสัมพันธ์ของโหนดเอกสาร {#document-nodes-relationships}

โหนดในแผนผังมีความสัมพันธ์ระหว่างกัน:

- โหนดที่มีโหนดอื่นคือ *parent.*
- โหนดที่มีอยู่ในโหนดหลักคือโหนด *child.* Child ของโหนดหลักเดียวกันคือโหนด *sibling*
- โหนด *root* จะเป็นโหนด [Document](https://reference.aspose.com/words/net/aspose.words/document/) เสมอ

โหนดที่สามารถมีโหนดอื่นได้มาจากคลาส [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) และโหนดทั้งหมดได้รับมาจากคลาส [Node](https://reference.aspose.com/words/net/aspose.words/node/) ในที่สุด คลาสพื้นฐานทั้งสองนี้มีวิธีการและคุณสมบัติทั่วไปสำหรับการนำทางและการปรับเปลี่ยนโครงสร้างต้นไม้

แผนภาพอ็อบเจ็กต์ UML ต่อไปนี้แสดงหลายโหนดของเอกสารตัวอย่างและความสัมพันธ์ระหว่างกันผ่านคุณสมบัติพาเรนต์ รายการย่อย และรายการพี่น้อง:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="เอกสารคอนโซลความสัมพันธ์ aspose คำ" style="width:370px"/>

#### เอกสารเป็นเจ้าของโหนด

โหนดจะอยู่ในเอกสารใดเอกสารหนึ่งเสมอ แม้ว่าจะเพิ่งสร้างหรือลบออกจากแผนผังก็ตาม เนื่องจากโครงสร้างทั่วทั้งเอกสารที่สำคัญ เช่น สไตล์และรายการจะถูกจัดเก็บไว้ในโหนด **Document** ตัวอย่างเช่น เป็นไปไม่ได้ที่จะมี **Paragraph** โดยไม่มี **Document** เนื่องจากแต่ละย่อหน้ามีสไตล์ที่กำหนดซึ่งกำหนดไว้ทั่วโลกสำหรับเอกสาร กฎนี้ใช้เมื่อสร้างโหนดใหม่ การเพิ่ม **Paragraph** ใหม่โดยตรงไปยัง DOM ต้องใช้วัตถุเอกสารที่ส่งผ่านไปยังตัวสร้าง

{{% alert color="primary" %}}

คุณสมบัติ [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) ส่งคืนเอกสารที่โหนดนั้นอยู่

{{% /alert %}}

เมื่อสร้างย่อหน้าใหม่โดยใช้ [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) ตัวสร้างจะมีคลาส **Document** ที่เชื่อมโยงผ่านคุณสมบัติ [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) เสมอ

ตัวอย่างโค้ดต่อไปนี้แสดงให้เห็นว่าเมื่อสร้างโหนดใด ๆ เอกสารที่จะเป็นเจ้าของโหนดจะถูกกำหนดเสมอ:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### โหนดหลัก

แต่ละโหนดมีพาเรนต์ที่ระบุโดยคุณสมบัติ [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) โหนดไม่มีโหนดหลัก นั่นคือ **ParentNode** เป็นโมฆะ ในกรณีต่อไปนี้:

- โหนดเพิ่งถูกสร้างขึ้นและยังไม่ได้เพิ่มลงในแผนผัง
- โหนดถูกลบออกจากแผนผังแล้ว
- นี่คือโหนด **Document** รูทซึ่งมีโหนดพาเรนต์ที่เป็นโมฆะเสมอ

คุณสามารถลบโหนดออกจากพาเรนต์ได้โดยการเรียกเมธอด [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) ตัวอย่างโค้ดต่อไปนี้แสดงวิธีเข้าถึงโหนดพาเรนต์:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### โหนดย่อย

วิธีที่มีประสิทธิภาพที่สุดในการเข้าถึงโหนดลูกของ [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) คือผ่านคุณสมบัติ [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) และ [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) ที่ส่งคืนโหนดลูกแรกและโหนดสุดท้ายตามลำดับ หากไม่มีโหนดย่อย คุณสมบัติเหล่านี้จะส่งคืน *null*

**CompositeNode** ยังมีวิธี [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) ที่เปิดใช้งานการเข้าถึงโหนดย่อยแบบจัดทำดัชนีหรือแจกแจง คุณสมบัติ **ChildNodes** คือคอลเลกชันโหนดที่ใช้งานอยู่ ซึ่งหมายความว่าเมื่อใดก็ตามที่เอกสารมีการเปลี่ยนแปลง เช่น เมื่อโหนดถูกลบหรือเพิ่ม คอลเลกชัน **ChildNodes** จะได้รับการอัปเดตโดยอัตโนมัติ

หากโหนดไม่มีลูก คุณสมบัติ **ChildNodes** จะส่งกลับคอลเลกชันที่ว่างเปล่า คุณสามารถตรวจสอบว่า **CompositeNode** มีโหนดย่อยโดยใช้คุณสมบัติ [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) หรือไม่

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการระบุโหนดลูกในทันทีของ `CompositeNode` โดยใช้ตัวแจงนับที่มาจากคอลเลกชัน `ChildNodes`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีระบุโหนดลูกในทันทีของ `CompositeNode` โดยใช้การเข้าถึงที่จัดทำดัชนี:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### โหนดพี่น้อง

คุณสามารถรับโหนดที่อยู่ข้างหน้าหรือตามโหนดใดโหนดหนึ่งได้ทันทีโดยใช้คุณสมบัติ [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) และ [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) ตามลำดับ หากโหนดเป็นโหนดลูกสุดท้ายของโหนดหลัก คุณสมบัติ **NextSibling** จะเป็น *null* ในทางกลับกัน หากโหนดเป็นโหนดลูกแรกของโหนดหลัก คุณสมบัติ **PreviousSibling** จะเป็น *null*

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเยี่ยมชมโหนดลูกทั้งทางตรงและทางอ้อมของโหนดคอมโพสิตอย่างมีประสิทธิภาพ:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### พิมพ์การเข้าถึงโหนดลูกและผู้ปกครอง {#typed-access-to-child-and-parent-nodes}

จนถึงตอนนี้ เราได้พูดคุยถึงคุณสมบัติที่ส่งคืนประเภทฐานอย่างใดอย่างหนึ่ง – **Node** หรือ **CompositeNode** แต่บางครั้งมีสถานการณ์ที่คุณอาจต้องส่งค่าไปยังคลาสโหนดเฉพาะ เช่น **Run** หรือ **Paragraph** นั่นคือคุณไม่สามารถหลีกหนีจากการคัดเลือกนักแสดงได้อย่างสมบูรณ์เมื่อทำงานกับ Aspose.Words DOM ซึ่งเป็นแบบประกอบ

เพื่อลดความจำเป็นในการแคสต์ คลาส Aspose.Words ส่วนใหญ่จะมีคุณสมบัติและคอลเลกชั่นที่ให้การเข้าถึงแบบเข้มงวด การเข้าถึงด้วยการพิมพ์มีรูปแบบพื้นฐานสามรูปแบบ:

- โหนดพาเรนต์เปิดเผยคุณสมบัติ **FirstXXX** และ **LastXXX** ที่พิมพ์ ตัวอย่างเช่น **Document** มีคุณสมบัติ [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) และ [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) ในทำนองเดียวกัน **Table** มีคุณสมบัติเช่น [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/) และอื่นๆ
- โหนดพาเรนต์เปิดเผยคอลเลกชันที่พิมพ์ของโหนดย่อย เช่น [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/) และอื่นๆ
- โหนดย่อยให้การเข้าถึงแบบพิมพ์ไปยังพาเรนต์ เช่น [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/) และอื่นๆ

คุณสมบัติที่พิมพ์เป็นเพียงทางลัดที่มีประโยชน์ซึ่งบางครั้งให้การเข้าถึงได้ง่ายกว่าคุณสมบัติทั่วไปที่สืบทอดมาจาก [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) และ [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัติที่พิมพ์เพื่อเข้าถึงโหนดของโครงสร้างเอกสาร:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
