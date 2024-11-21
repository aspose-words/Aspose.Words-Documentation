---
title: 문서를 PDF로 변환 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: PDF로 문서 변환
linktitle: PDF로 문서 변환
description: "Word 또는 다른 지원 형식의 문서를 PDF로 변환하여 다양한 플랫폼에서 렌더링하는 동안 문서의 원래 외관을 보존합니다. Java·"
type: docs
weight: 10
url: /ko/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

쉽게 변환 할 수있는 능력은 하나의 형식으로 문서를 다른 주요 기능입니다 Aspose.Words· 변환을위한 가장 인기있는 형식 중 하나는 PDF – 다양한 플랫폼에서 렌더링하는 동안 문서의 원래 외관을 보존하는 고정 지연 형식입니다. "rendering" 용어는 Aspose.Words 문서 변환 프로세스를 paginated 또는 페이지의 개념이 있는 파일 형식으로 설명합니다.

## Word 문서를 PDF로 변환 {#convert-a-word-document-to-pdf}

Word에서 PDF로 변환은 여러 단계의 계산을 필요로하는 복잡한 프로세스입니다. Aspose.Words 레이아웃 엔진 mimics 방법 Microsoft Word’ s 페이지 레이아웃 엔진 작동, PDF 출력 문서를 볼 수 있는 것 처럼 가까운 Microsoft Word·

이름 * Aspose.Words DOC 또는 DOCX 형식으로 문서를 PDF로 변환 할 수 있습니다. Microsoft 사무실. 이 문서는이 변환을 수행하는 방법을 설명합니다.

{{% alert color="primary" %}}

문서의 페이지 수는 변환 시간에 영향을 미칩니다.

{{% /alert %}}

### DOCX 또는 DOC를 PDF로 변환 {#converting-doc-or-docx-to-pdf}

DOC 또는 DOCX 문서 형식으로 PDF 형식으로 변환 Aspose.Words 매우 쉽고 단지 두 줄의 코드로 수행 할 수 있습니다:

1. 명세 문서에 업로드 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) document name을 형식의 확장자로 지정하여 생성자를 사용하는 객체.
1. 명세 중 하나 의 [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) 의 방법 **Document** 객체와 ".PDF" 확장 파일 이름을 입력하여 원하는 출력 형식을 지정합니다.

다음 코드 예제는 DOCX에서 PDF로 문서를 변환하는 방법을 보여줍니다. `Save` 방법:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc)·

{{% alert color="primary" %}}

PDF로 문서를 저장할 수 있는 추가 옵션을 지정해야 합니다. 이 옵션은 사용할 수 있습니다. [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) PDF 출력이 표시되는 방법을 결정하는 속성을 포함하는 클래스.

동일한 기법으로는 Flow-layout 형식 문서를 PDF 형식으로 변환 할 수 있습니다.

{{% /alert %}}

### 다른 PDF로 변환 제품정보 {#converting-to-various-pdf-standards}

Aspose.Words 제품정보 [프로젝트](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)DOC 또는 DOCX의 변환을 다양한 PDF 형식 표준으로 지원 (PDF 1.7, PDF 1.5 등).

다음 코드 예제는 문서를 PDF 1.7로 변환하는 방법을 설명합니다. [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) PDF17 준수:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## 이미지를 PDF로 변환

PDF로 변환은 제한되지 않습니다. Microsoft Word 문서 형식. 지원되는 어떤 체재 Aspose.Words, programmatically 생성을 포함하여, PDF로 변환될 수 있습니다. 예를 들어, JPEG, PNG, BMP, EMF 또는 WMF와 같은 단일 페이지 이미지를 변환 할 수 있으며 TIFF 및 GIF와 같은 다중 페이지 이미지뿐만 아니라 PDF로 변환 할 수 있습니다.

다음 코드 예제는 JPEG 및 TIFF 이미지를 PDF로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

이 코드 작업을하려면 참조를 추가해야합니다. Aspose.Words, Java.awt.image 및 javax. 프로젝트에 imageio 클래스 패키지.

## PDF 축소 산출 크기

PDF로 저장할 때, 출력을 최적화하려는지 지정할 수 있습니다. 이렇게하려면 설정해야 합니다. [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) 본문 바로가기 true, 그리고 그 후에 중복된 배열된 화포 및 빈 화포는 제거될 것입니다, 이웃 glyph동일한 형식의 s는 concatenated.

다음 코드 예제는 출력을 최적화하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

사용 방법 **OptimizeOutput** 속성은 콘텐츠 디스플레이의 정확성에 영향을 미칠 수 있습니다.

{{% /alert %}}

## 더 보기

- 기사 [이름 *](/words/ko/java/rendering/) 고정 페이지 및 플로우 지연 형식에 대한 자세한 내용은
- 기사 [추천 동영상](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 페이지 레이아웃에 대한 자세한 정보
- 기사 [PDF로 변환](/words/ko/java/specify-rendering-options-when-converting-to-pdf/) 더 많은 정보를 원하시면 `PdfSaveOptions` 수업시간
