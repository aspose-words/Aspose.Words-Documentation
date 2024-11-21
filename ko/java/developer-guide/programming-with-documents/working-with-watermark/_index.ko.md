---
title: Watermark로 일하기 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Watermark로 일하기
linktitle: Watermark로 일하기
type: docs
description: "문서 워터마크 조작 Java·"
weight: 70
url: /ko/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

이 항목에 대해 논의하는 방법 programmatically 와 watermark using Aspose.Words· 워터마크는 문서의 텍스트 뒤에 표시된 배경 이미지입니다. 워터마크는 텍스트나 이미지를 표현할 수 있습니다. [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) 수업.

{{% alert color="primary" %}}

**온라인 채팅**

이 기능을 사용해 보세요. [무료 온라인 문서 워터 마크](https://products.aspose.app/words/watermark)·

{{% /alert %}}

## Watermark를 문서에 추가

내 계정 Microsoft Word, 워터마크는 삽입 워터마크 명령을 사용하여 문서에 쉽게 삽입할 수 있습니다. Aspose.Words 제품정보 [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) 문서에 워터 마크를 추가하거나 제거하는 클래스. Aspose.Words 제품정보 [워터마크 제품정보](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)Watermarks (Text, Image, None)의 세 가지 유형의 정수를 정의하여 작업합니다

### 텍스트 워터 마크 추가

다음 코드 예제는 정의하여 문서의 텍스트 워터 마크를 삽입하는 방법을 설명합니다. [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) 사용 방법 [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) 방법:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### 이미지 Watermark 추가

다음 코드 예제는 정의하여 문서의 이미지 워터 마크를 삽입하는 방법을 설명합니다. [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) 사용 방법 [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) 방법:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

워터 마크는 모양 클래스를 사용하여 삽입 할 수 있습니다. 그것은 어떤 모양 또는 이미지를 우두머리 또는 footer로 삽입하는 것은 아주 쉽습니다 따라서 어떤 imaginable 유형든지의 Watermark를 창조하십시오.

다음 코드 예제는 Word 문서에 워터 마크를 삽입합니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)·

{{% /alert %}}


## 문서에서 Watermark 제거

더 보기 [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) 클래스 제공 `Remove` 문서에서 워터 마크를 제거하는 방법.

다음 코드 예제는 문서에서 워터 마크를 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

문서에서 워터 마크를 제거하려면 삽입 중에 워터 마크 모양의 이름을 설정하고 지정된 이름으로 워터 마크 모양을 제거해야합니다.

다음 코드 예제는 워터 마크 모양의 이름을 설정하고 문서에서 제거하는 방법을 보여줍니다

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Watermark를 테이블 셀에 추가

때때로 당신은 테이블의 세포로 워터 마크 / 이미지를 삽입하고 테이블 밖에 표시해야합니다, 당신은 사용할 수 있습니다 [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) 호텔 위치 이 속성은 또는 모양이 테이블 내부 또는 외부에 표시 있는지 나타내는 플래그를 설정합니다. 이 속성은 문서를 최적화 할 때만 작동합니다. Microsoft Word 2010 사용 [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) 방법

다음 코드 예제는이 속성을 사용하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
