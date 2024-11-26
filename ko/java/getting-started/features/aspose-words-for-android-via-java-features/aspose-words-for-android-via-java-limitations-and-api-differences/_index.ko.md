---
title: Android을 통해Java차이
second_title: Aspose.Words
articleTitle: Java제한 및API차이점을 통해Android에 대해Aspose.Words
linktitle: Java제한 및API차이점을 통해Android에 대해Aspose.Words
description: "Java버전의 일반Aspose.Words에 비해Java기능과API차이를 통해Android에 대한Aspose.Words."
type: docs
weight: 50
url: /ko/java/aspose-words-for-android-via-java-limitations-and-api-differences/
timestamp: 2024-01-27-14-07-04
---

## JavaAPI에 대한Aspose.Words에 비해Android을 통해JavaAPI에 대한Aspose.Words의 제한

1. *Document.print *메서드를 사용할 수 없습니다.
1. **TIFF**및**BMP**형식으로 저장하는 것은 지원되지 않지만*SaveFormat.TIFF*및*SaveFormat.BMP*는JavaAPI을 통해Android에 대해 공개Aspose.Words에서 사용할 수 있지만 이러한 저장 형식을 사용할 때*UnsupportedOperationException*이 발생합니다.
1. **TIFF**이미지를 읽는 것은 지원되지 않습니다.
1. **ODT**문서에 서명하는 것은 아직 지원되지 않습니다.
1. 바코드는 지원되지 않습니다.
1. 곡선을 따라 그라디언트는 지원되지 않습니다
1. 인쇄는 지원되지 않습니다

## 공개API차이점

- 안드로이드그래픽.비트맵은 자바 대신 사용된다.아우이미지BufferedImage;
- 안드로이드그래픽.자바 대신 캔버스가 사용됩니다.아우이미지그래픽 2 차원;
- 안드로이드그래픽.자바 대신 레크프 를 사용 합니다.아우지오미플로트;
- 안드로이드그래픽.자바 대신 포인트 프가 사용됩니다.아우지오미포인트 2 디.플로트;
- 안드로이드그래픽.자바 대신 직선이 사용된다.아우직사각형;
- 안드로이드그래픽.자바 대신 포인트가 사용된다.아우포인트.

다음 공개API메서드를 참조하십시오:

1. 컴아스포스단어.DocumentBuilder:
   1. insertImage(비트맵)
   1. insertImage(비트맵,더블,더블)
   1. insertImage(비트맵,비트맵,비트맵,비트맵,비트맵,비트맵,비트맵,비트맵,비트맵,비트맵)
   1. insertOleImage(비트맵)
   1. insertOleObject(InputStream,문자열,부울,비트맵)
   1. insertOleObject(문자열,부울,부울,비트맵)
   1. insertOleObject(문자열,문자열,부울,부울,비트맵)
1. 컴아스포스단어.IBarcodeGenerator:
   1. 비트맵getBarcodeImage(BarcodeParameters)
   1. 비트맵getOldBarcodeImage(BarcodeParameters)
1. 컴아스포스단어.ImageData:
   1. setImage(비트맵)
   1. 비트맵toImage()
1. 컴아스포스단어.ImageFieldMergingArgs:
   1. 비트맵getImage()
   1. setImage(비트맵)
1. 컴아스포스단어.문서:
   1. android.graphics.PointF renderToScale(int, Canvas, float, float, float)가 예외를 발생시킵니다.
   1. 플로트renderToSize(인트,캔버스,플로트,플로트,플로트,플로트)는 예외를 발생시킵니다
1. 컴아스포스단어.LayoutEnumerator:
   1. android.graphics.RectF getRectangle()가 예외를 발생시킵니다.
1. 컴아스포스단어.NodeRendererBase:
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.RectF getOpaqueBoundsInPoints()
   1. 공개 android.graphics.PointF getSizeInPixels(float, float)
   1. 안드로이드그래픽.getBoundsInPixels(플로트,플로트)
   1. 안드로이드그래픽.getOpaqueBoundsInPixels(플로트,플로트)
   1. android.graphics.PointF renderToScale(캔버스, float, float, float)
   1. 플로트renderToSize(캔버스,플로트,플로트,플로트,플로트)
1. 컴아스포스단어.PageInfo:
   1. android.graphics.PointF getSizeInPixels(float, float)
   1. android.graphics.PointF getSizeInPoints()
1. 컴아스포스단어.ShapeBase:
   1. android.graphics.RectF adjustWithEffects(안드로이드.그래픽.RectF)
   1. android.graphics.RectF getBounds()
   1. android.graphics.RectF getBoundsInPoints()
   1. android.graphics.RectF getBoundsWithEffects()
   1. 안드로이드그래픽.포인트getCoordOrigin()
   1. android.graphics.PointF getCoordSize()
   1. android.graphics.PointF getSizeInPoints()
   1. android.graphics.PointF localToParent(안드로이드.그래픽.포인트F)
   1. setBounds(안드로이드.그래픽.)
   1. setCoordOrigin(안드로이드.그래픽.포인트)
   1. setCoordSize(안드로이드.그래픽.)
1. 컴아스포스단어.ThumbnailGeneratingOptions:
   1. android.graphics.PointF getThumbnailSize()
   1. setThumbnailSize(안드로이드.그래픽.)

## Aspose.WordsAndroid을 통해Java추가 요구 사항

계량 라이센스 기능을 사용하고 문서 또는 이미지를 로드하려면 응용 프로그램에 다음 권한을 추가해야 합니다
`<uses-permission android:name="android.permission.INTERNET" />`

## 공개API예제

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
