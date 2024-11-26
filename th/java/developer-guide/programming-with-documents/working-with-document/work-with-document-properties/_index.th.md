---
title: ทำงานกับคุณสมบัติของเอกสารในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: ทำงานกับคุณสมบัติของเอกสาร
linktitle: ทำงานกับคุณสมบัติของเอกสาร
description: "Aspose.WordsสำหรับJavaอนุญาตให้จัดเก็บข้อมูลที่เป็นประโยชน์บางอย่างเกี่ยวกับเอกสารของคุณเช่นAPIและหมายเลขรุ่นหรือวันที่ที่ได้รับอนุญาตในคุณสมบัติของเอกสารในตัวหรือแบบกำหนดเอง."
type: docs
weight: 10
url: /th/java/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

คุณสมบัติของเอกสาร คุณสมบัติเหล่านี้สามารถแบ่งออกเป็นสองกลุ่ม:

* ระบบหรือในตัวที่ประกอบด้วยค่าเช่นชื่อเอกสารชื่อผู้เขียนเอกสารสถิติและอื่นๆ.
* ผู้ใช้กำหนดหรือกำหนดเองให้เป็นคู่ชื่อ-ค่าที่ผู้ใช้สามารถกำหนดทั้งชื่อและค่า.

มันเป็นประโยชน์ที่จะรู้ว่าข้อมูลเกี่ยวกับAPIและหมายเลขรุ่นจะถูกเขียนโดยตรงไปยังเอกสา ตัวอย่างเช่นเมื่อแปลงเอกสารเป็นPDFAspose.Wordsกรอกข้อมูลในช่อง"แอพลิเคชัน"ด้วย"Aspose.Words"และช่อง"PDFโปรดิวเซอร์"ด้วย"Aspose.WordsสำหรับJavaYYม.เอ็น"ที่*YY.M.N*เป็นรุ่นของAspose.Wordsใช้สำหรับการแปลง สำหรับรายละเอียดเพิ่มเติมโปรดดูที่ [เครื่องกำเนิดไฟฟ้าหรือชื่อผู้ผลิตที่รวมอยู่ในเอกสารที่ส่งออก](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

โปรดทราบว่าคุณ**cannot direct**Aspose.Wordsเพื่อเปลี่ยนแปลงหรือลบข้อมูลนี้ออกจากเอกสารที่ส่งออก.

{{% /alert %}}

## คุณสมบัติการเข้าถึงเอกสาร

ในการเข้าถึงคุณสมบัติของเอกสารในAspose.Wordsใช้:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties)เพื่อรับคุณสมบัติในตัว.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties)เพื่อรับคุณสมบัติที่กำหนดเอง.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

คลาส[DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/)ช่วยให้คุณสามารถรับชื่อค่าและชนิดของคุณสมบัติเอกสาร [ค่า]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value)ส่งกลับวัตถุแต่มีชุดของวิธีการที่ช่วยให้คุณได้รับค่าทรัพย์สินแปลงเป็นชนิดที่เฉพาะเจาะจง หลังจากที่คุณได้รับรู้ว่าประเภทคุณสมบัติคือ,คุณสามารถใช้วิธีการ**DocumentProperty.ToXXX**อย่างใดอย่างหนึ่ง,เช่น**DocumentProperty.**[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString)และ**DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt)เพื่อให้ได้ค่าของชนิดที่เหมาะสม.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุคุณสมบัติในตัวและแบบกำหนดเองทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

ในMicrosoft Wordคุณสามารถเข้าถึงคุณสมบัติของเอกสารโดยใช้เมนู"คุณสมบัติซีดีไฟล์".

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## เพิ่มหรือลบคุณสมบัติของเอกสาร

คุณไม่สามารถเพิ่มหรือลบคุณสมบัติเอกสารในตัวโดยใช้Aspose.Words คุณสามารถเปลี่ยนหรืออัปเดตค่าได้เท่านั้น.

เมื่อต้องการเพิ่มคุณสมบัติเอกสารที่กำหนดเองด้วยAspose.Wordsใช้วิธีการ[Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean)ผ่านชื่อคุณสมบัติใหม่และค่าข เมธอดส่งคืนออบเจกต์**DocumentProperty**ที่สร้างขึ้นใหม่.

เมื่อต้องการลบคุณสมบัติที่กำหนดเองให้ใช้วิธีการ[Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String)โดยส่งชื่อคุณสมบัติให้ลบหรือวิธีการ[RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int)เพื่อ นอกจากนี้คุณยังสามารถลบคุณสมบัติทั้งหมดโดยใช้วิธีการ[Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear).

ตัวอย่างรหัสต่อไปนี้ตรวจสอบว่ามีคุณสมบัติที่กำหนดเองที่มีชื่อที่กำหนดอยู่ในเอกสารและเ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาคุณสมบัติเอกสารที่กำหนดเอง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## ปรับปรุงคุณสมบัติของเอกสารในตัว

Aspose.Wordsจะไม่อัปเดตคุณสมบัติของเอกสารโดยอัตโนมัติเนื่องจากMicrosoft Wordใช้กับคุณสมบัติบางอย่างแต่มีวิธี เรียกวิธีการ[UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount)เพื่อคำนวณใหม่และอัพเดตคุณสมบัติต่อไปนี้:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## สร้างคุณสมบัติที่กำหนดเองใหม่ที่เชื่อมโยงกับเนื้อหา

Aspose.Wordsจัดเตรียมวิธีการ[AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String)เพื่อสร้างคุณสมบัติเอกสารที่กำหนดเองใหม่ที่เชื่อมโยงกับเนื้อหา คุณสมบัตินี้ส่งคืนอ็อบเจ็กต์คุณสมบัติที่สร้างขึ้นใหม่หรือโมฆะถ้า[LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent)ไม่ถูกต้อง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการกำหนดค่าการเชื่อมโยงไปยังคุณสมบัติที่กำหนดเอง:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## รับตัวแปรเอกสาร

คุณสามารถรับคอลเลกชันของตัวแปรเอกสารโดยใช้คุณสมบัติ[Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) ชื่อตัวแปรและค่าเป็นสตริง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุตัวแปรเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## ลบข้อมูลส่วนบุคคลออกจากเอกสาร

ถ้าคุณต้องการแบ่งปันเอกสารคำกับผู้อื่นคุณอาจต้องการลบข้อมูลส่วนบุคคลเช่นชื่อผู้เขียน เมื่อต้องการทำเช่นนี้ให้ใช้คุณสมบัติ[RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation)เพื่อตั้งค่าแฟล็กที่ระบุว่าMicrosoft Wordจะลบข้อมูลผู้ใช้ทั้งหมดออกจา.

{{% alert color="primary" %}}

การตั้งค่าตัวเลือกนี้จะไม่ลบข้อมูลส่วนบุคคลในขณะที่ประมวลผลเอกสารในAspose.Wordsและมีผลต่อพฤติกรรมเท่านั้นMicrosoft Word.

{{% /alert %}}
