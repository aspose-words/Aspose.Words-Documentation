---
title: การทำงานกับOLEวัตถุในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับวัตถุOLE
linktitle: การทำงานกับวัตถุOLE
description: "สร้างและแก้ไขOLEฝังในเอกสารของคุณโดยใช้C++."
type: docs
weight: 360
url: /th/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE(การเชื่อมโยงวัตถุและการฝัง)เป็นเทคโนโลยีที่ผู้ใช้สามารถทำงานกับเอกสารที่มี"วัตถุ"ที่ส นั่นคือOLEอนุญาตให้แอ็พพลิเคชันการแก้ไขส่งออก"ออบเจกต์"เหล่านี้ไปยังแอปพลิเคชันการแก้ไข.

ในบทความนี้เราจะพูดถึงการแทรกวัตถุOLEและการตั้งค่าคุณสมบัติลงในเอกสาร.

## แทรกOLEวัตถุ

ถ้าคุณต้องการOLEวัตถุ,เรียกวิธีการ[InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/)และผ่านมัน**ProgId**อย่างชัดเจนกับพารามิเตอร์อื่นๆ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกOLEวัตถุลงในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### ตั้งชื่อไฟล์และนามสกุลเมื่อใส่วัตถุOLE

OLEแพคเกจเป็นแบบดั้งเดิมและ"ไม่มีเอกสาร"วิธีการจัดเก็บวัตถุที่ฝังตัวถ้าไม่ทราบตัวจัดการOLE.

ต้นWindowsรุ่นเช่นWindows3.1,95,และ 98 มีห่อ.โปรแกรมประยุกต์ที่สามารถใช้ในการฝังชนิดของข้อมูลใดๆลงในเอกสาร ตอนนี้แอปพลิเคชันนี้ถูกยกเว้นจากWindowsแต่Microsoft Wordและแอปพลิเคชันอื่นๆยังคงใช้เพื่อฝังข้อมูลหากตัวจัดการOLEหายไปหรือไม่รู้จัก คลาส`OlePackage`อนุญาตให้ผู้ใช้เข้าถึงคุณสมบัติของแพคเกจOLE.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าชื่อแฟ้มส่วนขยายและชื่อที่แสดงสำหรับแพคเกจOLE:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### เข้าถึงข้อมูลดิบของวัตถุOLE

ผู้ใช้สามารถเข้าถึงOLEข้อมูลวัตถุโดยใช้คุณสมบัติต่างๆและวิธีการของ`OleFormat`คลาส มูลดิบของวัตถุ`OLE`หรือพาธและชื่อของไฟล์ต้นฉบับสำหรับออบเจกต์OLEที่เชื่อมโยง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับOLEวัตถุข้อมูลดิบโดยใช้วิธีการ[GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### แทรกวัตถุโอเลเป็นไอคอน

วัตถุOLEยังสามารถแทรกลงในเอกสารเป็นรูปภาพ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกOLEวัตถุเป็นไอคอน เพื่อจุดประสงค์นี้[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)ชั้นแสดงวิธีการ[InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกวัตถุที่ฝังตัวOLEเป็นไอคอนจากสตรีมลงในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## แทรกวิดีโอออนไลน์

วิดีโอออนไลน์สามารถแทรกลงในเอกสารคำจากแท็บ*"Insert" > "Online Video"* คุณสามารถแทรกวิดีโอออนไลน์ลงในเอกสารที่ตำแหน่งปัจจุบันโดยการเรียกวิธีการ[InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)ชั้นแนะนำสี่เกินพิกัดของวิธีนี้. คนแรกทำงานร่วมกับรีซอร์สวิดีโอยอดนิยมมากที่สุดและใช้`URL`ของวิดีโอเป็นพารามิเตอร์ ตัวอย่างเช่นโอเวอร์โหลดครั้งแรกที่สนับสนุนการแทรกง่ายของวิดีโอออนไลน์จาก [YouTube](https://www.youtube.com/) และ [วีมิโอ](https://vimeo.com/) รือไม่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกวิดีโอออนไลน์จาก*Vimeo*ลงในเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

โอเวอร์โหลดที่สองทำงานร่วมกับทรัพยากรวิดีโออื่นๆทั้งหมดและใช้รหัสที่ฝังHTMLเป็นพารามิเต รหัสHTMLสำหรับการฝังวิดีโออาจแตกต่างกันไปขึ้นอยู่กับผู้ให้บริการดังนั้นโปรดติดต่อผู้ให้บริการที่เกี่ยวข้องเพื่อขอรายละเอียด.

{{% alert color="primary" %}}

โปรดทราบว่าเอกสารจะถูกเพิ่มประสิทธิภาพโดยอัตโนมัติสำหรับMSคำ 2013 เพื่อแสดงวิดีโอ.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกวิดีโอออนไลน์ลงในเอกสารโดยใช้รหัสHTMLดังกล่าว:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
