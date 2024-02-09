---
title: การทำงานกับ PDF/A หรือ PDF/UA
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับ PDF/A หรือ PDF/UA
linktitle: การทำงานกับ PDF/A หรือ PDF/UA
description: "แปลงเป็น PDF/A-1, PDF/A-2, PDF/A-4 และ PDF/UA โดยใช้ C# มีปัญหาเล็กน้อยเมื่อแปลงเป็นเอกสาร PDF/A และ Aspose.Words สำหรับ .NET จะช่วยแก้ปัญหาเหล่านี้"
type: docs
weight: 28
url: /th/net/working-with-pdfa-or-pdfua/
---

รูปแบบ PDF/A และ PDF/UA กำหนดข้อกำหนดหลายประการที่เกี่ยวข้องกับเนื้อหาเอกสารที่ไม่สามารถทำได้ในระหว่างการแปลงอัตโนมัติจากเอกสารในรูปแบบ Word เป็น PDF ข้อกำหนดเหล่านี้ควรได้รับการตรวจสอบและแก้ไขในเอกสาร Word ก่อนการแปลงหรือในเอกสาร PDF หลังการแปลง เพื่อสร้างเอกสารที่สอดคล้องกับมาตรฐาน PDF/A และ PDF/UA อย่างสมบูรณ์

ข้อกำหนดพื้นฐานสำหรับโครงสร้างหรือแบบอักษรของเอกสาร PDF/A และ PDF/UA ซึ่งเราจะพิจารณาในส่วนต่อไปนี้

{{% alert color="primary" %}}

โปรดทราบว่าเอาต์พุต PDF/UA-1 จะเป็นไปตามมาตรฐาน WCAG 2.0 และ Section 508 ด้วย

{{% /alert %}}

## ข้อกำหนดโครงสร้างเอกสาร

ข้อกำหนดปัจจุบันมีไว้สำหรับรูปแบบ PDF/A-1a, PDF/A-2a, PDF/A-4 และ PDF/UA-1

มีความแตกต่างบางประการเกี่ยวกับวิธีการทำงานของ Aspose.Words เมื่อแปลงเป็นรูปแบบ PDF มาตรฐานต่างๆ จะต้องนำมาพิจารณาหากคุณต้องการได้รับผลลัพธ์ที่คาดหวัง

{{% alert color="primary" %}}

โปรดทราบว่าไม่มีข้อกำหนดด้านโครงสร้างเชิงตรรกะสำหรับ PDF/A-4 ด้วยเหตุนี้ เราจึงไม่พิจารณาเวอร์ชัน PDF/A-4 ในส่วน "ข้อกำหนดโครงสร้างเอกสาร" นี้

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ไม่แนะนำให้ผู้เขียนสร้างข้อมูลเชิงโครงสร้างหรือความหมายโดยใช้กระบวนการอัตโนมัติโดยไม่มีการตรวจสอบที่เหมาะสม</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

ส่วนย่อยด้านล่างอธิบายความแตกต่างของวิธีการทำงานของ Aspose.Words เมื่อแปลงเป็นรูปแบบ PDF มาตรฐานต่างๆ และตัวเลือกสำหรับโซลูชัน

### ประเภทโครงสร้าง

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

เอกสาร PDF คือลำดับของบล็อกต่างๆ เช่น หัวเรื่อง ย่อหน้า ตาราง และอื่นๆ บล็อกเหล่านี้ก่อให้เกิดโครงสร้างเอกสาร - รุนแรงหรืออ่อนแอ

โครงสร้างทั้งที่แข็งแกร่งและอ่อนแอนั้นใช้ได้กับ PDF/A เอกสาร Microsoft Word มีโครงสร้างที่ไม่รัดกุมตามการออกแบบ และ Aspose.Words จะสร้าง PDF ที่มีโครงสร้างที่ไม่รัดกุมตามลำดับ และยังสร้างส่วนหัวตามระดับเค้าร่างของย่อหน้าในเอกสารต้นฉบับอีกด้วย

สำหรับเอกสาร PDF/UA-1 ที่มีโครงสร้างที่ไม่รัดกุม จำเป็นต้องเพิ่มเติมหมายเลขหัวข้อตามลำดับโดยไม่มีช่องว่าง

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>โครงสร้างระดับบล็อกอาจเป็นไปตามหนึ่งในสองกระบวนทัศน์หลัก:</p>
    </ol>
      <li>มีโครงสร้างแข็งแรง องค์ประกอบการจัดกลุ่มจะซ้อนกันหลายระดับเท่าที่จำเป็นเพื่อสะท้อนถึงการจัดระเบียบเนื้อหาออกเป็นบทความ ส่วน ส่วนย่อย และอื่นๆ ในแต่ละระดับ ลูกขององค์ประกอบการจัดกลุ่มควรประกอบด้วยส่วนหัว (H) หนึ่งย่อหน้าขึ้นไป (P) สำหรับเนื้อหาในระดับนั้น และบางทีองค์ประกอบการจัดกลุ่มเพิ่มเติมอย่างน้อยหนึ่งรายการสำหรับส่วนย่อยที่ซ้อนกัน</li>
      <li>มีโครงสร้างที่อ่อนแอ เอกสารนี้ค่อนข้างเรียบๆ โดยมีองค์ประกอบการจัดกลุ่มเพียงระดับเดียวหรือสองระดับ โดยมีส่วนหัว ย่อหน้า และ BLSE อื่นๆ ทั้งหมดเป็นรายการย่อย ในกรณีนี้ การจัดระเบียบของวัสดุจะไม่สะท้อนให้เห็นในโครงสร้างเชิงตรรกะ อย่างไรก็ตาม อาจแสดงโดยใช้หัวข้อที่มีระดับเฉพาะ (H1–H6)</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>สำหรับเอกสาร PDF/UA-1 ข้อกำหนดมีส่วนเพิ่มเติมที่เกี่ยวข้องกับระดับหัวข้อ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>หากความหมายของเอกสารจำเป็นต้องมีลำดับส่วนหัวจากมากไปหาน้อย ลำดับดังกล่าวจะต้องดำเนินการตามลำดับตัวเลขที่เข้มงวด และจะต้องไม่ข้ามระดับส่วนหัวที่แทรกแซง อนุญาตให้ใช้ H1 H2 H3 ในขณะที่ H1 H3 ไม่อนุญาต</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

เพื่อให้แน่ใจว่าผลลัพธ์ถูกต้อง ผู้ใช้ต้องแน่ใจว่าเนื้อหาเอกสารต้นฉบับได้รับการจัดระเบียบอย่างเหมาะสมและมีการระบุระดับเค้าร่างสำหรับย่อหน้าอย่างถูกต้อง มิฉะนั้น ผู้ใช้ควรตรวจสอบและแก้ไขโครงสร้างของเอกสาร PDF เอาท์พุต

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณสามารถดูตัวอย่าง: วิธีตั้งค่าระดับเค้าร่างใน Microsoft Word หรือตรวจสอบและแก้ไขโครงสร้างของเอกสาร PDF เอาต์พุต (ขยายเพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>ในสไตล์ "Heading X" เริ่มต้นของ Microsoft Word สามารถใช้เพื่อตั้งค่าระดับโครงร่าง:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWหัวข้อ1-2" style="width:800px"/>
    <p>นอกจากนี้ สามารถตรวจสอบหรือเปลี่ยนแปลงระดับเค้าร่างได้ในหน้าต่าง "ย่อหน้า":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>ใน Acrobat สามารถตรวจสอบหรือเปลี่ยนแปลงโครงสร้างเอกสารได้ในบานหน้าต่าง "แท็ก":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### การทำเครื่องหมายเนื้อหาว่าเป็นสิ่งประดิษฐ์

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

ในขณะนี้ Aspose.Words ทำเครื่องหมายส่วนหัวและส่วนท้ายของหน้า ตัวคั่นบันทึกย่อ เซลล์ส่วนหัวของตารางที่ทำซ้ำ และรูปภาพตกแต่งเป็นสิ่งประดิษฐ์ โปรดทราบว่ารายการนี้อาจมีการอัปเดตในอนาคต

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ออบเจ็กต์กราฟิกในเอกสารสามารถแบ่งออกเป็นสองคลาส:</p>
    </ol>
      <li>เนื้อหาที่แท้จริงของเอกสารประกอบด้วยวัตถุที่แสดงถึงเนื้อหาที่นำเสนอโดยผู้เขียนเอกสาร</li>
      <li>อาร์ติแฟกต์คือออบเจ็กต์กราฟิกที่ไม่ได้เป็นส่วนหนึ่งของเนื้อหาต้นฉบับของผู้เขียน แต่ถูกสร้างขึ้นโดยผู้เขียนที่สอดคล้องในการแบ่งหน้า เค้าโครง หรือกระบวนการทางกลไกอื่นๆ อย่างเคร่งครัด</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

หากเอกสารมีเนื้อหาอื่นใดที่ควรทำเครื่องหมายว่าเป็นอาร์ติแฟกต์ หรือหากเนื้อหาอาร์ติแฟกต์เป็นเนื้อหาจริง ลูกค้าควรแก้ไขสิ่งนั้นในเอาต์พุต PDF

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณสามารถดูตัวอย่าง: วิธีทำเครื่องหมายรูปร่างเป็นของตกแต่งใน Microsoft Word หรือทำเครื่องหมายรูปร่างเป็นสิ่งประดิษฐ์ในเอกสาร PDF เอาท์พุต (ขยายเพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>ตัวอย่างเช่น รูปร่างสามารถทำเครื่องหมายเป็นของตกแต่งใน Microsoft Word ได้ ดังนั้นรูปร่างจึงจะถูกส่งออกเป็น PDF เป็นสิ่งประดิษฐ์:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWรูปทรงตกแต่ง" style="width:800px"/>
    <p>คุณสามารถทำเครื่องหมายรูปร่างว่าเป็นสิ่งประดิษฐ์ในเอาต์พุต PDF:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>นอกจากนี้ คุณยังสามารถสลับข้อความในส่วนหัวจากอาร์ติแฟกต์เป็นเนื้อหาจริงในเอาต์พุต PDF ได้:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### ข้อกำหนดภาษาธรรมชาติ

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

ภาษาของข้อความระบุไว้ในเอกสาร Microsoft Word Aspose.Words ส่งออกภาษาที่ระบุไปยังเอาต์พุต PDF โดยมีแอตทริบิวต์ *Lang* ที่แนบมากับลำดับเนื้อหาที่ทำเครื่องหมายไว้หรือแท็ก Span ซึ่งควบคุมโดยคุณสมบัติ [ExportLanguageToSpanTag](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/) โดยทั่วไปจะไม่มีปัญหาด้านภาษาเมื่อผู้ใช้ป้อนข้อความผ่าน Microsoft Word แต่มีความเป็นไปได้ที่ภาษาอาจไม่ถูกต้องหากข้อความถูกสร้างขึ้นโดยอัตโนมัติ

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ภาษาธรรมชาติเริ่มต้นสำหรับข้อความทั้งหมดในไฟล์ควรระบุโดยรายการ Lang ในพจนานุกรมแค็ตตาล็อกของเอกสาร</p>
    <p>เนื้อหาต้นฉบับทั้งหมดภายในไฟล์ที่แตกต่างจากภาษาเริ่มต้นควรระบุโดยใช้คุณสมบัติ `Lang` ที่แนบมากับลำดับเนื้อหาที่ทำเครื่องหมายไว้ หรือโดยรายการ Lang ในพจนานุกรมองค์ประกอบโครงสร้าง ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>นอกจากนี้ สำหรับ PDF/UA-1 ข้อกำหนดระบุสิ่งต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>จะต้องประกาศภาษาธรรมชาติ… จะต้องประกาศการเปลี่ยนแปลงในภาษาธรรมชาติ</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณสามารถดูตัวอย่าง: วิธีตรวจสอบให้แน่ใจว่าระบุภาษาอย่างถูกต้อง (ขยายเพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>ผู้ใช้ควรตรวจสอบให้แน่ใจว่าได้ระบุภาษาอย่างถูกต้องในเอกสาร Word ต้นฉบับ:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>หรือเอกสาร PDF เอาต์พุต:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### คำบรรยายรูป

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

เอกสาร Microsoft Word อนุญาตให้ผู้ใช้เพิ่มคำบรรยายภาพ

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>คำบรรยายที่มาพร้อมกับรูปภาพจะต้องติดแท็กคำบรรยาย</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

ปัจจุบัน Aspose.Words ไม่สามารถส่งออกคำบรรยายด้วยแท็กคำบรรยายได้ ดังนั้นจึงต้องทำเครื่องหมายในเอาต์พุต PDF

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณสามารถดูตัวอย่าง: วิธีแทรกคำบรรยาย (ขยายเพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>ใน Microsoft Word สามารถแทรกคำบรรยายผ่านเมนูบริบทได้:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="รูปคำบรรยาย-mw" style="width:800px"/>
    <p>ใน Acrobat คุณสามารถเพิ่มหรือเปลี่ยนแปลงคำอธิบายภาพได้ผ่านกล่องโต้ตอบคุณสมบัติ `Object`:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="รูป-คำบรรยาย-กายกรรม" style="width:800px"/>
</details>
{{% /alert %}}

### คำอธิบายสำรอง

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

เอกสาร Microsoft Word อนุญาตให้ผู้ใช้เพิ่มข้อความแสดงแทนให้กับรูปภาพ รูปร่าง และตารางได้ Aspose.Words ส่งออกข้อความสำรองดังกล่าวไปยังเอาต์พุต PDF

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>องค์ประกอบโครงสร้างทั้งหมดที่มีเนื้อหาไม่มีข้อความอะนาล็อกที่กำหนดไว้ล่วงหน้าตามธรรมชาติ เช่น รูปภาพ สูตร ฯลฯ ควรมีคำอธิบายข้อความสำรองโดยใช้รายการ Alt ในพจนานุกรมองค์ประกอบโครงสร้าง...</p>
    <p>หมายเหตุ คำอธิบายสำรองมีคำอธิบายที่เป็นข้อความซึ่งช่วยในการตีความเนื้อหาที่ไม่ใช่ข้อความที่ทึบแสงได้อย่างเหมาะสม</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณสามารถดูตัวอย่าง: วิธีตรวจสอบให้แน่ใจว่าองค์ประกอบทั้งหมดมีข้อความสำรอง (ขยายเพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>ผู้ใช้ควรตรวจสอบให้แน่ใจว่าองค์ประกอบทั้งหมดมีข้อความสำรองในเอกสาร Word ต้นฉบับ:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>หรือเอกสาร PDF เอาต์พุต:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### คำอธิบายสำรองสำหรับไฮเปอร์ลิงก์

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

นอกเหนือจากประเด็นก่อนหน้า เอกสาร Microsoft Word ยังอนุญาตให้ผู้ใช้เพิ่มข้อความอื่นลงในไฮเปอร์ลิงก์ได้ Aspose.Words ส่งออกข้อความสำรองดังกล่าวไปยังเอาต์พุต PDF

ขออภัย ไม่ใช่ทุกแอปพลิเคชันจะอนุญาตให้คุณตั้งค่าคำอธิบายสำรองได้ ตัวอย่างเช่น ปัจจุบัน Adobe Acrobat ยังไม่เปิดใช้งานการตั้งค่าคำอธิบายสำหรับไฮเปอร์ลิงก์ แต่ใน Microsoft Word คุณสามารถทำได้ดังนี้:

<img src="/words/net/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="คำอธิบายทางเลือก-ไฮเปอร์ลิงก์-mw" style="width:800px"/>

บางครั้งมีปัญหาที่ไม่สามารถตั้งค่าข้อความแสดงแทนสำหรับไฮเปอร์ลิงก์ที่สร้างอัตโนมัติในสารบัญ (TOC) ผ่าน Microsoft Word GUI Aspose.Words สามารถอัปเดตฟิลด์ดังกล่าวและสร้างลิงก์ได้ด้วยตัวเอง

ทำตามตัวอย่างโค้ดเพื่ออัปเดตช่อง `TOC` โดยใช้ Aspose.Words Document Object Model (DOM):

{{< highlight csharp >}}
Document doc = new Document(fileName);

	var tocHyperLinks = doc.Range.Fields
		.Where(f => f.Type == FieldType.FieldHyperlink)
		.Cast<FieldHyperlink>()
		.Where(f => f.HRef.StartsWith("#_Toc"));
	
	foreach (FieldHyperlink link in tocHyperLinks)
		link.ScreenTip = link.DisplayResult;
	
	PdfSaveOptions opt = new PdfSaveOptions()
	{
		Compliance = PdfCompliance.PdfUa1,
		DisplayDocTitle = true,
		ExportDocumentStructure = true,
	};
	opt.OutlineOptions.HeadingsOutlineLevels = 3;
	opt.OutlineOptions.CreateMissingOutlineLevels = true;
	
	var outFile = Path.ChangeExtension(fileName, "_aw.pdf");
	doc.Save(outFile, opt);
{{< /highlight >}}

### ส่วนหัวของตาราง

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

ตารางในเอกสาร PDF/UA-1 ต้องมีส่วนหัว ได้แก่ คอลัมน์ แถว หรือทั้งสองอย่าง PDF/A ต้องการเพียงมาร์กอัปตารางมาตรฐานเท่านั้น ซึ่งไม่มีข้อจำกัดเพิ่มเติม โปรดทราบว่า Aspose.Words จะสร้างมาร์กอัปตารางมาตรฐานโดยอัตโนมัติ

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ตารางควรมีส่วนหัว... ตารางสามารถประกอบด้วยส่วนหัวของคอลัมน์ ส่วนหัวของแถว หรือทั้งสองอย่าง</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณสามารถดูตัวอย่าง: วิธีการตั้งค่าส่วนหัวของตาราง (ขยายเพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>ส่วนหัวของตารางสามารถตั้งค่าเอกสาร Microsoft Word ต้นทางได้:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="ส่วนหัวของตาราง-mw" style="width:800px"/>
    <p>หรือผลลัพธ์ PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="ส่วนหัวของตาราง-กายกรรม-ส่วนหัว-เซลล์" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="ส่วนหัวของตาราง-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="ส่วนหัวของตาราง-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### ข้อความแทนที่

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ข้อมูลจำเพาะบอกเราดังต่อไปนี้:</p>
    <p>องค์ประกอบโครงสร้างข้อความทั้งหมดที่แสดงในลักษณะที่ไม่เป็นมาตรฐาน เช่น อักขระที่กำหนดเองหรือกราฟิกอินไลน์ ควรระบุข้อความทดแทนโดยใช้รายการ `ActualText` ในพจนานุกรมองค์ประกอบโครงสร้าง...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

เอกสาร Microsoft Word ไม่อนุญาตให้ผู้ใช้ตั้งค่าข้อความทดแทน ดังนั้นสิ่งนี้จะต้องได้รับการตรวจสอบและแก้ไขในเอาต์พุต PDF:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="Acrobatข้อความทดแทน" style="width:800px"/>

### คำย่อและการขยายคำย่อ

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ตัวย่อและตัวย่อทั้งหมดในเนื้อหาที่เป็นข้อความควรอยู่ในลำดับเนื้อหาที่มีการทำเครื่องหมายด้วยแท็ก Span ซึ่งคุณสมบัติ E ให้การขยายข้อความของตัวย่อหรือตัวย่อ...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

เอกสาร Microsoft Word ไม่อนุญาตให้ผู้ใช้ตั้งค่าตัวย่อและการขยายตัวย่อ ดังนั้นสิ่งนี้จะต้องได้รับการตรวจสอบและแก้ไขในเอาต์พุต PDF:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## ชื่อเอกสาร

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br /> เอกสารในรูปแบบ PDF/UA-1 ควรมีชื่อเรื่อง |

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ข้อมูลจำเพาะบอกเราดังต่อไปนี้:</p>
    <p>สตรีมข้อมูลเมตาในพจนานุกรมแค็ตตาล็อกของเอกสารจะต้องมีรายการ dc:title โดยที่ dc เป็นคำนำหน้าที่แนะนำสำหรับสคีมาข้อมูลเมตาของ Dublin Core</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณสามารถดูตัวอย่าง: วิธีตั้งชื่อเอกสาร (ขยายเพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>ชื่อเอกสารสามารถตั้งค่าเป็นเอกสาร Microsoft Word ต้นทางได้:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-mw.png" alt="เอกสารชื่อ-mw" style="width:800px"/>
    <p>หรือผลลัพธ์ PDF:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="เอกสารชื่อ-กายกรรม" style="width:800px"/>
</details>
{{% /alert %}}

## ข้อกำหนดแบบอักษร

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

นอกจากนี้ยังมีความแตกต่างหลายประการในการทำงานกับแบบอักษรเมื่อแปลงเป็นรูปแบบ PDF/A-1, PDF/A-2, PDF/A-4 หรือ PDF/UA-1 โดยใช้ Aspose.Words ต้องคำนึงถึงสิ่งเหล่านี้หากคุณต้องการหลีกเลี่ยงปัญหาที่อาจเกิดขึ้นกับเอกสารเอาต์พุต

หัวข้อด้านล่างนี้อธิบายความแตกต่างและตัวเลือกสำหรับการแก้ปัญหา

### ข้อกำหนดทางกฎหมายของแบบอักษร

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words ไม่ได้ตรวจสอบข้อจำกัดทางกฎหมายของแบบอักษรที่ใช้ – ขึ้นอยู่กับผู้ใช้ กล่าวอีกนัยหนึ่ง ผู้ใช้ไม่ควรจัดเตรียมแบบอักษรที่ไม่เหมาะสมสำหรับการแปลง PDF โดยใช้ Aspose.Words

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>ควรใช้เฉพาะโปรแกรมฟอนต์ที่สามารถฝังได้ตามกฎหมายในไฟล์สำหรับการเรนเดอร์สากลแบบไม่จำกัด</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (ราคาเดียวกันทุกประการในสองข้อมูลจำเพาะ)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

ห้ามใช้ `.notdef` glyph `.notdef` glyph จะปรากฏขึ้นหากเอกสารมีอักขระที่ไม่ปรากฏในแบบอักษรที่เลือก และไม่สามารถแก้ไขได้ผ่านกลไกทางเลือกแบบอักษร

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>เอกสารที่สอดคล้องต้องไม่มีการอ้างอิงถึง .notdef glyph จากข้อความใดๆ ที่แสดงตัวดำเนินการ โดยไม่คำนึงถึงโหมดการแสดงข้อความในสตรีมเนื้อหาใดๆ</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (ราคาเดียวกันทุกประการในสองสเป็ค)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณสามารถดูตัวอย่าง: วิธีลบหรือแทนที่อักขระเหล่านี้ (ขยายเพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>ผู้ใช้ควรลบหรือแทนที่อักขระเหล่านี้ในเอกสาร Word ต้นฉบับ:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>หรือส่งออกเอกสาร PDF โดยใช้เครื่องมือ "แก้ไข PDF":</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-เครื่องมือแก้ไข Pdf" style="width:800px"/>
</details>
{{% /alert %}}

### พื้นที่ใช้งานส่วนตัว (PUA)

|  ระดับการปฏิบัติตามมาตรฐาน PDF ภายใน Aspose.Words |  การปรากฏตัวของความต้องการ |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

อักขระ Private Use Area (PUA) ส่วนใหญ่จะปรากฏสำหรับแบบอักษรสัญลักษณ์ Windows เช่น "Symbol", "Wingdings", "Webdings" และอื่นๆ รูปแบบ Microsoft Word ไม่มีตัวเลือกในการจัดเก็บข้อความจริงสำหรับอักขระ

{{% alert color="secondary" %}}
<details>
    <summary>ข้อมูลจำเพาะบอกเราดังต่อไปนี้ (ขยายเพื่อดูรายละเอียด):</summary>
    <p></p>
    <p>สำหรับความสอดคล้องระดับ A เท่านั้น สำหรับอักขระใดๆ ... ที่ถูกแมปกับโค้ดหรือโค้ดใน Unicode Private Use Area (PUA) รายการ ActualText ... จะต้องปรากฏสำหรับอักขระนี้หรือลำดับของอักขระที่ดังกล่าว ตัวละครก็เป็นส่วนหนึ่ง</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" เป็นแบบอักษร Windows Unicode ซึ่งสามารถใช้เป็นทางเลือกแทนแบบอักษรสัญลักษณ์ได้

{{% alert color="secondary" %}}
<details>
    <summary>ในบล็อกนี้ คุณสามารถดูตัวอย่าง: สิ่งที่ผู้ใช้ควรทำเพื่อแก้ไขปัญหาด้วยแบบอักษรสัญลักษณ์ (ขยายเพื่อดูรายละเอียด)</summary>
    <p></p>
    <p>แทนที่แบบอักษรสัญลักษณ์ด้วย Unicode ในเอกสาร Word ต้นฉบับ:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="คุณสามารถ MWInsert" style="width:800px"/>
    <p>หรือเพิ่มรายการ ActualText ให้กับอักขระที่มีปัญหาในเอกสาร PDF เอาต์พุต:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
