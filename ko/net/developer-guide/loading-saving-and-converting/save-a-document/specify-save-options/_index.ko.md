---
title: C#에 저장 옵션 지정
second_title: .NET용 Aspose.Words
articleTitle: 저장 옵션 지정
linktitle: 저장 옵션 지정
description: "C#를 사용하여 저장 프로세스를 보다 정확하게 제어합니다."
type: docs
weight: 10
url: /ko/net/specify-save-options/
---

문서를 저장할 때 일부 고급 속성을 설정할 수 있습니다. Aspose.Words는 저장 프로세스를 보다 정밀하게 제어할 수 있는 [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) 클래스를 제공합니다. **SaveOptions** 개체를 허용하는 **Save** 메서드의 오버로드가 있습니다. **SaveOptions** 클래스에서 파생된 클래스의 개체여야 합니다. 각 저장 형식에는 이 저장 형식에 대한 저장 옵션을 보유하는 해당 클래스가 있습니다. 예를 들어 PDF 형식으로 저장하기 위한 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/), Markdown 형식으로 저장하기 위한 [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) 또는 이미지 저장을 위한 [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)가 있습니다. 이 문서에서는 **SaveOptions**에서 파생된 일부 옵션 클래스를 사용하는 예를 제공합니다.

다음 코드 예제에서는 문서를 HTML로 저장하기 전에 저장 옵션을 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

이 문서에서는 문서를 저장할 때 제어할 수 있는 몇 가지 속성을 설명합니다.

## 비밀번호로 문서 암호화

**Password** 속성을 사용하여 암호화된 문서에 대한 비밀번호를 얻거나 설정합니다. 선택한 문서 형식으로 작업하려면 해당 클래스의 **Password** 속성을 사용하세요.

예를 들어 문서를 DOC 또는 DOT 형식으로 저장할 때 [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) 클래스의 [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) 속성을 사용합니다.

다음 코드 예제에서는 RC4 암호화 방법을 사용하여 문서를 암호화하기 위해 비밀번호를 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

문서를 Odt 형식으로 저장할 때는 [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) 클래스의 [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) 속성을 사용하세요.

다음 코드 예제에서는 비밀번호로 암호화된 OpenDocument를 로드하고 저장하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

모든 형식이 암호화 및 **Password** 속성 사용을 지원하는 것은 아닙니다.

## 문서 저장 진행 알림 표시

Aspose.Words는 [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) 속성을 사용하여 문서 저장 진행 상황에 대한 알림을 받는 기능을 제공합니다.

이제 DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack 또는 TXT 형식으로 저장할 때 사용할 수 있습니다.

## 문서 생성 시간 업데이트

Aspose.Words는 [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) 속성을 사용하여 UTC로 문서 생성 날짜를 가져오거나 설정하는 기능을 제공합니다. [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) 옵션을 사용하여 저장하기 전에 이 값을 업데이트할 수도 있습니다.

다음 코드 예제에서는 문서 생성 시간을 업데이트하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## 마지막으로 저장된 속성 업데이트

Aspose.Words는 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) 속성을 사용하여 저장하기 전에 [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) 속성이 업데이트되는지 여부를 결정하는 값을 가져오거나 설정하는 기능을 제공합니다.

다음 코드 예제에서는 이 속성을 설정하고 문서를 저장하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## 문서를 HTML 또는 SVG로 저장할 때 외부 리소스 제어

HTML 또는 SVG를 PDF로 변환하려면 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) 메서드를 호출하고 ".PDF" 확장자를 사용하여 파일 이름을 지정하기만 하면 됩니다. 외부 소스에서 이미지, CSS 등을 로드하려면 [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/)를 사용하면 됩니다.

다음 코드 예제에서는 HTML을 PDF로 변환하고 외부 소스에서 이미지를 로드하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## 픽셀당 1비트 형식으로 흑백 이미지 저장

이미지 저장 옵션을 제어하기 위해 **ImageSaveOptions** 클래스가 사용됩니다. 예를 들어, [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) 속성을 사용하여 생성된 이미지의 픽셀 형식을 설정할 수 있습니다. GDI+의 작업으로 인해 출력 이미지의 픽셀 형식이 설정값과 다를 수 있으므로 주의하시기 바랍니다.

다음 코드 예제에서는 픽셀당 1비트 형식으로 흑백 이미지를 저장하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
