---
title: ทํางานกับ ฟอร์มฟิลด์ ใน Java
second_title: Aspose.Words สําหรับ Java
articleTitle: การ ทํา งาน กับ สนาม ฟอร์ม
linktitle: การ ทํา งาน กับ สนาม ฟอร์ม
description: "ความเข้าใจในแบบฟอร์ม Java."
type: docs
weight: 380
url: /th/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

เอกสารที่มีช่องว่างเต็ม (ฟิลด์) เป็นที่รู้จักในแบบฟอร์ม ตัวอย่างเช่น คุณสามารถสร้างแบบฟอร์มลงทะเบียนใน Microsoft Word ใช้รายการแบบวางลง ซึ่งผู้ใช้สามารถเลือกรายการได้ เดอะ `Form` ช่อง ว่าง: สนามในแบบฟอร์ม Microsoft Word รวมการป้อนข้อความ, กล่องคอมโบและ checkbox

คุณสามารถใช้รูปแบบสนามในโครงการของคุณ เพื่อ "ติดต่อ" กับผู้ใช้ของคุณ ตัวอย่างเช่น คุณสร้างเอกสารที่มีการป้องกันเนื้อหา แต่เฉพาะสาขารูปทรงเท่านั้นที่สามารถแก้ไขได้ ผู้ใช้สามารถป้อนข้อมูลในช่องข้อมูลฟอร์ม และส่งเอกสารได้ โปรแกรมที่ใช้ Aspose.Words สามารถรับข้อมูลจากสนามฟอร์ม และดําเนินการได้

การวางแบบฟอร์มในเอกสารโดยใช้รหัสง่าย [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) มีวิธีการพิเศษในการแทรกข้อมูลเหล่านี้ เป็นหนึ่งในแต่ละชนิดของสนาม แต่ละวิธียอมรับพารามิเตอร์สตริงแทนชื่อของช่องฟอร์ม ชื่ออาจเป็นข้อความว่าง หากคุณกําหนดชื่อที่จะใช้แสดงในช่องข้อมูลฟอร์มแล้ว ที่คั่นหน้าจะถูกสร้างโดยอัตโนมัติโดยใช้ชื่อเดียวกัน

## แก้ไขโครงการหลัก.

ช่องข้อมูล Form เป็นกรณีเฉพาะของสนามคํา ที่อนุญาตให้ใช้ "โต้ตอบ" กับผู้ใช้ สนามในแบบฟอร์ม Microsoft Word รวมถึงข้อความ กล่องคอมโบ และกล่องเช็ค

**DocumentBuilder** ให้วิธีการพิเศษในการแทรกช่องแต่ละประเภทในเอกสาร: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) หรือ [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีแทรกช่องคอมโบในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### แทรกข้อความเข้า

ใช้ **แทรก แทรกข้อความ** วิธีการแทรกข้อความลงในเอกสาร

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีแทรกช่องป้อนข้อความ ในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### แทรกกล่องกาเลือก

เรียก **แทรกบ็อกซ์** เพื่อใส่ checkbox ลงในเอกสาร

ตัวอย่างโค้ดต่อไปนี้ จะแสดงวิธีการใส่ช่อง checkbox ในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### แทรกกล่องคอมโบ

เรียก **แทรกComboBox** เพื่อแทรกกล่องคอมโบเข้าไปในเอกสาร

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใส่ช่องคอมโบบ็อกซ์ในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## ช่องข้อมูล Obtain Form

คอลเลกชันของสนามฟอร์ม แสดงโดย [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) คลาสที่สามารถรับมาได้โดยใช้ [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) ทรัพย์สิน นี่ หมาย ความ ว่า คุณ สามารถ หา ทุ่ง นา ที่ มี อยู่ ใน โหนด เอกสาร ใด ๆ รวม ทั้ง ตัว เอกสาร ด้วย.

ตัวอย่างโค้ดต่อไปนี้ แสดงให้เห็นว่าจะรวบรวมสนามฟอร์มอย่างไร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดแฟ้มตัวอย่างของตัวอย่างต่อไปนี้ได้ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

คุณสามารถหาช่องฟอร์มได้โดยดัชนีหรือชื่อของมัน

ตัวอย่างรหัสต่อไปนี้ แสดงให้เห็นว่าจะเข้าสู่สนามฟอร์มได้อย่างไร

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

เดอะ **FormField** คุณ สามารถ ทํา งาน ได้ โดย ใช้ ชื่อ, ชนิด, และ ผล.

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ทํา งาน กับ ชื่อ สนาม, ชนิด, และ ผล ที่ ได้:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
