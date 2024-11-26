---
title: การทำงานกับแบบอักษรในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับแบบอักษร
linktitle: การทำงานกับแบบอักษร
description: "การจัดรูปแบบแบบอักษรในรายละเอียดโดยใช้C++."
type: docs
weight: 230
url: /th/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

แบบอักษรคือชุดของอักขระที่มีขนาดสีและการออกแบบบางอย่าง Aspose.Wordsช่วยให้คุณสามารถทำงานกับแบบอักษรโดยใช้เนมสเปซ[Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/)และ[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)คลาส.

## การจัดรูปแบบแบบอักษร

การจัดรูปแบบแบบอักษรปัจจุบันจะแสดงโดยออบเจกต์**Font**ที่ส่งคืนโดยคุณสมบัติ[Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) คลาส**Font**ประกอบด้วยคุณสมบัติแบบอักษรที่หลากหลายซึ่งมีอยู่ในMicrosoft Word.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าการจัดรูปแบบแบบอักษร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

กรอกคุณสมบัติในขณะนี้ยังมีแบบอักษรเพื่อตั้งค่าการกรอกข้อมูลการจัดรูปแบบของข้อความ จะช่วยให้ความสามารถในการเปลี่ยนแปลงตัวอย่างเช่นสีเบื้องหน้าหรือความโปร่งใสขอ.

## การเว้นวรรคบรรทัดแบบอักษร

ระยะห่างบรรทัดแบบอักษรเป็นระยะทางแนวตั้งระหว่างเส้นขอบของสองบรรทัดติดต่อกันข ดังนั้นระยะห่างของเส้นมีช่องว่างระหว่างบรรทัดพร้อมกับความสูงของอักขระเอง.

คุณสมบัติ[LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/)ถูกนำมาใช้ในชั้นเรียน**Font**เพื่อให้ได้ค่านี้ดังแสดงในตัวอย่างด้านล่าง:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## แบบอักษรEmphasisMark

ภาษาเอเชียตะวันออกบางภาษาใช้เครื่องหมายเน้นพิเศษเพื่อระบุการเน้น คลาส **Font** มีคุณสมบัติ [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) เพื่อรับหรือตั้งค่าค่าการแจงนับ `EmphasisMark` ที่จะใช้เมื่อจัดรูปแบบ.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าคุณสมบัติ**EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
