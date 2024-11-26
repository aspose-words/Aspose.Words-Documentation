---
title: ติดตามการเปลี่ยนแปลงในเอกสารในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ติดตามการเปลี่ยนแปลงในเอกสาร
linktitle: ติดตามการเปลี่ยนแปลงในเอกสาร
description: "ติดตามการเปลี่ยนแปลงเนื้อหาและการจัดรูปแบบที่ทำโดยคุณหรือผู้อื่น เข้าถึงการแก้ไขแต่ละรายการในเอกสารและใช้คุณสมบัติต่างๆกับคุณสมบัติเหล่านั้นโดยใช้Java."
type: docs
weight: 270
url: /th/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

ฟังก์ชันการทำงานของการเปลี่ยนแปลงแทร็กหรือที่เรียกว่าการตรวจทานช่วยให้คุณสามา คุณลักษณะการเปลี่ยนแปลงแทร็คนี้ด้วยAspose.Wordsรองรับการเปลี่ยนแปลงแทร็คในMicrosoft Word ด้วยฟังก์ชันการทำงานนี้คุณสามารถเข้าถึงการแก้ไขแต่ละรายการในเอกสารของคุณและ.

เมื่อคุณเปิดใช้งานคุณลักษณะการเปลี่ยนแปลงแทร็กองค์ประกอบทั้งหมดที่แทรกลบและแก้ไข วัตถุที่นำข้อมูลเกี่ยวกับสิ่งที่เปลี่ยนแปลงจะเรียกว่า"การติดตามการเปลี่ยนแปลง" ตัวอย่างเช่นสมมติว่าคุณต้องการตรวจสอบเอกสารและทำการเปลี่ยนแปลงที่สำคัญ-นี้อาจ นอกจากนี้คุณอาจต้องแทรกความคิดเห็นเพื่อหารือเกี่ยวกับการเปลี่ยนแปลงบางอย่าง นั่นคือที่ที่การติดตามการเปลี่ยนแปลงในเอกสารมาใน.

บทความนี้อธิบายถึงวิธีจัดการและติดตามการเปลี่ยนแปลงที่สร้างขึ้นโดยผู้ตรวจทานจำนว.

{{% alert color="primary" %}}

โปรดทราบว่าคุณลักษณะความคิดเห็นในAspose.WordsและในMicrosoft Wordสามารถเชื่อมโยงกับการเปลี่ยนแปลงการติดตามได้ การติดตามการเปลี่ยนแปลง.

{{% /alert %}}

## การแก้ไขคืออะไร

ก่อนที่จะดำน้ำในการแก้ไขขออธิบายความหมายของการแก้ไข [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/)คือการเปลี่ยนแปลงที่เกิดขึ้นในโหนดหนึ่งของเอกสารในขณะที่กลุ่มการแก้ไขแสดงโดย[RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/)คื การแก้ไขเป็นเครื่องมือสำหรับการติดตามการเปลี่ยนแปลง.

การแก้ไขจะใช้ในคุณลักษณะการเปลี่ยนแปลงการติดตามและภายในคุณลักษณะเปรียบเทีย ดังนั้นการแก้ไขภายในคุณลักษณะการเปลี่ยนแปลงการติดตามจะแสดงโดยใครและสิ่งที่ได้.

{{% alert color="primary" %}}

โปรดทราบว่าMicrosoft Wordไม่อนุญาตให้คุณดูการแก้ไขแต่ละครั้งอนุญาตให้คุณดูการแก้ไขตามลำดับเป็น แต่Aspose.Wordsแก้ข้อจำกัดนี้ด้วยชั้นเรียน**RevisionGroup**.

{{% /alert %}}

Aspose.Wordsรองรับประเภทการแก้ไขที่แตกต่างกันเช่นเดียวกับในMicrosoft Wordเช่นการแทรกการลบFormatChange,StyleDefinitionChangeและการย้าย ประเภทการแก้ไขทั้งหมดจะแสดงด้วยการแจงนับ[RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/).

{{% alert color="primary" %}}

โปรดทราบว่าการแก้ไขมีผลคล้ายกับMicrosoft Wordแต่Aspose.Wordsไม่พบการจัดรูปแบบระหว่างการเปลี่ยนแปลงกา.

{{% /alert %}}

## เริ่มและหยุดการติดตามการเปลี่ยนแปลง

การแก้ไขเอกสารมักจะไม่นับเป็นการแก้ไขจนกว่าคุณจะเริ่มติดตาม Aspose.Wordsช่วยให้คุณสามารถติดตามการเปลี่ยนแปลงทั้งหมดในเอกสารของคุณโดยอัตโนมัติด้วยขั้น คุณสามารถเริ่มกระบวนการติดตามการเปลี่ยนแปลงได้โดยใช้วิธีการ[StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) การแก้ไขในอนาคตไม่ได้รับการพิจารณาการแก้ไขคุณจะต้องใช้วิธีการ[StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions).

{{% alert color="primary" %}}

โปรดทราบว่าวิธีการ`StartTrackingRevisions`ไม่ได้เปลี่ยนสถานะของคุณสมบัติ[TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions)และไม่ได้ใช้ค่าของมันเพื่อจุดมุ่งหม นอกจากนี้หากโหนดถูกย้ายจากตำแหน่งหนึ่งไปยังอีกตำแหน่งหนึ่งภายในเอกสารที่ติดตาม.

{{% /alert %}}

ในตอนท้ายของกระบวนการการติดตามการเปลี่ยนแปลงในเอกสารของคุณ,คุณจะมีความส นี้สามารถทำได้โดยใช้วิธีการ[AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions)หรือ[RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) นอกจากนี้คุณสามารถยอมรับหรือปฏิเสธการแก้ไขแต่ละครั้งแยกกันได้โดยใช้วิธีการ[Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept)หรือ[Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject).

การเปลี่ยนแปลงทั้งหมดจะได้รับการติดตามสำหรับหนึ่งซ้ำจากช่วงเวลาที่คุณเริ่มต้นกระบ การเชื่อมต่อระหว่างการทำซ้ำที่แตกต่างกันจะแสดงเป็นสถานการณ์สมมติต่อไปนี้:คุณทำกระ ด้วยสถานการณ์สมมตินี้การเปลี่ยนแปลงทั้งหมดที่คุณไม่ยอมรับหรือปฏิเสธจะปรากฏขึ้นอีกค.

{{% alert color="primary" %}}

โปรดทราบว่าวิธีการ`AcceptAllRevisions`คล้ายกับ"ยอมรับการเปลี่ยนแปลงทั้งหมด"ในMicrosoft Word.

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับการเปลี่ยนแปลงการติดตาม:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีสร้างการแก้ไขเมื่อโหนดถูกย้ายภายในเอกสารที่ติดตาม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## จัดการและจัดเก็บการเปลี่ยนแปลงเป็นการแก้ไข

ด้วยคุณลักษณะการเปลี่ยนแปลงการติดตามก่อนหน้านี้คุณสามารถเข้าใจว่ามีการเปลี่ยนแป ในขณะที่มีคุณลักษณะ[TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions)คุณบังคับให้มีการเปลี่ยนแปลงใดๆในเอกสารของคุณจะถูกเก็บไว้เป็นก.

Aspose.Wordsช่วยให้คุณสามารถตรวจสอบว่าเอกสารมีการแก้ไขหรือไม่โดยใช้คุณสมบัติ[HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) หากคุณไม่จำเป็นต้องติดตามการเปลี่ยนแปลงในเอกสารของคุณโดยอัตโนมัติผ่านวิธีการStartTrackRevisionsและStopTrackRevisionsคุณสามารถใช้คุณสมบัติ`TrackRevisions`เพื่อตรวจสอบว่ามีการติดตามการเปลี่ยนแปลงในขณะที่แก้ไขเอกสารในMicrosoft Wordและจัดเก็บไว้เป็นการแก้ไขหรือไม่.

คุณลักษณะ`TrackRevisions`ทำการแก้ไขแทนการเปลี่ยนแปลงจริงDOM แต่การแก้ไขตัวเองแยกกัน ตัวอย่างเช่นถ้าคุณลบย่อหน้าใดๆให้เป็นAspose.Wordsแก้ไขให้ทำเครื่องหมายว่าเป็นลบแทนที่จะลบย่อหน้า.

นอกจากนี้Aspose.Wordsช่วยให้คุณสามารถตรวจสอบว่าวัตถุถูกแทรก,ลบ,หรือเปลี่ยนรูปแบบโดยใช้การ[IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), และคุณสมบัติ[IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision).

{{% alert color="primary" %}}

โปรดทราบว่าไม่มีการเชื่อมต่อระหว่างการแก้ไขตัวเองและคุณสมบัติ`TrackRevisions` นอกจากนี้คุณสามารถยอมรับ/ปฏิเสธการแก้ไขได้โดยไม่คำนึงถึงคุณลักษณะการเปลี่ยนแป.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัติที่แตกต่างกันกับการแก้ไข:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
