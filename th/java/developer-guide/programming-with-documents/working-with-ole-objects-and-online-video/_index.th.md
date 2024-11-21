---
title: ทํางานกับวัตถุโอเล
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานกับวัตถุโอเล
linktitle: ทํางานกับวัตถุโอเล
description: "สร้างและแก้ไขการฝังตัว OLE ในเอกสารของคุณโดยใช้ Java."
type: docs
weight: 360
url: /th/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

Oble ย่อมาจาก "Object Linking and Arching" นี่เป็นเทคโนโลยีที่ผู้ใช้สามารถทํางานกับเอกสารที่มี "objects" ถูกสร้างหรือแก้ไขโดยโปรแกรมส่วนที่สาม นั่นคือ OLE อนุญาตให้โปรแกรมส่งออก "objects" เหล่านี้ไปยังโปรแกรมอื่น ๆ เพื่อทําการแก้ไข และนําเข้ากลับมาพร้อมกับเนื้อหาเพิ่มเติมบางส่วน

ใน บทความ นี้ เรา จะ คุย กัน เรื่อง การ สอด ของ โอ แอลเล เข้า ไป ใน เอกสาร.

## แทรกวัตถุ

ถ้าคุณต้องการวัตถุโอแอล เรียก [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) วิธีการและส่งมัน **ProgId** ตัวแปรอื่น ๆ ชัดเจน

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใส่ OLE วัตถุไปยังเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### ตั้งชื่อแฟ้มและส่วนขยายเมื่อแทรกวัตถุ

แพกเกจ OLE เป็นมรดก และ "ไม่ต้องเก็บเอกสาร" เป็นวิธีจัดเก็บวัตถุที่ฝังอยู่ หากไม่รู้จักตัวจัดการ OLE

เร็ว Windows รุ่นต่าง ๆ เช่น Windows 3.1, 95, และ 98 มีแพคเกจ โปรแกรมตัวอย่างที่จะใช้ฝังข้อมูลทั้งหมดลงในเอกสารได้ โปรแกรมนี้ถูกแยกออกจาก Windowsแต่ Microsoft Word และโปรแกรมอื่น ๆ ยังคงใช้มันเพื่อฝังข้อมูล หากตัวจัดการ OLE หายไปหรือไม่รู้จัก เดอะ `OlePackage` คลาสอนุญาตให้ผู้ใช้เข้าถึงคุณสมบัติแพกเกจ OLE

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีตั้งค่าชื่อแฟ้ม, ส่วนขยาย, และแสดงชื่อของแพกเกจ OLE:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### รับข้อมูล OLLL

ผู้ใช้สามารถเข้าถึงข้อมูลของออบเจ็กต์ได้ โดยใช้คุณสมบัติต่าง ๆ และวิธีการต่าง ๆ ของ `OleFormat` ชั้นเรียน. ตัวอย่างเช่น มันเป็นไปได้ที่จะ `OLE` ออบเจกต์ข้อมูลดิบ หรือพาธและชื่อของแฟ้มต้นทางสําหรับสิ่งเชื่อมโยงของ OLE

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี หา โอเล วัตถุข้อมูลดิบโดยใช้ [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) วิธีการ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### แทรก วัตถุเป็นไอคอน

นอก จาก นี้ อาจ ใส่ วัตถุ โอพอล ลง ใน เอกสาร เป็น รูป ปั้น ได้ ด้วย.

ตัว อย่าง รหัส ต่อ ไป นี้ แสดง ให้ เห็น วิธี ที่ จะ สอด วัตถุ โอเล เป็น รูป ภาพ. เพื่อจุดประสงค์นี้ **DocumentBuilder** ห้องเรียนเปิดเผย [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) วิธี

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการแทรกวัตถุ OLE ที่ฝังตัวเป็นไอคอนจากลําธารเข้าไปในเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## แทรกวิดีโอออนไลน์

วิดีโอออนไลน์สามารถใส่ลงในเอกสารคําจาก * "insert" > "Onlineวิดีโอ" *แท็บ คุณสามารถแทรกวิดีโอออนไลน์ไปยังเอกสารในตําแหน่งปัจจุบันได้ โดยการเรียก [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) วิธีการ:

เดอะ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ชั้น เรียน แนะ นํา ให้ ใช้ วิธี นี้ มาก เกิน ไป ถึง สี่ วิธี. คนแรกทํางานกับทรัพยากรวิดีโอที่ได้รับความนิยมมากที่สุด และเอา `URL` ของวิดีโอเป็นพารามิเตอร์ ตัวอย่างเช่น การโอเวอร์โหลดครั้งแรก รองรับการแทรกวิดีโอออนไลน์แบบง่ายๆ จาก [YouTube](https://www.youtube.com/) ถึง [วีเมโอะ](https://vimeo.com/) ทรัพยากร

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใส่วิดีโอออนไลน์จาก *Vimeo* ไปยังเอกสาร:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

การโอเวอร์โหลดครั้งที่ 2 ใช้ทรัพยากรวิดีโออื่น ๆ ทั้งหมด และใช้รหัส HTML ที่ฝังอยู่ในเป็นพารามิเตอร์ รหัส HTML สําหรับการคลายแฟ้มวิดีโอ อาจจะแตกต่างกันไป ขึ้นอยู่กับผู้ให้บริการ โปรดติดต่อผู้จัดทํารายละเอียด

{{% alert color="primary" %}}

โปรดสังเกตว่า เอกสารนี้จะถูกปรับแต่งให้เหมาะกับ MSS Word 2013 โดยอัตโนมัติ เพื่อแสดงวิดีโอ

{{% /alert %}}

ตัวอย่างรหัสต่อไปนี้ จะแสดงวิธีการใส่วิดีโอออนไลน์เข้าไปในเอกสารโดยใช้รหัส HTML เช่น:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
