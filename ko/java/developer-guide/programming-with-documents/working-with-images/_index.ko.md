---
title: 이미지 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 이미지 작업
linktitle: 이미지 작업
type: docs
description: "세부 사항 및 고급 기능의 이미지 모양 Aspose.Words 제품정보 Java·"
weight: 300
url: /ko/java/working-with-images/
---

Aspose.Words 사용자는 매우 유연한 방법으로 이미지를 작업 할 수 있습니다. 이 문서에서, 당신은 이미지를 작업의 가능성을 탐구 할 수 있습니다.

## 문서에서 이미지를 추출하는 방법 {#how-to-extract-images-from-a-document}

모든 이미지는 안쪽으로 저장됩니다 **Shape** 문서의 노드. 문서에서 특정 유형이있는 모든 이미지 또는 이미지를 추출하려면 다음 단계를 따르십시오

- 사용 [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) 모든 모양 노드를 선택하는 방법.
- 노드 수집을 통해 Iterate.
- 확인 [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) boolean 속성
- 이미지 데이터를 추출 [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) 호텔 위치
- 파일에 이미지 데이터를 저장합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## 각 문서 페이지에서 바코드를 삽입하는 방법 {#how-to-insert-barcode-on-each-documen-page}

이 예제는 Word 문서의 모든 또는 특정 페이지에 동일한 또는 다른 바코드를 추가 할 수 있습니다. 문서의 모든 페이지에 바코드를 추가하는 방법은 없지만 사용할 수 있습니다. [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) · [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) 어떤 단면도 또는 headers/footers로 이동하고 뒤에 오는 부호에서 볼 수 있는 것처럼 바코드 이미지를 삽입하는 방법

다음 코드 예제는 문서의 각 페이지에서 바코드 이미지를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## 이미지의 잠금 측면 비율 {#lock-aspect-ratio-of-image}

형상의 측면 비율은 다른 크기의 비율입니다. 이미지의 측면 비율을 잠글 수 있습니다. [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked)· 모양의 종횡비의 기본 값은에 달려 있습니다 [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)· 그것은 true 제품정보 `ShapeType.Image` · false 다른 모양 유형을 위해.

뒤에 오는 부호 예는 종횡비로 일하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## 포인트에서 모양의 실제 경계를 얻는 방법 {#how-to-get-actual-bounds-of-shape-in-points}

페이지에 렌더링 된 것처럼 모양의 실제 경계 상자를 원한다면이를 사용하여 달성 할 수 있습니다. [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) 호텔 위치

다음 코드 예제는이 속성을 사용하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Crop 이미지

이미지의 작물은 보통 이미지의 원치 않는 외부 부속의 제거에 framing 개량하는 것을 돕기 위하여 나타납니다. 그것은 또한 이미지의 일부의 제거에 사용됩니다 특정 지역에 초점 증가.

다음 코드 예제는 이것을 사용하는 방법을 보여줍니다. Aspose.Words API::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## WMF로 이미지 저장

Aspose.Words 문서의 모든 사용 가능한 이미지를 저장하는 기능을 제공합니다. [사이트맵](https://docs.fileformat.com/image/wmf/)DOCX를 RTF로 변환하는 동안 형식.

다음 코드 예제는 RTF로 이미지를 저장하는 방법을 보여줍니다 옵션:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
