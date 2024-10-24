---
title: 저장 옵션 지정 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 저장 옵션 지정
linktitle: 저장 옵션 지정
description: "더 정확하게 저장 프로세스를 제어 할 수 있습니다."
type: docs
weight: 10
url: /ko/cpp/specify-save-options/
---

문서를 저장할 때 일부 고급 속성을 설정할 수 있습니다. Aspose.Words 당신을 제공합니다 [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/) 저장 프로세스를보다 정확하게 제어 할 수있는 클래스. 의 과부하가 있습니다 **Save** 수락하는 방법 **SaveOptions** 객체-그것은에서 파생 된 클래스의 객체해야합니다 **SaveOptions** 수업 각 저장 형식에는 이 저장 형식에 대한 저장 옵션을 보유하는 해당 클래스가 있습니다. [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) 에 저장을 위해 PDF 형식, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) 에 저장을 위해 Markdown 형식 또는 [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) 이미지에 저장. 이 문서에서는 다음에서 파생된 일부 옵션 클래스로 작업하는 예를 제공합니다 **SaveOptions**.

다음 코드 예제에서는 문서를 저장하기 전에 저장 옵션을 설정하는 방법을 보여 줍니다 HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

이 문서에서는 문서를 저장할 때 제어할 수 있는 몇 가지 속성에 대해 설명합니다.

## 암호로 문서 암호화

사용 **Password** 암호화된 문서의 암호를 가져오거나 설정하는 속성. 사용 **Password** 선택한 문서 형식으로 작업할 해당 클래스의 속성입니다.

예를 들어,문서를 저장할 때 DOC 또는 DOT 형식,사용 [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) 의 재산 [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options) 수업

다음 코드 예제에서는 암호를 사용하여 문서를 암호화하는 방법을 보여 줍니다 RC4 암호화 방법:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

문서를 저장할 때 ODT 형식,사용 [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) 의 재산 [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options) 수업

다음 코드 예제에서는 로드 및 저장 방법을 보여 줍니다 OpenDocument 암호로 암호화:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

모든 형식이 암호화 및 **Password** 재산.

## 문서 저장 진행률 알림 표시

Aspose.Words 사용할 수있는 기능을 제공합니다 [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) 속성은 문서 저장의 진행 상황에 대한 알림을 얻을 수 있습니다.

에 저장할 때 사용할 수 있습니다 DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack,또는 TXT 형식

## 문서 작성 시간 업데이트

Aspose.Words 사용할 수있는 기능을 제공합니다 [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) 문서 작성 날짜를 가져오거나 설정하는 속성 UTC. 당신은 또한 사용하여 저장하기 전에이 값을 업데이트 할 수 있습니다 [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/) 옵션.

다음 코드 예제에서는 문서 작성 시간을 업데이트하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## 마지막으로 저장된 속성 업데이트

Aspose.Words 사용할 수있는 기능을 제공합니다 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) 속성을 가져 오거나 여부를 결정하는 값을 설정합니다 [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) 속성은 저장하기 전에 업데이트됩니다.

다음 코드 예제에서는 이 속성을 설정하고 문서를 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## 픽셀 형식 당 하나의 비트로 흑백 이미지 저장

이미지 저장 옵션을 제어하려면 **ImageSaveOptions** 클래스가 사용됩니다. 예를 들어,다음을 사용할 수 있습니다 [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) 생성 된 이미지의 픽셀 형식을 설정하는 속성. 출력 이미지의 픽셀 형식은 설정 값과 다를 수 있습니다. GDI+.

다음 코드 예제에서는 픽셀 형식당 1 비트로 흑백 이미지를 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
