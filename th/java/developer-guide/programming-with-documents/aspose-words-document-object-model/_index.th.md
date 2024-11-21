---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words สําหรับ Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) เป็นการแสดงในความทรงจํา ของเอกสารคํา อ่าน, จัดการ, และแก้ไขเนื้อหาและรูปแบบเอกสารคําโดยใช้ Java."
weight: 10
url: /th/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

เดอะ Aspose.Words Document Object Model (DOM) เป็นการแสดงในความทรงจํา ของเอกสารคํา เดอะ Aspose.Words DOM เปิด โอกาส ให้ คุณ อ่าน, จัด การ, และ ปรับ เนื้อหา และ ปรับ ปรุง เอกสาร คํา.

ส่วนนี้อธิบายชนชั้นหลักของ Aspose.Words DOM และความสัมพันธ์ของพวกเขา โดยการใช้ Aspose.Words DOM คลาสนี้ คุณสามารถเข้าถึงองค์ประกอบของเอกสารและรูปแบบได้

## สร้างเอกสาร วัตถุต้นไม้ {#create-a-document-objects-tree}

เมื่อเอกสารถูกอ่าน Aspose.Words <span notrans="<span notrans=" DOM"=""></span>'"> แล้วต้นไม้วัตถุที่ถูกสร้างขึ้น และชนิดที่แตกต่างกันขององค์ประกอบ จากเอกสารแหล่งที่มีของตัวเอง DOM วัตถุต้นไม้ที่มีคุณสมบัติหลากหลาย

### สร้างต้นไม้โหนดของเอกสาร {#build-document-nodes-tree}

เมื่อ Aspose.Words มันสร้างวัตถุของชนิดต่างๆ ที่แสดงถึงองค์ประกอบต่าง ๆ ของเอกสาร ทุก ๆ ข้อ, วรรค, ตาราง, หรือ ตอน เป็น โหนด และ แม้ แต่ ตัว เอกสาร เอง ก็ เป็น โหนด. Aspose.Words กําหนดคลาสสําหรับทุกชนิดของโหนดของเอกสาร

เอกสารต้นไม้ใน Aspose.Words ต่อไปนี้รูปแบบการออกแบบ Composite:

- คลาสโหนดทั้งหมดมาจาก [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) ห้องเรียน ซึ่งเป็นวิชาพื้นฐาน Aspose.Words Document Object Model.
- โหนดที่สามารถบรรจุโหนดอื่น ๆ เช่น **Section** หรือ **Paragraph**, ได้มาจาก [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) ห้องเรียนซึ่งต่อมามาจาก **Node** ชั้นเรียน.

แผนภูมิที่ให้ด้านล่างนี้แสดงถึงมรดกระหว่างคลาสของโหนด Aspose.Words Document Object Model (DOM) ชื่อ ของ ชน ชั้น นามธรรม อยู่ ใน ตัว เอน.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

เดอะ Aspose.Words DOM นอกจากนี้ยังมีคลาสที่ไม่ใช่มาตรฐาน เช่น [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) หรือ [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), ซึ่งใช้สําหรับปรับแต่งรูปลักษณ์และรูปแบบภายในเอกสาร คลาสเหล่านี้ไม่ได้แสดงในแผนภาพนี้ ว่าไม่มีการสืบทอดจาก `Node` ชั้นเรียน.

{{% /alert %}}

ลองดูตัวอย่างกัน ภาพต่อไปนี้แสดง Microsoft Word เอกสารที่มีเนื้อหาที่แตกต่างกัน

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

เมื่ออ่านเอกสารด้านบนลงใน Aspose.Words DOM, มี การ สร้าง ต้น ไม้ แห่ง วัตถุ ขึ้น มา ดัง ที่ แสดง ไว้ ข้าง ล่าง.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), และวงรีอื่น ๆ บนแผนภาพคือ Aspose.Words วัตถุที่แสดงถึงองค์ประกอบในเอกสารคํา

### รับ `Node` ชนิด {#get-a-node-type}

ถึงแม้ว่า [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) ห้องเรียนก็เพียงพอ ที่จะแยกแยะ โหนดต่างๆออกจากกัน Aspose.Words ให้ [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) เพื่อลดทอนจํานวน API งาน เช่น การ เลือก โหนด ชนิด ใด ชนิด หนึ่ง.

ชนิดของแต่ละโหนดสามารถใช้ได้โดยใช้ [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) ทรัพย์สิน คุณสมบัตินี้จะได้ค่า **NodeType** ราคาที่เพิ่มขึ้น ตัว อย่าง เช่น ปม วรรค ที่ แสดง โดย **Paragraph** จํานวนครั้งที่เล่น **NodeType**.**Paragraph**และโหนดโต๊ะแสดงโดย **Table** จํานวนครั้งที่เล่น **NodeType**.**Table**.

ตัวอย่างต่อไปนี้แสดงถึงวิธีการได้รับชนิดของโหนดโดยใช้ **NodeType** การเผาผลาญ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## การนําทางผังต้นไม้ของเอกสาร {#document-tree-navigation}

Aspose.Words แสดงถึงเอกสารที่เป็นต้นไม้โหนด ซึ่งทําให้คุณสามารถนําทางระหว่างโหนดได้ ส่วนนี้อธิบายวิธีการสํารวจและนําทางต้นไม้เอกสารใน Aspose.Words.

เมื่อคุณเปิดเอกสารตัวอย่างที่แสดงก่อนหน้านี้ในเอกสาร เอ็กซ์พลอเรอร์, ต้นโหนดปรากฏตรงตามที่มันแสดงใน Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

คุณสามารถเรียนรู้โครงการตัวอย่าง "Document Expression" ใน [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### ความสัมพันธ์แบบโหนดของเอกสาร {#document-nodes-relationships}

ปมบนต้นไม้มีความสัมพันธ์กัน

- โหนดที่บรรจุอีกโหนดคือ *parent.*
- โหนดที่อยู่ในโหนดแม่คือ *child.* โหนดเด็กของผู้ปกครองคนเดียวกัน *sibling* โหนด
- *root* โหนดมักจะเป็น [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) โหนด

โหนดที่สามารถบรรจุโหนดอื่น ๆ ที่ได้มาจาก [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) คลาส และโหนดทั้งหมด ก็มาจาก [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) ชั้นเรียน. สอง คลาส หลัก ๆ นี้ ให้ วิธี การ และ คุณสมบัติ ทั่ว ไป สําหรับ การ นํา ทาง และ ปรับ ปรุง โครง สร้าง ของ ต้น ไม้.

แผนภาพวัตถุ UML ต่อจากนี้แสดงโหนดหลายจุด ของเอกสารตัวอย่างและความสัมพันธ์ของพวกเขา

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### เอกสารคือ Nodeown

โหนดมักจะเป็นของเอกสารเฉพาะบางตัว แม้ว่ามันจะถูกสร้างหรือถูกถอดออกจากต้นไม้ก็ตาม เพราะโครงสร้างหลัก ๆ ของเอกสารทั่วไป เช่น รูปแบบและรายการ ถูกเก็บอยู่ใน **Document** โหนด ยกตัวอย่างเช่น มันเป็นไปไม่ได้ที่จะมี **Paragraph** ไม่มี **Document** เพราะแต่ละย่อหน้ามีรูปแบบที่กําหนดให้ใช้ทั่วโลกสําหรับเอกสาร กฎนี้ถูกใช้เมื่อสร้างโหนดใหม่ เพิ่มรายการใหม่ **Paragraph** ตรงไป DOM ต้องการเอกสารที่ออบเจ็กต์ไปยังตัวสร้าง

{{% alert color="primary" %}}

เดอะ [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) คุณสมบัติที่จะคืนค่าเป็นเอกสารที่เป็นโหนด

{{% /alert %}}

เมื่อสร้างย่อหน้าใหม่โดยใช้ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), ผู้สร้างมักจะมี **Document** คลาสที่เชื่อมโยงกับมันผ่าน [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) ทรัพย์สิน

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นว่า เมื่อสร้างโหนดใด ๆ เอกสารที่จะเป็นเจ้าของโหนด จะนิยามเสมอ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### โหนดของผู้ปกครอง

แต่ละโหนดมีตัวแม่กําหนดโดย [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) ทรัพย์สิน โหนดไม่มีโหนดพ่อแม่ นั่นคือ **ParentNode** มันว่าง, ในกรณีต่อไปนี้:

- มี การ สร้าง โหนด นี้ ขึ้น มา และ ยัง ไม่ ได้ เพิ่ม เข้า กับ ต้น ไม้.
- โหนดถูกถอดออกจากต้นไม้แล้ว
- นี่คือราก **Document** โหนดที่มีโหนดศูนย์ตลอดเวลา

คุณสามารถลบโหนดจากผู้ปกครองได้ โดยการเรียก [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) วิธี ตัวอย่างรหัสต่อไปนี้ แสดงวิธีเข้าถึงโหนดแม่:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### โหนดลูก

วิธีที่มีประสิทธิภาพมากที่สุดในการเข้าถึงโหนดเด็กของ [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) ผ่าน [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) ถึง [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) คุณสมบัติที่จะคืนโหนดลูกชิ้นแรกและชิ้นสุดท้าย ตามขั้นตอน ถ้าไม่มีโหนดเด็ก การกลับมาของคุณสมบัติเหล่านี้ *null*.

**CompositeNode** ยังให้ [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) คลังภาพ เปิดใช้งานสิทธิ์ในการเข้าใช้โหนดของเด็กหรือดัชนี เดอะ **ChildNodes** คุณสมบัติเป็นคลังของโหนดสด ซึ่งหมายความว่า เมื่อไรก็ตามที่มีการเปลี่ยนแปลงเอกสาร เช่น เมื่อถอดโหนดหรือเพิ่ม **ChildNodes** คลังภาพถูกปรับปรุงให้อัตโนมัติ

ถ้าโหนดไม่มีลูก **ChildNodes** คุณสมบัติที่จะคืนค่าเป็นคลังภาพที่ว่างอยู่ คุณสามารถตรวจสอบว่า **CompositeNode** มีโหนดเด็กใช้ [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) ทรัพย์สิน

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ ระบุ ปม ของ เด็ก ใน ทันที `CompositeNode` ใช้เครื่องขยายเสียงที่จัดให้ `ChildNodes` คลังภาพ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ ระบุ ปม ของ เด็ก ใน ทันที `CompositeNode` โดยใช้สิทธิ์ในการทําดัชนี:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### ตําแหน่ง

คุณสามารถหาโหนดที่ล่วงหน้าหรือตามหลังโหนดเฉพาะโดยใช้ [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) ถึง [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) ทรัพย์สิน ตามลําดับ ถ้าโหนดเป็นลูกคนสุดท้ายของผู้ปกครอง **NextSibling** ทรัพย์สินคือ *null*. ในทางกลับกัน ถ้าโหนดเป็นลูกคนแรกของผู้ปกครอง **PreviousSibling** ทรัพย์สินคือ *null*.

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ ไป เยี่ยม ข้อมูล เกี่ยว กับ เด็ก โดย ตรง และ ทาง อ้อม ทั้ง หมด:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### พิมพ์ การ เข้า หา ลูก และ พ่อ แม่

จนถึงตอนนี้ เราได้พูดถึงคุณสมบัติที่นํากลับมาใช้เป็นพื้นฐาน **Node** หรือ **CompositeNode**. แต่บางครั้งมันก็มีสถานการณ์ ที่คุณอาจจําเป็นต้องแสดงคุณค่า ให้แก่คลาสที่เฉพาะ เช่น **Run** หรือ **Paragraph**. นั่นคือคุณไม่สามารถได้รับอย่างสมบูรณ์จากการหล่อเมื่อทํางานกับ Aspose.Words DOM, ซึ่งมีองค์ประกอบอยู่

เพื่อลดความต้องการที่จะหล่อมากที่สุด Aspose.Words คลาสต่าง ๆ ให้คุณสมบัติและชุดสะสมซึ่งจะให้การเข้าถึงได้อย่างกว้างขวาง มีรูปแบบพื้นฐาน 3 แบบ ของการเข้าถึงชนิด:

- โหนดของผู้ปกครองถูกพิมพ์ **FirstXXX** ถึง **LastXXX** คุณสมบัติ ยกตัวอย่างเช่น **Document** มี [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) ถึง [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) คุณสมบัติ เช่นเดียวกัน **Table** มีคุณสมบัติเช่น [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), และคนอื่นๆ
- โหนดของผู้ปกครองจะเปิดเผย ชนิดของโหนดเด็ก เช่น [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), และคนอื่นๆ
- โหนดเด็กทําให้เข้าถึงตัวพ่อแม่ได้ เช่น [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), และคนอื่นๆ

คุณสมบัติแบบพิมพ์เป็นเพียงทางลัดที่มีประโยชน์ ซึ่งบางครั้งให้การเข้าถึงง่ายกว่าคุณสมบัติทั่วไปที่ได้รับเป็นมรดกจาก [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) ถึง [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

ตัวอย่างรหัสต่อไปนี้ แสดงให้เห็นว่าจะใช้คุณสมบัติที่พิมพ์ออกไปอย่างไร เพื่อเข้าถึงโหนดของต้นไม้เอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
