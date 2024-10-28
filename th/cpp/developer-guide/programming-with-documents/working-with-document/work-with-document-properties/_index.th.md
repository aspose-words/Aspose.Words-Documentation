---
title: ทำงานกับคุณสมบัติของเอกสารในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: ทำงานกับคุณสมบัติของเอกสาร
linktitle: ทำงานกับคุณสมบัติของเอกสาร
description: "Aspose.WordsสำหรับC++ อนุญาตให้จัดเก็บข้อมูลที่เป็นประโยชน์บางอย่างเกี่ยวกับเอกสารของคุณเช่นAPIและหมายเลข."
type: docs
weight: 10
url: /th/cpp/work-with-document-properties/
---

คุณสมบัติของเอกสาร คุณสมบัติเหล่านี้สามารถแบ่งออกเป็นสองกลุ่ม:

* ระบบหรือในตัวที่ประกอบด้วยค่าเช่นชื่อเอกสารชื่อผู้เขียนเอกสารสถิติและอื่นๆ.
* ผู้ใช้กำหนดหรือกำหนดเองให้เป็นคู่ชื่อ-ค่าที่ผู้ใช้สามารถกำหนดทั้งชื่อและค่า.

มันเป็นประโยชน์ที่จะรู้ว่าข้อมูลเกี่ยวกับAPIและหมายเลขรุ่นจะถูกเขียนโดยตรงไปยังเอกสา ตัวอย่างเช่นเมื่อแปลงเอกสารเป็นPDFAspose.Wordsกรอกข้อมูลในฟิลด์"แอพลิเคชัน"ด้วย"Aspose.Words"และฟิลด์"PDFโปรดิวเซอร์"ด้Aspose.WordsสำหรับC++ YY.ม.เอ็น"ที่*YY.M.N*เป็นรุ่นของAspose.Wordsใช้สำหรับการแปลง สำหรับรายละเอียดเพิ่มเติมโปรดดูที่ [เครื่องกำเนิดไฟฟ้าหรือชื่อผู้ผลิตที่รวมอยู่ในเอกสารที่ส่งออก](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

โปรดทราบว่าคุณ**cannot direct**Aspose.Wordsเพื่อเปลี่ยนแปลงหรือลบข้อมูลนี้ออกจากเอกสารที่ส่งออก.

{{% /alert %}}

## คุณสมบัติการเข้าถึงเอกสาร

ในการเข้าถึงคุณสมบัติของเอกสารในAspose.Wordsใช้:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/)เพื่อรับคุณสมบัติในตัว.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/)เพื่อรับคุณสมบัติที่กำหนดเอง.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

คลาส[DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/)ช่วยให้คุณสามารถรับชื่อค่าและชนิดของคุณสมบัติเอกสาร [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/)ส่งกลับวัตถุแต่มีชุดของวิธีการที่ช่วยให้คุณได้รับค่าคุณสมบัติแปลงเป็นชนิดที่เฉพาะเจาะจง หลังจากที่คุณได้รับรู้ว่าประเภทคุณสมบัติคืออะไรคุณสามารถใช้หนึ่งในวิธีการ**DocumentProperty.ToXXX**เช่น**DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/)และ**DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/)เพื่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุคุณสมบัติในตัวและแบบกำหนดเองทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

ในMicrosoft Wordคุณสามารถเข้าถึงคุณสมบัติของเอกสารโดยใช้เมนู"คุณสมบัติซีดีไฟล์".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## เพิ่มหรือลบคุณสมบัติของเอกสาร

คุณไม่สามารถเพิ่มหรือลบคุณสมบัติเอกสารในตัวโดยใช้Aspose.Words คุณสามารถเปลี่ยนหรืออัปเดตค่าได้เท่านั้น.

เมื่อต้องการเพิ่มคุณสมบัติเอกสารที่กำหนดเองด้วยAspose.Wordsใช้วิธีการ[Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/)ผ่านชื่อคุณสมบัติใหม่และค่าข เมธอดส่งคืนออบเจกต์**DocumentProperty**ที่สร้างขึ้นใหม่.

เมื่อต้องการลบคุณสมบัติที่กำหนดเองให้ใช้วิธีการ[Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/)โดยส่งชื่อคุณสมบัติให้ลบหรือวิธีการ[RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/)เพื่อ นอกจากนี้คุณยังสามารถลบคุณสมบัติทั้งหมดโดยใช้วิธีการ[Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

ตัวอย่างรหัสต่อไปนี้ตรวจสอบว่ามีคุณสมบัติที่กำหนดเองที่มีชื่อที่กำหนดอยู่ในเอกสารและเ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเอาคุณสมบัติเอกสารที่กำหนดเอง:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## ปรับปรุงคุณสมบัติของเอกสารในตัว

Aspose.Wordsจะไม่อัปเดตคุณสมบัติของเอกสารโดยอัตโนมัติเนื่องจากMicrosoft Wordใช้กับคุณสมบัติบางอย่างแต่มีวิธี เรียกวิธีการ[UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/)เพื่อคำนวณใหม่และอัพเดตคุณสมบัติต่อไปนี้:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## สร้างคุณสมบัติที่กำหนดเองใหม่ที่เชื่อมโยงกับเนื้อหา

Aspose.Wordsจัดเตรียมวิธีการ[AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/)เพื่อสร้างคุณสมบัติเอกสารที่กำหนดเองใหม่ที่เชื่อมโยงกับเนื้อหา คุณสมบัตินี้ส่งคืนอ็อบเจ็กต์คุณสมบัติที่สร้างขึ้นใหม่หรือโมฆะถ้า[LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/)ไม่ถูกต้อง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการกำหนดค่าการเชื่อมโยงไปยังคุณสมบัติที่กำหนดเอง:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## รับตัวแปรเอกสาร

คุณสามารถรับคอลเลกชันของตัวแปรเอกสารโดยใช้คุณสมบัติ[Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/) ชื่อตัวแปรและค่าเป็นสตริง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการระบุตัวแปรเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## ลบข้อมูลส่วนบุคคลออกจากเอกสาร

ถ้าคุณต้องการแบ่งปันเอกสารคำกับผู้อื่นคุณอาจต้องการลบข้อมูลส่วนบุคคลเช่นชื่อผู้เขียน เมื่อต้องการทำเช่นนี้ให้ใช้คุณสมบัติ[RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/)เพื่อตั้งค่าแฟล็กที่ระบุว่าMicrosoft Wordจะลบข้อมูลผู้ใช้ทั้งหมดออกจา.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบข้อมูลส่วนบุคคล:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

การตั้งค่าตัวเลือกนี้จะไม่ลบข้อมูลส่วนบุคคลในขณะที่ประมวลผลเอกสารในAspose.Wordsและมีผลต่อพฤติกรรมเท่านั้นMicrosoft Word.

{{% /alert %}}
