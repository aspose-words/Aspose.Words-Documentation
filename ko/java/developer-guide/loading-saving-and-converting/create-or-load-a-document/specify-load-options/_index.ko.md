---
title: Load 옵션 설정 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Load 옵션 설정
linktitle: Load 옵션 설정
description: "문서 로딩 시 고급 속성 설정 Java 공정의 더 정확한 제어를 얻기 위해."
type: docs
weight: 10
url: /ko/java/specify-load-options/
---

문서를 로딩하면 고급 속성을 설정할 수 있습니다. Aspose.Words 너와 함께 [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) Load Process의 정확한 제어를 허용하는 클래스. 몇몇 짐 체재에는 이 짐 체재를 위한 짐 선택권을 붙드는 대응 종류가 있습니다, 예를 들면, 거기 있습니다 [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) PDF 형식 또는 [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) TXT에 선적을 위해. 이 문서는의 옵션과 작업의 예를 제공합니다 **LoadOptions** 수업.

## 설치하기 Microsoft Word 본문 바로가기

다른 버전의 Microsoft Word 신청은 다른 것에 있는 문서를 표시할 수 있습니다. 예를 들어, DOCX와 같은 OOXML 문서와 잘 알려진 문제가 있습니다. DOTWPS 사무실을 사용하는 X. 이러한 경우, 필수 문서 표시 요소가 누락되거나 다른 원인을 해석 할 수 있습니다. Microsoft Word 2019년은 다른 문서와 비교하여 Microsoft Word 2010년

기본 정보 Aspose.Words 문서 열기 Microsoft Word 2019 규칙. 문서 로딩을 하려면 이전 중 하나에서 발생할 것 처럼 나타납니다. Microsoft Word 응용 프로그램 버전, 명시적으로 원하는 버전을 지정해야 [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) 호텔 위치 **LoadOptions** 수업.

다음 코드 예제는 설정하는 방법을 보여줍니다 Microsoft Word 로드 옵션 버전:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## 본문 바로가기

문서 표시의 세부 사항 Microsoft Word 응용 프로그램 버전과 일치하지 않는 **MswVersion** 속성 값 또한 언어 설정에. Microsoft Word "Office Language Preferences" 대화 상자 설정에 따라 문서를 다르게 표시 할 수 있습니다. "File → Options → Languаge"에서 찾을 수 있습니다. 이 대화 상자를 사용하여 사용자가 선택할 수 있습니다. 예를 들어, 기본 언어, 교정 언어, 표시 언어 등. Aspose.Words 제품정보 [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) 이 대화 상자의 해당 속성. 이름 * Aspose.Words 출력은 다릅니다 Microsoft Word 출력, 적절한 값을 설정 **EditingLanguage** – 출력 문서를 개선할 수 있습니다.

다음 코드 예제는 일본어를 설정하는 방법을 보여줍니다. **EditingLanguage**::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## 제품 정보 WarningCallback 제어 문제 문서 로딩 중

일부 문서는 손상 될 수 있으며 잘못된 항목이 포함되거나 현재 지원되지 않은 기능이 없습니다. Aspose.Words· 문서 로딩 중에 발생한 문제에 대해 알고 싶다면, Aspose.Words 제품정보 [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) 인터페이스.

다음 코드 예제는 구현을 보여줍니다 **IWarningCallback** 인터페이스:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

로드 시간 동안 모든 문제에 대한 정보를 얻으려면, 사용 [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) 호텔 위치

다음 코드 예제는이 속성을 사용하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## ResourceLoading 사용 외부 리소스 로딩을 제어하는 Callback

문서는 로컬 디스크, 네트워크 또는 인터넷에 어딘가에 위치한 이미지에 외부 링크가 포함될 수 있습니다. Aspose.Words 문서에 이러한 이미지를 자동으로로드하지만, 이 프로세스가 제어 될 때 상황이 있습니다. 예를 들어, 우리가 정말로 특정 이미지를로드해야 할지 결정하거나 아마도 그것을 건너. 더 보기 [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) load 옵션을 사용하면 이것을 제어할 수 있습니다.

다음 코드 예제는 구현을 보여줍니다 [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) 인터페이스:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

다음 코드 예제는 사용하는 방법을 보여줍니다 **ResourceLoadingCallback** 이름:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## TempFolder를 사용하여 메모리 예외를 방지하십시오

Aspose.Words 풍부한 콘텐츠의 수천 페이지가 있는 매우 큰 문서를 지원합니다. 이러한 문서는 많은 RAM이 필요할 수 있습니다. 선적의 과정에서, Aspose.Words 문서를 파는 데 사용되는 임시 구조를 보유하는 더 많은 메모리가 필요합니다.

문서 로딩 중에 메모리 예외로 문제가 발생하면 사용하려고 합니다. [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) 호텔 위치 이 경우, Aspose.Words 메모리 대신 임시 파일에 일부 데이터를 저장하고 이러한 예외를 방지 할 수 있습니다.

다음 코드 예제는 설정 방법을 보여줍니다 **TempFolder**::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## 인코딩 Explicitly 설정

대부분의 현대 문서 형식은 Unicode에서 콘텐츠를 저장하고 특별한 취급이 필요하지 않습니다. 다른 한편으로는 여전히 많은 문서가 있습니다. 일부 사전 Unicode 인코딩을 사용하고 때로는 인코딩 정보를 놓거나 자연에 의한 인코딩 정보를 지원하지 않습니다. Aspose.Words 기본적으로 적절한 인코딩을 자동으로 감지하는 것은 아니지만, 인코딩 인식 알고리즘에 의해 감지 된 한 하나에서 인코딩을 사용할 필요가 없습니다. 이 경우, 사용 [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) 속성을 얻을 또는 인코딩 설정.

다음과 같은 코드 예제는 인코딩을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Load Encrypted 문서

당신은 적재할 수 있습니다 비밀번호로 암호화된 Word 문서. 이렇게하려면 특별한 constructor 하중을 사용하십시오. [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) 이름 * 이 객체는 [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) 비밀번호 문자열을 지정합니다.

다음 코드 예제는 암호로 암호화 된 문서를로드하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

파일이 암호화되었는지 미리 알 수 없는 경우, 사용할 수 있습니다. [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) 파일 형식을 감지하거나 파일 확장을 파일 형식으로 변환과 같은 파일 형식과 작업을위한 유틸리티 방법을 제공하는 클래스. 문서가 암호화되고 암호가 열리면, 사용 [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) 호텔 위치

다음 코드 예제는 OpenDocument를 암호화 또는 암호화하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
