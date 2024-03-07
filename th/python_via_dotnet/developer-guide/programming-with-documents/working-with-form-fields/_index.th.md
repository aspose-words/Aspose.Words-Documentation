---
title: การทำงานกับช่องแบบฟอร์มใน Python
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับเขตข้อมูลฟอร์ม
linktitle: การทำงานกับเขตข้อมูลฟอร์ม
description: "แทรก รับ หรือจัดรูปแบบช่องแบบฟอร์มในเอกสารโดยใช้ Python"
type: docs
weight: 380
url: /th/python-net/working-with-form-fields/
---

เอกสารที่มีการกรอกข้อมูลช่องว่าง (เขตข้อมูล) เรียกว่าแบบฟอร์ม ตัวอย่างเช่น คุณสามารถสร้างแบบฟอร์มการลงทะเบียนใน Microsoft Word ที่ใช้รายการแบบเลื่อนลงซึ่งผู้ใช้สามารถเลือกรายการได้ ฟิลด์ `Form` คือตำแหน่งที่จัดเก็บข้อมูลประเภทใดประเภทหนึ่ง เช่น ชื่อหรือที่อยู่ ช่องแบบฟอร์มใน Microsoft Word ประกอบด้วยการป้อนข้อความ กล่องคำสั่งผสม และช่องทำเครื่องหมาย

คุณสามารถใช้ช่องแบบฟอร์มในโครงการของคุณเพื่อ "สื่อสาร" กับผู้ใช้ของคุณได้ ตัวอย่างเช่น คุณสร้างเอกสารที่มีการป้องกันเนื้อหา แต่สามารถแก้ไขได้เฉพาะช่องแบบฟอร์มเท่านั้น ผู้ใช้สามารถป้อนข้อมูลในช่องแบบฟอร์มและส่งเอกสารได้ แอปพลิเคชันของคุณที่ใช้ Aspose.Words สามารถดึงข้อมูลจากช่องแบบฟอร์มและประมวลผลได้

การวางฟิลด์แบบฟอร์มลงในเอกสารด้วยโค้ดเป็นเรื่องง่าย [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) มีวิธีพิเศษในการแทรก โดย 1 วิธีสำหรับช่องแบบฟอร์มแต่ละประเภท แต่ละวิธียอมรับพารามิเตอร์สตริงที่แสดงชื่อของฟิลด์แบบฟอร์ม ชื่อสามารถเป็นสตริงว่างได้ อย่างไรก็ตาม หากคุณระบุชื่อสำหรับฟิลด์แบบฟอร์ม บุ๊กมาร์กจะถูกสร้างขึ้นโดยอัตโนมัติด้วยชื่อเดียวกัน

## การแทรกฟิลด์แบบฟอร์ม

ฟิลด์ฟอร์มเป็นกรณีเฉพาะของฟิลด์ Word ที่อนุญาตให้ "โต้ตอบ" กับผู้ใช้ ช่องแบบฟอร์มใน Microsoft Word ประกอบด้วยกล่องข้อความ กล่องคำสั่งผสม และช่องทำเครื่องหมาย

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) มีวิธีพิเศษในการแทรกช่องแบบฟอร์มแต่ละประเภทลงในเอกสาร: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) และ [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) โปรดทราบว่าหากคุณระบุชื่อสำหรับฟิลด์แบบฟอร์ม บุ๊กมาร์กจะถูกสร้างขึ้นโดยอัตโนมัติด้วยชื่อเดียวกัน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเขตข้อมูลแบบฟอร์ม Combobox ลงในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### แทรกการป้อนข้อความ

ใช้วิธี [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) เพื่อแทรกกล่องข้อความลงในเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกฟิลด์แบบฟอร์มป้อนข้อความลงในเอกสาร:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### ใส่กล่องกาเครื่องหมาย

โทร [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) เพื่อแทรกช่องทำเครื่องหมายลงในเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกฟิลด์แบบฟอร์มช่องทำเครื่องหมายลงในเอกสาร:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### ใส่กล่องคำสั่งผสม

โทร [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) เพื่อแทรก Combobox ลงในเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเขตข้อมูลแบบฟอร์ม Combobox ลงในเอกสาร:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## รับฟิลด์แบบฟอร์ม

คอลเลกชันของฟิลด์แบบฟอร์มแสดงโดยคลาส [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) ที่สามารถดึงข้อมูลได้โดยใช้คุณสมบัติ [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/) ซึ่งหมายความว่า คุณสามารถรับฟิลด์แบบฟอร์มที่อยู่ในโหนดเอกสารใดๆ รวมถึงตัวเอกสารด้วย

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างต่อไปนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx)

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

คุณสามารถรับฟิลด์ฟอร์มเฉพาะตามดัชนีหรือชื่อ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเข้าถึงฟิลด์แบบฟอร์ม:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

คุณสมบัติ [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) ช่วยให้คุณสามารถทำงานกับชื่อฟิลด์ของฟอร์ม ประเภท และผลลัพธ์ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับชื่อเขตข้อมูลแบบฟอร์ม ประเภท และผลลัพธ์:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## จัดรูปแบบฟิลด์แบบฟอร์ม

คุณสมบัติ [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) ของ [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) อนุญาตให้ใช้การจัดรูปแบบแบบอักษรกับ [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) โดยรวมรวมถึงค่าฟิลด์ด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้การจัดรูปแบบแบบอักษรกับ **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
