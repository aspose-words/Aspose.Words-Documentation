---
title: การทำงานกับลายน้ำในC++
second_title: Aspose.WordsสำหรับC++
articleTitle: การทำงานกับลายน้ำ
linktitle: การทำงานกับลายน้ำ
type: docs
description: "การจัดการลายน้ำเอกสารโดยใช้C++."
weight: 340
url: /th/cpp/working-with-watermark/
---

หัวข้อนี้กล่าวถึงวิธีการทำงานตามโปรแกรมด้วยลายน้ำโดยใช้Aspose.Words ลายน้ำเป็นภาพพื้นหลังที่แสดงอยู่เบื้องหลังข้อความในเอกสาร ลายน้ำสามารถประกอบด้วยข้อความหรือรูปภาพที่แสดงโดยคลาสของ[Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## เพิ่มลายน้ำในเอกสาร

ในMicrosoft Wordลายน้ำสามารถแทรกลงในเอกสารโดยใช้คำสั่งแทรกลายน้ำ Aspose.Wordsให้[watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/)คลาสที่จะเพิ่มหรือลบลายน้ำในเอกสาร. Aspose.Wordsให้การแจงนับ[WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)กำหนดสามประเภทที่เป็นไปได้ของลายน้ำ(ข้อความ,ภาพ,และไม่มี)ที่จะทำงา.

### เพิ่มลายน้ำข้อความ

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการแทรกลายน้ำข้อความในเอกสารโดยการกำหนด[TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/)โดยใช้วิธีการ[SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### เพิ่มลายน้ำภาพ

ตัวอย่างรหัสต่อไปนี้แสดงให้เห็นถึงวิธีการแทรกลายน้ำภาพในเอกสารโดยการกำหนด[ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/)โดยใช้วิธีการ[SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

ลายน้ำยังสามารถแทรกโดยใช้ชั้นเรียนรูปร่างได้เป็นอย่างดี มันเป็นเรื่องง่ายมากที่จะแทรกรูปร่างหรือภาพใดๆลงในส่วนหัวหรือส่วนท้ายและทำให้การส ตัวอย่างรหัสต่อไปนี้แทรกลงในเอกสารคำ.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์แม่แบบของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## ลบลายน้ำออกจากเอกสาร

คลาส[Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/)มีวิธีการเอาออกเพื่อลบลายน้ำออกจากเอกสาร.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการลบลายน้ำจากเอกสาร:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

หากมีการเพิ่มลายน้ำโดยใช้วัตถุระดับ[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)จากนั้นในการลบลายน้ำออกจากเอกสารที่คุณต้องตั้งเฉพาะชื่อของรูปร่างลายน้ำในระหว่างการแทรกแล้วลบรูปร่างลายน้ำด้วยชื่อที่กำหนดไว้.

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการตั้งค่าชื่อของรูปร่างลายน้ำและลบออกจากเอกสาร:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## เพิ่มลายน้ำในเซลล์ตาราง

บางครั้งคุณต้องใส่ลายน้ำ/ภาพลงในเซลล์ของตารางและแสดงนอกโต๊ะคุณสามารถใช้[IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/)คุณสมบัติ คุณสมบัตินี้ได้รับหรือตั้งค่าสถานะที่ระบุว่ารูปร่างจะแสดงภายในตารางหรือภายนอกของมัน โปรดทราบว่าคุณสมบัตินี้ทำงานเฉพาะเมื่อคุณเพิ่มประสิทธิภาพเอกสารสำหรับMicrosoft Word2010 โดยใช้วิธี[OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

ตัวอย่างรหัสต่อไปนี้แสดงวิธีใช้คุณสมบัตินี้:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
