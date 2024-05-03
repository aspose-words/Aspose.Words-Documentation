---
title: ทํางานร่วมกับคุณสมบัติของเอกสารใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานร่วมกับคุณสมบัติของเอกสาร
linktitle: ทํางานร่วมกับคุณสมบัติของเอกสาร
description: "Aspose.Words สําหรับ Java อนุญาตให้เก็บข้อมูลที่มีประโยชน์เกี่ยวกับเอกสารของคุณ เช่น API & หมายเลขรุ่นหรือการตรวจสอบสิทธิ์ Date, ในคุณสมบัติของเอกสารที่กําหนดเอง"
type: docs
weight: 10
url: /th/java/work-with-document-properties/
---

คุณสมบัติของเอกสารอนุญาตให้เก็บข้อมูลที่มีประโยชน์เกี่ยวกับเอกสารของคุณได้ คุณสมบัติเหล่านี้สามารถแบ่งออกเป็นสองกลุ่มได้

* ระบบหรือภายในที่บรรจุค่าต่าง ๆ เช่น ชื่อเอกสาร, ชื่อผู้เขียน, เอกสารสถิติ และอื่น ๆ
* กําหนดหรือกําหนดเองของผู้ใช้ โดยกําหนดเป็นคู่ชื่อที่ผู้ใช้สามารถกําหนดทั้งชื่อและค่าได้

มันมีประโยชน์ที่จะรู้ว่าข้อมูลเกี่ยวกับ API และหมายเลขรุ่นจะถูกเขียนโดยตรงเพื่อส่งเอกสาร ตัวอย่างเช่น เมื่อการแปลงเอกสารเป็น PDF Aspose.Words เติมลงในช่องข้อมูล "โปรแกรม" ด้วย "Aspose.Words"และสนาม "PDF โปรดิวเซอร์" ด้วย"Aspose.Words สําหรับ Java YY.M.N" ที่ไหน *YY.M.N* เป็นรุ่นของ Aspose.Words ใช้เพื่อการเปลี่ยนแปลง สําหรับรายละเอียด ดู [ชื่อเครื่องสร้างหรือผู้ผลิตรวมอยู่ในเอกสารส่งออก](/words/th/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

สังเกตว่าคุณ **ไม่สามารถสั่งงานได้** Aspose.Words เพื่อเปลี่ยนหรือลบข้อมูลนี้ออกจากเอกสารส่งออก

{{% /alert %}}

## คุณสมบัติของเอกสารการเข้าใช้

เข้าใช้คุณสมบัติของเอกสารใน Aspose.Words ใช้:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) เพื่อให้ได้ครอบครอง

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) เพื่อรับทรัพย์สินที่กําหนดเอง

**BuiltInDocumentProperties** ถึง **CustomDocumentProperties** เป็นของสะสม [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) วัตถุ สามารถค้นหาวัตถุเหล่านี้ได้ผ่านทางคุณสมบัติของตัวทําดัชนี ชื่อหรือดัชนี

**BuiltInDocumentProperties** นอก จาก นี้ ยัง ให้ โอกาส ที่ จะ ได้ รับ คุณสมบัติ ของ เอกสาร โดย ผ่าน ชุด คุณสมบัติ ที่ เข้า มา ซึ่ง จะ นํา มา ใช้ คืน มา จาก ชนิด ที่ เหมาะ สม. **CustomDocumentProperties** คุณสามารถเพิ่มหรือลบคุณสมบัติของเอกสารออกจากเอกสารได้

เดอะ [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) คลาสอนุญาตให้คุณได้ชื่อ, ค่า, และประเภทของคุณสมบัติของเอกสาร [2013/i. ส/i. บ/i. บ/i/i. บ สืบค้นเมื่อ 2015. Mimeigegeg, 20 ก ฎ/i.8kias language. 2015. {0}. ... {1}7511. 2013/i.8kias เข้าถึง. 2013/i/i.8kias lansononogi 06, 27 ส ส ส ส ส ส ส ส ส ห ห ห ห ห ห ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ ศ. ศ](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) ถึง **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), เพื่อ จะ ได้ มา ซึ่ง คุณค่า ของ ชนิด ที่ เหมาะ สม.

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีบันทึกคุณสมบัติต่าง ๆ ที่สร้างขึ้นภายในและกําหนดเองในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

ใน Microsoft Word, คุณสามารถเข้าถึงคุณสมบัติของเอกสารได้ โดยใช้เมนู "คุณสมบัติแฟ้ม"

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## เพิ่มหรือลบคุณสมบัติของเอกสาร

คุณไม่สามารถเพิ่มหรือลบคุณสมบัติของเอกสารที่เข้าไปด้วยได้ Aspose.Words. คุณสามารถเปลี่ยนหรือปรับปรุงค่าได้เท่านั้น

เพื่อเพิ่มคุณสมบัติของเอกสารที่กําหนดเองด้วย Aspose.Words, ใช้ [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) วิธีการในการส่งชื่อคุณสมบัติใหม่ และค่าของชนิดที่เหมาะสม วิธีการกลับค่าการถูกสร้างใหม่ **DocumentProperty** วัตถุ

เพื่อลบคุณสมบัติที่กําหนดเอง ให้ใช้ [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) วิธีการที่จะส่งชื่อคุณสมบัติที่จะลบ หรือ [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) วิธีการลบคุณสมบัติต่าง ๆ โดยทําดัชนี คุณสามารถลบคุณสมบัติทั้งหมดโดยใช้ [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) วิธี

ตัวอย่างรหัสต่าง ๆ ต่อไปนี้ ตรวจสอบว่า มีคุณสมบัติที่กําหนดเองที่มีชื่อที่กําหนดในเอกสารหรือไม่ และเพิ่มคุณสมบัติของเอกสารที่กําหนดเองบางตัว:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีลบคุณสมบัติของเอกสารที่กําหนดเอง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## ปรับปรุงคุณสมบัติของเอกสาร

Aspose.Words ไม่ได้ทําการปรับปรุงคุณสมบัติของเอกสารโดยอัตโนมัติ Microsoft Word เกี่ยวข้องกับคุณสมบัติบางอย่าง แต่ให้วิธีการปรับปรุงคุณสมบัติทางสถิติบางอย่าง เรียก [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) วิธีการคํานวณและปรับปรุงคุณสมบัติต่อไปนี้:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## ที่อยู่ติดต่อใหม่... @ info: whatsthis

Aspose.Words ให้ [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) วิธีการในการสร้างคุณสมบัติของเอกสารที่กําหนดเองที่เชื่อมโยงไปยังเนื้อหา คุณสมบัตินี้จะคืนค่าเป็นออบเจกต์คุณสมบัติที่ถูกสร้างใหม่ หรือว่าง [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) ใช้งานไม่ได้

ตัวอย่างรหัสต่อไปนี้ แสดงวิธีปรับแต่งการเชื่อมโยงไปยังคุณสมบัติที่กําหนดเอง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## หาตัวแปรของเอกสาร

คุณสามารถหาชุดตัวแปรของเอกสารได้ โดยใช้ [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) ทรัพย์สิน ชื่อและค่าตัวแปรคือสตริง

ตัวอย่างรหัสต่อไปนี้แสดงถึงวิธีหาตัวแปรของเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มต้นแบบของตัวอย่างนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## ลบข้อมูลส่วนบุคคลออกจากเอกสาร

หาก คุณ ต้องการ แบ่ง เอกสาร เกี่ยว กับ พระ คํา ให้ กับ คน อื่น ๆ คุณ อาจ ต้องการ ลบ ข้อมูล ส่วน ตัว เช่น ชื่อ และ บริษัท ผู้ เขียน. เพื่อทําสิ่งนี้ [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) คุณสมบัติที่จะตั้งธงแสดงว่า Microsoft Word จะทําการลบข้อมูลของผู้ใช้ทั้งหมด ออกจากหมายเหตุ, แก้ไขใหม่, และคุณสมบัติของเอกสารเมื่อมีการบันทึกเอกสาร

{{% alert color="primary" %}}

การตั้งค่าตัวเลือกนี้ ไม่ได้ทําการลบข้อมูลส่วนตัวระหว่างประมวลผลเอกสาร Aspose.Words และมีผลกระทบต่อเฉพาะ Microsoft Word พฤติกรรม

{{% /alert %}}
