---
title: ความต้องการของระบบ
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: ความต้องการของระบบ
linktitle: ความต้องการของระบบ
description: "ก่อนที่คุณจะเริ่มทำงานกับ Aspose.Words สำหรับ Python via .NET ตรวจสอบให้แน่ใจว่าคุณมีคุณสมบัติตรงตามข้อกำหนดของระบบปฏิบัติการ แพลตฟอร์ม และสภาพแวดล้อม เพื่อให้กิจกรรมในอุปกรณ์ของคุณได้รับการพิจารณาอย่างเหมาะสม"
type: docs
weight: 50
url: /th/python-net/system-requirements/
---

Aspose.Words สำหรับ Python via .NET ไม่จำเป็นต้องติดตั้งผลิตภัณฑ์ของบุคคลที่สาม เช่น Microsoft Word Aspose.Words เองเป็นเครื่องมือสำหรับการสร้าง แก้ไข แปลง และเรนเดอร์เอกสารในรูปแบบต่างๆ รวมถึงรูปแบบเอกสาร Microsoft Word

## ระบบปฏิบัติการที่รองรับ

Aspose.Words สำหรับ Python via .NET รองรับระบบปฏิบัติการ 64 บิตหรือ 32 บิตที่ติดตั้ง Python 3.5 หรือใหม่กว่า

<table>
    <tr>
        <td style="font-weight: bold; width:400px">ระบบปฏิบัติการ</td>
        <td style="font-weight: bold; width:400px">รุ่นต่างๆ</td>
    </tr>
    <tr>
        <td>Microsoft Windows</td>
        <td><ul>
            <li>Windows 2003 Server (x64, x86)</li>
            <li>Windows 2008 Server (x64, x86)</li>
            <li>Windows 2012 Server (x64, x86)</li>
            <li>Windows 2012 R2 Server (x64, x86)</li>
            <li>Windows 2016 Server (x64, x86)</li>
            <li>Windows 2019 Server (x64, x86)</li>
            <li>Windows XP (x64, x86)</li>
            <li>Windows Vista (x64, x86)</li>
            <li>Windows 7 (x64, x86)</li>
            <li>Windows 8, 8.1 (x64, x86)</li>
            <li>Windows 10 (x64, x86)</li>
        </ul></td>
    </tr>
    <tr>
        <td>ระบบปฏิบัติการ macOS</td>
        <td><ul>
            <li>macOS-x86_64: 10.14 หรือใหม่กว่า</li>
            <li>macOS-arm64: 11.0 หรือใหม่กว่า</li>
        </ul></td>
    </tr>
    <tr>
        <td>Linux</td>
        <td><ul>
            <li>Ubuntu</li>
            <li>OpenSUSE</li>
            <li>CentOS</li>
            <li>และคนอื่น ๆ</li>
        </ul></td>
    </tr>
</table>

## ข้อกำหนดของระบบสำหรับแพลตฟอร์ม Linux และ macOS เป้าหมาย

- ไลบรารีรันไทม์ GCC-6 (หรือใหม่กว่า)

- การพึ่งพาของ .NET Core Runtime การติดตั้ง .NET Core Runtime เองนั้นจำเป็นต้องมี `NOT`

- สำหรับ Python 3.5-3.7: จำเป็นต้องมีการสร้าง `pymalloc` ของ Python ตัวเลือกการสร้าง `--with-pymalloc` Python ถูกเปิดใช้งานตามค่าเริ่มต้น โดยทั่วไปแล้ว โครงสร้าง `pymalloc` ของ Python จะถูกทำเครื่องหมายด้วยส่วนต่อท้าย `m` ในชื่อไฟล์

- ไลบรารี Python ที่ใช้ร่วมกันของ `libpython` ตัวเลือกการสร้าง `--enable-shared` Python ถูกปิดใช้งานตามค่าเริ่มต้น การแจกแจง Python บางอย่างไม่มีไลบรารีที่ใช้ร่วมกันของ `libpython` สำหรับแพลตฟอร์ม Linux บางแพลตฟอร์ม สามารถติดตั้งไลบรารีที่ใช้ร่วมกันของ `libpython` ได้โดยใช้ตัวจัดการแพ็คเกจ เช่น `sudo apt-get install libpython3.7` ปัญหาทั่วไปคือมีการติดตั้งไลบรารี `libpython` ในตำแหน่งที่แตกต่างจากตำแหน่งระบบมาตรฐานสำหรับไลบรารีที่ใช้ร่วมกัน ปัญหานี้สามารถแก้ไขได้โดยใช้ตัวเลือกการสร้าง Python เพื่อตั้งค่าเส้นทางไลบรารีสำรองเมื่อคอมไพล์ Python หรือแก้ไขโดยการสร้างลิงก์สัญลักษณ์ไปยังไฟล์ไลบรารี `libpython` ในตำแหน่งมาตรฐานของระบบสำหรับไลบรารีที่แชร์ โดยทั่วไป ชื่อไฟล์ไลบรารีที่ใช้ร่วมกันของ `libpython` คือ `libpythonX.Ym.so.1.0` สำหรับ Python 3.5-3.7 หรือ `libpythonX.Y.so.1.0` สำหรับ Python 3.8 หรือใหม่กว่า (เช่น libpython3.7m.so.1.0, libpython3.9.so.1.0)
