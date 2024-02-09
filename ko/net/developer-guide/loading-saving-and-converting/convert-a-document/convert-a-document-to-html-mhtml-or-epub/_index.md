---
title: C#에서 문서를 HTML, MHTML 또는 EPUB로 변환
second_title: .NET용 Aspose.Words
articleTitle: 문서를 HTML, MHTML 또는 EPUB로 변환
linktitle: 문서를 HTML, MHTML 또는 EPUB로 변환
description: "C#를 사용하여 거의 모든 형식의 문서를 HTML 또는 MHTML은 물론 EPUB 형식으로 변환합니다. 출력 문서 관리를 위한 저장 옵션을 지정할 수도 있습니다."
type: docs
weight: 20
url: /ko/net/convert-a-document-to-html-mhtml-or-epub/
---

HTML 및 MHTML 흐름 레이아웃 형식의 문서도 널리 사용되며 모든 웹 플랫폼에서 사용할 수 있습니다. 이러한 이유로 문서를 HTML 및 MHTML로 변환하는 것은 Aspose.Words의 중요한 기능입니다.

EPUB("Electronic Publication"의 약어)는 전자 서적 배포에 일반적으로 사용되는 HTML 기반 형식입니다. 이 형식은 대부분의 독서 장치와 호환되는 전자 서적을 내보내기 위해 Aspose.Words에서 완벽하게 지원됩니다.

## 문서 변환

HTML, MHTML 또는 EPUB로의 간단한 변환을 위해 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) 메서드 오버로드 중 하나가 사용됩니다. 문서를 파일이나 스트림에 저장하고 출력 문서 저장 형식을 명시적으로 설정하거나 파일 이름 확장자에서 정의할 수 있습니다.

다음 예에서는 저장 형식을 지정하여 DOCX를 HTML로 변환하는 방법을 보여줍니다

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

문서를 MHTML 또는 EPUB로 변환하려면 각각 `SaveFormat.Mhtml` 또는 `SaveFormat.Epub`를 사용하세요.

## 왕복 정보가 포함된 문서 변환

HTML 형식은 많은 Microsoft Word 기능을 지원하지 않으며 문서 모델을 원본에 최대한 가깝게 복원해야 하는 경우 HTML 파일 내에 몇 가지 추가 정보를 저장해야 합니다. 이러한 정보를 '왕복정보'라고도 합니다. 이를 위해 Aspose.Words는 [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) 속성을 사용하여 HTML, MHTML 또는 EPUB에 저장할 때 왕복 정보를 내보내는 기능을 제공합니다. 왕복 정보를 저장하면 나열된 형식의 문서를 **Document** 개체로 다시 로드하는 동안 탭, 설명, 머리글 및 바닥글과 같은 문서 속성을 복원할 수 있습니다.

기본값은 HTML의 경우 **true**이고 MHTML 및 EPUB의 경우 **false**입니다

- **true** 시 왕복 정보는 -aw - * 해당 HTML 요소의 CSS 속성으로 내보내집니다
- **false** 시 제작된 파일에 출력되는 왕복 정보가 없습니다

다음 코드 예제에서는 문서를 DOCX에서 HTML로 변환할 때 왕복 정보를 내보내는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## HTML로 변환 시 저장 옵션 지정

Aspose.Words를 사용하면 기본 또는 사용자 정의 저장 옵션을 사용하여 Word 문서를 HTML로 변환할 수 있습니다. 사용자 정의 저장 옵션의 몇 가지 예가 아래에 설명되어 있습니다.

### 리소스 저장을 위한 폴더 지정

Aspose.Words를 사용하면 문서가 HTML로 변환될 때 이미지, 글꼴, 외부 CSS와 같은 모든 리소스가 저장되는 물리적 폴더를 지정할 수 있습니다. 기본적으로 이는 빈 문자열입니다.

[ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) 속성을 지정하는 것은 모든 리소스가 기록되어야 하는 폴더를 설정하는 가장 간단한 방법입니다. 지정된 폴더에 글꼴을 저장하는 [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/)와 지정된 폴더에 이미지를 저장하는 [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/)과 같은 개별 속성을 사용할 수 있습니다. 상대 경로가 지정되면 **FontsFolder** 및 **ImagesFolder**은 코드 어셈블리가 있는 폴더를 참조하고, **ResourceFolder** 및 [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/)는 HTML 문서가 있는 출력 폴더를 참조합니다.

이 예에서 **ResourceFolder**는 상대 경로를 지정합니다. 이 경로는 HTML 문서가 저장되는 출력 폴더를 나타냅니다. **ResourceFolderAlias** 속성의 값은 모든 리소스에 대한 URL을 만드는 데 사용됩니다.

다음 코드 예제에서는 이러한 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

[ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) 속성을 사용하면 HTML 문서에 기록된 모든 리소스의 URI를 구성하는 데 사용되는 폴더의 이름을 지정할 수도 있습니다. 이는 모든 리소스 파일에 대해 URI를 생성하는 방법을 지정하는 가장 간단한 방법입니다. 각각 [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) 및 [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) 속성을 통해 이미지와 글꼴에 대해 동일한 정보를 별도로 지정할 수 있습니다.

그러나 CSS에는 개별 속성이 없습니다. **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** 및 **CssStyleSheetFileName** 속성의 동작은 변경되지 않습니다. **CssStyleSheetFileName** 속성은 폴더 이름과 파일 이름을 지정하는 데 모두 사용됩니다.

- **ResourceFolder**는 **FontsFolder**, **ImagesFolder**, **CssStyleSheetFileName**를 통해 지정된 폴더보다 우선순위가 낮습니다. **ResourceFolder**에 지정된 폴더가 존재하지 않는 경우 자동으로 생성됩니다.
- **ResourceFolderAlias**는 **FontsFolderAlias** 및 **ImagesFolderAlias**보다 우선순위가 낮습니다. **ResourceFolderAlias**가 비어 있으면 **ResourceFolder** 속성 값이 리소스 URI를 만드는 데 사용됩니다. **ResourceFolderAlias**가 "."로 설정된 경우 (점)을 사용하면 리소스 URI에는 경로를 지정하지 않고 파일 이름만 포함됩니다.

### Base64 인코딩 글꼴 리소스 내보내기

Aspose.Words는 글꼴 리소스를 Base64 인코딩의 HTML에 포함해야 하는지 여부를 지정하는 기능을 제공합니다. 이를 수행하려면 [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) 속성을 사용하십시오. 이는 [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) 속성의 확장입니다. 기본적으로 해당 값은 **false**이며 글꼴은 별도의 파일에 기록됩니다. 하지만 이 옵션을 **true**으로 설정하면 글꼴이 Base64 인코딩으로 문서의 CSS에 포함됩니다. **내보내기FontsAsBase64** 속성은 HTML 형식에만 영향을 미치며 EPUB 및 MHTML에는 영향을 주지 않습니다.

다음 코드 예제에서는 Base64로 인코딩된 글꼴을 HTML로 내보내는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## EPUB로 변환 시 저장 옵션 지정

Aspose.Words를 사용하면 기본 또는 사용자 정의 저장 옵션을 사용하여 Word 문서를 EPUB 형식으로 변환할 수 있습니다. [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) 인스턴스를 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) 메서드에 전달하여 다양한 옵션을 지정할 수 있습니다.

다음 코드 예제에서는 일부 사용자 지정 저장 옵션을 지정하여 Word 문서를 EPUB로 변환하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 또한보십시오

- [HTML로 저장할 때 왕복 정보를 내보내는 방법](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
