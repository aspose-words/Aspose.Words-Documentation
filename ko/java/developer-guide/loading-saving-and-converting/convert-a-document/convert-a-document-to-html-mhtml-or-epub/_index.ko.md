---
title: 문서를HTML,MHTML또는EPUB로 변환
second_title: Aspose.WordsJava
articleTitle: 문서를HTML,MHTML또는EPUB로 변환
linktitle: 문서를HTML,MHTML또는EPUB로 변환
description: "단어 또는 기타 지원되는 형식에서 문서를HTML,MHTML또는EPUB로 변환하려면Java에Aspose.Words을 사용합니다."
type: docs
weight: 20
url: /ko/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

HTML및MHTML흐름 레이아웃 형식의 문서도 매우 인기가 있으며 모든 웹 플랫폼에서 사용할 수 있습니다. 이러한 이유로 문서를HTML와MHTML로 변환하는 것은Aspose.Words의 중요한 기능입니다.

EPUB(전자 출판의 줄임말)은 전자 책 배포에 일반적으로 사용되는HTML기반 형식입니다. 이 형식은 대부분의 읽기 장치와 호환되는 전자 책을 내보내기 위해Aspose.Words에서 완전히 지원됩니다.

## 문서 변환

HTML,MHTML또는EPUB로의 간단한 변환에는[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int)메소드 오버로드 중 하나가 사용됩니다. 문서를 파일 또는 스트림에 저장하고 출력 문서 저장 형식을 명시적으로 설정하거나 파일 이름 확장명에서 정의할 수 있습니다.

다음 예제에서는 저장 형식을 지정하여DOCX을HTML로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

문서를MHTML또는EPUB로 변환하려면 각각`SaveFormat.MHTML`또는`SaveFormat.EPUB`을 사용합니다.

## 왕복 정보가 포함된 문서 변환

HTML형식은 많은Microsoft Word기능을 지원하지 않으며,가능한 한 원본에 가까운 문서 모델을 복원해야 하는 경우HTML파일 내에 몇 가지 추가 정보를 저장해야 합니다. 이러한 정보를"왕복 정보"라고도합니다. 이를 위해Aspose.Words는[ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation)속성을 사용하여HTML,MHTML또는EPUB에 저장할 때 왕복 정보를 내보낼 수 있는 기능을 제공합니다. 왕복 정보를 저장하면 나열된 형식의 문서를**Document**개체로 다시 로드하는 동안 탭,주석,머리글 및 바닥글과 같은 문서 속성을 복원할 수 있습니다.

기본값은HTML의 경우**true**이고MHTML및EPUB의 경우**false**입니다:

- **true**인 경우 왕복 정보는 해당 HTML 요소의 - aw - * CSS 속성으로 내보내집니다.
- **false**이 되면 생성된 파일로 출력할 왕복 정보가 없습니다

다음 코드 예제에서는DOCX에서HTML로 문서를 변환할 때 왕복 정보를 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## HTML으로 변환할 때 저장 옵션을 지정합니다

Aspose.Words기본 또는 사용자 지정 저장 옵션을 사용하여 단어 문서를HTML로 변환할 수 있습니다. 사용자 지정 저장 옵션의 몇 가지 예는 아래에 설명되어 있습니다.

### 리소스 저장을 위한 폴더 지정

Aspose.Words을 사용하여 문서를HTML로 변환할 때 이미지,글꼴 및 외부CSS와 같은 모든 리소스가 저장되는 물리적 폴더를 지정할 수 있습니다. 기본적으로 이 문자열은 빈 문자열입니다.

[ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder)속성을 지정하는 것은 모든 리소스를 작성할 폴더를 설정하는 가장 간단한 방법입니다. 지정된 폴더에 글꼴을 저장하는[FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder)와 지정된 폴더에 이미지를 저장하는[ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder)와 같은 개별 속성을 사용할 수 있습니다. 상대 경로를 지정하면**FontsFolder**및**ImagesFolder**는 코드 어셈블리가 있는 폴더를 참조하고**ResourceFolder**및[CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName)은HTML문서가 있는 출력 폴더를 참조합니다.

이 예에서**ResourceFolder**은 상대 경로를 지정합니다. 이 경로는HTML문서가 저장된 출력 폴더를 나타냅니다. **ResourceFolderAlias**속성의 값은 모든 리소스에 대해URLs을 만드는 데 사용됩니다.

다음 코드 예제에서는 이러한 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

[ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias)속성을 사용하여HTML문서에 작성된 모든 리소스의URIs를 구성하는 데 사용되는 폴더의 이름을 지정할 수도 있습니다. 이것은 모든 리소스 파일에 대해URIs를 생성하는 방법을 지정하는 가장 간단한 방법입니다. 각각[ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias)및[FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias)속성을 통해 이미지와 글꼴에 대해 동일한 정보를 별도로 지정할 수 있습니다.

그러나CSS에 대한 개별 속성은 없습니다. 의 행동**FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** **CssStyleSheetFileName**속성은 변경되지 않습니다. **CssStyleSheetFileName**속성은 폴더 이름과 파일 이름을 지정하는 데 모두 사용됩니다.

- **ResourceFolder**은**FontsFolder**,**ImagesFolder**및**CssStyleSheetFileName**을 통해 지정된 폴더보다 우선 순위가 낮습니다. **ResourceFolder**에 지정된 폴더가 없으면 자동으로 생성됩니다.
- **ResourceFolderAlias**은**FontsFolderAlias**및**ImagesFolderAlias**보다 우선 순위가 낮습니다. **ResourceFolderAlias**이 비어 있으면**ResourceFolder**속성의 값이 리소스URIs를 만드는 데 사용됩니다. **ResourceFolderAlias**이"."(점)로 설정된 경우 리소스URIs에는 경로를 지정하지 않고 파일 이름만 포함됩니다.

### Base64 인코딩 글꼴 리소스 내보내기

Aspose.Words은 글꼴 리소스를 Base64 인코딩으로 HTML에 포함할지 여부를 지정하는 기능을 제공합니다. 이를 수행하려면 [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) 속성을 사용합니다. 이는 [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) 속성의 확장입니다. 기본적으로 값은 **false**이고 글꼴은 별도의 파일에 기록됩니다. 하지만 이 옵션을 **true**로 설정하면 글꼴은 Base64 인코딩으로 문서의 CSS에 포함됩니다. **ExportFontsAsBase64** 속성은 HTML 형식에만 영향을 미치고 EPUB 및 MHTML에는 영향을 미치지 않습니다.

다음 코드 예제는 Base64로 인코딩된 글꼴을 HTML로 내보내는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## EPUB으로 변환할 때 저장 옵션을 지정합니다

Aspose.Words기본 또는 사용자 정의 저장 옵션을 사용하여 단어 문서를EPUB형식으로 변환 할 수 있습니다. [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/)의 인스턴스를[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions)메서드에 전달하여 여러 옵션을 지정할 수 있습니다.

다음 코드 예제에서는 일부 사용자 지정 저장 옵션을 지정하여 단어 문서를EPUB으로 변환하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## 또한 참조

- [HTML에 저장할 때 왕복 정보를 내보내는 방법](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
