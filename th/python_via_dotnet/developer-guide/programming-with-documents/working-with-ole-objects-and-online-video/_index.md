---
title: วัตถุ OLE และวิดีโอออนไลน์
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: การทำงานกับ OLE Objects และวิดีโอออนไลน์
linktitle: การทำงานกับ OLE Objects และวิดีโอออนไลน์
description: "แทรกออบเจ็กต์ ole หรือวิดีโอออนไลน์ลงในเอกสารโดยใช้ Python"
type: docs
weight: 360
url: /th/python-net/working-with-ole-objects/
---

OLE (การเชื่อมโยงและการฝังวัตถุ) เป็นเทคโนโลยีที่ผู้ใช้สามารถทำงานกับเอกสารที่มี "วัตถุ" ที่สร้างหรือแก้ไขโดยแอปพลิเคชันบุคคลที่สาม นั่นคือ OLE อนุญาตให้แอปพลิเคชันแก้ไขส่งออก "ออบเจ็กต์" เหล่านี้ไปยังแอปพลิเคชันแก้ไขอื่น จากนั้นนำเข้าพร้อมเนื้อหาเพิ่มเติม

ในบทความนี้ เราจะพูดถึงการแทรกวัตถุ OLE และการตั้งค่าคุณสมบัติ รวมถึงการแทรกวิดีโอออนไลน์ลงในเอกสาร

## แทรกวัตถุ OLE

ถ้าคุณต้องการ OLE Object ให้เรียกใช้เมธอด [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) และส่งผ่าน **ProgId** อย่างชัดเจนพร้อมกับพารามิเตอร์อื่นๆ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกวัตถุ OLE ลงในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### ตั้งชื่อไฟล์และนามสกุลเมื่อแทรกวัตถุ OLE

แพคเกจ OLE เป็นวิธีดั้งเดิมและ "ไม่มีเอกสาร" ในการจัดเก็บวัตถุที่ฝังตัวหากไม่รู้จักตัวจัดการ OLE

Windows เวอร์ชันก่อนหน้า เช่น Windows 3.1, 95 และ 98 มีแอปพลิเคชัน Packager.exe ที่สามารถใช้เพื่อฝังข้อมูลประเภทใดก็ได้ลงในเอกสาร ขณะนี้แอปพลิเคชันนี้แยกออกจาก Windows แล้ว แต่ Microsoft Word และแอปพลิเคชันอื่นๆ ยังคงใช้เพื่อฝังข้อมูล หากตัวจัดการ OLE หายไปหรือไม่ทราบ คลาส `OlePackage` อนุญาตให้ผู้ใช้เข้าถึงคุณสมบัติ OLE Package

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีตั้งชื่อไฟล์ นามสกุล และชื่อที่แสดงสำหรับ OLE Package:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### เข้าถึงข้อมูลดิบของวัตถุ OLE

ผู้ใช้สามารถเข้าถึงข้อมูลวัตถุ OLE โดยใช้คุณสมบัติและวิธีการต่างๆ ของคลาส `OleFormat` ตัวอย่างเช่น คุณสามารถรับข้อมูลดิบของวัตถุ `OLE` หรือเส้นทางและชื่อของไฟล์ต้นฉบับสำหรับวัตถุ OLE ที่เชื่อมโยงได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการรับข้อมูลดิบของวัตถุ OLE โดยใช้วิธี [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### แทรกวัตถุ OLE เป็นไอคอน

วัตถุ OLE ยังสามารถแทรกลงในเอกสารเป็นรูปภาพได้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกวัตถุ OLE เป็นไอคอน เพื่อจุดประสงค์นี้ คลาส [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) เปิดเผยวิธีการ [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกวัตถุ OLE ที่ฝังตัวเป็นไอคอนจากกระแสข้อมูลลงในเอกสาร:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## แทรกวิดีโอออนไลน์

สามารถแทรกวิดีโอออนไลน์ลงในเอกสาร Word ได้จากแท็บ *"แทรก"&gt; "วิดีโอออนไลน์"* คุณสามารถแทรกวิดีโอออนไลน์ลงในเอกสารที่ตำแหน่งปัจจุบันได้โดยการเรียกวิธี [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/)

คลาส [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) แนะนำวิธีการโอเวอร์โหลดสี่ครั้ง อันแรกใช้งานได้กับแหล่งข้อมูลวิดีโอยอดนิยมและใช้ `URL` ของวิดีโอเป็นพารามิเตอร์ ตัวอย่างเช่น การโอเวอร์โหลดครั้งแรกรองรับการแทรกวิดีโอออนไลน์อย่างง่ายจากทรัพยากร [ยูทูบ](https://www.youtube.com/) และ [วิมีโอ](https://vimeo.com/)

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแทรกวิดีโอออนไลน์จาก *Vimeo* ลงในเอกสาร:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

การโอเวอร์โหลดครั้งที่สองทำงานร่วมกับทรัพยากรวิดีโออื่นๆ ทั้งหมด และใช้โค้ด HTML ที่ฝังไว้เป็นพารามิเตอร์ รหัส HTML สำหรับการฝังวิดีโออาจแตกต่างกันไปขึ้นอยู่กับผู้ให้บริการ ดังนั้นโปรดติดต่อผู้ให้บริการที่เกี่ยวข้องเพื่อขอรายละเอียด

{{% alert color="primary" %}}

โปรดทราบว่าเอกสารจะได้รับการปรับให้เหมาะสมโดยอัตโนมัติสำหรับ MS Word 2013 เพื่อแสดงวิดีโอ

{{% /alert %}}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีแทรกวิดีโอออนไลน์ลงในเอกสารโดยใช้โค้ด HTML ดังกล่าว:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}