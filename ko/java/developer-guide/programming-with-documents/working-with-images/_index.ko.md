---
title: Java의 이미지 작업
second_title: Aspose.WordsJava
articleTitle: 이미지 작업
linktitle: 이미지 작업
type: docs
description: "Java에 대해Aspose.Words에서 제공하는 세부 정보 및 고급 기능의 이미지 모양."
weight: 300
url: /ko/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words사용자가 매우 유연한 방법으로 이미지를 작업 할 수 있습니다. 이 기사에서는 이미지 작업의 가능성 중 일부만 탐색 할 수 있습니다.

## 문서 {#how-to-extract-images-from-a-document}에서 이미지를 추출하는 방법

모든 이미지는 문서의**Shape**노드 안에 저장됩니다. 문서에서 특정 형식을 가진 모든 이미지 또는 이미지를 추출하려면 다음과 같이 하십시오:

- [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes)메서드를 사용하여 모든 모양 노드를 선택합니다.
- 결과 노드 컬렉션을 반복합니다.
- [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage)부울 속성을 확인합니다.
- [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData)속성을 사용하여 이미지 데이터를 추출합니다.
- 이미지 데이터를 파일에 저장합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## 각 문서 페이지에 바코드를 삽입하는 방법 {#how-to-insert-barcode-on-each-documen-page}

이 예제에서는 워드 문서의 전체 또는 특정 페이지에 동일하거나 다른 바코드를 추가할 수 있습니다. 문서의 모든 페이지에 바코드를 추가하는 직접적인 방법은 없지만[moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int),[moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)및[insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[]))방법을 사용하여 섹션이나 머리글/바닥글로 이동하고 다음 코드에서 볼 수 있듯이 바코드 이미지를 삽입 할 수 있습니다.

다음 코드 예제에서는 문서의 각 페이지에 바코드 이미지를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## 이미지 {#lock-aspect-ratio-of-image}의 종횡비 잠금

기하학적 모양의 면 비율은 다른 차원의 크기의 비율입니다. [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked)을 사용하여 이미지의 종횡비를 잠글 수 있습니다. 셰이프의 가로 세로 비율의 기본값은[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)에 따라 다릅니다. `ShapeType.Image`에 대해서는 참이고 다른 모양 유형에 대해서는 거짓입니다.

다음 코드 예제에서는 종횡비로 작업하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## 점 {#how-to-get-actual-bounds-of-shape-in-points}에서 모양의 실제 경계를 얻는 방법

페이지에 렌더링된 셰이프의 실제 경계 상자를 원하는 경우[BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints)속성을 사용하여 이 작업을 수행할 수 있습니다.

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 이미지 자르기

이미지의 자르기는 일반적으로 프레임을 개선하는 데 도움이되는 이미지의 원치 않는 외부 부분을 제거하는 것을 의미합니다. 또한 특정 영역에 초점을 맞추기 위해 이미지의 일부 부분을 제거하는 데 사용됩니다.

다음 코드 예제에서는Aspose.WordsAPI를 사용하여 이 작업을 수행하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## WMF으로 이미지 저장

Aspose.Words는 문서에서 사용 가능한 모든 이미지를 저장하는 기능을 제공합니다. [WMF](https://docs.fileformat.com/image/wmf/)DOCX를RTF로 변환하는 동안 포맷합니다.

다음 코드 예제에서는RTF저장 옵션을 사용하여 이미지를WMF으로 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
