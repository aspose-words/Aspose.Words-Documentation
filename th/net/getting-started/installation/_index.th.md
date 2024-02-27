---
title: การติดตั้ง
second_title: Aspose.Words สำหรับ .NET
articleTitle: การติดตั้ง
linktitle: การติดตั้ง
description: "ติดตั้ง Aspose.Words สำหรับ .NET โดยใช้เครื่องมือ Visual Studio เช่น Manage NuGet Packages หรือ Package Manager Console และโปรแกรมติดตั้ง MSI ใช้สิทธิ์ Full Trust ที่ตั้งไว้ใน C#"
type: docs
weight: 10
url: /th/net/installation/
---

ตรวจสอบให้แน่ใจว่าเครื่องของคุณตรงตาม [ความต้องการของระบบ](/words/th/net/system-requirements/) ก่อนที่จะเริ่มต้น

บทความนี้จะอธิบายวิธีการติดตั้ง Aspose.Words สำหรับ .NET บนคอมพิวเตอร์ของคุณ

## ติดตั้งหรืออัปเดต Aspose.Words สำหรับ .NET โดยใช้ Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet เป็นวิธีที่ง่ายที่สุดในการดาวน์โหลดและติดตั้ง [Aspose.Words สำหรับ .NET](https://www.nuget.org/packages/Aspose.Words/) API โดยทำตามขั้นตอนเหล่านี้:

1. เปิด *Microsoft Visual Studio* และ *Manage NuGet Packages* จากเมนูเพื่อเปิดตัวจัดการแพ็คเกจ
2. ค้นหา "aspose" หรือ "aspose.words" เพื่อค้นหา Aspose API ที่ต้องการ<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-คำ-nuget" style="width:800px"/>
3. เลือก Aspose API ที่ต้องการแล้วคลิก "ติดตั้ง"

API ที่เลือกจะถูกดาวน์โหลดและอ้างอิงในโปรเจ็กต์ของคุณ

คุณยังสามารถอัปเดต Aspose.Words สำหรับ .NET เป็นเวอร์ชันที่ต้องการได้โดยใช้ *Manage NuGet Packages*

## ติดตั้งหรืออัปเดต Aspose.Words โดยใช้ Package Manager Console

คุณยังติดตั้งหรืออัปเดต Aspose.Words สำหรับ .NET API ได้โดยใช้ *Package Manager Console* โดยทำตามขั้นตอนเหล่านี้:

1. เปิด *Microsoft Visual Studio* และ *Package Manager Console* จากเมนูเพื่อเปิดคอนโซลตัวจัดการแพ็คเกจ<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. พิมพ์คำสั่ง `Install-Package Aspose.Words` แล้วกด Enter เพื่อติดตั้งเวอร์ชันเต็มล่าสุดลงในแอปพลิเคชันของคุณ<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   นอกจากนี้ {{% alert color="primary" %}}In คุณสามารถเพิ่มส่วนต่อท้าย `-prerelease` ให้กับคำสั่งเพื่อระบุว่าควรติดตั้งรุ่นล่าสุด รวมถึงโปรแกรมแก้ไขด่วนด้วย {{% /alert %}}
3. เมื่อดาวน์โหลดแล้ว คุณจะเห็นข้อความยืนยัน<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-คำ-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}หากคุณไม่คุ้นเคยกับ [กำหนดให้ EULA](https://about.aspose.com/legal/eula/) ขอแนะนำให้อ่านใบอนุญาตที่อ้างอิงใน URL.{{% /alert %}}
4. ตอนนี้คุณอาจพบว่ามีการเพิ่มและอ้างอิง Aspose.Words ในใบสมัครของคุณสำเร็จแล้ว<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-คำ-nuget-อ้างอิง" style="width:400px"/>

ใน *Package Manager Console* คุณยังสามารถใช้คำสั่ง `Update-Package Aspose.Words` เพื่อตรวจสอบการอัปเดตแพ็คเกจ Aspose.Words และติดตั้งหากมีอยู่ คุณยังเพิ่มส่วนต่อท้าย `-prerelease` เพื่ออัปเดตเวอร์ชันล่าสุดได้อีกด้วย

## ติดตั้ง Aspose.Words สำหรับ .NET โดยใช้ตัวติดตั้ง

สามารถติดตั้ง Aspose.Words สำหรับ .NET ได้โดยการดาวน์โหลดตัวติดตั้ง MSI โดยตรงจาก [ส่วนการดาวน์โหลด](https://releases.aspose.com/words/)

{{% alert color="primary" %}}

คุณต้องเข้าสู่ระบบเพื่อดาวน์โหลดตัวติดตั้ง หากคุณยังไม่ได้ลงทะเบียน คุณสามารถลงทะเบียนได้ฟรี

{{% /alert %}}

หากต้องการติดตั้ง Aspose.Words สำหรับ .NET ให้ทำตามขั้นตอนเหล่านี้:

1. ดาวน์โหลด `Aspose.Words_`{LatestVersion}.msi จาก [ส่วนการดาวน์โหลด](https://releases.aspose.com/words/)
2. คลิกสองครั้งที่ไฟล์ที่ดาวน์โหลด เพื่อเริ่มต้นวิซาร์ดการตั้งค่า ทำตามคำแนะนำของวิซาร์ดการตั้งค่า<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-คำ-การตั้งค่า-1" style="width:500px"/>
3. เมื่อวิซาร์ดการตั้งค่าเสร็จสิ้นการติดตั้ง ไฟล์ที่ต้องการจะพร้อมใช้งานในโฟลเดอร์ตามเส้นทางโฟลเดอร์ที่ให้ไว้<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-คำ-การตั้งค่า-4" style="width:500px"/>
4. เปิดโซลูชัน/โครงการของคุณใน Visual Studio
5. คลิกขวาที่โปรเจ็กต์ของคุณใน *Solution Explorer* และเพิ่มการอ้างอิงไปยังแอสเซมบลีที่ติดตั้ง
6. Aspose.Words สำหรับแอสเซมบลีที่ติดตั้ง .NET จะปรากฏในส่วนขยายภายใต้ส่วนแอสเซมบลี – เพียงเลือกส่วนประกอบ DLL ที่ต้องการ<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-คำ-การตั้งค่า-5" style="width:800px"/>
7. สุดท้าย คลิกตกลง

## ข้อควรพิจารณาเมื่อทำงานในสภาพแวดล้อม Server ที่ใช้ร่วมกัน

แนะนำให้ใช้ส่วนประกอบ Aspose .NET ทั้งหมดเพื่อรันด้วยชุดสิทธิ์ *Full Trust* เนื่องจากบางครั้งคอมโพเนนต์ Aspose .NET จำเป็นต้องเข้าถึงการตั้งค่ารีจิสทรีและไฟล์ที่อยู่ในตำแหน่งอื่นที่ไม่ใช่ไดเร็กทอรีเสมือน เช่น การอ่านแบบอักษร นอกจากนี้ ส่วนประกอบ `Aspose.NET` ยังอิงตามคลาสระบบ .NET หลัก ซึ่งบางส่วนจำเป็นต้องได้รับสิทธิ์ *Full Trust* จึงจะทำงานได้ในบางกรณี

ผู้ให้บริการอินเทอร์เน็ตที่โฮสต์แอปพลิเคชันหลายตัวจากบริษัทต่างๆ ส่วนใหญ่บังคับใช้ระดับความปลอดภัย *ความน่าเชื่อถือปานกลาง* ในกรณีของ .NET 2.0 ระดับความปลอดภัยดังกล่าวอาจกำหนดข้อจำกัดต่อไปนี้ ซึ่งอาจส่งผลต่อความสามารถของ Aspose.Words ในการทำงานอย่างถูกต้อง:

- **RegistryPermission** ไม่พร้อมใช้งาน ซึ่งหมายความว่าคุณไม่สามารถเข้าถึงรีจิสทรี ซึ่งจำเป็นต้องระบุแบบอักษรที่ติดตั้งเมื่อแสดงผลเอกสาร
- **FileIOPermission** ถูกจำกัด ซึ่งหมายความว่าคุณสามารถเข้าถึงได้เฉพาะไฟล์ในลำดับชั้นไดเรกทอรีเสมือนของแอปพลิเคชันของคุณเท่านั้น ซึ่งอาจหมายความว่าไม่สามารถอ่านแบบอักษรระหว่างการส่งออกได้

ด้วยเหตุผลเหล่านี้ที่ระบุไว้ข้างต้น ขอแนะนำให้เรียกใช้ Aspose.Words ด้วยสิทธิ์ Full Trust คุณอาจพบว่าฟีเจอร์ไลบรารีบางอย่างจะทำงานเมื่อทำงานที่แตกต่างกันด้วยความเชื่อถือระดับปานกลาง และฟีเจอร์บางอย่างจะไม่ทำงาน เช่น เรนเดอร์ เป็นต้น ซึ่งอาจเกี่ยวข้องกับการเรียกการประมวลผลภาพ GDI+
