---
title: ความต้องการของระบบ
second_title: Aspose.WordsสำหรับJava
articleTitle: ความต้องการของระบบ
linktitle: ความต้องการของระบบ
description: "ก่อนที่คุณจะเริ่มทำงานกับAspose.WordsสำหรับJavaตรวจสอบให้แน่ใจว่าคุณตรงตามข้อกำหนดของระบบปฏิ."
type: docs
weight: 80
url: /th/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.WordsสำหรับJavaไม่จำเป็นต้องใช้ผลิตภัณฑ์ของบุคคลที่สามเช่นMicrosoft Wordที่จะติดตั้ง Aspose.Wordsตัวเองเป็นเครื่องมือสำหรับการสร้างแก้ไขแปลงและการแสดงผลของเอกสารในรูปแบบต่างๆรวมทั้งMicrosoft Wordรูปแบบเอกสาร.

## ระบบปฏิบัติการที่รองรับ

ระบบปฏิบัติการใดๆที่สามารถเรียกใช้Javaสภาพแวดล้อมรันไทม์(JRE)สามารถเรียกใช้Aspose.WordsสำหรับJava ตารางต่อไปนี้แสดงรายการระบบปฏิบัติการที่รองรับมากที่สุดแต่ไม่ทั้งหมด.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">ระบบปฏิบัติการ</td>
			<td style="font-weight: bold; width:400px">รุ่น</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>และอื่นๆ</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOSรุ่น10.9(Mavericks)และต่อมา</li></ul></td>
		</tr>
  <tr>
			<td>มือถือ</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## แพลตฟอร์มคลาวด์ที่รองรับ

Aspose.WordsสำหรับJavaรองรับแพลตฟอร์มคลาวด์ใดๆที่สามารถเรียกใช้Javaโปรแกรมประยุกต์

## รองรับเวอร์ชันJava

Aspose.WordsสำหรับJavaรองรับJava7 และใหม่กว่า หากคุณถูกบังคับให้ใช้Java6 เรายังคงปล่อยแยกต่างหากJARสำหรับJava6.


## การพึ่งพาตัวเลือก

ดังที่เราระบุไว้ข้างต้นAspose.WordsสำหรับJavaต้องใช้*only*สภาวะแวดล้อมรันไทม์Javaและคุณไม่จำเป็นต้องติดตั้ง.

อย่างไรก็ตามบางครั้งมีสถานการณ์ที่คุณอาจต้องเพิ่มไลบรารีของบุคคลที่สาม:

- JogAmp JOGLไลบรารีสำหรับฮาร์ดแวร์เร่งการแสดงผลOpenGL ไลบรารีจะรวมอยู่ในแฟ้มคำPOMเป็นการพึ่งพาภายนอก คุณสามารถแก้ไขไฟล์POMเพื่อรักษาJOGLไหที่จำเป็นสำหรับแพลตฟอร์มของคุณเท่านั้น หรือคุณสามารถเอาการพึ่งพาถ้าคุณไม่ต้องการฮาร์ดแวร์เร่งการแสดงผลOpenGL.
- HarfBuzzเครื่องมือแบบอักษร. มันรวมอยู่แล้วในJRE9 และใหม่กว่า ถ้าคุณกำลังใช้JRE8 หรือมากกว่า,คุณสามารถใช้การพึ่งพาการสร้าง-ฮาร์ฟบัซปลั๊กอินในไฟล์POMของ มารถลบการพึ่งพา.
- Javaภาพขั้นสูง(JAI)เพื่อรองรับภาพTIFF TIFFภาพไม่ได้รับการสนับสนุนโดยJava8 และเก่า สำหรับTIFFการสนับสนุนในสภาพแวดล้อมเก่าJava,Aspose.WordsสำหรับJavaขึ้นอยู่กับ [Javaภาพขั้นสูง(JAI)แพคเกจ](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) จากOracle. เราจะอธิบายวิธีการติดตั้งJAIด้านล่าง.

### วิธีการติดตั้งJAIบนWindows

ทำตามขั้นตอนเหล่านี้เพื่อติดตั้งพื้นเมืองJAIและImageIOบนWindows:

1. ดาวน์โหลด**JAI 1.1.3**.
   ในขณะที่เขียนมีเพียงรุ่น 32 บิตของการติดตั้งที่มีอยู่ดังนั้นหากคุณใช้JDKคุณต้องดาวน์โหลด [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) และถ้าคุณใช้JREคุณต้องดาวน์โหลด [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. เรียกใช้โปรแกรมติดตั้งและชี้ไปที่ไดเร็กทอรีที่ติดตั้งJDK/JRE.
1. ดาวน์โหลด**JAI Image I/O 1.1**.
   ในขณะที่เขียนมีเพียงรุ่น 32 บิตของการติดตั้งที่มีอยู่ดังนั้นหากคุณใช้JDKคุณต้องดาวน์โหลด [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) และถ้าคุณใช้JREคุณต้องดาวน์โหลด [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. เรียกใช้โปรแกรมติดตั้งและชี้ไปที่ไดเร็กทอรีที่ติดตั้งJDK/JRE.

### วิธีการติดตั้งJAIบนLinux

ทำตามขั้นตอนเหล่านี้เพื่อติดตั้งพื้นเมืองJAIและImageIOบนLinux:

1. ดาวน์โหลด**JAI 1.1.3**เลือกสถาปัตยกรรมที่เหมาะสม:
   1. [ผม586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) สำหรับระบบ 32 บิต
   1. [เอเอ็มดี64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) สำหรับ 64 บิต(แม้ว่าจะใช้หน่วยประมวลผลอินเทล)
1. แยกไฟล์ลงในไดเร็กทอรีชั่วคราว.
1. ย้ายแฟ้มJARไปที่JDK/JRE **lib/ext** โฟลเดอร์.
1. ย้ายแฟ้มSOไปที่JDK/JRE **lib/amd64** โฟลเดอร์<br>

   ตัวอย่างเช่นในระบบ 64 บิตUbuntuขั้นตอนที่ 1-4 จะมีลักษณะเช่นนี้:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. ดาวน์โหลด**JAI Image I/O 1.1**เลือกสถาปัตยกรรมที่เหมาะสม:
   1. [ผม586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) สำหรับระบบ 32 บิต
   1. [เอเอ็มดี64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) สำหรับ 64 บิต(แม้ว่าจะใช้หน่วยประมวลผลอินเทล)
1. แยกไฟล์ลงในไดเร็กทอรีชั่วคราว.
1. ย้ายแฟ้มJARไปที่JDK/JRE **lib/ext** โฟลเดอร์.
1. ย้ายแฟ้มSOไปที่JDK/JRE **lib/amd64** โฟลเดอร์<br>

   ตัวอย่างเช่นในระบบ 64 บิตUbuntuขั้นตอนที่ 5-8 จะมีลักษณะเช่นนี้:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## โฟลเดอร์สำหรับแฟ้มชั่วคราว

Aspose.WordsสำหรับJavaใช้ไดเรกทอรีชั่วคราวบนคอมพิวเตอร์ของคุณซึ่งระบุผ่านคุณสมบัติของระบบ`java.io.tmpdir` Aspose.WordsสำหรับJavaเขียนไฟล์ชั่วคราวแล้วลบไฟล์เหล่านี้ทันทีที่การแสดงผลเสร็จสมบูรณ์.

`java.io.tmpdir`เป็นคุณสมบัติของระบบJavaมาตรฐานที่ใช้นโยบายการจัดเก็บข้อมูลบนดิสก์ จะกำหนดตำแหน่งที่JVMเขียนไฟล์ชั่วคราว.
