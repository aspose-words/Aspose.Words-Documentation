---
title: ติดตั้งแบบอักษร TrueType บน Linux
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ติดตั้งแบบอักษร TrueType บน Linux
linktitle: ติดตั้งแบบอักษร TrueType บน Linux
description: "Aspose.Words สำหรับ Python ช่วยให้สามารถเรนเดอร์เอกสารที่สร้างโดยใช้ Microsoft Word บนเครื่อง Linux ได้อย่างแม่นยำที่สุด เพื่อให้บรรลุเป้าหมายนี้ ให้คัดลอกไฟล์ฟอนต์จากเครื่อง Windows หรือติดตั้งแพ็คเกจฟอนต์ `TrueType` ลงบนเครื่อง Linux ของคุณ"
type: docs
weight: 20
url: /th/python-net/installing-truetype-fonts-on-linux/
---

โดยส่วนใหญ่ คุณจะใช้ Aspose.Words เพื่อแปลงเอกสาร DOC หรือ DOCX เป็นรูปแบบ PDF หากคุณจำเป็นต้องทำเช่นนี้บนเครื่อง Linux หัวข้อนี้จะช่วยให้คุณเรียนรู้วิธีทำให้แน่ใจว่า Aspose.Words แสดงผลเอกสารของคุณด้วยความแม่นยำสูงสุด

บ่อยครั้งที่เอกสาร DOC และ DOCX ซึ่งจำเป็นต้องแปลงถูกสร้างขึ้นโดยใช้ Microsoft Word บนระบบปฏิบัติการ Windows หรือ Mac OS ดังนั้น แบบอักษรส่วนใหญ่ที่ใช้ในเอกสาร DOC และ DOCX จึงเป็น "แบบอักษร Windows" หรือ "แบบอักษร Office" ซึ่งเป็นแบบอักษรที่ติดตั้งด้วย Microsoft Windows หรือ Microsoft Office แบบอักษรเหล่านี้ ได้แก่ Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings และอื่นๆ อีกมากมาย

ปัญหาคือว่าแบบอักษร `TrueType` ที่แสดงข้างต้นไม่ได้ถูกติดตั้งตามค่าเริ่มต้นในการแจกแจง Linux หากคุณใช้เอกสาร DOCX ทั่วไปที่จัดรูปแบบด้วยแบบอักษร Cambria และพยายามแปลงเป็นรูปแบบ PDF บน Linux Aspose.Words จะใช้แบบอักษรอื่นเนื่องจาก Cambria ไม่พร้อมใช้งาน ด้วยเหตุนี้ เอกสาร PDF จึงดูแตกต่างไปเมื่อเปรียบเทียบกับเอกสาร DOCX ต้นฉบับ เพื่อให้แน่ใจว่าเอกสารที่แปลงโดย Aspose.Words จะปรากฏใกล้เคียงกับต้นฉบับมากที่สุด คุณต้องติดตั้ง "แบบอักษร Windows" บนระบบ Linux ของคุณ

มีสองวิธีหลักในการรับแบบอักษร TrueType บนระบบ Linux:

- คัดลอกไฟล์ .TTF และ .TTC จากเครื่อง Windows ไปยังเครื่อง Linux ของคุณ
- ติดตั้งแพ็คเกจฟอนต์ `TrueType` เช่น *msttcorefonts*

## การคัดลอกแบบอักษรจากเครื่อง Windows

วิธีที่ง่ายและรวดเร็วในการรับแบบอักษร TrueType บนระบบ Linux คือการคัดลอกไฟล์ .TTF และ .TTC จากไดเร็กทอรี `C:\Windows\Fonts` บนเครื่อง Windows ไปยังบางไดเร็กทอรีบนเครื่อง Linux ของคุณ คุณไม่จำเป็นต้องติดตั้งหรือลงทะเบียนแบบอักษรเหล่านี้บน Linux แต่อย่างใด คุณเพียงแค่ต้องระบุตำแหน่งของแบบอักษรโดยใช้คลาส [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) ใน Aspose.Words

{{% alert color="primary" %}}

ตรวจสอบว่าจำเป็นต้องมีใบอนุญาตแบบอักษรหรือไม่ และอ่าน EULA อย่างละเอียดก่อนที่จะติดตั้ง MS Fonts บนระบบปฏิบัติการ Linux ใดๆ

{{% /alert %}}

## ติดตั้งแพ็คเกจแบบอักษร `TrueType`

มีแพ็คเกจ Linux จำนวนมากที่มีแบบอักษร Microsoft TrueType ซึ่งคุณสามารถดาวน์โหลดและติดตั้งลงในเครื่อง Linux ของคุณได้ ขั้นตอนที่แน่นอนอาจแตกต่างกันในการแจกแจง Linux ต่างๆ

- บน Ubuntu ให้ใช้ Synaptic Package Manager เพื่อค้นหาและติดตั้งแพ็คเกจ *ttf-mscorefonts-installer*
- บน openSUSE ให้ใช้ Yast2 → การจัดการซอฟต์แวร์ เพื่อค้นหาและติดตั้งแพ็คเกจ *fetchmsttfonts*
- ใช้ Liberation Fonts ที่ได้รับอนุญาตภายใต้ OFL เป็นทางเลือกแทนแบบอักษร Windows มาตรฐาน: Arial, Times New Roman และ Courier New
- สำหรับแพ็คเกจฟอนต์ที่เหมาะกับการแจกแจง Linux อื่นๆ ให้ค้นหาเอกสารประกอบที่มีอยู่บนอินเทอร์เน็ต

หลังจากติดตั้งแพ็คเกจ Aspose.Words จะค้นหาฟอนต์เหล่านี้ในโฟลเดอร์ในระบบของคุณ และนำไปใช้เมื่อทำงานกับเอกสาร

## ดูสิ่งนี้ด้วย

- [แบบอักษรปลดปล่อย](https://pagure.io/liberation-fonts) เป็นทางเลือกแทนแบบอักษร Windows มาตรฐาน
