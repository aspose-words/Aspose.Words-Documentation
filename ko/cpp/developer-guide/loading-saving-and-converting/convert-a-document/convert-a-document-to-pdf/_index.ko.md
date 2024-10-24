---
title: 문서를 다음으로 변환 PDF 그 안에 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서를 다음으로 변환 PDF
linktitle: 문서를 다음으로 변환 PDF
description: "문서를 다음으로 변환 PDF 사용 C++. 단어를 포함하여 다양한 입력 형식이 지원됩니다, OpenOffice,이미지 및 eBook 형식"
type: docs
weight: 10
url: /ko/cpp/convert-a-document-to-pdf/
---

한 형식에서 다른 형식으로 문서를 쉽고 안정적으로 변환하는 기능은 다음과 같은 주요 기능입니다 Aspose.Words. 변환을 위해 가장 인기있는 형식 중 하나는 다음과 같습니다 PDF -다양한 플랫폼에서 렌더링하는 동안 문서의 원래 모양을 보존하는 고정 레이아웃 형식. "렌더링"용어는 Aspose.Words 문서를 페이지 매김 또는 페이지 개념이 있는 파일 형식으로 변환하는 프로세스를 설명합니다.

## 단어 문서를 다음으로 변환 PDF {#convert-a-word-document-to-pdf}

단어 에서 단어 로의 변환 PDF 여러 단계의 계산이 필요한 다소 복잡한 프로세스입니다. Aspose.Words 레이아웃 엔진은 방법을 모방 Microsoft Word의 페이지 레이아웃 엔진이 작동,만들기 PDF 출력 문서는 당신이 볼 수있는 가능한 한 가까이 봐 Microsoft Word.

함께 Aspose.Words 다음에서 프로그래밍 방식으로 문서를 변환할 수 있습니다 DOC 또는 DOCX 형식 PDF 사용하지 않고 Microsoft 사무실. 이 문서에서는 이 변환을 수행하는 방법을 설명합니다.

{{% alert color="primary" %}}

문서의 페이지 수는 변환 시간에 영향을 줍니다.

{{% /alert %}}

### 변환 DOCX 또는 DOC 에 PDF {#converting-doc-or-docx-to-pdf}

에서 변환 DOC 또는 DOCX 로 문서 형식 PDF 형식 Aspose.Words 매우 쉽고 단 두 줄의 코드로 수행 할 수 있습니다.:

1. 로 문서를로드 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 형식 확장자를 사용하여 문서 이름을 지정하여 생성자 중 하나를 사용하는 개체입니다.
1. 중 하나를 호출 [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) 에 방법 **Document** 개체 및 원하는 출력 형식을 다음과 같이 지정합니다 PDF "로 파일 이름을 입력하면PDF"확장.

다음 코드 예제에서는 다음에서 문서를 변환하는 방법을 보여 줍니다 DOCX 안으로 PDF 를 사용하여 `Save` 방법:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

때로는 문서를 저장 한 결과에 영향을 줄 수있는 추가 옵션을 지정해야합니다. PDF. 이러한 옵션은 다음을 사용하여 지정할 수 있습니다 [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) 클래스,방법을 결정하는 속성을 포함 PDF 출력이 표시됩니다.

동일한 기술을 사용하여 모든 흐름 레이아웃 형식 문서를 다음과 같이 변환할 수 있습니다 PDF 형식

{{% /alert %}}

### 다른 것으로 변환 PDF 표준 {#converting-to-various-pdf-standards}

Aspose.Words 제공 [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) 의 변환을 지원하기 위한 열거 DOC 또는 DOCX 다양한 PDF 형식 표준(예: PDF 1.7, PDF 1.5 그 밖의).

다음 코드 예제에서는 문서를 다음과 같이 변환하는 방법을 보여 줍니다 PDF 1.7 사용 [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) 준수 PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## 이미지 변환 PDF {#convert-an-image-to-pdf}

로 변환 PDF 에 의해 제한되지 않습니다 Microsoft Word 문서 형식. 지원되는 모든 형식 Aspose.Words,프로그래밍 방식으로 생성된 것을 포함하여,또한 PDF. 예를 들어 다음과 같은 단일 페이지 이미지를 변환 할 수 있습니다 JPEG, PNG, BMP, EMF,또는 WMF,그리고 여러 페이지의 이미지,예를 들어 TIFF 그리고 GIF,에 PDF.

다음 코드 예제에서는 변환하는 방법을 보여 줍니다 JPEG 그리고 TIFF 에 이미지 PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

이 코드가 작동하려면 다음에 대한 참조를 추가해야 합니다 Aspose.Words 그리고 `System.Drawing` 당신의 프로젝트에.

## 또한 참조

- 기사 [렌더링](/words/cpp/rendering/) 고정 페이지 및 플로우 레이아웃 형식에 대한 자세한 내용은
- 기사 [고정 페이지 형식으로 변환](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 페이지 레이아웃에 대한 자세한 내용은
- 기사 [로 변환할 때 렌더링 옵션 지정 PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) 사용에 대한 자세한 내용은 `PdfSaveOptions` 클래스
