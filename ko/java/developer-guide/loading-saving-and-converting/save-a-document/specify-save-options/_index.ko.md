---
title: Java에서 저장 옵션 지정
second_title: Aspose.WordsJava
articleTitle: 저장 옵션 지정
linktitle: 저장 옵션 지정
description: "Java을 사용하여 문서를 저장할 때 고급 속성을 설정하여 프로세스를 보다 정확하게 제어할 수 있습니다."
type: docs
weight: 20
url: /ko/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

문서를 저장할 때 일부 고급 속성을 설정할 수 있습니다. Aspose.Words는[SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)클래스를 제공하여 저장 프로세스를 보다 정확하게 제어할 수 있습니다. **SaveOptions**객체를 받아들이는**Save**메소드의 오버로드가 있습니다.**SaveOptions**클래스에서 파생된 클래스의 객체여야 합니다. 각 저장 형식에는 이 저장 형식에 대한 저장 옵션을 보유하는 해당 클래스가 있습니다.예를 들어,PDF형식으로 저장하는[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/),Markdown형식으로 저장하는[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)또는 이미지에 저장하는[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)이 있습니다. 이 문서에서는**SaveOptions**에서 파생된 일부 옵션 클래스로 작업하는 예를 제공합니다.

다음 코드 예제에서는HTML에 문서를 저장하기 전에 저장 옵션을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

이 문서에서는 문서를 저장할 때 제어할 수 있는 몇 가지 속성에 대해 설명합니다.

## 암호로 문서 암호화

**Password**속성을 사용하여 암호화된 문서의 암호를 가져오거나 설정합니다. 선택한 문서 형식으로 작업하려면 해당 클래스의**Password**속성을 사용합니다.

예를 들어 문서를DOC또는DOT형식으로 저장할 때[DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/)클래스의[Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password)속성을 사용합니다.

다음 코드 예제에서는RC4암호화 방법을 사용하여 문서를 암호화하는 암호를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

문서를ODT형식으로 저장할 때는[OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/)클래스의[Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password)속성을 사용합니다.

다음 코드 예제에서는 암호로 암호화된OpenDocument을 로드하고 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

모든 형식이 암호화 및**Password**속성 사용을 지원하는 것은 아닙니다.

## 문서 저장 진행률 알림 표시

Aspose.Words[ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback)속성을 사용하여 문서 저장 진행 상황에 대한 알림을 받을 수 있는 기능을 제공합니다.

에 저장할 때 사용할 수 있습니다DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, 또는TXT형식.

## 문서 작성 시간 업데이트

Aspose.Words는[CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime)속성을 사용하여UTC에서 문서 작성 날짜를 가져오거나 설정할 수 있는 기능을 제공합니다. [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty)옵션을 사용하여 저장하기 전에 이 값을 업데이트할 수도 있습니다.

다음 코드 예제에서는 문서 작성 시간을 업데이트하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## 마지막으로 저장된 속성 업데이트

Aspose.Words는[UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty)속성을 사용하여[LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime)속성을 저장하기 전에 업데이트할지 여부를 결정하는 값을 가져오거나 설정할 수 있는 기능을 제공합니다.

다음 코드 예제에서는 이 속성을 설정하고 문서를 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## 픽셀 형식 당 하나의 비트로 흑백 이미지 저장

이미지 저장 옵션을 제어하기 위해**ImageSaveOptions**클래스가 사용됩니다. 예를 들어[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat)속성을 사용하여 생성된 이미지의 픽셀 형식을 설정할 수 있습니다. 출력 이미지의 픽셀 형식은GDI+의 작업으로 인해 설정 값과 다를 수 있습니다.

다음 코드 예제에서는 픽셀 형식당 1 비트로 흑백 이미지를 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
