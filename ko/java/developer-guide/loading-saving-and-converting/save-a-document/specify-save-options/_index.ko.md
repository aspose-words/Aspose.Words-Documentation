---
title: 저장 옵션 설정 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 옵션 지정
linktitle: 옵션 지정
description: "문서 저장시 고급 속성 설정 Java 공정에 더 정확한 제어를 제공하기 위해."
type: docs
weight: 20
url: /ko/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

문서를 저장할 때, 당신은 몇 가지 고급 속성을 설정할 수 있습니다. Aspose.Words 너와 함께 [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) 저장 공정의 더 정확한 통제를 허용하는 종류. 과부하가 있습니다. **Save** 이용 방법 **SaveOptions** object – 클래스에서 파생된 클래스의 객체가 있어야 합니다. **SaveOptions** 수업. 각 저장 체재에는 이 득점방해 체재를 위한 득점방해 선택권이 있는 대응 종류가 있습니다, 예를 들면, 거기 있습니다 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) PDF 형식으로 저장하기 [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) 저장하기 Markdown 체재, 또는 [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) 이미지에 저장. 이 문서는에서 파생 된 몇 가지 옵션 클래스와 작업의 예를 제공합니다 **SaveOptions**·

다음 코드 예제는 문서를 HTML로 저장하기 전에 저장 옵션을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)·

{{% /alert %}}

문서는 문서를 저장할 때 몇 가지 속성을 설명합니다.

## 문서 암호화 비밀번호

사용 방법 **Password** 암호화된 문서에 대한 암호를 얻거나 설정합니다. 사용 방법 **Password** 해당 클래스의 속성은 선택한 문서 형식으로 작업합니다.

예를 들어, 문서를 DOC 또는 저장할 때 DOT 형식, 사용 [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) 호텔 위치 [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) 수업.

다음 코드 예제는 RC4 암호화 방법을 사용하여 문서를 암호화하는 암호를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

ODT 형식으로 문서를 저장할 때, 사용 [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) 호텔 위치 [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) 수업.

다음 코드 예제는 암호로 OpenDocument 암호화를로드하고 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

모든 형식 지원 암호화 및 사용 **Password** 호텔 위치

## 문서 저장 진행 알림 표시

Aspose.Words 사용 능력 [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) 문서 저장의 진행에 대한 알림을 얻는 속성.

DOCX, FlatOpc, DOCM에 저장할 때 사용할 수 있습니다. DOT· DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack 또는 TXT 형식.

## 문서 작성 시간 업데이트

Aspose.Words 사용 능력 [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) UTC의 문서 작성 날짜를 입력하거나 설정합니다. 저장하기 전에이 값을 업데이트 할 수 있습니다. [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) 옵션.

다음 코드 예제는 문서 작성 시간을 업데이트하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Last Saved 속성 업데이트

Aspose.Words 사용 능력 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) 속성을 얻을 또는 설정 값 결정 여부 [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) 속성은 저장하기 전에 업데이트됩니다.

다음 코드 예제는이 속성을 설정하고 문서를 저장하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## 화소 체재 당 1 조금을 가진 까만과 백색 이미지를 저장하십시오

이미지 저장 옵션을 제어하려면, **ImageSaveOptions** 클래스가 사용됩니다. 예를 들어, 사용할 수 있습니다. [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) 생성된 이미지의 픽셀 형식을 설정하는 속성. 출력 이미지의 화소 체재가 GDI+의 일 때문에 세트 가치와 다를지도 모릅니다.

다음 코드 예제는 픽셀 형식 당 한 비트와 검은 색과 흰색 이미지를 저장하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
