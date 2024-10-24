---
title: 로드 옵션 지정 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 로드 옵션 지정
linktitle: 로드 옵션 지정
description: "보다 정확하게 부하 프로세스를 제어 할 수 있습니다."
type: docs
weight: 10
url: /ko/cpp/specify-load-options/
---

문서를로드 할 때 일부 고급 속성을 설정할 수 있습니다. Aspose.Words 당신을 제공합니다 [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) 부하 프로세스를보다 정확하게 제어 할 수있는 클래스. 일부 로드 형식에는 이 로드 형식에 대한 로드 옵션을 포함하는 해당 클래스가 있습니다.예를 들어, [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) 에 적재를 위해 PDF 형식 또는 [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) 에 적재를 위해 TXT. 이 문서에서는 옵션 작업의 예를 제공합니다. **LoadOptions** 수업

## 세트 Microsoft Word 모양을 변경하는 버전

다른 버전의 Microsoft Word 응용 프로그램은 문서를 무관심하게 표시 할 수 있습니다. 예를 들어,잘 알려진 문제가 있습니다. OOXML 다음과 같은 문서 DOCX 또는 DOTX 를 사용하여 생성하는 WPS 사무실. 이러한 경우 필수 문서 마크 업 요소가 누락되거나 다르게 해석 될 수 있습니다 Microsoft Word 2019 년과 비교하여 그러한 문서를 다르게 보여주기 위해 Microsoft Word 2010.

기본적으로 Aspose.Words 다음을 사용하여 문서를 엽니다. Microsoft Word 2019 규칙. 이전 문서 중 하나에서 발생하는 것처럼 문서 로딩을 표시해야 하는 경우 Microsoft Word 응용 프로그램 버전,당신은 명시 적으로 사용하여 원하는 버전을 지정해야합니다 [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) 의 재산 **LoadOptions** 수업

다음 코드 예제에서는 다음을 설정하는 방법을 보여 줍니다 Microsoft Word 로드 옵션이 있는 버전:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## 언어 환경설정을 설정하여 모양을 변경합니다

문서 표시의 세부 사항 Microsoft Word 응용 프로그램 버전 및 **MswVersion** 속성 값뿐만 아니라 언어 설정에. Microsoft Word "사무실 언어 기본 설정"대화 상자 설정에 따라 문서를 다르게 표시 할 수 있습니다. 이 대화 상자를 사용하여 사용자는 예를 들어 기본 언어,교정 언어,표시 언어 등을 선택할 수 있습니다. Aspose.Words 제공 [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) 이 대화 상자에 해당하는 속성입니다. 만약 Aspose.Words 출력은 Microsoft Word 출력,적절한 값을 설정 **EditingLanguage** -이 출력 문서를 향상시킬 수 있습니다.

다음 코드 예제에서는 일본어를 다음과 같이 설정하는 방법을 보여 줍니다 **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## 사용 WarningCallback 문서를 로드하는 동안 문제를 제어하려면

일부 문서가 손상되었거나 잘못된 항목이 포함되어 있거나 현재 지원되지 않는 기능이 있을 수 있습니다 Aspose.Words. 문서를 로드하는 동안 발생한 문제에 대해 알고 싶은 경우, Aspose.Words 제공 [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) 인터페이스

다음 코드 예제에서는 **IWarningCallback** 인터페이스:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

로드 시간 내내 모든 문제에 대한 정보를 얻으려면 다음을 사용하십시오 `WarningCallback` 재산.

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## 사용 ResourceLoadingCallback 외부 리소스 로딩을 제어하려면

문서에는 로컬 디스크,네트워크 또는 인터넷 어딘가에 있는 이미지에 대한 외부 링크가 포함될 수 있습니다. Aspose.Words 이러한 이미지를 문서에 자동으로 로드하지만 이 프로세스를 제어해야 하는 상황이 있습니다. 예를 들어,우리가 정말로 특정 이미지를로드하거나 아마도 그것을 건너 뛸 필요가 있는지 여부를 결정합니다. 그 ResourceLoadingCallback 로드 옵션을 사용하면 이것을 제어 할 수 있습니다.

다음 코드 예제에서는 IResourceLoadingCallback 인터페이스:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

다음 코드 예제에서는 사용 방법을 보여 줍니다 **ResourceLoadingCallback** 재산:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## 사용 TempFolder 메모리 예외를 방지하려면

Aspose.Words 풍부한 콘텐츠로 가득 찬 수천 페이지의 매우 큰 문서를 지원합니다. 이러한 문서를로드하는 데 많은 시간이 필요할 수 있습니다 RAM. 로딩 과정에서, Aspose.Words 문서를 구문 분석하는 데 사용되는 임시 구조를 보유하기 위해 더 많은 메모리가 필요합니다.

문서를 로드하는 동안 메모리 부족 예외에 문제가 있는 경우 [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/) 재산. 이 경우, Aspose.Words 메모리 대신 임시 파일에 일부 데이터를 저장하고 이러한 예외를 피하는 데 도움이 될 수 있습니다.

다음 코드 예제에서는 설정하는 방법을 보여 줍니다 **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## 인코딩을 명시적으로 설정

대부분의 현대 문서 형식은 유니코드에 콘텐츠를 저장하고 특별한 처리가 필요하지 않습니다. 다른 한편으로는,유니코드 전 인코딩을 사용하는 문서가 여전히 많으며 때로는 인코딩 정보를 놓치거나 본질적으로 인코딩 정보를 지원하지 않습니다. Aspose.Words 기본적으로 적절한 인코딩을 자동으로 감지하려고 시도하지만 드문 경우 인코딩 인식 알고리즘에서 감지한 인코딩과 다른 인코딩을 사용해야 할 수도 있습니다. 이 경우 다음을 사용하십시오 [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) 인코딩을 가져오거나 설정하는 속성.

다음 코드 예제에서는 자동으로 선택한 인코딩을 재정의하도록 인코딩을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## 암호화된 문서 로드

당신은 암호로 암호화 된 워드 문서를로드 할 수 있습니다. 이렇게 하려면 특수 생성자 오버로드를 사용합니다. [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) 객체 이 개체는 [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/) 암호 문자열을 지정하는 속성입니다.

다음 코드 예제에서는 암호로 암호화된 문서를 로드하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

파일이 암호화되어 있는지 여부를 미리 알 수없는 경우,당신은 사용할 수 있습니다 [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/) 파일 형식을 감지하거나 파일 확장자를 파일 형식 열거형에서/로 변환하는 것과 같은 파일 형식 작업을 위한 유틸리티 메서드를 제공하는 클래스입니다. 문서가 암호화되어 있고 열려면 암호가 필요한지 검색하려면 다음을 사용합니다 `IsEncrypted` 재산.

다음 코드 예제에서는 확인하는 방법을 보여 줍니다 OpenDocument 어느 쪽이든 그것은 암호화 또는하지 않습니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
