---
title: การทำงานกับฟิลด์แบบฟอร์มในJava
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับฟิลด์ฟอร์ม
linktitle: การทำงานกับฟิลด์ฟอร์ม
description: "การทำความเข้าใจคุณลักษณะฟิลด์แบบฟอร์มการทำงานกับฟิลด์แบบฟอร์มโดยใช้Java."
type: docs
weight: 380
url: /th/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

เอกสารที่ประกอบด้วยช่องว่างกรอกข้อมูล(ฟิลด์)เป็นที่รู้จักกันเป็นแบบฟอร์ม ตัวอย่างเช่นคุณสามารถสร้างแบบฟอร์มลงทะเบียนในMicrosoft Wordที่ใช้รายการแบบเลื่อนลงซึ่งผู้ใช้สา ฟิลด์`Form`คือตำแหน่งที่ตั้งที่จัดเก็บข้อมูลประเภทใดประเภทหนึ่งเช่นชื่อหรือที่อยู่ ฟิลด์แบบฟอร์มในMicrosoft Wordรวมถึงการป้อนข้อความcomboboxและcheckbox.

คุณสามารถใช้ฟิลด์ฟอร์มในโครงการของคุณเพื่อ"สื่อสาร"กับผู้ใช้ของคุณ ตัวอย่างเช่นคุณสร้างเอกสารที่มีเนื้อหาได้รับการป้องกันแต่เฉพาะฟิลด์ฟอร์มเท่านั้นที่สามา ผู้ใช้สามารถป้อนข้อมูลในฟิลด์แบบฟอร์มและส่งเอกสาร แอ็พพลิเคชันของคุณที่ใช้Aspose.Wordsสามารถดึงข้อมูลจากฟิลด์ฟอร์มและประมวลผล.

การวางเขตข้อมูลแบบฟอร์มลงในเอกสารผ่านรหัสเป็นเรื่องง่าย [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)มีวิธีการพิเศษสำหรับการแทรกพวกเขาหนึ่งสำหรับแต่ละชนิดฟิลด์ฟอร์ม. แต่ละเมธอดยอมรับพารามิเตอร์สตริงที่แสดงชื่อของฟิลด์ฟอร์ม ชื่อสามารถเป็นสตริงที่ว่างเปล่า บฟิลด์ฟอร์มบุ๊กมาร์กจะถูกสร้างขึ้นโดยอัตโนมัติด้วยชื่อเดียวกัน.

## แทรกฟิลด์ฟอร์ม

เขตข้อมูลฟอร์มเป็นกรณีเฉพาะของเขตข้อมูลคำที่ช่วยให้"โต้ตอบ"กับผู้ใช้ ฟิลด์แบบฟอร์มในMicrosoft Wordรวมถึงกล่องข้อความกล่องคำสั่งผสมและcheckbox.

**DocumentBuilder**

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ฟอร์มcomboboxลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### แทรกการป้อนข้อความ

ใช้วิธีการ**insertTextInput**เพื่อแทรกกล่องข้อความลงในเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์แบบฟอร์มการป้อนข้อความลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### ใส่กล่องกาเครื่องหมาย

โทร**insertCheckBox**เพื่อแทรกcheckboxลงในเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ฟอร์มcheckboxลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### ใส่กล่องคำสั่งผสม

โทร**insertComboBox**เพื่อแทรกcomboboxลงในเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ฟอร์มComboboxลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## ขอรับเขตข้อมูลแบบฟอร์ม

คอลเล็กชันของฟิลด์ฟอร์มจะแสดงโดยคลาสของ[FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/)ที่สามารถดึงข้อมูลได้โดยใช้คุณสมบัติ[Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) ซึ่งหมายความว่าคุณสามารถขอรับเขตข้อมูลฟอร์มที่มีอยู่ในโหนดเอกสารใดๆรวมถึงเอกสา.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับคอลเลกชันของเขตข้อมูลฟอร์ม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างต่อไปนี้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

คุณจะได้รับฟิลด์แบบฟอร์มโดยเฉพาะอย่างยิ่งโดยดัชนีหรือชื่อ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเข้าถึงฟิลด์ฟอร์ม:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

คุณสมบัติ**FormField**ช่วยให้คุณสามารถทำงานกับชื่อฟิลด์แบบฟอร์มชนิดและผลลัพธ์ได้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับฟอร์มชื่อฟิลด์ชนิดและผลลัพธ์:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
