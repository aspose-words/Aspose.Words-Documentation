---
title: การทำงานกับช่องแบบฟอร์มใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับเขตข้อมูลแบบฟอร์ม
linktitle: การทำงานกับเขตข้อมูลแบบฟอร์ม
description: "ทำความเข้าใจเกี่ยวกับคุณลักษณะช่องแบบฟอร์ม การทำงานกับช่องแบบฟอร์มโดยใช้ C#"
type: docs
weight: 380
url: /th/net/working-with-form-fields/
---

เอกสารที่มีการกรอกข้อมูลช่องว่าง (เขตข้อมูล) เรียกว่าแบบฟอร์ม ตัวอย่างเช่น คุณสามารถสร้างแบบฟอร์มการลงทะเบียนใน Microsoft Word ที่ใช้รายการแบบเลื่อนลงซึ่งผู้ใช้สามารถเลือกรายการได้ ฟิลด์ `Form` คือตำแหน่งที่จัดเก็บข้อมูลประเภทใดประเภทหนึ่ง เช่น ชื่อหรือที่อยู่ ช่องแบบฟอร์มใน Microsoft Word ประกอบด้วยการป้อนข้อความ กล่องคำสั่งผสม และช่องทำเครื่องหมาย

คุณสามารถใช้ช่องแบบฟอร์มในโครงการของคุณเพื่อ "สื่อสาร" กับผู้ใช้ของคุณได้ ตัวอย่างเช่น คุณสร้างเอกสารที่มีการป้องกันเนื้อหา แต่สามารถแก้ไขได้เฉพาะช่องแบบฟอร์มเท่านั้น ผู้ใช้สามารถป้อนข้อมูลในช่องแบบฟอร์มและส่งเอกสารได้ แอปพลิเคชันของคุณที่ใช้ Aspose.Words สามารถดึงข้อมูลจากช่องแบบฟอร์มและประมวลผลได้

การวางฟิลด์แบบฟอร์มลงในเอกสารด้วยโค้ดเป็นเรื่องง่าย [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) มีวิธีพิเศษในการแทรก โดย 1 วิธีสำหรับช่องแบบฟอร์มแต่ละประเภท แต่ละวิธียอมรับพารามิเตอร์สตริงที่แสดงชื่อของฟิลด์แบบฟอร์ม ชื่อสามารถเป็นสตริงว่างได้ อย่างไรก็ตาม หากคุณระบุชื่อสำหรับฟิลด์แบบฟอร์ม บุ๊กมาร์กจะถูกสร้างขึ้นโดยอัตโนมัติด้วยชื่อเดียวกัน

## แทรกฟิลด์แบบฟอร์ม

ฟิลด์ฟอร์มเป็นกรณีเฉพาะของฟิลด์ Word ที่อนุญาตให้ "โต้ตอบ" กับผู้ใช้ ช่องแบบฟอร์มใน Microsoft Word ประกอบด้วยกล่องข้อความ กล่องคำสั่งผสม และช่องทำเครื่องหมาย

**DocumentBuilder** มีวิธีพิเศษในการแทรกช่องแบบฟอร์มแต่ละประเภทลงในเอกสาร: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) และ [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/) โปรดทราบว่าหากคุณระบุชื่อสำหรับฟิลด์แบบฟอร์ม บุ๊กมาร์กจะถูกสร้างขึ้นโดยอัตโนมัติด้วยชื่อเดียวกัน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเขตข้อมูลแบบฟอร์ม Combobox ลงในเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### แทรกการป้อนข้อความ

ใช้วิธี **InsertTextInput** เพื่อแทรกกล่องข้อความลงในเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกฟิลด์แบบฟอร์มป้อนข้อความลงในเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### ใส่กล่องกาเครื่องหมาย

โทร **InsertCheckBox** เพื่อแทรกช่องทำเครื่องหมายลงในเอกสาร

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกฟิลด์แบบฟอร์มช่องทำเครื่องหมายลงในเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### ใส่กล่องคำสั่งผสม

โทร **InsertComboBox** เพื่อแทรกคอมโบบ็อกซ์ลงในเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกเขตข้อมูลแบบฟอร์ม Combobox ลงในเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## รับฟิลด์แบบฟอร์ม

คอลเลกชันของฟิลด์แบบฟอร์มแสดงโดยคลาส [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) ที่สามารถดึงข้อมูลได้โดยใช้คุณสมบัติ [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/) ซึ่งหมายความว่า คุณสามารถรับฟิลด์แบบฟอร์มที่อยู่ในโหนดเอกสารใดๆ รวมถึงตัวเอกสารด้วย

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างต่อไปนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx)

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการรับคอลเลกชันของฟิลด์แบบฟอร์ม:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

คุณสามารถรับฟิลด์ฟอร์มเฉพาะตามดัชนีหรือชื่อ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการเข้าถึงฟิลด์แบบฟอร์ม:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

คุณสมบัติ **FormField** ช่วยให้คุณสามารถทำงานกับชื่อฟิลด์ของฟอร์ม ประเภท และผลลัพธ์ได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับชื่อเขตข้อมูลแบบฟอร์ม ประเภท และผลลัพธ์:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## จัดรูปแบบฟิลด์แบบฟอร์ม

คุณสมบัติ [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) ของ [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) อนุญาตให้ใช้การจัดรูปแบบแบบอักษรกับ **FormField** โดยรวมรวมถึงค่าฟิลด์ด้วย

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการใช้การจัดรูปแบบแบบอักษรกับ **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
