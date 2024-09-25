---
title: วิธีสร้างตารางจาก `DataTable` ในรูปแบบ C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: สร้างตารางจาก `DataTable`
linktitle: สร้างตารางจาก `DataTable`
description: "ตัวอย่างการกรอกตารางเอกสารจากฐานข้อมูลภายนอกโดยใช้ C#"
type: docs
weight: 120
url: /th/net/how-to-build-a-table-from-a-datatable/
---

บ่อยครั้งที่แอปพลิเคชันของคุณจะดึงข้อมูลจากฐานข้อมูลและจัดเก็บไว้ในรูปแบบ **DataTable** คุณสามารถแทรกข้อมูลนี้ลงในเอกสารของคุณเป็นตารางใหม่ได้อย่างง่ายดาย และใช้การจัดรูปแบบกับทั้งตารางได้อย่างรวดเร็ว

{{% alert color="primary" %}}

โปรดทราบว่าวิธีที่แนะนำในการแทรกข้อมูลจาก **DataTable** ลงในตารางเอกสารคือการใช้ [Mail Merge พร้อมภูมิภาค](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) แนะนำให้ใช้เทคนิคที่นำเสนอในบทความนี้เฉพาะในกรณีที่คุณไม่สามารถสร้างเทมเพลตที่เหมาะสมก่อนที่จะรวมข้อมูลเข้าด้วยกัน กล่าวคือ หากคุณต้องการให้ทุกอย่างเกิดขึ้นโดยทางโปรแกรม

{{% /alert %}}

เมื่อใช้ Aspose.Words คุณสามารถดึงข้อมูลจากฐานข้อมูลและจัดเก็บเป็นตารางได้อย่างง่ายดาย:

1. สร้างวัตถุ **DocumentBuilder** ใหม่บน **Document** ของคุณ
1. เริ่มตารางใหม่โดยใช้ **DocumentBuilder**
1. หากเราต้องการแทรกชื่อของแต่ละคอลัมน์จาก **DataTable** ของเราเป็นแถวส่วนหัว ให้วนซ้ำแต่ละคอลัมน์ข้อมูลและเขียนชื่อคอลัมน์ลงในแถวในตาราง
1. วนซ้ำแต่ละ **DataRow** ใน **DataTable**:
   1. วนซ้ำแต่ละออบเจ็กต์ใน **DataRow**
   1. แทรกวัตถุลงในเอกสารโดยใช้ **DocumentBuilder** วิธีการที่ใช้ขึ้นอยู่กับประเภทของวัตถุที่ถูกแทรก เช่น **DocumentBuilder.Writeln** สำหรับข้อความและ **DocumentBuilder.InsertImage** สำหรับอาร์เรย์ไบต์ซึ่งแสดงถึงรูปภาพ
   1. เมื่อสิ้นสุดการประมวลผล **DataRow** ให้สิ้นสุดแถวที่สร้างโดย **DocumentBuilder** โดยใช้ **DocumentBuilder.EndRow**
1. เมื่อประมวลผลแถวทั้งหมดจาก **DataTable** แล้ว ให้จบตารางโดยเรียก **DocumentBuilder.EndTable**
1. ในที่สุด เราก็สามารถตั้งค่าสไตล์ตารางที่ต้องการได้โดยใช้คุณสมบัติตารางที่เหมาะสม เช่น **Table.StyleIdentifier** เพื่อใช้การจัดรูปแบบกับทั้งตารางโดยอัตโนมัติ

วิธีการ **ImportTableFromDataTable** ยอมรับออบเจ็กต์ **DocumentBuilder** ซึ่งเป็น **DataTable** ที่มีข้อมูลและแฟล็กที่ระบุว่าส่วนหัวของคอลัมน์จาก **DataTable** รวมอยู่ที่ด้านบนของตารางหรือไม่ เมธอดนี้จะสร้างตารางจากพารามิเตอร์เหล่านี้โดยใช้ตำแหน่งและการจัดรูปแบบปัจจุบันของตัวสร้าง จัดเตรียมวิธีการนำเข้าข้อมูลจาก `DataTable` และแทรกลงในตารางใหม่โดยใช้ DocumentBuilder

ข้อมูลต่อไปนี้ใน **DataTable** ของเราถูกใช้ในตัวอย่างนี้:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีดำเนินการอัลกอริทึมด้านบนใน Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

จากนั้นสามารถเรียกวิธีการนี้ได้อย่างง่ายดายโดยใช้ **DocumentBuilder** และข้อมูลของคุณ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการนำเข้าข้อมูลจาก `DataTable` และแทรกลงในตารางใหม่ในเอกสาร:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
