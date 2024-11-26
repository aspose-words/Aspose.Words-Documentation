---
title: การทำงานกับวัตถุOle
second_title: Aspose.WordsสำหรับJava
articleTitle: การทำงานกับวัตถุOle
linktitle: การทำงานกับวัตถุOle
description: "สร้างและแก้ไขOLEฝังในเอกสารของคุณโดยใช้Java."
type: docs
weight: 360
url: /th/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLEหมายถึง"การเชื่อมโยงวัตถุและการฝัง" นี่คือเทคโนโลยีที่ผู้ใช้สามารถทำงานร่วมกับเอกสารที่มี"วัตถุ"ที่สร้างขึ้นหรือแก้ไขโดยโปรแก นั่นคือOLEอนุญาตให้แอปเอ็กซ์ปอร์ต"ออบเจกต์"เหล่านี้ไปยังแอปพลิเคชันอื่นเพื่อแก้ไขจากนั้นนำเขากลับมาพร้อมกับเนื้อหาเพิ่มเติมบางอย่าง.

ในบทความนี้เราจะพูดถึงการแทรกวัตถุOLEและการตั้งค่าคุณสมบัติลงในเอกสาร.

## แทรกOleวัตถุ

ถ้าคุณต้องการOLEวัตถุ,เรียกวิธีการ[InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream)และผ่านมัน**ProgId**อย่างชัดเจนกับพารามิเตอร์อื่นๆ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกOLEวัตถุลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### ตั้งชื่อไฟล์และนามสกุลเมื่อใส่วัตถุOLE

OLEแพคเกจเป็นแบบดั้งเดิมและ"ไม่มีเอกสาร"วิธีการจัดเก็บวัตถุที่ฝังตัวถ้าไม่ทราบตัวจัดการOLE.

รุ่นต้นWindowsเช่นWindows 3.1,95,และ 98 มีแอ็พพลิเคชันPackager.exeที่สามารถใช้เพื่อฝังข้อมูลประเภทใดก็ได้ลงในเอกสาร ตอนนี้แอปพลิเคชันนี้ถูกยกเว้นจากWindowsแต่Microsoft Wordและแอปพลิเคชันอื่นๆยังคงใช้เพื่อฝังข้อมูลหากตัวจัดการOLEหายไปหรือไม่ทราบ คลาส`OlePackage`อนุญาตให้ผู้ใช้เข้าถึงคุณสมบัติOLE Package.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าชื่อไฟล์ส่วนขยายและชื่อที่แสดงสำหรับOLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### เข้าถึงข้อมูลดิบของวัตถุOLE

ผู้ใช้สามารถเข้าถึงOLEข้อมูลวัตถุโดยใช้คุณสมบัติต่างๆและวิธีการของ`OleFormat`คลาส มูลดิบของวัตถุ`OLE`หรือพาธและชื่อของไฟล์ต้นฉบับสำหรับออบเจกต์OLEที่เชื่อมโยง.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการรับOLEวัตถุข้อมูลดิบโดยใช้วิธีการ[GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### แทรกOLEวัตถุเป็นไอคอน

วัตถุOLEยังสามารถแทรกลงในเอกสารเป็นรูปภาพ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกOLEวัตถุเป็นไอคอน เพื่อจุดประสงค์นี้ชั้นเรียน**DocumentBuilder**เปิดเผยวิธีการ[InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกวัตถุที่ฝังตัวOLEเป็นไอคอนจากสตรีมลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## แทรกวิดีโอออนไลน์

วิดีโอออนไลน์สามารถแทรกลงในเอกสารคำจากแท็บ*"Insert" > "Online Video"* คุณสามารถแทรกวิดีโอออนไลน์ลงในเอกสารที่ตำแหน่งปัจจุบันโดยการเรียกวิธีการ[InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double):

คลาส[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)แนะนำสี่เกินพิกัดของวิธีนี้ คนแรกทำงานร่วมกับทรัพยากรวิดีโอที่นิยมมากที่สุดและใช้`URL`ของวิดีโอเป็นพารามิเตอร์ ตัวอย่างเช่นโอเวอร์โหลดครั้งแรกที่สนับสนุนการแทรกง่ายของวิดีโอออนไลน์จาก [YouTube](https://www.youtube.com/) และ [วีมิโอ](https://vimeo.com/) รือไม่.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกวิดีโอออนไลน์จาก*Vimeo*ลงในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

โอเวอร์โหลดที่สองทำงานร่วมกับทรัพยากรวิดีโออื่นๆทั้งหมดและใช้รหัสที่ฝังHTMLเป็นพารามิเต รหัสHTMLสำหรับการฝังวิดีโออาจแตกต่างกันไปขึ้นอยู่กับผู้ให้บริการดังนั้นโปรดติดต่อผู้ให้บริการที่เกี่ยวข้องเพื่อขอรายละเอียด.

{{% alert color="primary" %}}

โปรดทราบว่าเอกสารจะถูกเพิ่มประสิทธิภาพโดยอัตโนมัติสำหรับMSคำ 2013 เพื่อแสดงวิดีโอ.

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการแทรกวิดีโอออนไลน์ลงในเอกสารโดยใช้รหัสHTMLดังกล่าว:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
