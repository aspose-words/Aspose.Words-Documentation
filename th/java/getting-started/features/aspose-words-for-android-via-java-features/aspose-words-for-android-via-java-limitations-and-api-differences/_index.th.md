---
title: Androidผ่านJavaความแตกต่าง
second_title: Aspose.Words
articleTitle: Aspose.WordsสำหรับAndroidผ่านทางJavaข้อจำกัดและAPIความแตกต่าง
linktitle: Aspose.WordsสำหรับAndroidผ่านทางJavaข้อจำกัดและAPIความแตกต่าง
description: "Aspose.WordsสำหรับAndroidผ่านทางJavaคุณสมบัติและAPIความแตกต่างเมื่อเทียบกับปกติAspose.WordsสำหรับJavaรุ่น."
type: docs
weight: 50
url: /th/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## ข้อจำกัดของAspose.WordsสำหรับAndroidผ่านทางJavaAPIเมื่อเทียบกับAspose.WordsสำหรับJavaAPI

1. *Document.print *ไม่สามารถใช้วิธีการได้.
1. ไม่สนับสนุนการบันทึกใน**TIFF**และ**BMP**แม้ว่า*SaveFormat.TIFF*และ*SaveFormat.BMP*จะมีให้บริการในที่สาธารณะAspose.WordsสำหรับAndroidผ่านJavaAPIแต่*UnsupportedOperationException*จะถูกโยนเมื่อใช้รูปแบบการบันทึกเหล่านี้.
1. ไม่สนับสนุนการอ่าน**TIFF**ภาพ.
1. ยังไม่รองรับการเซ็นชื่อ**ODT**เอกสาร.
1. บาร์โค้ดไม่ได้รับการสนับสนุน.
1. ไม่สนับสนุนการไล่ระดับสีตามเส้นโค้ง
1. ไม่สนับสนุนการพิมพ์

## ความแตกต่างAPIสาธารณะ

- แอนดรอยด์งคุณบิตแมปถูกนำมาใช้แทนจาวาโอ้วภาพ.BufferedImage;
- แอนดรอยด์งคุณใช้ผ้าใบแทนจาวาโอ้วภาพ.กราฟิก2มิติ;
- แอนดรอยด์งคุณใช้แทนจาวาโอ้วกีออมสี่เหลี่ยมผืนผ้า 2 มิติลอย;
- แอนดรอยด์งคุณช้แทนจาวาโอ้วกีออมจุด 2 มิติลอย;
- แอนดรอยด์งคุณใช้แทนจาวาโอ้วสี่เหลี่ยมผืนผ้า;
- แอนดรอยด์งคุณจุดที่ใช้แทนจาวาโอ้วประเด็น.

ดูวิธีสาธารณะต่อไปนี้API:

1. คอมแอสโปสคำพูดDocumentBuilder:
   1. insertImage(บิทแมป)
   1. insertImage(บิทแมป,คู่,คู่)
   1. insertImage(บิทแมป,อินท์,คู่,อินท์,คู่,สอง,สอง,สอง,สอง,)
   1. insertOleImage(บิทแมป)
   1. insertOleObject(InputStream,สตริง,บูลีน,บิทแมป)
   1. insertOleObject(สตริงบูลีนบูลีนบิทแมป)
   1. insertOleObject(สตริง,สตริง,บูลีน,บูลีน,บิทแมป)
1. คอมแอสโปสคำพูดIBarcodeGenerator:
   1. บิทแมปgetBarcodeImage(BarcodeParameters)
   1. บิทแมปgetOldBarcodeImage(BarcodeParameters)
1. คอมแอสโปสคำพูดImageData:
   1. setImage(บิทแมป)
   1. บิทแมปtoImage()
1. คอมแอสโปสคำพูดImageFieldMergingArgs:
   1. บิทแมปgetImage()
   1. setImage(บิทแมป)
1. คอมแอสโปสคำพูดเอกสาร:
   1. แอนดรอยด์งคุณพอยท์เอฟrenderToScale(อินเตอร์,ผ้าใบ,ลอย,ลอย,ลอย)พ่นข้อยกเว้น
   1. ลอยrenderToSize(ค่าเริ่มต้น,ผ้าใบ,ลอย,ลอย,ลอย,ลอย)พ่นข้อยกเว้น
1. คอมแอสโปสคำพูดLayoutEnumerator:
   1. แอนดรอยด์งคุณแก้ไขgetRectangle()ข้อยกเว้น
1. คอมแอสโปสคำพูดNodeRendererBase:
   1. แอนดรอยด์งคุณพอยท์เอฟgetSizeInPoints()
   1. แอนดรอยด์งคุณการแก้ไขgetOpaqueBoundsInPoints()
   1. หุ่นยนต์สาธารณะงคุณพอยต์getSizeInPixels(ลอย,ลอย)
   1. แอนดรอยด์งคุณแก้ไขgetBoundsInPixels(ลอย,ลอย)
   1. แอนดรอยด์งคุณแก้ไขgetOpaqueBoundsInPixels(ลอย,ลอย)
   1. แอนดรอยด์งคุณพอยท์เอฟrenderToScale(ผ้าใบ,ลอย,ลอย,ลอย)
   1. ลอยrenderToSize(ผ้าใบ,ลอย,ลอย,ลอย,ลอย)
1. คอมแอสโปสคำพูดPageInfo:
   1. แอนดรอยด์งคุณพอยต์getSizeInPixels(ลอย,ลอย)
   1. แอนดรอยด์งคุณพอยท์เอฟgetSizeInPoints()
1. คอมแอสโปสคำพูดShapeBase:
   1. แอนดรอยด์งคุณแก้ไขadjustWithEffects(แอนดรอยด์.งคุณ)
   1. แอนดรอยด์งคุณการแก้ไขgetBounds()
   1. แอนดรอยด์งคุณการแก้ไขgetBoundsInPoints()
   1. แอนดรอยด์งคุณการแก้ไขgetBoundsWithEffects()
   1. แอนดรอยด์งคุณจุดgetCoordOrigin()
   1. แอนดรอยด์งคุณพอยท์เอฟgetCoordSize()
   1. แอนดรอยด์งคุณพอยท์เอฟgetSizeInPoints()
   1. แอนดรอยด์งคุณพอยต์localToParent(แอนดรอยด์.งคุณพอยต์)
   1. setBounds(แอนดรอยด์.งคุณ)
   1. setCoordOrigin(แอนดรอยด์.งคุณจุด)
   1. setCoordSize(แอนดรอยด์.งคุณพอยต์)
1. คอมแอสโปสคำพูดThumbnailGeneratingOptions:
   1. แอนดรอยด์งคุณพอยท์เอฟgetThumbnailSize()
   1. setThumbnailSize(แอนดรอยด์.งคุณพอยต์)

## Aspose.WordsสำหรับAndroidผ่านทางJavaข้อกำหนดเพิ่มเติม

เพื่อที่จะใช้คุณลักษณะการออกใบอนุญาตมิเตอร์และโหลดเอกสารหรือภาพโดยโปรโตคอล
`<uses-permission android:name="android.permission.INTERNET" />`

## สาธารณะAPIตัวอย่าง

{{< highlight csharp >}}
public void testPublicAPI1() throws Exception
    {
        final String imagePath = "myImage.pmg";
        Bitmap image = null;
        try
        {
            image = BitmapFactory.decodeFile(imagePath);
            DocumentBuilder builder = new DocumentBuilder();
            builder.insertImage(image);
        }
        finally
        {
            if (image != null)
                image.recycle();
        }
    }
{{< /highlight >}}

{{< highlight csharp >}}
public void testPublicAPI2() throws Exception
    {
        String gTestDocumentPath = "testDoc.docx";
        String outFile = "out.png";
        Document doc = new Document(gTestDocumentPath);
        Bitmap image = null;
        FileOutputStream fos = null;
        try
        {
            image = Bitmap.createBitmap(1000, 1000, Bitmap.Config.ARGB_8888);
            Canvas gr = new Canvas(image);
            gr.rotate(45);
            doc.renderToSize(0, gr, 0, 0, image.getWidth(), image.getHeight());
            fos = new FileOutputStream(outFile);
            image.compress(Bitmap.CompressFormat.PNG, 100, fos);
        }
        finally
        {
            if (fos != null)
                fos.close();
            if (image != null)
                image.recycle();
        }
    }
{{< /highlight >}}
