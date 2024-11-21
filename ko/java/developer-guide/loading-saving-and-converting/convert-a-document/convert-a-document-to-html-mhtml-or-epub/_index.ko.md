---
title: 문서를 HTML, MHTML 또는 EPUB로 변환
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서를 HTML, MHTML 또는 EPUB로 변환
linktitle: 문서를 HTML, MHTML 또는 EPUB로 변환
description: "제품 정보 Aspose.Words 제품정보 Java Word 또는 다른 지원 형식의 문서를 HTML, MHTML 또는 EPUB로 변환하십시오."
type: docs
weight: 20
url: /ko/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

HTML 및 MHTML 플로우 레이아웃 형식의 문서도 매우 인기가 있으며 웹 플랫폼에서 사용할 수 있습니다. 그 이유를 들어, 문서를 HTML로 변환하고 MHTML은 중요한 기능입니다 Aspose.Words·

EPUB (short for "Electronic Publication")는 전자 책 배포에 일반적으로 사용되는 HTML 기반 형식입니다. 이 형식은 완전히 지원됩니다. Aspose.Words 대부분의 읽기 장치와 호환되는 전자 책 수출.

## 문서 변환

HTML, MHTML 또는 EPUB로 간단한 변환 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) 방법 하중 초과는 사용됩니다. 파일 또는 스트림에 문서를 저장할 수 있으며, 출력 문서를 저장하거나 파일 이름 확장에서 정의 할 수 있습니다.

다음 예제는 DOCX를 HTML로 변환하는 방법을 보여줍니다. save 형식을 지정합니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

문서를 MHTML 또는 EPUB로 변환하려면 `SaveFormat.MHTML` 또는 `SaveFormat.EPUB` 각각.

## Round-trip 정보로 문서 변환

HTML 형식은 많은 지원하지 않습니다. Microsoft Word 기능, 그리고 우리가 가능한 한 원본에 가까운 문서 모델을 복원 할 필요가 있다면, 우리는 HTML 파일 내의 추가 정보를 저장해야합니다. 이 정보는 "round-trip information"라고도 합니다. 이 목적을 위해, Aspose.Words HTML, MHTML 또는 EPUB로 저장할 때 둥근 여행 정보를 내보내는 기능을 제공합니다. [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) 호텔 위치 둥근 여행 정보를 저장하는 것은 탭, 의견, 헤더, 발자국과 같은 문서 속성을 복원 할 수 있습니다 목록 형식의 로딩 문서에 다시 **Document** 이름 *

기본값은 **true** HTML과 **false** MHTML과 EPUB를 위해:

- 때 **true**, 둥근 지구 정보는 - aw로 수출됩니다 - * 대응 HTML 요소의 CSS 속성
- 때 **false**, 생성된 파일로 출력할 라운드 트립 정보가 없습니다

다음 코드 예제는 DOCX에서 HTML로 문서를 변환 할 때 라운드 스트립 정보를 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## HTML로 변환 할 때 저장 옵션을 지정

Aspose.Words Word 문서를 HTML로 변환하여 기본 또는 사용자 정의 옵션을 저장합니다. 사용자 정의 저장 옵션의 몇 가지 예는 아래에 설명되어 있습니다.

### 저축 자원을위한 폴더 지정

사용 방법 Aspose.Words 이미지, 글꼴 및 외부 CSS와 같은 모든 리소스가 HTML로 변환 될 때 저장되는 물리적 폴더를 지정할 수 있습니다. 기본적으로, 이것은 빈 문자열입니다.

이름 * [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) 속성은 모든 리소스가 작성되어야하는 폴더를 설정하는 가장 간단한 방법입니다. 우리는 다른 특성을 사용할 수 있습니다. [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) 지정된 폴더에 글꼴을 저장하고 [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) 지정된 폴더에 이미지를 저장합니다. 상대 경로가 지정될 때, **FontsFolder** · **ImagesFolder** 코드 어셈블리가 있는 폴더를 참조하세요. **ResourceFolder** · [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) HTML 문서가 있는 출력 폴더를 참조하세요.

이 예제에서, **ResourceFolder** 상대방을 지정합니다. 이 경로는 HTML 문서가 저장되는 출력 폴더를 나타냅니다. 가치의 **ResourceFolderAlias** 속성은 모든 리소스에 대한 URL을 생성하는 데 사용됩니다.

다음 코드 예제는 이러한 속성과 작업하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

사용 방법 [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) 속성, 우리는 또한 HTML 문서로 작성된 모든 리소스의 URI를 구성하는 폴더의 이름을 지정할 수 있습니다. 이것은 URI가 모든 리소스 파일에 생성되어야하는 방법을 지정하는 가장 간단한 방법입니다. 같은 정보는 이미지 및 글꼴에 별도로 지정할 수 있습니다. [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) · [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) 재산, 각각.

그러나 CSS의 개별 속성이 없습니다. 행동의 **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** · **CssStyleSheetFileName** 속성이 변경되지 않습니다. 주의사항 **CssStyleSheetFileName** 속성은 폴더 이름과 파일 이름을 지정하기 위해 모두 사용됩니다.

- - - **ResourceFolder** 지정된 폴더보다 낮은 우선 순위가 **FontsFolder**, **ImagesFolder**, · **CssStyleSheetFileName**· 폴더가 지정된 경우 **ResourceFolder** 존재하지 않습니다. 자동으로 생성됩니다.
- - - **ResourceFolderAlias** 더 낮은 우선 순위 **FontsFolderAlias** · **ImagesFolderAlias**· 이름 * **ResourceFolderAlias** 빈, 값의 **ResourceFolder** 재산은 자원 URI를 창조하기 위하여 이용될 것입니다. 이름 * **ResourceFolderAlias** ""로 설정됩니다. (dot), 리소스 URI는 경로 지정없이 파일 이름을 포함 할 것입니다.

### Base64 인코딩 글꼴 리소스

Aspose.Words Text 리소스가 Base64 인코딩에 HTML을 삽입해야 하는지 지정할 수 있는 기능을 제공합니다. 이 작업을 수행하려면 [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) 속성 – 이것은 확장의 [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) 호텔 위치 기본적으로 값은 **false**, 글꼴은 별도의 파일로 작성됩니다. 그러나이 옵션이 설정되면 **true**, 글꼴은 Base64 인코딩의 문서 CSS에 삽입됩니다. 더 보기 **수출FontsAsBase64** HTML 형식에만 영향을 미치는 속성은 EPUB 및 MHTML에 영향을 미치지 않습니다.

다음 코드 예제는 Base64 인코딩 글꼴을 HTML로 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## EPUB로 변환 할 때 옵션 지정

Aspose.Words Word 문서를 기본 또는 사용자 정의 옵션을 사용하여 EPUB 형식으로 변환 할 수 있습니다. 인스턴스를 전달하여 여러 옵션을 지정할 수 있습니다. [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) 으로 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) 방법.

다음 코드 예제는 Word 문서를 EPUB로 변환하는 방법을 보여줍니다. 사용자 정의 저장 옵션을 지정:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc)·

{{% /alert %}}

## 더 보기

- [HTML로 변환](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
