---
title: C#에서 Word를 PDF로 변환
second_title: .NET용 Aspose.Words
articleTitle: 문서를 PDF로 변환
linktitle: 문서를 PDF로 변환
description: "C#를 사용하여 문서를 PDF로 변환합니다. DOCX를 PDF C#로 변환합니다. Word, OpenOffice, Image 및 eBook 형식을 포함한 다양한 입력 형식이 지원됩니다."
type: docs
weight: 10
url: /ko/net/convert-a-document-to-pdf/
timestamp: 2024-09-25-11-08-55
---

문서를 한 형식에서 다른 형식으로 쉽고 안정적으로 변환하는 기능은 Aspose.Words의 핵심 기능입니다. 가장 널리 사용되는 변환 형식 중 하나는 다양한 플랫폼에서 렌더링하는 동안 문서의 원래 모양을 유지하는 고정 레이아웃 형식인 PDF입니다. Aspose.Words에서 "렌더링"이라는 용어는 문서를 페이지가 지정되거나 페이지 개념을 갖는 파일 형식으로 변환하는 프로세스를 설명하는 데 사용됩니다.

## Word 문서를 PDF로 변환

Word에서 PDF로의 변환은 여러 단계의 계산이 필요한 다소 복잡한 프로세스입니다. Aspose.Words 레이아웃 엔진은 Microsoft Word의 페이지 레이아웃 엔진 작동 방식을 모방하여 PDF 출력 문서를 Microsoft Word에서 볼 수 있는 것과 최대한 비슷하게 만듭니다.

Aspose.Words를 사용하면 Microsoft Office를 사용하지 않고도 프로그래밍 방식으로 DOC 또는 DOCX와 같은 Word 형식의 문서를 PDF로 변환할 수 있습니다. 이 문서에서는 이 변환을 수행하는 방법을 설명합니다.

{{% alert color="primary" %}}

문서의 페이지 수는 변환 시간에 영향을 미칩니다.

{{% /alert %}}

### DOCX 또는 DOC를 PDF로 변환

DOC 또는 DOCX 문서 형식을 Aspose.Words의 PDF 형식으로 변환하는 것은 매우 쉽고 다음과 같은 두 줄의 코드만으로 수행할 수 있습니다

1. 형식 확장자와 함께 문서 이름을 지정하여 생성자 중 하나를 사용하여 문서를 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 개체에 로드합니다.
1. **Document** 객체에서 [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) 메소드 중 하나를 호출하고 ".PDF" 확장자를 가진 파일 이름을 입력하여 원하는 출력 형식을 PDF로 지정합니다.

다음 코드 예제에서는 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 메서드를 사용하여 문서를 DOCX에서 PDF로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% alert color="primary" %}}

문서를 PDF로 저장한 결과에 영향을 줄 수 있는 추가 옵션을 지정해야 하는 경우도 있습니다. 이러한 옵션은 PDF 출력이 표시되는 방법을 결정하는 속성이 포함된 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) 클래스를 사용하여 지정할 수 있습니다.

동일한 기술을 사용하면 흐름 레이아웃 형식의 문서를 PDF 형식으로 변환할 수 있습니다.

{{% /alert %}}

### 다른 PDF 표준으로 변환

Aspose.Words는 DOC 또는 DOCX를 다양한 PDF 형식 표준(예: PDF 1.7, PDF 1.5 등)으로 변환하는 것을 지원하는 [PDF규정 준수](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)enumeration을 제공합니다.

다음 코드 예제는 PDF17을 준수하는 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)를 사용하여 문서를 PDF 1.7로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## 이미지를 PDF로 변환

PDF로 변환하는 것은 Microsoft Word 문서 형식에 의해 제한되지 않습니다. 프로그래밍 방식으로 생성된 형식을 포함하여 Aspose.Words에서 지원하는 모든 형식을 PDF로 변환할 수도 있습니다. 예를 들어 JPEG, PNG, BMP, EMF 또는 WMF와 같은 단일 페이지 이미지뿐만 아니라 TIFF 및 GIF와 같은 다중 페이지 이미지를 PDF로 변환할 수 있습니다.

다음 코드 예제에서는 JPEG 및 TIFF 이미지를 PDF로 변환하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

이 코드가 작동하도록 하려면 Aspose.Words 및 `System.Drawing`에 대한 참조를 프로젝트에 추가해야 합니다.

## PDF 출력 크기 줄이기

PDF로 저장할 때 출력을 최적화할지 여부를 지정할 수 있습니다. 이렇게 하려면 [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) 플래그를 true로 설정해야 합니다. 그러면 중복된 중첩 캔버스와 빈 캔버스가 제거되고 동일한 형식의 이웃 glyph이 연결됩니다.

다음 코드 예제에서는 출력을 최적화하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

**OptimizeOutput** 속성을 사용하면 콘텐츠 표시의 정확성에 영향을 미칠 수 있습니다.

{{% /alert %}}

## 또한보십시오

- 고정 페이지 및 흐름 레이아웃 형식에 대한 자세한 내용은 [표현](/words/ko/net/rendering/) 문서를 참조하세요
- 페이지 레이아웃에 대한 자세한 내용은 [고정 페이지 형식으로 변환](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 문서를 참조하세요
- `PdfSaveOptions` 클래스 사용에 대한 자세한 내용은 [PDF로 변환 시 렌더링 옵션 지정](/words/ko/net/specify-rendering-options-when-converting-to-pdf/) 문서를 참조하세요
- 어떤 PDF 표준과 PDF 표준에 대한 관련 ISO가 Aspose.Words을 지원하는지 설명하는 문서 [PDF/A 및 PDF/UA로 변환 기능 알아보기](/words/ko/net/learn-features-of-conversion-to-pdf-a-pdf-ua/)
- 어떤 PDF 표준이 어떤 경우에 적합한지 결정하는 문서 [어떤 PDF 표준을 선택하는 것이 더 낫습니까?](/words/ko/net/which-pdf-standard-is-better-to-choose/)

- [PDF/A 또는 PDF/UA 작업](/words/ko/net/working-with-pdfa-or-pdfua/) 기사에서는 PDF/A 및 PDF/UA 형식의 문서 내용에 대한 요구 사항(주로 구조 및 글꼴에 대한 요구 사항)을 설명합니다

- [PDF/A 및 PDF/UA로 저장할 때 접근성 문제 경고](/words/ko/net/warnings-when-saving-to-pdfa-and-pdfua/) 기사에서는 PDF/A 및 PDF/UA가 부과하는 콘텐츠 접근성 요구 사항을 설명합니다
