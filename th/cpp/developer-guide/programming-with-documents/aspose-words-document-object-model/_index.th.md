---
title: Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)ในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)
linktitle: Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)
type: docs
description: "รูปแบบวัตถุเอกสาร(DOM)เป็นตัวแทนในหน่วยความจำของเอกสารคำ อ่านจัดการและแก้ไขเนื้อหาและการฟอร์แมตของเอกสารคำด้วยC++."
weight: 10
url: /th/cpp/aspose-words-document-object-model/
---

รูปแบบวัตถุเอกสารAspose.Words(DOM)เป็นตัวแทนในหน่วยความจำของเอกสารคำ Aspose.WordsDOMช่วยให้คุณสามารถอ่านจัดการและปรับเปลี่ยนเนื้อหาและการจัดรูปแบบของเอกสารคำ.

ส่วนนี้อธิบายชั้นเรียนหลักของAspose.WordsDOMและความสัมพันธ์ของชั้นเรียน โดยใช้ชั้นเรียนAspose.WordsDOMคุณสามารถขอรับการเข้าถึงแบบโปรแกรมไปยังองค์ประกอบของเอกสา.

## สร้างต้นไม้วัตถุเอกสาร{#create-a-document-objects-tree}

เมื่อเอกสารถูกอ่านเข้าไปในAspose.WordsDOMจากนั้นต้นไม้วัตถุจะถูกสร้างขึ้นและชนิดขององค์ประกอบข.

### สร้างต้นไม้โหนดเอกสาร{#build-document-nodes-tree}

เมื่อAspose.Wordsอ่านเอกสารคำลงในหน่วยความจำจะสร้างวัตถุชนิดต่างๆที่แสดงถึงองค์ประกอบของเ รันของข้อความย่อหน้าตารางหรือส่วนทุกโหนดและแม้แต่เอกสารเองเป็นโหนด Aspose.Wordsกำหนดคลาสสำหรับทุกชนิดโหนดเอกสาร.

โครงสร้างเอกสารในAspose.Wordsตามรูปแบบการออกแบบคอมโพสิต:

- คลาสโหนดทั้งหมดในที่สุดได้มาจากคลาสของ[Node](https://reference.aspose.com/words/cpp/aspose.words/node/)ซึ่งเป็นคลาสฐานในโมเดลอ็อบเจ็กต์เอกสารAspose.Words.
- โหนดที่สามารถประกอบด้วยโหนดอื่นเช่น**Section**หรือ**Paragraph**ได้มาจากคลาสของ[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)ซึ่งจะมาจากคลาสของ**Node**.

แผนภาพที่ให้ไว้ด้านล่างแสดงการสืบทอดระหว่างคลาสโหนดของโมเดลออบเจกต์เอกสารAspose.Words(DOM) ชื่อของชั้นเรียนนามธรรมอยู่ในตัวเอียง.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.WordsDOMนอกจากนี้ยังมีคลาสที่ไม่ใช่โหนดเช่น[Style](https://reference.aspose.com/words/cpp/aspose.words/style/)หรือ[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)ซึ่งใช้ในการปรับแต่งลักษณะและลักษณะภาย ชั้นเรียนเหล่านี้จะไม่แสดงในไดอะแกรมนี้เนื่องจากไม่ได้สืบทอดมาจากคลาสของ`Node`.

{{% /alert %}}

ลองดูตัวอย่าง รูปภาพต่อไปนี้แสดงเอกสารMicrosoft Wordที่มีเนื้อหาประเภทต่างๆ.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

เมื่ออ่านเอกสารข้างต้นในAspose.WordsDOMต้นไม้ของออบเจกต์จะถูกสร้างขึ้นตามที่แสดงในสคีมาข้างล่าง.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), และวงรีอื่นๆทั้งหมดในแผนภาพเป็นAspose.Wordsวัตถุที่แสดงถึงองค์ประกอบของเอกสารคำ.

### รับ`Node`ประเภท{#get-a-node-type}

แม้ว่าคลาส [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) จะเพียงพอที่จะแยกแยะโหนดต่างๆ ออกจากกัน แต่ Aspose.Words ก็มีการแจงนับ [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) เพื่อลดความซับซ้อนของงาน API บางอย่าง เช่น การเลือกโหนดประเภทเฉพาะ.

ชนิดของแต่ละโหนดสามารถรับได้โดยใช้คุณสมบัติ[NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/) คุณสมบัตินี้ส่งคืน**NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph**และโหนดตารางที่แสดงด้วย**Table** class returns **NodeType**.**Table**.

ตัวอย่างต่อไปนี้แสดงวิธีรับชนิดโหนดโดยใช้การแจงนับ**NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## เอกสารต้นไม้นำทาง{#document-tree-navigation}

Aspose.Wordsแทนเอกสารเป็นโหนดทรีซึ่งช่วยให้คุณสามารถนำทางระหว่างโหนด ส่วนนี้อธิบายวิธีสำรวจและนำทางแผนผังเอกสารในAspose.Words.

กสารแผนผังโหนดจะปรากฏตรงตามที่แสดงในAspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### ความสัมพันธ์ของโหนดเอกสาร{#document-nodes-relationships}

โหนดในต้นไม้มีความสัมพันธ์ระหว่างพวกเขา:

- โหนดที่มีโหนดอื่นคือ*parent.*
- โหนดที่มีอยู่ในโหนดพาเรนต์คือโหนดลูก*child.*ของพาเรนต์เดียวกันคือโหนด*sibling*.
- โหนด*root*คือโหนด[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)เสมอ.

โหนดที่ประกอบด้วยโหนดอื่นได้มาจากคลาสของ[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode)และโหนดทั้งหมดได้มาจากคลาสของ[Node](https://reference.aspose.com/words/cpp/aspose.words/node/) สองคลาสฐานมีวิธีการทั่วไปและคุณสมบัติสำหรับการนำทางโครงสร้างต้นไม้และการปรับ.

ไดอะแกรมออบเจกต์UMLต่อไปนี้แสดงโหนดหลายโหนดของเอกสารตัวอย่างและความสัมพันธ์:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### เอกสารเป็นเจ้าของโหนด

กโครงสร้างทั้งเอกสารสำคัญเช่นลักษณะและรายการจะถูกเก็บไว้ในโหนด**Document** ตัวอย่างเช่นเป็นไปไม่ได้ที่จะมี**Paragraph**โดยไม่มี**Document**เนื่องจากแต่ละย่อหน้ามีสไตล์ที่กำหนดซึ่งถูกกำหน กฏนี้ใช้เมื่อสร้างโหนดใหม่ การเพิ่ม**Paragraph**ใหม่โดยตรงไปยังDOMต้องใช้วัตถุเอกสารที่ส่งผ่านไปยังคอนสตรัคเตอร์.

{{% alert color="primary" %}}

คุณสมบัติ[Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/)จะส่งคืนเอกสารที่โหนดเป็นของ.

{{% /alert %}}

เมื่อสร้างย่อหน้าใหม่โดยใช้[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)ตัวสร้างจะมีคลาสของ**Document**ที่เชื่อมโยงกับมันผ่านคุณสมบัติ[DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/)เสมอ.

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นว่าเมื่อมีการสร้างโหนดใดๆเอกสารที่จะเป็นเจ้าของโห:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### โหนดแม่

แต่ละโหนดมีพาเรนต์ที่ระบุโดยคุณสมบัติ[ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) โหนดไม่มีโหนดพาเรนต์นั่นคือ**ParentNode**เป็นโมฆะในกรณีต่อไปนี้:

- โหนดเพิ่งถูกสร้างขึ้นและยังไม่ได้ถูกเพิ่มไปยังแผนผัง.
- โหนดถูกเอาออกจากต้นไม้.
- นี่คือโหนดราก**Document**ซึ่งมักจะมีโหนดพาเรนต์โมฆะ.

คุณสามารถลบโหนดออกจากพาเรนต์ได้โดยเรียกวิธีการ[Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/)ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเข้าถึงโหนดพาเรนต์:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### โหนดเด็ก

วิธีที่มีประสิทธิภาพมากที่สุดในการเข้าถึงโหนดลูกของ[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)คือผ่านคุณสมบัติ[FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/)และ[LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/)ที่ส่งคืนโหนดลูก หากไม่มีโหนดย่อยคุณสมบัติเหล่านี้จะกลับ*null*.

**CompositeNode**

ถ้าโหนดไม่มีลูกน้อยคุณสมบัติ**ChildNodes**จะส่งคืนคอลเล็กชันที่ว่างเปล่า คุณสามารถตรวจสอบว่า**CompositeNode**มีโหนดย่อยใดๆโดยใช้คุณสมบัติ[HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการระบุโหนดย่อยทันทีของ `CompositeNode` โดยใช้ตัวระบุที่ให้มาโดยคอลเลกชัน `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุโหนดย่อยในทันทีของ`CompositeNode`โดยใช้การเข้าถึงการทำดัชนี:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### โหนดพี่น้อง

คุณสามารถขอรับโหนดที่นำหน้าหรือติดตามโหนดเฉพาะโดยใช้คุณสมบัติ[PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/)และ[NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/)ตามลำดับ ถ้าโหนดเป็นลูกคนสุดท้ายของพาเรนต์คุณสมบัติ**NextSibling**คือ*null* ในทางกลับกันถ้าโหนดเป็นลูกคนแรกของแม่คุณสมบัติ**PreviousSibling**คือ*null*.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเยี่ยมชมโหนดลูกโดยตรงและโดยอ้อมทั้งหมดของโหนดค:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### การเข้าถึงที่พิมพ์ไปยังโหนดเด็กและแม่

จนถึงขณะนี้เราได้กล่าวถึงคุณสมบัติที่ส่งคืนหนึ่งในชนิดฐาน-**Node**หรือ**CompositeNode** แต่บางครั้งมีสถานการณ์ที่คุณอาจต้องโยนค่าไปยังคลาสโหนดที่เฉพาะเจาะจงเช่น**Run**หรือ**Paragraph** นั่นคือคุณไม่สามารถหนีจากการหล่อเมื่อทำงานกับAspose.WordsDOMซึ่งเป็นคอมโพสิต.

เพื่อลดความจำเป็นในการแคสต์คลาสAspose.Wordsส่วนใหญ่มีคุณสมบัติและคอลเล็กชันที่ให้การเข้าถึงที่ มีสามรูปแบบพื้นฐานของการเข้าถึงที่พิมพ์เป็น:

- โหนดพาเรนต์แสดงคุณสมบัติที่พิมพ์**FirstXXX**และ**LastXXX** ตัวอย่างเช่น**Document**มี[FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/)และ[LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/)คุณสมบัติ ในทำนองเดียวกัน**Table**มีคุณสมบัติเช่น[FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/),[LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/)และอื่นๆ.
- โหนดพาเรนต์แสดงคอลเล็กชันที่พิมพ์ของโหนดย่อยเช่น[Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/),[Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/)และโหนดอื่นๆ.
- โหนดย่อยให้สิทธิ์การเข้าถึงที่พิมพ์ไปยังพาเรนต์เช่น[Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/),[Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/)และอื่นๆ.

มบัติทั่วไปที่สืบทอดมาจาก[Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/)และ[CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัติที่พิมพ์เพื่อเข้าถึงโหนดของแผนผังเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
