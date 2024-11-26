---
title: ทำงานกับคุณสมบัติเอกสาร
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ทำงานกับคุณสมบัติเอกสาร
linktitle: ทำงานกับคุณสมบัติเอกสาร
description: "Aspose.Words สำหรับ Python ช่วยให้สามารถจัดเก็บข้อมูลที่เป็นประโยชน์เกี่ยวกับเอกสารของคุณ เช่น API และหมายเลขเวอร์ชันหรือ Date ที่ได้รับอนุญาต ในคุณสมบัติเอกสารในตัวหรือแบบกำหนดเอง"
type: docs
weight: 10
url: /th/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

คุณสมบัติเอกสารช่วยให้สามารถจัดเก็บข้อมูลที่เป็นประโยชน์เกี่ยวกับเอกสารของคุณได้ คุณสมบัติเหล่านี้สามารถแบ่งออกเป็นสองกลุ่ม:

* ระบบหรือบิวด์อินที่มีค่าต่างๆ เช่น ชื่อเอกสาร ชื่อผู้เขียน สถิติเอกสาร และอื่นๆ
* ผู้ใช้กำหนดหรือกำหนดเอง โดยระบุเป็นคู่ของชื่อ-ค่า ซึ่งผู้ใช้สามารถกำหนดทั้งชื่อและค่าได้

มีประโยชน์ที่จะทราบว่าข้อมูลเกี่ยวกับ API และหมายเลขเวอร์ชันถูกเขียนโดยตรงไปยังเอกสารเอาท์พุต ตัวอย่างเช่น เมื่อแปลงเอกสารเป็น PDF แล้ว Aspose.Words จะเติมในช่อง "Application" ด้วย "Aspose.Words" และช่อง "PDF Producer" ด้วย "Aspose.Words สำหรับ .NET YY.MN" โดยที่ *YY.M.N* คือเวอร์ชันของ Aspose.Words ที่ใช้สำหรับการแปลง. สำหรับรายละเอียดเพิ่มเติม โปรดดูที่ [ชื่อตัวสร้างหรือผู้ผลิตรวมอยู่ในเอกสารเอาต์พุต](/words/th/python-net/generator-or-producer-name-included-in-output-documents/)

{{% alert color="primary" %}}

โปรดทราบว่าคุณ **ไม่สามารถกำกับได้** Aspose.Words เพื่อเปลี่ยนแปลงหรือลบข้อมูลนี้ออกจากเอกสารที่ส่งออก

{{% /alert %}}

## เข้าถึงคุณสมบัติเอกสาร

หากต้องการเข้าถึงคุณสมบัติของเอกสารใน Aspose.Words ให้ใช้:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) เพื่อรับคุณสมบัติในตัว

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) เพื่อรับคุณสมบัติที่กำหนดเอง

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) และ [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) เป็นคอลเลกชันของวัตถุ [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) วัตถุเหล่านี้สามารถรับได้ผ่านคุณสมบัติตัวสร้างดัชนีตามชื่อหรือตามดัชนี

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) ยังให้สิทธิ์เข้าถึงคุณสมบัติของเอกสารผ่านชุดคุณสมบัติที่ป้อนซึ่งส่งคืนค่าประเภทที่เหมาะสม [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) ช่วยให้คุณสามารถเพิ่มหรือลบคุณสมบัติของเอกสารออกจากเอกสารได้

คลาส [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) ช่วยให้คุณได้รับชื่อ ค่า และประเภทของคุณสมบัติเอกสาร [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) ส่งคืนออบเจ็กต์ แต่มีชุดของวิธีการที่ช่วยให้คุณได้รับค่าคุณสมบัติที่แปลงเป็นประเภทเฉพาะ หลังจากที่คุณทราบว่าคุณสมบัติเป็นประเภทใด คุณสามารถใช้วิธี **DocumentProperty.to_XXX** อย่างใดอย่างหนึ่ง เช่น **DocumentProperty.\_\_str\_\_** และ [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/) เพื่อรับค่าของประเภทที่เหมาะสมได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการระบุคุณสมบัติที่มีอยู่แล้วภายในและแบบกำหนดเองทั้งหมดในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx)

{{% /alert %}}

ใน Microsoft Word คุณสามารถเข้าถึงคุณสมบัติของเอกสารได้โดยใช้เมนู "ไฟล์ → คุณสมบัติ"

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="ทำงานกับเอกสารคุณสมบัติ-1.png" style="width:400px"/>

## เพิ่มหรือลบคุณสมบัติเอกสาร

คุณไม่สามารถเพิ่มหรือลบคุณสมบัติเอกสารในตัวโดยใช้ Aspose.Words คุณสามารถเปลี่ยนหรืออัปเดตค่าได้เท่านั้น

หากต้องการเพิ่มคุณสมบัติเอกสารที่กำหนดเองด้วย Aspose.Words ให้ใช้วิธีการ [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) โดยส่งชื่อคุณสมบัติใหม่และค่าของประเภทที่เหมาะสม วิธีการส่งกลับวัตถุ [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) ที่สร้างขึ้นใหม่

หากต้องการลบคุณสมบัติที่กำหนดเอง ให้ใช้วิธี [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) โดยส่งชื่อคุณสมบัติที่จะลบ หรือวิธี [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) เพื่อลบคุณสมบัติตามดัชนี คุณยังสามารถลบคุณสมบัติทั้งหมดโดยใช้วิธี [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/)

ตัวอย่างโค้ดต่อไปนี้จะตรวจสอบว่ามีคุณสมบัติแบบกำหนดเองที่มีชื่อที่กำหนดอยู่ในเอกสารหรือไม่ และเพิ่มคุณสมบัติเอกสารแบบกำหนดเองอีกสองสามรายการ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบคุณสมบัติเอกสารแบบกำหนดเอง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## อัปเดตคุณสมบัติเอกสารในตัว

Aspose.Words จะไม่อัปเดตคุณสมบัติของเอกสารโดยอัตโนมัติ เช่นเดียวกับที่ Microsoft Word ทำกับคุณสมบัติบางอย่าง แต่มีวิธีการอัปเดตคุณสมบัติเอกสารในตัวทางสถิติบางอย่าง เรียกวิธีการ [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) เพื่อคำนวณใหม่ และปรับปรุงคุณสมบัติต่อไปนี้:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## สร้างคุณสมบัติแบบกำหนดเองใหม่ที่เชื่อมโยงกับเนื้อหา

Aspose.Words มีเมธอด [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) เพื่อสร้างคุณสมบัติเอกสารที่กำหนดเองใหม่ที่เชื่อมโยงกับเนื้อหา คุณสมบัตินี้จะส่งคืนอ็อบเจ็กต์คุณสมบัติที่สร้างขึ้นใหม่หรือเป็นโมฆะหาก **link_source** ไม่ถูกต้อง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีกำหนดค่าลิงก์ไปยังคุณสมบัติที่กำหนดเอง:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## รับตัวแปรเอกสาร

คุณสามารถรับคอลเลกชันของตัวแปรเอกสารได้โดยใช้คุณสมบัติ [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) ชื่อและค่าของตัวแปรเป็นสตริง

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเพิ่มและเข้าถึงตัวแปรเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์เทมเพลตของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx)

{{% /alert %}}

## ลบข้อมูลส่วนบุคคลออกจากเอกสาร

หากคุณต้องการแชร์เอกสาร Word กับบุคคลอื่น คุณอาจต้องการลบข้อมูลส่วนบุคคล เช่น ชื่อผู้เขียนและบริษัท ในการดำเนินการนี้ ให้ใช้คุณสมบัติ [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) เพื่อตั้งค่าสถานะที่ระบุว่า Microsoft Word จะลบข้อมูลผู้ใช้ทั้งหมดออกจากความคิดเห็น การแก้ไข และคุณสมบัติเอกสารเมื่อบันทึกเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการลบข้อมูลส่วนบุคคล:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

การตั้งค่าตัวเลือกนี้จริงๆ แล้วจะไม่ลบข้อมูลส่วนบุคคลขณะประมวลผลเอกสารใน Aspose.Words และส่งผลต่อลักษณะการทำงานของ Microsoft Word เท่านั้น

{{% /alert %}}
