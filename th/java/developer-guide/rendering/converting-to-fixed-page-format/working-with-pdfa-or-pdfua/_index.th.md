---
title: ทํางานร่วมกับ PDF/A หรือ PDF/UA
second_title: Aspose.Words สําหรับ Java
articleTitle: ทํางานร่วมกับ PDF/A หรือ PDF/UA
linktitle: ทํางานร่วมกับ PDF/A หรือ PDF/UA
description: "แปลงเป็น PDF/ A-1, PDF/ A-2, PDF/ A-4 และ PDF/UA ใช้ Java. มีบางปัญหาเมื่อแปลงเป็นเอกสาร PDF/A และ Aspose.Words สําหรับ Java แก้ปัญหาได้"
type: docs
weight: 28
url: /th/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

รูปแบบ PDF/A และ PDF/ UA บังคับใช้ความต้องการต่าง ๆ ที่เกี่ยวกับเนื้อหาเอกสาร ซึ่งไม่สามารถเติมเต็มได้ระหว่างการแปลงอัตโนมัติจากเอกสารในรูปแบบคํา PDF ควรตรวจสอบและแก้ไขความต้องการเหล่านี้ ในเอกสารคําก่อนการแปลง หรือในเอกสาร PDF หลังจากการแปลงแล้ว เพื่อสร้างเอกสาร PDF/A และ PDF/UA ที่เข้ากันได้อย่างเต็มที่

ความต้องการพื้นฐานสําหรับโครงสร้างหรือแบบอักษรของเอกสาร PDF/A และ PDF/UA ซึ่งเราจะพิจารณาในส่วนต่อไปนี้

{{% alert color="primary" %}}

โปรดสังเกตว่า ผลส่งออกของ PDF/UA-1 จะเป็น WCAG 2. 0 และ มาตรา 508

{{% /alert %}}

## เงื่อนไขโครงสร้างของเอกสาร

คุณสมบัติปัจจุบันสําหรับ PDF/A-1a, PDF/A-2a, PDF/A-4, และ PDF/UA-1

มีความแตกต่างบางอย่างของวิธีการ Aspose.Words ทํางานเมื่อแปลงเป็นมาตรฐานรูปแบบ PDF ต่างๆ พวก เขา ต้อง คํานึง ถึง เรื่อง นี้ หาก คุณ ต้องการ ได้ ผล ตาม ที่ คาด หมาย ไว้.

{{% alert color="primary" %}}

โปรดสังเกตว่า ไม่มีความต้องการโครงสร้างที่เหมาะสมสําหรับ PDF/A-4 ด้วยเหตุผลนี้ เราจึงไม่พิจารณารุ่น PDF/A-4 ในหัวข้อ "มาตรฐานโครงสร้างศาสตร์" นี้

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>การสร้างโครงสร้างหรือข้อมูล semantic โดยใช้กระบวนการอัตโนมัติ โดยไม่ต้องตรวจสอบ</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

ส่วน ย่อย ที่ อยู่ ข้าง ล่าง นี้ อธิบาย ราย ละเอียด ต่าง ๆ ของ วิธี ที่ Aspose.Words ทํางานเมื่อแปลงเป็นมาตรฐานและตัวเลือกต่าง ๆ ของรูปแบบ PDF สําหรับการแก้ปัญหา

### ชนิดโครงสร้าง

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |   {{< emoticons/tick >}}   |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

เอกสาร PDF เป็น ลําดับ ของ บล็อก ต่าง ๆ เช่น หัว เรื่อง, วรรค, ตาราง, และ อื่น ๆ. บล็อกเหล่านี้ประกอบเป็นโครงสร้างเอกสาร - หนักหรืออ่อนแอ

โครงสร้างทั้งแข็งแรงและอ่อนแอ ใช้ได้กับ PDF/A Microsoft Word เอกสารมีโครงสร้างอ่อนแอตามการออกแบบ Aspose.Words สร้าง PDF พร้อม ด้วย โครง สร้าง ที่ อ่อนแอ ตาม ลําดับ และ ยัง สร้าง หัว เรื่อง ตาม ลําดับ วรรค ต่าง ๆ ใน เอกสาร ต้น ฉบับ.

สําหรับเอกสาร PDF/UA-1 ที่มีโครงสร้างอ่อนแอ นอกจากนี้ ยังต้องใช้หมายเลขหัวพิมพ์ตามลําดับโดยไม่มีช่องว่าง

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>โครงสร้างระดับบล็อกอาจเป็นไปตามหนึ่งในสองตัวอย่างหลัก:</p>
    </ol>
      <li>โครงสร้างที่แข็งแกร่ง ส่วน ประกอบ ต่าง ๆ ที่ รวม เข้า ด้วย กัน ทํา รัง ใน ระดับ ที่ จําเป็น มาก ที่ สุด เพื่อ สะท้อน ให้ เห็น การ จัด ระเบียบ เรื่อง ต่าง ๆ เป็น บทความ, ส่วน ต่าง ๆ, การ แบ่ง ชั้น ย่อย, และ อื่น ๆ. ใน แต่ ละ ระดับ เด็ก ที่ อยู่ ใน กลุ่ม ควร จะ ประกอบ ด้วย หัว (เอช) หนึ่ง วรรค หรือ กว่า นั้น สําหรับ เนื้อหา ใน ระดับ นั้น และ อาจ มี สมาชิก อีก หนึ่ง คน หรือ มาก กว่า นั้น สําหรับ ชิ้น ย่อย ที่ ทํา รัง.</li>
      <li>โครงสร้างอ่อนแอ เอกสาร นี้ ค่อน ข้าง จะ เรียบ ง่าย อาจ มี องค์ ประกอบ ที่ เป็น กลุ่ม เพียง หนึ่ง หรือ สอง ระดับ พร้อม ด้วย ทุก หัว เรื่อง, วรรค, และ โบว์ ซี อื่น ๆ ที่ เป็น บุตร ของ พวก เขา ทันที. ใน กรณี นี้ การ จัด ระเบียบ เรื่อง ราว ไม่ ได้ สะท้อน ให้ เห็น ใน โครง สร้าง ที่ สม เหตุ สม ผล แต่ อาจ แสดง ออก โดย การ ใช้ หัว เรื่อง ที่ มี ระดับ ความ หมาย เฉพาะ (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>สําหรับเอกสาร PDF/UA-1 เงื่อนไขนี้จะมีส่วนเพิ่มเติมที่เกี่ยวข้องกับระดับหัว (อธิบายและดูรายละเอียด):</summary>
    <p></p>
    <p>ถ้าเอกสาร semantics ต้องการลําดับของส่วนหัว ลําดับดังกล่าวจะต้องดําเนินการตามลําดับตัวเลขที่เข้มงวดและจะไม่ข้ามระดับหัวไม่ต่อเนื่อง H1 H2 H3 สามารถยอมรับได้ ในขณะที่ H1 H3 ไม่เป็น</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

เพื่อ รับ ประกัน การ ส่ง ออก อย่าง ถูก ต้อง ผู้ ใช้ ต้อง ตรวจ ดู ให้ แน่ ใจ ว่า เนื้อ ความ ใน เอกสาร ที่ มา จาก แหล่ง นั้น มี การ จัด ระเบียบ อย่าง เหมาะ สม และ กําหนด ระดับ เส้น รอบ นอก อย่าง ถูก ต้อง สําหรับ วรรค. มิฉะนั้น ผู้ใช้ควรจะตรวจสอบและแก้ไขโครงสร้างของเอกสาร PDF ที่ส่งออก

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณจะเห็นตัวอย่าง: วิธีการตั้งค่าระดับกรอบใน Microsoft Word หรือตรวจสอบและแก้ไขโครงสร้างของเอกสาร PDF ผลส่งออก (ดูรายละเอียด)</summary>
    <p></p>
    <p>ใน Microsoft Word รูปแบบการสั่งงาน "Hading X" สามารถใช้เพื่อตั้งค่าระดับกรอบ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>นอก จาก นี้ อาจ มี การ ตรวจ สอบ หรือ เปลี่ยน ระดับ ของ เค้าโครง ได้ ใน หน้าต่าง ของ คุณ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>ในอาโครบัท โครงสร้างของเอกสารสามารถตรวจสอบหรือเปลี่ยนแปลงได้ในช่อง "แท็กส์":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### การ ระบุ เนื้อหา ว่า เป็น ศิลปะ

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |   {{< emoticons/tick >}}   |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

ตอนนี้ Aspose.Words ทําเครื่องหมายหัวกระดาษและท้ายกระดาษ, ตัวแบ่งโน้ต, เซลล์หัวกระดาษซ้ํา, และภาพบนตารางเป็นวัตถุ ข้อ ควร จํา

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>วัตถุกราฟฟิกในเอกสาร สามารถแบ่งออกเป็น 2 ประเภทได้:</p>
    </ol>
      <li>เนื้อหา ที่ แท้ จริง ของ เอกสาร ประกอบ ด้วย วัตถุ ต่าง ๆ ที่ หมาย ถึง เนื้อหา ที่ ผู้ เขียน เอกสาร นํา มา ใช้ แต่ เดิม.</li>
      <li>สิ่ง ประดิษฐ์ คือ วัตถุ ที่ ไม่ ได้ เป็น ส่วน ของ เนื้อ ความ เดิม ของ ผู้ ประพันธ์ แต่ ถูก สร้าง ขึ้น โดย ผู้ เขียน ที่ ตรง ตาม เวลา ใน ระหว่าง การ ก่อ สร้าง, การ วาง ผัง, หรือ กระบวนการ อื่น ๆ ของ เครื่องจักร อย่าง เคร่งครัด.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1 14.8.2.1.</p>
</details>
{{% /alert %}}

หากเอกสารบรรจุเนื้อหาอื่น ๆ ที่ควรจะกําหนดให้เป็นสิ่งประดิษฐ์ หรือถ้าใด ๆ ของเนื้อหาที่เป็นสิ่งประดิษฐ์เป็นเนื้อหาจริง ลูกค้าควรจะแก้ไขดังกล่าวใน PDF ผลลัพธ์

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณจะเห็นตัวอย่างได้ วิธีที่จะขีดเส้นใต้รูป Microsoft Word หรือทําเครื่องหมายเป็นสิ่งประดิษฐ์ในเอกสาร PDF ผลส่งออก (เพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>ยกตัวอย่างเช่น, รูปทรงอาจถูกขีดไว้เหมือนสี่เหลี่ยม Microsoft Word, เพื่อพวกเขาจะได้ส่งพวกเขาไปยัง PDF</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>คุณสามารถกําหนดรูปร่างเป็นสิ่งประดิษฐ์ได้ใน PDF ที่ส่งออก:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>นอกจากนี้ คุณยังสามารถเปลี่ยนข้อความในส่วนหัวจากสิ่งประดิษฐ์นี้ ไปเป็นเนื้อหาจริงใน PDF ที่ส่งออกได้:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### การ กําหนด ภาษา ธรรมชาติ

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |   {{< emoticons/tick >}}   |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

ภาษาข้อความระบุใน Microsoft Word เอกสาร Aspose.Words ส่งออกภาษาที่ระบุไปยัง PDF เพื่อส่งออกด้วย *Lang* แอตทริบิวต์ที่แนบมากับลําดับสัญลักษณ์ หรือแท็ก parn - มันถูกควบคุมโดย [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) ทรัพย์สิน โดยทั่วไปแล้ว จะไม่มีการใช้ภาษา เมื่อมีการป้อนข้อความผ่านทางผู้ใช้ Microsoft Word. แต่ มี ทาง เป็น ไป ได้ ที่ ภาษา นั้น อาจ ไม่ ถูก ต้อง หาก มี การ สร้าง ข้อ ความ นั้น โดย อัตโนมัติ.

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ควรระบุภาษาปริยายสําหรับข้อความทั้งหมดในแฟ้ม โดยรายการในพจนานุกรม CATAlog ของเอกสาร</p>
    <p>เนื้อหาข้อความทั้งหมดภายในแฟ้ม ซึ่งแตกต่างจากภาษาปริยายควรจะระบุโดยการใช้ `Lang` คุณสมบัติที่แนบมากับลําดับการทําเครื่องหมาย หรือรายการใน Lang ในพจนานุกรมองค์ประกอบโครงสร้าง</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>เพิ่มเติมสําหรับ PDF/UA-1, ข้อกําหนดที่บอกเราต่อไปนี้ (ดูรายละเอียด):</summary>
    <p></p>
    <p>ภาษาธรรมชาติจะถูกประกาศ... จะ มี การ ประกาศ การ เปลี่ยน แปลง ใน ภาษา ธรรมชาติ.</p>
    <p>ISO-14289-1, 7.2.</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณจะเห็นตัวอย่างได้: จะมั่นใจได้อย่างไรว่าภาษาดังกล่าวจะถูกระบุอย่างถูกต้อง</summary>
    <p></p>
    <p>ผู้ใช้ควรจะแน่ใจว่าภาษาดังกล่าวจะถูกระบุอย่างถูกต้องในเอกสารต้นฉบับทั้ง:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>หรือเอกสาร PDF ที่ส่งออก:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### คําบรรยายภาพ

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |                           |
|  PDF/ A-2a |                           |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word เอกสารอนุญาตให้ผู้ใช้ทําการเพิ่มคําบรรยายภาพได้

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>จะมีการติดป้ายกํากับภาพด้วยป้ายคําบรรยายภาพ</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

ปัจจุบัน Aspose.Words ไม่สามารถส่งออกคําบรรยายภาพด้วยป้ายคําบรรยายภาพได้ ดังนั้นมันจะต้องถูกตั้งสถานะไว้ใน PDF ที่ส่งออก

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณจะเห็นตัวอย่างได้: จะใส่คําบรรยาย (อธิบายและดูรายละเอียด) อย่างไร</summary>
    <p></p>
    <p>ใน Microsoft Word, คุณสามารถแทรกคําบรรยายภาพผ่านเมนูคลิกขวา:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>ในอะโครบัท คําบรรยายภาพสามารถถูกเพิ่มหรือเปลี่ยนแปลงผ่านทาง `Object` กล่องคุณสมบัติ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### คําอธิบายอื่น ๆ

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |   {{< emoticons/tick >}}   |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word เอกสารอนุญาตให้ผู้ใช้ทําการเพิ่มข้อความใหม่ไปยังภาพ, รูปทรง, และตารางได้ Aspose.Words ส่งออกข้อความอื่น ๆ ไปยัง PDF

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>องค์ประกอบโครงสร้างทั้งหมดที่เนื้อหาไม่ได้กําหนดให้ใช้ตัวอักษรแบบย่อ, เช่น รูปภาพ, สูตร, ฯลฯ ควรให้คําอธิบายเพิ่มเติมโดยใช้ข้อความแบบ Alt ในพจนานุกรมองค์ประกอบโครงสร้าง...</p>
    <p>หมายเหตุ คําอธิบายอื่น ๆ ให้คําบรรยายข้อความ ที่ช่วยในการตีความที่เหมาะสมของเนื้อหาที่ไม่ใช่ข้อความ</p>
    <p>ISO-19005-2, 6.7.</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้คุณจะเห็นตัวอย่างได้: จะมั่นใจได้อย่างไรว่าธาตุทั้งหมดมีข้อความอื่น (อธิบายและดูรายละเอียด)</summary>
    <p></p>
    <p>ผู้ใช้ควรจะแน่ใจว่า สมาชิกทั้งหมดจะมีข้อความอื่น ๆ ในเอกสารต้นฉบับ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>หรือเอกสาร PDF ที่ส่งออก:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### คําอธิบายสําหรับ Hyperlink

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |                           |
|  PDF/ A-2a |                           |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

นอกจากจุดที่แล้ว Microsoft Word เอกสารยังช่วยให้ผู้ใช้ทําการเพิ่มข้อความอื่นไปยังไฮเปอร์ลิงก์ได้ Aspose.Words ส่งออกข้อความอื่น ๆ ไปยัง PDF

แต่โชคร้าย ที่ไม่ใช่ทุกโปรแกรม ที่ช่วยให้คุณสามารถตั้งค่ารายละเอียดอื่นได้ ยกตัวอย่างเช่น Adobe Acrobat ปัจจุบันไม่สามารถตั้งค่ารายละเอียดดังกล่าวสําหรับ ไฮเปอร์ลิงก์ได้ แต่ใน Microsoft Word, คุณสามารถทําเช่นนี้ดังต่อไปนี้:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

บางครั้งมีปัญหาที่ไม่สามารถตั้งค่าข้อความ allt สําหรับ ไฮเปอร์ลิงก์อัตโนมัติในตารางเนื้อหา (TOC) ผ่าน Microsoft Word GUI. Aspose.Words สามารถปรับปรุงพื้นที่ดังกล่าว และสร้างลิงก์ด้วยตัวเอง

ทําตามตัวอย่างโค้ดเพื่อปรับปรุง `TOC` ช่องข้อมูลโดยใช้ Aspose.Words Document Object Model (DOM)

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### หัวจดหมาย

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |                           |
|  PDF/ A-2a |                           |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

ตารางในเอกสาร PDF/UA-1 ต้องมีส่วนหัว - คอลัมน์, แถว, หรือทั้งสองอย่าง PDF/A ต้องการเฉพาะเครื่องหมายตารางมาตรฐานเท่านั้น ซึ่งไม่มีข้อจํากัดเพิ่มเติม สังเกตว่า Aspose.Words สร้างการทําเครื่องหมายตารางมาตรฐานโดยอัตโนมัติ

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ตารางควรรวมหัวจดหมาย... ตารางสามารถมีหัวคอลัมน์, หัวแถว หรือทั้งคู่</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้คุณจะเห็นตัวอย่างต่างๆ หาวิธีตั้งหัวตาราง (อธิบายและดูรายละเอียด)</summary>
    <p></p>
    <p>หัวตารางสามารถตั้งค่าแหล่ง Microsoft Word เอกสาร:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>หรือ PDF ผลส่งออก:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### ข้อความแทนที่

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |   {{< emoticons/tick >}}   |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ข้อ กําหนด นี้ บอก เรา ดัง ต่อ ไป นี้:</p>
    <p>สมาชิกโครงสร้างข้อความทั้งหมดที่แสดงในรูปแบบที่ไม่ใช่มาตรฐาน, เช่น, ตัวอักษรที่กําหนดเอง หรือในบรรทัดกราฟฟิก ควรใส่ข้อความเข้าไปแทนการใช้ `ActualText` ในพจนานุกรมองค์ประกอบโครงสร้าง...</p>
    <p>ISO-19002, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word เอกสารไม่อนุญาตให้ผู้ใช้ตั้งค่าข้อความแทนที่ ดังนั้น ต้องตรวจสอบและแก้ไขใน PDF ผลส่งออก:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### การ เพิ่ม พูน และ การ ขยาย พันธุ์

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |   {{< emoticons/tick >}}   |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ส่วนต่าง ๆ ของการย่อส่วน และคําย่อต่าง ๆ ในข้อความ ควรจะถูกวางอยู่ในลําดับที่ทําเครื่องหมายด้วยแท็ก Sparn ที่มีคุณสมบัติ E ให้มีการขยายข้อความ ของการย่อหรือย่อ...</p>
<p>ISO-19002, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word เอกสารไม่อนุญาตให้ผู้ใช้ตั้งค่าการเกิดขึ้นอีกและการย่อส่วนขยาย ดังนั้น ต้องตรวจสอบและแก้ไขใน PDF ผลส่งออก:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## ชื่อเอกสาร

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/ A-1a |                                                                |
|  PDF/ A-2a |                                                                |
|  PDF/ A-4 |                                                                |
|  PDF/ UA-1 |  {{< emoticons/tick >}}<br/>เอกสารใน PDF/ UA-1 ควรมีชื่อเรื่อง |

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ข้อ กําหนด นี้ บอก เรา ดัง ต่อ ไป นี้:</p>
    <p>ข้อมูลกํากับภาพในพจนานุกรมของเอกสาร จะบรรจุ dc: คําบรรยายภาพ ที่ dc เป็นคํานําหน้าของข้อมูลกํากับของดับลิน...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้คุณจะเห็นตัวอย่างต่างๆ ว่าจะตั้งชื่อเอกสารอย่างไร</summary>
    <p></p>
    <p>ชื่อเอกสารสามารถตั้งค่าแหล่งได้ Microsoft Word เอกสาร:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>หรือ PDF ผลส่งออก:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## กําหนดแบบอักษร

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |   {{< emoticons/tick >}}   |
|  PDF/ A-1b |   {{< emoticons/tick >}}   |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ A-2b |   {{< emoticons/tick >}}   |
|  PDF/ A-4 |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

ยังมีความแตกต่างต่าง ๆ ของการทํางานร่วมกับแบบอักษรเมื่อแปลงเป็น PDF/A-1, PDF/A-2, PDF/A-4 หรือ PDF/UA-1 โดยใช้ Aspose.Words. เอกสาร เหล่า นี้ ต้อง มี การ พิจารณา หาก คุณ ต้องการ หลีก เลี่ยง ปัญหา ที่ อาจ เกิด ขึ้น ได้ กับ เอกสาร ที่ ส่ง ออก.

ส่วน ต่าง ๆ ข้าง ล่าง นี้ อธิบาย ถึง ความ แตก ต่าง และ ทาง เลือก ต่าง ๆ สําหรับ วิธี แก้.

### ข้อ กําหนด ทาง กฎหมาย ของ แบบอักษร

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |   {{< emoticons/tick >}}   |
|  PDF/ A-1b |   {{< emoticons/tick >}}   |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ A-2b |   {{< emoticons/tick >}}   |
|  PDF/ A-4 |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words ไม่สามารถตรวจสอบข้อจํากัดทางกฎหมายของแบบอักษรที่ใช้ไป ขึ้นอยู่กับผู้ใช้ หรือพูดอีกอย่างคือ ผู้ใช้ไม่ควรจะให้แบบอักษรที่ไม่เหมาะสมสําหรับการแปลงแบบ PDF Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>เฉพาะโปรแกรมแบบอักษรที่สามารถฝังแนบได้อย่างถูกต้องตามกฎหมายในแฟ้มสําหรับคุณสมบัติไม่จํากัด ให้ใช้การแสดงผลแบบสากล</p>
    <p>ISO-19005-2, 6.2.11.4.1. ISO-14289-1, 7.21.4.1 (เกิดประโยคเดียวกันใน 2 สเปก)</p>
</details>
{{% /alert %}}

### ...ไม่ป้องกัน Glyph

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |                           |
|  PDF/ A-1b |                           |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ A-2b |   {{< emoticons/tick >}}   |
|  PDF/ A-4 |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |   {{< emoticons/tick >}}   |

การใช้งานของ `.notdef` glyph ห้ามเข้า เดอะ `.notdef` glyph จะปรากฏหากเอกสารมีอักขระอยู่ด้วย ซึ่งไม่ได้อยู่ในแบบอักษรที่เลือกไว้ และไม่สามารถแก้ไขได้โดยผ่านทางกลไกการถอยกลับแบบอักษร

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>เอกสารที่ทําตามต้องการจะไม่มีส่วนอ้างอิงไปยังแฟ้ม. nottode glyph จากตัวแสดงข้อความใด ๆ ไม่ว่าจะเป็นโหมดการแสดงผลข้อความ ในกระแสข้อความใด ๆ</p>
    <p>ISO-19005-2, 6.2.11.8 ISO-14289-1, 7.21.8 (ใช้คําพูดเดียวกันใน 2 สเปก)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณจะเห็นตัวอย่าง: จะลบหรือแทนที่ตัวอักษรเหล่านี้อย่างไร (ดูรายละเอียด)</summary>
    <p></p>
    <p>ผู้ใช้ควรจะลบหรือแทนที่อักขระเหล่านี้ ในเอกสารต้นฉบับ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>หรือเอกสารผลส่งออก PDF โดยใช้เครื่องมือ "แก้ไข PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### ใช้พื้นที่ส่วนตัว (PUA)

|  ระดับการตามมาตรฐาน PDF ภายใน Aspose.Words |  การนําเสนอความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/ A-1a |                           |
|  PDF/ A-1b |                           |
|  PDF/ A-2a |   {{< emoticons/tick >}}   |
|  PDF/ A-2b |   {{< emoticons/tick >}}   |
|  PDF/ A-4 |   {{< emoticons/tick >}}   |
|  PDF/ UA-1 |                           |

ใช้พื้นที่ส่วนตัว (PUA) อักขระส่วนใหญ่จะปรากฎสําหรับ Windows แบบอักษรสัญลักษณ์เช่น "ซิมโบล์", "วินดิง", "เว็บดิงส์", และอื่นๆ Microsoft Word ฟอร์แมตไม่ได้ให้ตัวเลือกในการจัดเก็บข้อความจริงสําหรับอักขระ

{{% alert color="secondary" %}}
<details>
    <summary>ข้อกําหนดที่บอกเราต่อไปนี้ (เพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>สําหรับระดับ การปฏิบัติตามเฉพาะตัวอักษรใด ๆ ... ที่ถูกโยงไปยังรหัสหรือรหัสในพื้นที่ส่วนตัวยูนิโค้ด (PUA), รายการข้อความปฏิบัติ ... จะนําเสนอสําหรับอักขระนี้หรือลําดับตัวอักษรดังกล่าวเป็นส่วนหนึ่งของ</p>
    <p>ISO-19005-2, 6.2.11.7.3.</p>
</details>
{{% /alert %}}

"Siene UI Sign" คือ Windows แบบอักษรยูนิโค้ดซึ่งสามารถใช้เป็นตัวเลือกแทนแบบอักษรแบบสัญลักษณ์

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณจะเห็นตัวอย่างได้: ผู้ใช้จะทําอะไรเพื่อแก้ไขปัญหาด้วยตัวอักษรสัญลักษณ์ (อธิบายและดูรายละเอียด)</summary>
    <p></p>
    <p>แทนที่แบบอักษรสัญลักษณ์ด้วยยูนิโค้ด 1 ในเอกสารต้นฉบับ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>หรือเพิ่มรายการข้อความธรรมดาไปยังอักขระปัญหา ในเอกสาร PDF ที่ส่งออก:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
