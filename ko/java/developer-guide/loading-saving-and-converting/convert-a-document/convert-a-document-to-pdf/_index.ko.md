---
title: Java에서 문서를PDF로 변환
second_title: Aspose.WordsJava
articleTitle: 문서를PDF로 변환
linktitle: 문서를PDF로 변환
description: "단어 또는 기타 지원되는 형식의 문서를PDF로 변환하여Java을 사용하여 다양한 플랫폼에서 렌더링하는 동안 문서의 원래 모양을 유지합니다."
type: docs
weight: 10
url: /ko/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

한 형식에서 다른 형식으로 문서를 쉽고 안정적으로 변환하는 기능은Aspose.Words의 핵심 기능입니다. 변환에 가장 많이 사용되는 형식 중 하나는PDF(고정 레이아웃 형식)이며 다양한 플랫폼에서 렌더링하는 동안 문서의 원래 모양을 유지합니다. "렌더링"용어는Aspose.Words에서 문서를 페이지 매김 또는 페이지 개념을 가진 파일 형식으로 변환하는 프로세스를 설명하는 데 사용됩니다.

## 단어 문서를PDF {#convert-a-word-document-to-pdf}으로 변환

단어에서PDF로 변환하는 것은 여러 단계의 계산이 필요한 다소 복잡한 과정입니다. Aspose.Words레이아웃 엔진은Microsoft Word의 페이지 레이아웃 엔진이 작동하는 방식을 모방하여PDF출력 문서를Microsoft Word에서 볼 수 있는 것과 최대한 가깝게 만듭니다.

Aspose.Words을 사용하면Microsoft오피스를 사용하지 않고 프로그래밍 방식으로DOC또는DOCX형식의 문서를PDF로 변환할 수 있습니다. 이 문서에서는 이 변환을 수행하는 방법을 설명합니다.

{{% alert color="primary" %}}

문서의 페이지 수는 변환 시간에 영향을 줍니다.

{{% /alert %}}

### DOCX또는DOC를PDF {#converting-doc-or-docx-to-pdf}으로 변환

DOC또는DOCX문서 형식에서Aspose.Words의PDF형식으로 변환하는 것은 매우 쉽고 두 줄의 코드만으로 수행 할 수 있습니다.:

1. 형식 확장자를 사용하여 문서 이름을 지정하여 생성자 중 하나를 사용하여[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)개체에 문서를 로드합니다.
1. **Document**개체에서[Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int)메서드 중 하나를 호출하고"로 파일 이름을 입력하여 원하는 출력 형식을PDF로 지정합니다.PDF"확장.

다음 코드 예제에서는`Save`메서드를 사용하여DOCX에서PDF로 문서를 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

때로는 문서를PDF로 저장 한 결과에 영향을 줄 수있는 추가 옵션을 지정해야합니다. 이러한 옵션은PDF출력이 표시되는 방법을 결정하는 속성을 포함하는[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)클래스를 사용하여 지정할 수 있습니다.

동일한 기술을 사용하여 플로우 레이아웃 형식 문서를PDF형식으로 변환할 수 있습니다.

{{% /alert %}}

### 다른PDF표준 {#converting-to-various-pdf-standards}으로 변환

Aspose.Words는 DOC 또는 DOCX을 다양한 PDF 형식 표준(예: PDF 1.7, PDF 1.5 등)으로 변환하는 것을 지원하기 위해 [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)열거형을 제공합니다.

다음 코드 예제에서는PDF17를 준수하여[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)을 사용하여 문서를PDF1.7로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## 이미지를PDF로 변환

PDF로 변환하는 것은Microsoft Word문서 형식으로 제한되지 않습니다. 프로그래밍 방식으로 생성 된 것을 포함하여Aspose.Words에서 지원하는 모든 형식을PDF로 변환 할 수도 있습니다. 예를 들어 다음과 같은 단일 페이지 이미지를 변환 할 수 있습니다JPEG, PNG, BMP, EMF, 또는WMF,TIFF및GIF과 같은 다중 페이지 이미지뿐만 아니라PDF.

다음 코드 예제에서는JPEG및TIFF이미지를PDF로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

이 코드가 작동하려면Aspose.Words,Java에 대한 참조를 추가해야 합니다.아우이미지,자바크스프로젝트에 대한 이미지 오 클래스 패키지.

## PDF출력 크기 줄이기

PDF에 저장할 때 출력을 최적화할지 여부를 지정할 수 있습니다. 이렇게하려면[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput)플래그를 참으로 설정 한 다음 중복 중첩 캔버스와 빈 캔버스가 제거되고 동일한 서식을 가진 이웃 글리프가 연결됩니다.

다음 코드 예제에서는 출력을 최적화하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

**OptimizeOutput**속성을 사용하면 콘텐츠 표시의 정확도에 영향을 줄 수 있습니다.

{{% /alert %}}

## 또한 참조

- 기사 [렌더링](/words/java/rendering/) 고정 페이지 및 플로우 레이아웃 형식에 대한 자세한 내용은
- 기사 [고정 페이지 형식으로 변환](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 페이지 레이아웃에 대한 자세한 내용은
- 기사 [PDF로 변환할 때 렌더링 옵션 지정](/words/java/specify-rendering-options-when-converting-to-pdf/) `PdfSaveOptions`클래스 사용에 대한 자세한 내용은
