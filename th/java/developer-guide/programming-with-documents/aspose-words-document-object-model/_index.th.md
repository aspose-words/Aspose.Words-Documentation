---
title: Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)
second_title: Aspose.WordsสำหรับJava
articleTitle: Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)
linktitle: Aspose.Wordsรูปแบบวัตถุเอกสาร(DOM)
type: docs
description: "รูปแบบวัตถุเอกสาร(DOM)เป็นตัวแทนในหน่วยความจำของเอกสารคำ อ่านจัดการและแก้ไขเนื้อหาและการฟอร์แมตของเอกสารคำด้วยJava."
weight: 10
url: /th/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

รูปแบบวัตถุเอกสารAspose.Words(DOM)เป็นตัวแทนในหน่วยความจำของเอกสารคำ Aspose.WordsDOMช่วยให้คุณสามารถอ่านจัดการและปรับเปลี่ยนเนื้อหาและการจัดรูปแบบของเอกสารคำ.

ส่วนนี้อธิบายชั้นเรียนหลักของAspose.WordsDOMและความสัมพันธ์ของชั้นเรียน โดยใช้ชั้นเรียนAspose.WordsDOMคุณสามารถขอรับการเข้าถึงแบบโปรแกรมไปยังองค์ประกอบของเอกสา.

## สร้างต้นไม้วัตถุเอกสาร {#create-a-document-objects-tree}

เมื่ออ่านเอกสารใน Aspose.Words DOM จะมีการสร้างออบเจ็กต์ทรี และองค์ประกอบประเภทต่างๆ ของเอกสารต้นฉบับจะมีออบเจ็กต์ทรี DOM ของตัวเองซึ่งมีคุณสมบัติต่างกัน.

### สร้างต้นไม้โหนดเอกสาร {#build-document-nodes-tree}

เมื่อAspose.Wordsอ่านเอกสารคำลงในหน่วยความจำจะสร้างวัตถุชนิดต่างๆที่แสดงถึงองค์ประกอบของเ รันของข้อความย่อหน้าตารางหรือส่วนทุกโหนดและแม้แต่เอกสารเองเป็นโหนด Aspose.Wordsกำหนดคลาสสำหรับทุกชนิดโหนดเอกสาร.

โครงสร้างเอกสารในAspose.Wordsตามรูปแบบการออกแบบคอมโพสิต:

- คลาสโหนดทั้งหมดในที่สุดได้มาจากคลาสของ[Node](https://reference.aspose.com/words/java/com.aspose.words/node/)ซึ่งเป็นคลาสฐานในโมเดลอ็อบเจ็กต์เอกสารAspose.Words.
- โหนดที่สามารถประกอบด้วยโหนดอื่นเช่น**Section**หรือ**Paragraph**ได้มาจากคลาสของ[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)ซึ่งจะมาจากคลาสของ**Node**.

แผนภาพที่ให้ไว้ด้านล่างแสดงการสืบทอดระหว่างคลาสโหนดของโมเดลออบเจกต์เอกสารAspose.Words(DOM) ชื่อของชั้นเรียนนามธรรมอยู่ในตัวเอียง.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.WordsDOMนอกจากนี้ยังมีคลาสที่ไม่ใช่โหนดเช่น[Style](https://reference.aspose.com/words/java/com.aspose.words/style/)หรือ[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)ซึ่งใช้ในการกำหนดลักษณะและลักษณะภายในเอกสาร ชั้นเรียนเหล่านี้จะไม่แสดงในไดอะแกรมนี้เนื่องจากไม่ได้สืบทอดมาจากคลาสของ`Node`.

{{% /alert %}}

ลองดูตัวอย่าง รูปภาพต่อไปนี้แสดงเอกสารMicrosoft Wordที่มีเนื้อหาประเภทต่างๆ.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

เมื่ออ่านเอกสารข้างต้นในAspose.WordsDOMต้นไม้ของออบเจกต์จะถูกสร้างขึ้นตามที่แสดงในสคีมาข้างล่าง.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), และวงรีอื่นๆทั้งหมดในแผนภาพเป็นAspose.Wordsวัตถุที่แสดงถึงองค์ประกอบของเอกสารคำ.

### รับ`Node`ประเภท {#get-a-node-type}

แม้ว่าคลาส [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) จะเพียงพอที่จะแยกแยะโหนดต่างๆ ออกจากกัน แต่ Aspose.Words ก็มีการแจงนับ [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) เพื่อลดความซับซ้อนของงาน API บางอย่าง เช่น การเลือกโหนดประเภทเฉพาะ.

ชนิดของแต่ละโหนดสามารถรับได้โดยใช้คุณสมบัติ[NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) คุณสมบัตินี้ส่งคืนค่าการแจงนับ**NodeType** ตัวอย่างเช่นโหนดย่อหน้าแสดงโดย**Paragraph**คลาสส่งคืน**NodeType**.**Paragraph**และโหนดตารางที่แสดงโดย**Table**คลาสส่งคืน**NodeType**.**Table**.

ตัวอย่างต่อไปนี้แสดงวิธีรับชนิดโหนดโดยใช้การแจงนับ**NodeType**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## เอกสารต้นไม้นำทาง {#document-tree-navigation}

Aspose.Wordsแทนเอกสารเป็นโหนดทรีซึ่งช่วยให้คุณสามารถนำทางระหว่างโหนด ส่วนนี้อธิบายวิธีสำรวจและนำทางแผนผังเอกสารในAspose.Words.

กสารแผนผังโหนดจะปรากฏตรงตามที่แสดงในAspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

คุณสามารถเรียนรู้โครงการตัวอย่าง"สำรวจเอกสาร"ใน [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### ความสัมพันธ์ของโหนดเอกสาร {#document-nodes-relationships}

โหนดในต้นไม้มีความสัมพันธ์ระหว่างพวกเขา:

- โหนดที่มีโหนดอื่นคือ*parent.*
- โหนดที่มีอยู่ในโหนดพาเรนต์คือโหนดลูก*child.*ของพาเรนต์เดียวกันคือโหนด*sibling*.
- โหนด*root*คือโหนด[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)เสมอ.

โหนดที่ประกอบด้วยโหนดอื่นได้มาจากคลาสของ[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)และโหนดทั้งหมดได้มาจากคลาสของ[Node](https://reference.aspose.com/words/java/com.aspose.words/node/) สองคลาสฐานมีวิธีการทั่วไปและคุณสมบัติสำหรับการนำทางโครงสร้างต้นไม้และการปรับ.

ไดอะแกรมออบเจกต์UMLต่อไปนี้แสดงโหนดหลายโหนดของเอกสารตัวอย่างและความสัมพันธ์:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### เอกสารเป็นเจ้าของโหนด

กโครงสร้างทั้งเอกสารสำคัญเช่นลักษณะและรายการจะถูกเก็บไว้ในโหนด**Document** ตัวอย่างเช่นเป็นไปไม่ได้ที่จะมี**Paragraph**โดยไม่มี**Document**เนื่องจากแต่ละย่อหน้ามีสไตล์ที่กำหนดซึ่งถูกกำหน กฏนี้ใช้เมื่อสร้างโหนดใหม่ การเพิ่ม**Paragraph**ใหม่โดยตรงไปยังDOMต้องใช้วัตถุเอกสารที่ส่งผ่านไปยังคอนสตรัคเตอร์.

{{% alert color="primary" %}}

คุณสมบัติ[Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument)จะส่งคืนเอกสารที่โหนดเป็นของ.

{{% /alert %}}

เมื่อสร้างย่อหน้าใหม่โดยใช้[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)ตัวสร้างจะมีคลาสของ**Document**ที่เชื่อมโยงกับมันผ่านคุณสมบัติ[DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document)เสมอ.

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นว่าเมื่อมีการสร้างโหนดใดๆเอกสารที่จะเป็นเจ้าของโห:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### โหนดแม่

แต่ละโหนดมีพาเรนต์ที่ระบุโดยคุณสมบัติ[ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) โหนดไม่มีโหนดพาเรนต์นั่นคือ**ParentNode**เป็นโมฆะในกรณีต่อไปนี้:

- โหนดเพิ่งถูกสร้างขึ้นและยังไม่ได้ถูกเพิ่มไปยังแผนผัง.
- โหนดถูกเอาออกจากต้นไม้.
- นี่คือโหนดราก**Document**ซึ่งมักจะมีโหนดพาเรนต์โมฆะ.

คุณสามารถลบโหนดออกจากพาเรนต์ได้โดยเรียกวิธีการ[Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove)ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเข้าถึงโหนดพาเรนต์:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### โหนดเด็ก

วิธีที่มีประสิทธิภาพมากที่สุดในการเข้าถึงโหนดลูกของ[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)คือผ่านคุณสมบัติ[FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild)และ[LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild)ที่ส่งคืนโหนดลูก หากไม่มีโหนดย่อยคุณสมบัติเหล่านี้จะกลับ*null*.

**CompositeNode**

ถ้าโหนดไม่มีลูกน้อยคุณสมบัติ**ChildNodes**จะส่งคืนคอลเล็กชันที่ว่างเปล่า คุณสามารถตรวจสอบว่า**CompositeNode**มีโหนดย่อยใดๆโดยใช้คุณสมบัติ[HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes).

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการระบุโหนดย่อยทันทีของ `CompositeNode` โดยใช้ตัวระบุที่ให้มาโดยคอลเลกชัน `ChildNodes`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุโหนดย่อยในทันทีของ`CompositeNode`โดยใช้การเข้าถึงการทำดัชนี:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### โหนดพี่น้อง

คุณสามารถขอรับโหนดที่นำหน้าหรือติดตามโหนดเฉพาะโดยใช้คุณสมบัติ[PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling)และ[NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling)ตามลำดับ ถ้าโหนดเป็นลูกคนสุดท้ายของพาเรนต์คุณสมบัติ**NextSibling**คือ*null* ในทางกลับกันถ้าโหนดเป็นลูกคนแรกของแม่คุณสมบัติ**PreviousSibling**คือ*null*.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเยี่ยมชมโหนดลูกโดยตรงและโดยอ้อมทั้งหมดของโหนดค:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### การเข้าถึงที่พิมพ์ไปยังโหนดเด็กและแม่

จนถึงขณะนี้เราได้กล่าวถึงคุณสมบัติที่ส่งคืนหนึ่งในชนิดฐาน-**Node**หรือ**CompositeNode** แต่บางครั้งมีสถานการณ์ที่คุณอาจต้องโยนค่าไปยังคลาสโหนดที่เฉพาะเจาะจงเช่น**Run**หรือ**Paragraph** นั่นคือคุณไม่สามารถหนีจากการหล่อเมื่อทำงานกับAspose.WordsDOMซึ่งเป็นคอมโพสิต.

เพื่อลดความจำเป็นในการแคสต์คลาสAspose.Wordsส่วนใหญ่มีคุณสมบัติและคอลเล็กชันที่ให้การเข้าถึงที่ มีสามรูปแบบพื้นฐานของการเข้าถึงที่พิมพ์เป็น:

- โหนดพาเรนต์แสดงคุณสมบัติที่พิมพ์**FirstXXX**และ**LastXXX** ตัวอย่างเช่น**Document**มี[FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection)และ[LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection)คุณสมบัติ ในทำนองเดียวกัน**Table**มีคุณสมบัติเช่น[FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow),[LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow)และอื่นๆ.
- โหนดพาเรนต์แสดงคอลเล็กชันที่พิมพ์ของโหนดย่อยเช่น[Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections),[Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs)และโหนดอื่นๆ.
- โหนดย่อยให้สิทธิ์การเข้าถึงที่พิมพ์ไปยังพาเรนต์เช่น[Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph),[Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection)และอื่นๆ.

มบัติทั่วไปที่สืบทอดมาจาก[Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode)และ[CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัติที่พิมพ์เพื่อเข้าถึงโหนดของแผนผังเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
