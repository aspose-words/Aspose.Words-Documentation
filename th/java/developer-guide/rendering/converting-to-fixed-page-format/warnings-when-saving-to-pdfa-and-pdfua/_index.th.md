---
title: แจ้งเตือนเมื่อบันทึกไปยัง PDF/A และ PDF/UA
second_title: Aspose.Words สําหรับ Java
articleTitle: แจ้งเตือนสิ่งอํานวยความสะดวกเมื่อบันทึกไปยัง PDF/A และ PDF/UA
linktitle: แจ้งเตือนสิ่งอํานวยความสะดวกเมื่อบันทึกไปยัง PDF/A และ PDF/UA
description: "PDF/A และ PDF/ UAA ที่กําหนดความต้องการสิทธิ์ในการเข้าถึงเอกสาร เมื่อมีการบันทึกเป็น PDF/A หรือ PDF/UA ใน Java และ (มะลาอิกะฮฺ) ผู้ควบคุมอย่างรัดกุม"
type: docs
weight: 29
url: /th/java/warnings-when-saving-to-pdfa-and-pdfua/
---

PDF/A และรูปแบบ PDF/ UA ส่งผลให้ต้องการสิทธิ์ในการเข้าถึงข้อมูลต่าง ๆ ที่เกี่ยวกับเนื้อหาในเอกสาร ที่ไม่สามารถเติมเต็มได้ระหว่างการแปลงคําอัตโนมัติ จากคําไปเป็น PDF สิ่งที่ต้องการเหล่านี้ถูกอธิบายในบทความก่อนหน้า * "ทํางานร่วมกับ PDF/A" หรือ PDF/UA" * บัด นี้ มี คํา เตือน สําหรับ ปัญหา เหล่า นี้ บาง อย่าง.

แจ้งเตือนการแจ้งเตือนจะถูกออกเมื่อมีการบันทึกไปยังโปรแกรม PDF/A หรือ PDF/ UA และมีปัญหาการละเมิดการยอมรับ ตัวอย่างเช่น จะมีการแจ้งคําเตือนเกี่ยวกับเอกสารที่สูญหาย เมื่อมีการบันทึกไปยัง PDF/ UA และจะไม่สามารถออกเมื่อบันทึกไปยัง PDF/A

คําเตือนทั้งหมดมาจาก [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.มิวนอร์ฟอร์มาทินส์** ถึง [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**. พ.ศ**. นี่เป็นรายการของคําอธิบายใหม่:

|  ค่าของคําเตือน: |  PDF/ A |  PDF/ UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "ชื่อหนังสือหายไป นี่ ละเมิด ข้อ เรียก ร้อง ของ การ ทํา ตาม. เอกสารส่งออกจะยังไม่สมบูรณ์" |                          |   {{< emoticons/tick >}}  |
|  "เอกสารมีหัวข้อว่าระดับไหนที่ไม่ต่อเนื่องกัน นี่ ละเมิด ข้อ เรียก ร้อง ของ การ ทํา ตาม. เอกสารส่งออกจะยังไม่สมบูรณ์" |                          |   {{< emoticons/tick >}}  |
|  "มีรูปทรงที่ไม่มีตัวอักษรในเอกสาร นี่ ละเมิด ข้อ เรียก ร้อง ของ การ ทํา ตาม. เอกสารส่งออกจะยังไม่สมบูรณ์" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "มีตารางที่ไม่มีตัวอักษรในเอกสาร นี่ ละเมิด ข้อ เรียก ร้อง ของ การ ทํา ตาม. เอกสารส่งออกจะยังไม่สมบูรณ์" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "มี Hyperlinks โดยไม่ปรากฏข้อความในเอกสาร นี่ ละเมิด ข้อ เรียก ร้อง ของ การ ทํา ตาม. เอกสารส่งออกจะยังไม่สมบูรณ์" |                          |   {{< emoticons/tick >}}  |
|  "มีตารางที่ไม่มีหัวแถว/โคลัมน์อยู่ในเอกสาร นี่ ละเมิด ข้อ เรียก ร้อง ของ การ ทํา ตาม. เอกสารส่งออกจะยังไม่สมบูรณ์" |                          |   {{< emoticons/tick >}}  |
|  "เอกสารที่มีอักขระยูนิโค้ด PUA นี่ ละเมิด ข้อ เรียก ร้อง ของ การ ทํา ตาม. เอกสารส่งออกจะยังไม่สมบูรณ์" |   {{< emoticons/tick >}}  |                          |
|  "เอกสารที่บรรจุ .notde glyphเอส. นี่ ละเมิด ข้อ เรียก ร้อง ของ การ ทํา ตาม. เอกสารส่งออกจะยังไม่สมบูรณ์" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
