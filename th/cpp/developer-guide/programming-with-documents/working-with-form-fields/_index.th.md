---
title: การทำงานกับฟิลด์แบบฟอร์มในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับฟิลด์ฟอร์ม
linktitle: การทำงานกับฟิลด์ฟอร์ม
description: "การทำความเข้าใจคุณลักษณะฟิลด์แบบฟอร์มการทำงานกับฟิลด์แบบฟอร์มโดยใช้C++."
type: docs
weight: 380
url: /th/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

เอกสารที่ประกอบด้วยช่องว่างกรอกข้อมูล(ฟิลด์)เป็นที่รู้จักกันเป็นแบบฟอร์ม ตัวอย่างเช่นคุณสามารถสร้างแบบฟอร์มลงทะเบียนในMicrosoft Wordที่ใช้รายการแบบเลื่อนลงซึ่งผู้ใช้สา ฟิลด์ฟอร์มคือตำแหน่งที่เก็บข้อมูลประเภทใดประเภทหนึ่งเช่นชื่อหรือที่อยู่ ช่องแบบฟอร์มในMicrosoft Wordรวมถึงการป้อนข้อความ,กล่องคำสั่งผสมและช่องทำเครื่องหมาย.

คุณสามารถใช้ฟิลด์ฟอร์มในโครงการของคุณเพื่อ"สื่อสาร"กับผู้ใช้ของคุณ ตัวอย่างเช่นคุณสร้างเอกสารที่มีเนื้อหาได้รับการป้องกันแต่เฉพาะฟิลด์ฟอร์มเท่านั้นที่สามา ผู้ใช้สามารถป้อนข้อมูลในฟิลด์แบบฟอร์มและส่งเอกสาร แอ็พพลิเคชันของคุณที่ใช้Aspose.Wordsสามารถดึงข้อมูลจากฟิลด์ฟอร์มและประมวลผล.

การวางเขตข้อมูลแบบฟอร์มลงในเอกสารผ่านรหัสเป็นเรื่องง่าย [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)มีวิธีการพิเศษสำหรับการแทรกพวกเขาหนึ่งสำหรับแต่ละชนิดฟิลด์ฟอร์ม. แต่ละเมธอดยอมรับพารามิเตอร์สตริงที่แสดงชื่อของฟิลด์ฟอร์ม ชื่อสามารถเป็นสตริงที่ว่างเปล่า บฟิลด์ฟอร์มบุ๊กมาร์กจะถูกสร้างขึ้นโดยอัตโนมัติด้วยชื่อเดียวกัน.

## การแทรกฟิลด์ฟอร์ม

เขตข้อมูลฟอร์มเป็นกรณีเฉพาะของเขตข้อมูลคำที่ช่วยให้"โต้ตอบ"กับผู้ใช้ ฟิลด์แบบฟอร์มในMicrosoft Wordรวมถึงกล่องข้อความกล่องคำสั่งผสมและช่องทำเครื่องหมาย.

**DocumentBuilder**

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกฟิลด์ฟอร์มกล่องคำสั่งผสมลงในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## การได้รับเขตข้อมูลแบบฟอร์ม

คอลเล็กชันของฟิลด์ฟอร์มจะแสดงโดยคลาสของ[FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/)ที่สามารถดึงข้อมูลได้โดยใช้คุณสมบัติ[FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/) ซึ่งหมายความว่าคุณสามารถขอรับเขตข้อมูลฟอร์มที่มีอยู่ในโหนดเอกสารใดๆรวมถึงเอกสา.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับคอลเลกชันของเขตข้อมูลฟอร์ม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

คุณจะได้รับฟิลด์แบบฟอร์มโดยเฉพาะอย่างยิ่งโดยดัชนีหรือชื่อ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการเข้าถึงฟิลด์ฟอร์ม:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

คุณสมบัติ**FormField**ช่วยให้คุณสามารถทำงานกับชื่อฟิลด์แบบฟอร์มชนิดและผลลัพธ์ได้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการทำงานกับฟอร์มชื่อฟิลด์ชนิดและผลลัพธ์:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
