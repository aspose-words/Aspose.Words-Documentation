---
title: การทำงานกับรูปภาพใน C#
second_title: Aspose.Words สำหรับ .NET
articleTitle: การทำงานกับรูปภาพ
linktitle: การทำงานกับรูปภาพ
description: "รูปร่างของภาพในรายละเอียดและคุณสมบัติขั้นสูงที่ Aspose.Words สำหรับ .NET มอบให้"
type: docs
weight: 300
url: /th/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words ช่วยให้ผู้ใช้สามารถทำงานกับรูปภาพได้อย่างยืดหยุ่น ในบทความนี้ คุณสามารถสำรวจความเป็นไปได้บางประการในการทำงานกับรูปภาพเท่านั้น

## วิธีแทรกรูปภาพ {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) มีเมธอด [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) มากมายที่ให้คุณแทรกรูปภาพแบบอินไลน์หรือแบบลอยได้ หากรูปภาพเป็นเมตาไฟล์ EMF หรือ WMF รูปภาพนั้นจะถูกแทรกลงในเอกสารในรูปแบบเมตาไฟล์ รูปภาพอื่นๆ ทั้งหมดจะถูกจัดเก็บในรูปแบบ PNG วิธี **InsertImage** สามารถใช้รูปภาพจากแหล่งต่างๆ ได้:

- จากไฟล์หรือ `URL` โดยส่งพารามิเตอร์ `String` [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- จากสตรีมโดยส่งพารามิเตอร์ `Stream` **InsertImage**
- จากวัตถุรูปภาพโดยส่งพารามิเตอร์รูปภาพ **InsertImage**
- จากอาร์เรย์ไบต์โดยส่งพารามิเตอร์อาร์เรย์ไบต์ **InsertImage**

สำหรับแต่ละวิธีของ **InsertImage** มีการโอเวอร์โหลดเพิ่มเติมซึ่งทำให้คุณสามารถแทรกรูปภาพด้วยตัวเลือกต่อไปนี้:
- อินไลน์หรือลอยอยู่ในตำแหน่งเฉพาะ เช่น **InsertImage**
- ระดับเปอร์เซ็นต์หรือขนาดที่กำหนดเอง เช่น **InsertImage** นอกจากนี้ วิธีการ **InsertImage** ยังส่งคืนออบเจ็กต์ [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) ที่เพิ่งสร้างและแทรก เพื่อให้คุณสามารถแก้ไขคุณสมบัติของรูปร่างเพิ่มเติมได้

### วิธีแทรกรูปภาพอินไลน์ {#insert-an-inline-image}

ส่งสตริงเดียวที่แสดงไฟล์ที่มีรูปภาพไปที่ **InsertImage** เพื่อแทรกรูปภาพลงในเอกสารเป็นกราฟิกอินไลน์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกรูปภาพอินไลน์ที่ตำแหน่งเคอร์เซอร์ลงในเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### วิธีแทรกรูปภาพลอย {#insert-a-floating-image}

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกรูปภาพแบบลอยจากไฟล์หรือ `URL` ในตำแหน่งและขนาดที่ระบุ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## วิธีแยกรูปภาพจากเอกสาร {#how-to-extract-images-from-a-document}

รูปภาพทั้งหมดจะถูกจัดเก็บไว้ในโหนด **Shape** ในรูปแบบ [Document](https://reference.aspose.com/words/net/aspose.words/document/) หากต้องการแยกรูปภาพทั้งหมดหรือรูปภาพที่มีประเภทเฉพาะออกจากเอกสาร ให้ทำตามขั้นตอนเหล่านี้:

- ใช้วิธี [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) เพื่อเลือกโหนด **Shape** ทั้งหมด
- วนซ้ำผ่านการรวบรวมโหนดที่เกิดขึ้น
- ตรวจสอบคุณสมบัติบูลีน [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/)
- แยกข้อมูลภาพโดยใช้คุณสมบัติ [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/)
- บันทึกข้อมูลภาพเป็นไฟล์

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแยกรูปภาพจากเอกสารและบันทึกเป็นไฟล์:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

คุณสามารถดาวน์โหลดไฟล์ตัวอย่างของตัวอย่างนี้ได้จาก [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx)

{{% /alert %}}

## วิธีแทรกบาร์โค้ดในแต่ละหน้าเอกสาร {#how-to-insert-barcode-on-each-documen-page}

ตัวอย่างนี้สาธิตให้คุณเพิ่มบาร์โค้ดที่เหมือนกันหรือต่างกันในหน้าทั้งหมดหรือเฉพาะเจาะจงของเอกสาร Word ไม่มีวิธีโดยตรงในการเพิ่มบาร์โค้ดในทุกหน้าของเอกสาร แต่คุณสามารถใช้วิธี **MoveToSection**, **MoveToHeaderFooter** และ **InsertImage** เพื่อย้ายไปยังส่วนหรือส่วนหัว/ส่วนท้าย และแทรกรูปภาพบาร์โค้ดตามที่คุณเห็นในโค้ดต่อไปนี้

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการแทรกรูปภาพบาร์โค้ดในแต่ละหน้าของเอกสาร:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## ล็อคอัตราส่วนภาพของภาพ {#lock-aspect-ratio-of-image}

อัตราส่วนภาพของรูปทรงเรขาคณิตคืออัตราส่วนของขนาดในมิติต่างๆ คุณสามารถล็อคอัตราส่วนภาพของภาพโดยใช้ [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) ค่าเริ่มต้นของอัตราส่วนภาพของรูปร่างจะขึ้นอยู่กับ [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) เป็น *true* สำหรับ `ShapeType.Image` และ *false* สำหรับรูปร่างประเภทอื่นๆ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการทำงานกับอัตราส่วนภาพ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## วิธีรับขอบเขตของรูปร่างตามจริงเป็นคะแนน {#how-to-get-actual-bounds-of-shape-in-points}

หากคุณต้องการให้กล่องขอบเขตจริงของรูปร่างตามที่แสดงผลบนเพจ คุณสามารถทำได้โดยใช้คุณสมบัติ [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/)

ตัวอย่างรหัสต่อไปนี้แสดงวิธีการใช้คุณสมบัตินี้:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## ครอบตัดรูปภาพ {#crop-images}

การครอบตัดรูปภาพมักหมายถึงการลบส่วนนอกที่ไม่ต้องการของรูปภาพออกเพื่อช่วยปรับปรุงการจัดเฟรม นอกจากนี้ยังใช้สำหรับการลบบางส่วนของภาพเพื่อเพิ่มโฟกัสไปที่พื้นที่เฉพาะ

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบรรลุเป้าหมายนี้โดยใช้ Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## บันทึกรูปภาพเป็น WMF {#save-images-as-wmf}

Aspose.Words มีฟังก์ชันในการบันทึกรูปภาพที่มีอยู่ในเอกสารเป็นรูปแบบ [WMF](https://docs.fileformat.com/image/wmf/) ในขณะที่แปลง DOCX เป็น RTF

ตัวอย่างโค้ดต่อไปนี้แสดงวิธีการบันทึกรูปภาพเป็น WMF ด้วยตัวเลือกการบันทึก RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
