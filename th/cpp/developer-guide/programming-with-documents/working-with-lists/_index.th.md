---
title: การทำงานกับรายการในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับรายการ
linktitle: การทำงานกับรายการ
description: "รู้เบื้องต้นเกี่ยวกับคุณลักษณะการจัดรูปแบบหมายเลขใน Aspose.WordsสำหรับC++."
type: docs
weight: 200
url: /th/cpp/working-with-lists/
---

รายการในเอกสารMicrosoft Wordคือชุดของคุณสมบัติการจัดรูปแบบรายการ รายการสามารถใช้ในเอกสารของคุณเพื่อจัดรูปแบบจัดเรียงและเน้นข้อความ รายการเป็นวิธีที่ดีในการจัดระเบียบข้อมูลในเอกสารและทำให้ผู้อ่านเข้าใจประเด็นสำคัญ.

แต่ละรายการสามารถมีได้ถึง9ระดับและคุณสมบัติการจัดรูปแบบเช่นสไตล์ตัวเลขค่าเริ่มต้น.

ในAspose.Wordsการทำงานกับรายการจะแสดงโดยเนมสเปซ[Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/) อย่างไรก็ตามออบเจกต์[List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/)เป็นของคอลเล็กชัน[ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/)เสมอ.

หัวข้อนี้อธิบายวิธีทำงานโดยโปรแกรมกับรายการโดยใช้Aspose.Words.

## ระบุการจัดรูปแบบสำหรับระดับรายการ

อ็อบเจ็กต์ระดับรายการจะถูกสร้างขึ้นโดยอัตโนมัติเมื่อรายการถูกสร้างขึ้น ใช้คุณสมบัติและเมธอดของคลาสของ[ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/)เพื่อควบคุมการจัดรูปแบบของแต่ละระดับของรายการ.

## รายการรีสตาร์ทสำหรับแต่ละส่วน

คุณสามารถรีสตาร์ทรายการสำหรับแต่ละส่วนโดยใช้คุณสมบัติ[IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/) โปรดทราบว่าตัวเลือกนี้ได้รับการสนับสนุนเฉพาะในRTF,DOCและDOCXรูปแบบเอกสาร ตัวเลือกนี้จะถูกเขียนถึงDOCXเฉพาะในกรณีที่OoxmlComplianceสูงกว่าแล้วเอ็กมา 376.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการสร้างรายการและเริ่มต้นใหม่สำหรับแต่ละส่วน:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
