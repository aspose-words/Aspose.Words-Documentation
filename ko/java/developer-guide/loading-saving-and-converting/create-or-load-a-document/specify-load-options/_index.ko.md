---
title: Java에서 로드 옵션 지정
second_title: Aspose.WordsJava
articleTitle: 로드 옵션 지정
linktitle: 로드 옵션 지정
description: "Java을 사용하여 문서를 로드할 때 고급 속성을 설정하여 프로세스를 보다 정확하게 제어할 수 있습니다."
type: docs
weight: 10
url: /ko/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

문서를로드 할 때 일부 고급 속성을 설정할 수 있습니다. Aspose.Words는[LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/)클래스를 제공하여 로드 프로세스를 보다 정확하게 제어할 수 있습니다. 일부 로드 형식에는 이 로드 형식에 대한 로드 옵션을 보유하는 해당 클래스가 있습니다.예를 들어,PDF형식으로 로드하기 위해[PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/)또는TXT로 로드하기 위해[TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/)이 있습니다. 이 문서에서는**LoadOptions**클래스의 옵션 작업에 대한 예를 제공합니다.

## Microsoft Word버전을 설정하여 모양을 변경합니다

Microsoft Word응용 프로그램의 다른 버전은 다르게 문서를 표시 할 수 있습니다. 예를 들어DOCX또는DOTX와 같은OOXML문서에는WPS사무실을 사용하여 작성된 잘 알려진 문제가 있습니다. 이러한 경우 필수 문서 마크업 요소가 누락되거나 다르게 해석될 수 있으므로Microsoft Word2019 는Microsoft Word2010 과 비교하여 이러한 문서를 다르게 표시합니다.

기본적으로Aspose.Words는Microsoft Word2019 규칙을 사용하여 문서를 엽니다. 이전Microsoft Word응용 프로그램 버전 중 하나에서 발생하는 것처럼 문서 로드를 표시해야 하는 경우**LoadOptions**클래스의[MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion)속성을 사용하여 원하는 버전을 명시적으로 지정해야 합니다.

다음 코드 예제에서는 로드 옵션을 사용하여Microsoft Word버전을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## 언어 환경설정을 설정하여 모양을 변경합니다

Microsoft Word에 문서를 표시하는 세부 사항은 응용 프로그램 버전 및**MswVersion**속성 값뿐만 아니라 언어 설정에 따라 달라집니다. Microsoft Word는"사무실 언어 기본 설정"대화 상자 설정에 따라 문서를 다르게 표시 할 수 있습니다. 이 대화 상자를 사용하여 사용자는 예를 들어 기본 언어,교정 언어,표시 언어 등을 선택할 수 있습니다. Aspose.Words이 대화상자와 동등한[LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences)속성을 제공합니다. Aspose.Words출력이Microsoft Word출력과 다른 경우**EditingLanguage**에 적합한 값을 설정하십시오.

다음 코드 예제에서는 일본어를**EditingLanguage**으로 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## WarningCallback을 사용하여 문서를 로드하는 동안 문제를 제어할 수 있습니다

일부 문서가 손상되었거나 잘못된 항목이 포함되어 있거나Aspose.Words에서 현재 지원하지 않는 기능이 있을 수 있습니다. 문서를 로드하는 동안 발생한 문제에 대해 알고 싶다면Aspose.Words는[IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/)인터페이스를 제공합니다.

다음 코드 예제에서는**IWarningCallback**인터페이스의 구현을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

로드 시간 내내 모든 문제에 대한 정보를 얻으려면[WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback)속성을 사용합니다.

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## ResourceLoadingCallback을 사용하여 외부 리소스 로딩을 제어합니다

문서에는 로컬 디스크,네트워크 또는 인터넷 어딘가에 있는 이미지에 대한 외부 링크가 포함될 수 있습니다. Aspose.Words이러한 이미지를 문서에 자동으로 로드하지만 이 프로세스를 제어해야 하는 상황이 있습니다. 예를 들어,우리가 정말로 특정 이미지를로드하거나 아마도 그것을 건너 뛸 필요가 있는지 여부를 결정합니다. [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback)로드 옵션을 사용하면 이를 제어할 수 있습니다.

다음 코드 예제에서는[IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/)인터페이스의 구현을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

다음 코드 예제에서는**ResourceLoadingCallback**속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## TempFolder을 사용하여 메모리 예외를 방지합니다

Aspose.Words풍부한 콘텐츠로 가득 찬 수천 페이지의 매우 큰 문서를 지원합니다. 이러한 문서를 로드하려면RAM이 많이 필요할 수 있습니다. 로드 과정에서Aspose.Words은 문서를 분석하는 데 사용되는 임시 구조를 보관하기 위해 더 많은 메모리가 필요합니다.

문서를 로드하는 동안 메모리 부족 예외에 문제가 있는 경우[TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder)속성을 사용해 보십시오. 이 경우Aspose.Words은 메모리 대신 임시 파일에 일부 데이터를 저장하므로 이러한 예외를 피할 수 있습니다.

다음 코드 예제에서는**TempFolder**을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## 인코딩을 명시적으로 설정

대부분의 현대 문서 형식은 유니코드에 콘텐츠를 저장하고 특별한 처리가 필요하지 않습니다. 다른 한편으로는,유니코드 전 인코딩을 사용하는 문서가 여전히 많으며 때로는 인코딩 정보를 놓치거나 본질적으로 인코딩 정보를 지원하지 않습니다. Aspose.Words는 기본적으로 적절한 인코딩을 자동으로 감지하려고 시도하지만 드문 경우 인코딩 인식 알고리즘에서 감지한 인코딩과 다른 인코딩을 사용해야 할 수도 있습니다. 이 경우[Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding)속성을 사용하여 인코딩을 가져오거나 설정합니다.

다음 코드 예제에서는 자동으로 선택한 인코딩을 재정의하도록 인코딩을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## 암호화된 문서 로드

당신은 암호로 암호화 된 워드 문서를로드 할 수 있습니다. 이렇게 하려면[LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/)개체를 허용하는 특수 생성자 오버로드를 사용합니다. 이 개체는 암호 문자열을 지정하는[Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword)속성을 포함합니다.

다음 코드 예제에서는 암호로 암호화된 문서를 로드하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

파일이 암호화되었는지 미리 알 수 없는 경우, 파일 형식을 감지하거나 파일 확장자를 파일 형식 열거형으로 변환하는 것과 같이 파일 형식을 다루는 데 필요한 유틸리티 메서드를 제공하는 [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) 클래스를 사용할 수 있습니다. 문서가 암호화되어 있고 이를 열려면 암호가 필요한지 감지하려면 [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) 속성을 사용합니다.

다음 코드 예제에서는OpenDocument이 암호화되어 있는지 여부를 확인하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
