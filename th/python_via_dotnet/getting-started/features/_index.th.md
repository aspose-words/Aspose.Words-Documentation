---
title: คุณสมบัติ
second_title: Aspose.Words สำหรับ Python via .NET
articleTitle: คุณสมบัติที่รองรับ
linktitle: คุณสมบัติที่รองรับ
description: "Aspose.Words สำหรับ Python via .NET มอบคุณลักษณะที่หลากหลายแก่ผู้ใช้ ตั้งแต่การแปลงและแก้ไขเอกสารไปจนถึงการสร้างเอกสารที่มีโครงสร้างและสวยงามสะดุดตา หรือการรายงานอัตโนมัติ"
type: docs
weight: 30
url: /th/python-net/features/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words มอบคุณสมบัติที่หลากหลายให้กับผู้ใช้ ผู้ใช้สามารถทำงานที่เกี่ยวข้องกับเอกสารได้จำนวนมาก ตั้งแต่การแปลงเอกสารจากรูปแบบที่รองรับหนึ่งไปเป็นอีกรูปแบบหนึ่ง และแก้ไขเอกสารเหล่านั้นในระหว่างกระบวนการแปลงไปเป็นงานทางธุรกิจ เช่น การสร้างเอกสารที่มีโครงสร้างและดึงดูดสายตา หรือการรายงานอัตโนมัติ

รูปแบบและมาตรฐานของเอกสารสมัยใหม่มีความซับซ้อน และเมื่อคุณต้องการการแปลงเอกสารหรือคุณสมบัติการประมวลผลเอกสารอื่นๆ ในโปรเจ็กต์ของคุณ วิธีแก้ปัญหาที่ใช้งานได้จริงเพียงอย่างเดียวมักจะต้องอาศัยส่วนประกอบของบริษัทอื่นที่ใช้ฟังก์ชันการทำงานที่ต้องการ แต่การใช้ส่วนประกอบของบุคคลที่สามมักจะมีความเสี่ยงอยู่เสมอ ความเสี่ยงเฉพาะประการหนึ่งในการประมวลผลเอกสารคือคำถามว่าห้องสมุดใช้รูปแบบหรือมาตรฐานของเอกสารเฉพาะเจาะจงและถูกต้องเพียงใด

Aspose มุ่งมั่นที่จะนำเสนอการใช้งานรูปแบบและมาตรฐานเอกสารที่สมบูรณ์และแม่นยำที่สุด ทีม Aspose.Words แสดงให้เห็นถึงความมุ่งมั่นต่อความสามารถในการทำงานร่วมกันโดยจัดทำบันทึกการใช้งานโดยละเอียดสำหรับรูปแบบเอกสารที่รองรับในหลายแพลตฟอร์ม

ตารางด้านล่างสรุปและเปรียบเทียบความพร้อมใช้งานของ Aspose.Words สำหรับฟีเจอร์ Python via .NET และระบุลิงก์ไปยังคำอธิบายฟีเจอร์โดยละเอียด

## แพลตฟอร์มที่รองรับ

แพลตฟอร์ม Aspose.Words สำหรับ Python via .NET สามารถใช้กับ Windows x64 หรือ x86, macOS x86_x64 หรือ arm64 และการกระจาย Linux ที่หลากหลายที่ติดตั้ง Python 3.5 หรือใหม่กว่า มีข้อกำหนดเพิ่มเติมสำหรับแพลตฟอร์ม Linux และ macOS เป้าหมาย:
- ไลบรารีรันไทม์ GCC-6 (หรือใหม่กว่า)
- การพึ่งพาของ .NET Core Runtime การติดตั้ง .NET Core Runtime เองนั้นจำเป็นต้องมี `NOT`
- สำหรับ Python 3.5-3.7: จำเป็นต้องมีการสร้าง `pymalloc` ของ Python ตัวเลือกการสร้าง `--with-pymalloc` Python ถูกเปิดใช้งานตามค่าเริ่มต้น โดยทั่วไปแล้ว โครงสร้าง `pymalloc` ของ Python จะถูกทำเครื่องหมายด้วยส่วนต่อท้าย `m` ในชื่อไฟล์
- ไลบรารี Python ที่ใช้ร่วมกันของ `libpython` ตัวเลือกการสร้าง `--enable-shared` Python ถูกปิดใช้งานตามค่าเริ่มต้น การแจกแจง Python บางอย่างไม่มีไลบรารีที่ใช้ร่วมกันของ `libpython` สำหรับแพลตฟอร์ม Linux บางแพลตฟอร์ม สามารถติดตั้งไลบรารีที่ใช้ร่วมกันของ `libpython` ได้โดยใช้ตัวจัดการแพ็คเกจ เช่น `sudo apt-get install libpython3.7` ปัญหาทั่วไปคือมีการติดตั้งไลบรารี `libpython` ในตำแหน่งที่แตกต่างจากตำแหน่งระบบมาตรฐานสำหรับไลบรารีที่ใช้ร่วมกัน ปัญหานี้สามารถแก้ไขได้โดยใช้ตัวเลือกการสร้าง Python เพื่อตั้งค่าเส้นทางไลบรารีสำรองเมื่อคอมไพล์ Python หรือแก้ไขโดยการสร้างลิงก์สัญลักษณ์ไปยังไฟล์ไลบรารี `libpython` ในตำแหน่งมาตรฐานของระบบสำหรับไลบรารีที่แชร์ โดยทั่วไป ชื่อไฟล์ไลบรารีที่ใช้ร่วมกันของ `libpython` คือ `libpythonX.Ym.so.1.0` สำหรับ Python 3.5-3.7 หรือ libpythonX.Y.so.1.0 สำหรับ Python 3.8 หรือใหม่กว่า (เช่น `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`)

หากคุณต้องการการสนับสนุนสำหรับแพลตฟอร์มเพิ่มเติม ให้มองหาผลิตภัณฑ์ "twin brother" Aspose.Words สำหรับ .NET หรือ Aspose.Words สำหรับ Java

## รูปแบบไฟล์และการแปลง

ลูกค้าจำนวนมากทั่วโลกไว้วางใจคุณสมบัติการนำเข้าและส่งออกเอกสารอย่างละเอียดของ Aspose.Words

|  คุณสมบัติ | คำอธิบาย | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | การใช้งานรูปแบบ DOC ที่รวดเร็วและสมบูรณ์ที่สุดที่คุณสามารถหาได้ | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words ให้การสนับสนุน OOXML, Flat OPC และ Word 2003 XML อย่างครบถ้วนสมบูรณ์ | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | การสนับสนุนที่ครอบคลุมของรูปแบบ RTF เพื่อโต้ตอบกับแอปพลิเคชันที่หลากหลาย | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | โหลดและบันทึก HTML/XHTML เพื่อการทำงานร่วมกันที่ดียิ่งขึ้น บันทึกเป็น MHTML ก็มีให้เช่นกัน | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words สามารถโหลดและบันทึกเอกสารในรูปแบบ `OpenDocument` Text (.odt) ได้ | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | แปลงเอกสารใด ๆ ให้เป็น PDF ด้วยความเที่ยงตรงสูง รองรับ PDF/A | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | แปลงเอกสารใด ๆ เป็น XPS ด้วยความเที่ยงตรงสูง | {{< emoticons/tick >}} |
| `Plain Text - TXT` | แยกข้อความได้อย่างง่ายดายโดยบันทึกในรูปแบบข้อความธรรมดา | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB เป็นรูปแบบยอดนิยมสำหรับ eBook คุณสามารถแปลงเอกสารจาก Aspose.Words เป็นรูปแบบ IDPF EPUB ได้ | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | Aspose.Words สำหรับ .NET ให้การสนับสนุนในการบันทึกเอกสารเป็นรูปแบบ PCL | {{< emoticons/tick >}} |

## การเรนเดอร์และการพิมพ์

ขณะนี้ Aspose.Words ให้การแสดงผลหน้าเอกสารที่มีความแม่นยำสูง

|  คุณสมบัติ | Python via .NET |
|  :-  |  :-  |
| จัดวางเอกสารลงในหน้าที่มีความเที่ยงตรงสูง (เหมือนกับที่ Microsoft Word® จะทำอย่างนั้น) ในทุกรูปแบบด้านล่าง | {{< emoticons/tick >}} |
| แสดงผลแต่ละหน้าหรือเอกสารฉบับสมบูรณ์เป็น PDF หรือ XPS | {{< emoticons/tick >}} |
| เรนเดอร์หน้าเอกสารเป็นอิมเมจ BMP | {{< emoticons/tick >}} |
| เรนเดอร์หน้าเอกสารเป็นรูปภาพ (PNG, EMF, JPEG, GIF) | {{< emoticons/tick >}} |
| แสดงรูปร่างแต่ละรูปร่างจากเอกสารให้เป็นภาพแรสเตอร์หรือเวกเตอร์ | {{< emoticons/tick >}} |
| ระบุความละเอียดของภาพ คุณภาพ การบีบอัด และตัวเลือกอื่นๆ | {{< emoticons/tick >}} |
| เรนเดอร์หน้าหรือรูปร่างเป็นออบเจ็กต์กราฟิก .NET พร้อมการแปลงเป็นขนาดเฉพาะ | {{< emoticons/tick >}} |
| พิมพ์หน้าเอกสารโดยใช้โครงสร้างพื้นฐานการพิมพ์ .NET | {{< emoticons/cross >}} |
| อัปเดต `TOC` หมายเลขหน้า และฟิลด์อื่นๆ ก่อนเรนเดอร์หรือพิมพ์ | {{< emoticons/tick >}} |

## คุณสมบัติเนื้อหาเอกสาร

Aspose.Words มีโมเดล Rich Object ที่ประกอบด้วยคลาสสาธารณะมากกว่า 100 คลาส ซึ่งช่วยให้คุณสร้าง รวม แก้ไข แยกวิเคราะห์ หรือตรวจสอบเอกสารที่โหลดได้โดยทางโปรแกรม

|  คุณสมบัติ | Python via .NET |
|  :-  |  :-  |
| เข้าถึง สร้าง และแก้ไขย่อหน้าและข้อความ | {{< emoticons/tick >}} |
| เข้าถึง สร้าง และแก้ไขรูปภาพ กล่องข้อความ และรูปร่าง | {{< emoticons/tick >}} |
| เข้าถึง สร้าง และแก้ไขตาราง แถว และเซลล์ | {{< emoticons/tick >}} |
| เข้าถึง สร้าง และแก้ไขฟิลด์ ฟิลด์ฟอร์ม ไฮเปอร์ลิงก์ และบุ๊กมาร์ก | {{< emoticons/tick >}} |
| เข้าถึง สร้าง และแก้ไขส่วน ส่วนหัว และส่วนท้ายของเอกสาร | {{< emoticons/tick >}} |
| เข้าถึง สร้าง และแก้ไขเชิงอรรถ อ้างอิงท้ายเรื่อง และความคิดเห็น | {{< emoticons/tick >}} |
| เข้าถึง สร้าง และแก้ไข XML, SmartTags และแท็กเอกสารที่มีโครงสร้างแบบกำหนดเอง (การควบคุมเนื้อหา) | {{< emoticons/tick >}} |
| เข้าถึงและแก้ไของค์ประกอบเอกสารทั้งหมดโดยใช้คลาสและวิธีการเหมือน **XmlDocument** | {{< emoticons/tick >}} |
| อัปเดตผลลัพธ์ของฟิลด์ `IF` สูตร และประเภทฟิลด์ยอดนิยมอื่น ๆ | {{< emoticons/tick >}} |
| สร้างและอัปเดตฟิลด์สารบัญ (TOC) เหมือนกับที่ Microsoft Word ทำ | {{< emoticons/tick >}} |
| คัดลอกและย้ายองค์ประกอบเอกสารระหว่างเอกสาร | {{< emoticons/tick >}} |
| เข้าร่วมและแยกเอกสาร | {{< emoticons/tick >}} |
| รับและตั้งค่าคุณสมบัติเอกสารในตัวและแบบกำหนดเอง | {{< emoticons/tick >}} |
| ระบุการป้องกันเอกสาร เอกสารที่ได้รับการป้องกันและเข้ารหัสแบบเปิด | {{< emoticons/tick >}} |
| ค้นหาและแทนที่ข้อความ แจกแจงเนื้อหาเอกสาร | {{< emoticons/tick >}} |
| ยอมรับการแก้ไขทั้งหมดในเอกสาร | {{< emoticons/tick >}} |
| เก็บรักษาหรือแยกวัตถุ OLE และตัวควบคุม ActiveX ออกจากเอกสาร | {{< emoticons/tick >}} |
| เก็บรักษาหรือลบแมโคร VBA ออกจากเอกสาร รักษาลายเซ็นดิจิทัลของแมโคร VBA | {{< emoticons/tick >}} |
| ตรวจจับและตรวจสอบลายเซ็นดิจิทัลในเอกสาร | {{< emoticons/tick >}} |
| แทรกข้อความ HTML | {{< emoticons/tick >}} |
| แยกแมโคร VBA ออกจากเอกสาร Word | {{< emoticons/tick >}} |

## คุณสมบัติการจัดรูปแบบเอกสาร

Aspose.Words ให้สิทธิ์การเข้าถึงคุณสมบัติการจัดรูปแบบขององค์ประกอบเอกสารทั้งหมดโดยทางโปรแกรมโดยละเอียด

|  คุณสมบัติ | Python via .NET |
|  :-  |  :-  |
| เข้าถึงและแก้ไขการจัดรูปแบบอักขระทั้งหมด รวมถึงแบบอักษร สี เอฟเฟกต์ เส้นขอบ และการแรเงา | {{< emoticons/tick >}} |
| เข้าถึงและแก้ไขการจัดรูปแบบย่อหน้าทั้งหมด รวมถึงการเยื้อง การเว้นวรรค เส้นขอบและการแรเงา แท็บหยุด | {{< emoticons/tick >}} |
| เข้าถึงและแก้ไขการจัดรูปแบบรายการสัญลักษณ์แสดงหัวข้อย่อยและลำดับเลขทั้งหมด รวมถึงการกำหนดหมายเลขและระดับ | {{< emoticons/tick >}} |
| เข้าถึงและแก้ไขการจัดรูปแบบตาราง รวมถึงการจัดตำแหน่ง การวางแนว เส้นขอบ และการแรเงา | {{< emoticons/tick >}} |
| เข้าถึงและแก้ไขคุณสมบัติของส่วนทั้งหมด รวมถึงขนาดกระดาษ ระยะขอบ และการวางแนว | {{< emoticons/tick >}} |
| เข้าถึง สร้าง และแก้ไขสไตล์เอกสาร | {{< emoticons/tick >}} |
| เข้าถึงและแก้ไขวัตถุรูปวาด รวมถึงตำแหน่ง ขนาด คุณสมบัติเส้นและการเติม ไบต์ของรูปภาพ | {{< emoticons/tick >}} |

## คุณสมบัติของ Mail Merge

คุณสามารถใช้ Aspose.Words เป็นโซลูชันการรายงานได้ด้วยตัวเอง ออกแบบรายงานในรูปแบบ Microsoft Word จากนั้นให้ Aspose.Words เติมข้อมูลจากแหล่งข้อมูลต่างๆ ในเอกสาร

|  คุณสมบัติ | Python via .NET |
|  :-  |  :-  |
| ใช้ช่อง Microsoft Word Mail Merge มาตรฐานทั้งหมดในรายงานของคุณ รวมถึง `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK`, GREETINGLINE | {{< emoticons/tick >}} |
| ดำเนินการ Mail Merge สำหรับเอกสารที่มีแม้แต่ช่องและสูตร `IF` ที่ซับซ้อนและซ้อนกันมากที่สุด | {{< emoticons/tick >}} |
| เติมและขยายตารางหรือส่วนย่อยแบบไดนามิกในเอกสารจากแหล่งข้อมูลของคุณโดยใช้ขอบเขต Mail Merge | {{< emoticons/cross >}} |
| สร้างรายงานที่มีข้อมูลหลักรายละเอียด (หลัก-รอง) เช่น Order/OrderDetails ได้อย่างง่ายดาย | {{< emoticons/cross >}} |
| เติมเอกสารด้วยข้อมูลจากแหล่งข้อมูล .NET เช่น DataSet, DataTable, DataView, DataReader หรือ ADO Recordset | {{< emoticons/cross >}} |
| เติมเอกสารจากแหล่งข้อมูลใดๆ เช่น การสืบค้น LINQ, ไฟล์ XML หรือออบเจ็กต์ธุรกิจโดยการใช้อินเทอร์เฟซ [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/) | {{< emoticons/cross >}} |
| ควบคุมวิธีการผสานข้อมูลของคุณโดยใช้กิจกรรมได้อย่างแม่นยำ เช่น การจัดรูปแบบตัวเลข | {{< emoticons/cross >}} |
| แทรกรูปภาพระหว่าง Mail Merge | {{< emoticons/tick >}} |
| สร้างหรือแก้ไขแหล่งข้อมูล Microsoft Word Mail Merge สำหรับเอกสารโดยทางโปรแกรม รักษาการตั้งค่า Mail Merge และแหล่งข้อมูล | {{< emoticons/tick >}} |
| ดึงข้อมูลชื่อช่อง Mail Merge | {{< emoticons/tick >}} |

## คุณสมบัติการรายงาน

LINQ Reporting Engine เป็นเครื่องมือการรายงานขั้นสูงที่ทำให้คุณสามารถสร้างเอกสารตามเอกสารเทมเพลตและข้อมูลที่ได้รับจากแหล่งต่างๆ รวมถึงฐานข้อมูล, XML, JSON, OData, ออบเจ็กต์ประเภท CLR แบบกำหนดเอง, เอกสารภายนอก และอื่นๆ อีกมากมายที่แกะกล่อง

| คุณสมบัติที่สำคัญ | Python via .NET |
|  :-  |  :-  |
| รองรับไวยากรณ์ C# และวิธีการขยาย LINQ โดยตรงในเทมเพลต (แม้แต่แหล่งข้อมูล `ADO.NET`) | {{< emoticons/tick >}} |
| รองรับบล็อกเอกสารที่ทำซ้ำได้และมีเงื่อนไข (ลูปและเงื่อนไข) สำหรับตาราง รายการ และเนื้อหาทั่วไป | {{< emoticons/tick >}} |
| รองรับแผนภูมิและรูปภาพที่สร้างขึ้นแบบไดนามิก | {{< emoticons/tick >}} |
| รองรับการแทรกเอกสารภายนอกและบล็อก HTML ลงในเอกสาร | {{< emoticons/tick >}} |
| รองรับแหล่งข้อมูลหลายแหล่ง (รวมถึงประเภทที่แตกต่างกัน) สำหรับการสร้างเอกสารเดียว | {{< emoticons/tick >}} |
| การสนับสนุนความสัมพันธ์ข้อมูลในตัว (รายละเอียดหลัก) | {{< emoticons/tick >}} |
| การสนับสนุนที่ครอบคลุมในการจัดการข้อมูลต่างๆ เช่น การจัดกลุ่ม การเรียงลำดับ การกรอง และอื่นๆ โดยตรงในเทมเพลต | {{< emoticons/tick >}} |
| WYSIWYG: เอกสารที่สร้างขึ้นจะคงการจัดรูปแบบขององค์ประกอบไว้เหมือนกับเทมเพลตที่เกี่ยวข้อง | {{< emoticons/tick >}} |
