---
title: การติดตั้ง
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การติดตั้ง
linktitle: การติดตั้ง
description: "ติดตั้ง Aspose.Words สำหรับ Python โดยใช้เครื่องมือ Visual Studio เช่น Manage NuGet Packages หรือ Package Manager Console และโปรแกรมติดตั้ง MSI ใช้ชุดสิทธิ์ Full Trust"
type: docs
weight: 10
url: /th/python-net/installation/
---

ตรวจสอบให้แน่ใจว่าเครื่องของคุณตรงตาม [ความต้องการของระบบ](/words/th/python-net/system-requirements/) ก่อนที่จะเริ่มต้น

บทความนี้จะอธิบายวิธีการติดตั้ง Aspose.Words สำหรับ Python via .NET บนคอมพิวเตอร์ของคุณ

`pip` เป็นวิธีที่ง่ายที่สุดในการดาวน์โหลดและติดตั้ง [Aspose.Words สำหรับ Python via .NET](https://pypi.org/project/aspose-words/) API เมื่อต้องการทำเช่นนี้ให้รันคำสั่งต่อไปนี้:

`pip install aspose-words`

เมื่อติดตั้งโมดูลแล้ว คุณจะสามารถใช้งานได้จากรหัส Python ของคุณ:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
