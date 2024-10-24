---
title: 문서를 다음으로 변환 HTML, MHTML 또는 EPUB
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서를 다음으로 변환 HTML, MHTML 또는 EPUB
linktitle: 문서를 다음으로 변환 HTML, MHTML 또는 EPUB
description: "에 거의 모든 형식에서 문서를 변환 HTML 또는 MHTML,그리고 EPUB 형식을 사용하여 C++. 출력 문서를 관리하기 위한 저장 옵션을 지정할 수도 있습니다."
type: docs
weight: 20
url: /ko/cpp/convert-a-document-to-html-mhtml-or-epub/
---

문서 HTML 그리고 MHTML 흐름 레이아웃 형식도 매우 인기가 있으며 모든 웹 플랫폼에서 사용할 수 있습니다. 이러한 이유로 문서를 HTML 그리고 MHTML 의 중요한 기능입니다 Aspose.Words.

EPUB (전자 출판의 줄임말)은 HTML-전자 책 배포에 일반적으로 사용되는 기반 형식. 이 형식은 Aspose.Words 대부분의 독서 장치와 호환되는 전자 책을 수출하십시오.

## 문서 변환

간단한 변환을 위해 HTML, MHTML,또는 EPUB,그 중 하나 [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) 메서드 오버로드가 사용됩니다. 문서를 파일 또는 스트림에 저장하고 출력 문서 저장 형식을 명시적으로 설정하거나 파일 이름 확장명에서 정의할 수 있습니다.

다음 예제에서는 변환하는 방법을 보여 줍니다 DOCX 에 HTML 저장 형식 지정:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

문서를 다음으로 변환하려면 MHTML 또는 EPUB,사용 `SaveFormat.Mhtml` 또는 `SaveFormat.Epub` 각각

## 왕복 정보가 포함된 문서 변환

그 HTML 형식은 많은 것을 지원하지 않습니다 Microsoft Word 특징,우리는 가능한 한 원본에 가까운 문서 모델을 복원해야하는 경우,우리는 내에서 몇 가지 추가 정보를 저장해야합니다 HTML 파일 이러한 정보를"왕복 정보"라고도합니다. 이 목적을 위해, Aspose.Words 에 저장할 때 왕복 정보를 내보낼 수있는 기능을 제공합니다 HTML, MHTML,또는 EPUB 를 사용하여 [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/) 재산. 왕복 정보를 저장하면 나열된 형식의 문서를 로드하는 동안 탭,주석,머리글 및 바닥글과 같은 문서 속성을 복원할 수 있습니다. **Document** 객체

기본값은 **true** 에 대한 HTML 그리고 **false** 에 대한 MHTML 그리고 EPUB:

- 언제 **true**,왕복 정보는 다음과 같이 내보내집니다 - * CSS 해당 속성 HTML 요소
- 언제 **false**,생성된 파일로 출력될 왕복 정보가 없습니다.

다음 코드 예제에서는 다음에서 문서를 변환할 때 왕복 정보를 내보내는 방법을 보여 줍니다 DOCX 안으로 HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 로 변환할 때 저장 옵션 지정 HTML

Aspose.Words 워드 문서를 변환 할 수 있습니다 HTML 기본 또는 사용자 정의 저장 옵션을 사용합니다. 사용자 지정 저장 옵션의 몇 가지 예는 아래에 설명되어 있습니다.

### 리소스 저장을 위한 폴더 지정

사용 Aspose.Words 이미지,글꼴 및 외부 리소스와 같은 모든 리소스가 있는 물리적 폴더를 지정할 수 있습니다 CSS,문서가 다음으로 변환될 때 저장됩니다 HTML. 기본적으로 이 문자열은 빈 문자열입니다.

지정 [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) 속성은 모든 리소스를 작성할 폴더를 설정하는 가장 간단한 방법입니다. 다음과 같은 개별 속성을 사용할 수 있습니다 [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) 지정된 폴더에 글꼴을 저장하고 [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) 어떤 지정된 폴더에 이미지를 저장합니다. 상대 경로가 지정된 경우, **FontsFolder** 그리고 **ImagesFolder** 코드 어셈블리가 있는 폴더를 참조하십시오, **ResourceFolder** 그리고 [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) 출력 폴더를 참조하십시오. HTML 문서가 있습니다.

이 예에서, **ResourceFolder** 상대 경로를 지정합니다. 이 경로는 출력 폴더를 참조합니다. HTML 문서가 저장됩니다. 의 값 **ResourceFolderAlias** 속성은 다음을 만드는 데 사용됩니다 URLs 모든 자원에 대해.

다음 코드 예제에서는 이러한 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

를 사용하여 [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/) 속성,우리는 또한 구성하는 데 사용되는 폴더의 이름을 지정할 수 있습니다 URIs 모든 자원의 HTML 문서 이 방법을 지정하는 가장 간단한 방법입니다 URIs 모든 리소스 파일에 대해 생성되어야 합니다. 동일한 정보는 다음을 통해 이미지와 글꼴에 대해 별도로 지정할 수 있습니다 [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) 그리고 [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/) 각각 속성.

그러나,개인 재산은 없습니다. CSS. 의 행동 **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** 그리고 **CssStyleSheetFileName** 속성은 변경되지 않습니다. 참고: **CssStyleSheetFileName** 속성은 폴더 이름과 파일 이름을 지정하는 데 모두 사용됩니다.

- **ResourceFolder** 다음을 통해 지정된 폴더보다 우선 순위가 낮습니다 **FontsFolder**, **ImagesFolder**,그리고 **CssStyleSheetFileName**. 에 지정된 폴더가있는 경우 **ResourceFolder** 존재하지 않습니다,그것은 자동으로 생성됩니다.
- **ResourceFolderAlias** 보다 낮은 우선 순위를 가짐 **FontsFolderAlias** 그리고 **ImagesFolderAlias**. 만약 **ResourceFolderAlias** 빈 값입니다. **ResourceFolder** 속성은 리소스를 만드는 데 사용됩니다 URIs. 만약 **ResourceFolderAlias** 로 설정되어 있습니다. "." (점),자원 URIs 경로를 지정하지 않고 파일 이름 만 포함합니다.

### 기본 64 인코딩 글꼴 리소스 내보내기

Aspose.Words 글꼴 리소스를 포함할지 여부를 지정할 수 있는 기능을 제공합니다 HTML 64 기저 인코딩에서 이 작업을 수행하려면 다음을 사용하십시오 [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) 속성-이 확장입니다 [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/) 재산. 기본적으로 해당 값은 다음과 같습니다 **false**,그리고 글꼴은 별도의 파일로 쓰여집니다. 하지만 이 옵션이 **true**,글꼴은 문서의 CSS 64 기저 인코딩으로 그 **ExportFontsAsBase64** 재산 만 영향을 미칩니다 HTML 형식 및 영향을주지 않습니다 EPUB 그리고 MHTML.

다음 코드 예제에서는 기본 64 인코딩된 글꼴을 내보내는 방법을 보여 줍니다 HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## 로 변환할 때 저장 옵션 지정 EPUB

Aspose.Words 단어 문서를 다음과 같이 변환 할 수 있습니다. EPUB 기본 또는 사용자 정의 저장 옵션을 사용하여 포맷합니다. 다음과 같은 인스턴스를 전달하여 여러 옵션을 지정할 수 있습니다 [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) 에 `Save` 방법

다음 코드 예제에서는 단어 문서를 다음과 같이 변환하는 방법을 보여 줍니다 EPUB 일부 사용자 지정 저장 옵션 지정:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
