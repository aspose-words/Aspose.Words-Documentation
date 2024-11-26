---
title: C#에서 로드 옵션 지정
second_title: .NET용 Aspose.Words
articleTitle: 로드 옵션 지정
linktitle: 로드 옵션 지정
description: "C#를 사용하여 로드 프로세스를 보다 정확하게 제어합니다."
type: docs
weight: 10
url: /ko/net/specify-load-options/
timestamp: 2024-07-09-19-00-42
---

문서를 로드할 때 일부 고급 속성을 설정할 수 있습니다. Aspose.Words는 로드 프로세스를 보다 정확하게 제어할 수 있는 [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) 클래스를 제공합니다. 일부 로드 형식에는 이 로드 형식에 대한 로드 옵션을 보유하는 해당 클래스가 있습니다. 예를 들어 PDF 형식으로 로드하기 위한 [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/)나 TXT로 로드하기 위한 [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/)이 있습니다. 이 문서에서는 **LoadOptions** 클래스 옵션 작업의 예를 제공합니다.

## Microsoft Word 버전을 설정하여 모양 변경

Microsoft Word 애플리케이션 버전에 따라 문서가 다르게 표시될 수 있습니다. 예를 들어, WPS Office를 사용하여 생성된 DOCX 또는 DOTX와 같은 OOXML 문서에는 잘 알려진 문제가 있습니다. 이러한 경우 필수 문서 마크업 요소가 누락되거나 다르게 해석되어 Microsoft Word 2019가 Microsoft Word 2010과 다르게 해당 문서를 표시할 수 있습니다.

기본적으로 Aspose.Words는 Microsoft Word 2019 규칙을 사용하여 문서를 엽니다. 이전 Microsoft Word 애플리케이션 버전 중 하나에서 발생했던 것처럼 문서 로드가 표시되도록 해야 하는 경우 **LoadOptions** 클래스의 [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) 속성을 사용하여 원하는 버전을 명시적으로 지정해야 합니다.

다음 코드 예제에서는 로드 옵션을 사용하여 Microsoft Word 버전을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## 언어 기본 설정을 지정하여 모양 변경

Microsoft Word에 문서를 표시하는 세부 사항은 애플리케이션 버전 및 **MswVersion** 속성 값뿐만 아니라 언어 설정에 따라 달라집니다. Microsoft Word는 "파일 → 옵션 → 언어"에서 찾을 수 있는 "Office 언어 기본 설정" 대화 상자 설정에 따라 문서를 다르게 표시할 수 있습니다. 이 대화 상자를 사용하여 사용자는 기본 언어, 교정 언어, 표시 언어 등을 선택할 수 있습니다. Aspose.Words은 이 대화 상자와 동일한 [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) 속성을 제공합니다. Aspose.Words 출력이 Microsoft Word 출력과 다른 경우 **EditingLanguage**에 적절한 값을 설정하세요. 이렇게 하면 출력 문서가 향상될 수 있습니다.

다음 코드 예제에서는 일본어를 **EditingLanguage**로 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## WarningCallback를 사용하여 문서를 로드하는 동안 문제 제어

일부 문서가 손상되었거나 잘못된 항목이 포함되어 있거나 현재 Aspose.Words에서 지원하지 않는 기능이 있을 수 있습니다. 문서를 로드하는 동안 발생한 문제에 대해 알고 싶다면 Aspose.Words는 [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) 인터페이스를 제공합니다.

다음 코드 예제는 **IWarningCallback** 인터페이스의 구현을 보여줍니다

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

로드 시간 전체에 걸쳐 모든 문제에 대한 정보를 얻으려면 [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) 속성을 사용하십시오.

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## ResourceLoadingCallback을 사용하여 외부 리소스 로드 제어

문서에는 로컬 디스크, 네트워크 또는 인터넷 어딘가에 있는 이미지에 대한 외부 링크가 포함될 수 있습니다. Aspose.Words는 이러한 이미지를 문서에 자동으로 로드하지만 이 프로세스를 제어해야 하는 상황이 있습니다. 예를 들어 특정 이미지를 실제로 로드해야 하는지 아니면 건너뛰어야 하는지 결정하는 것입니다. [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) 로드 옵션을 사용하면 이를 제어할 수 있습니다.

다음 코드 예제는 [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) 인터페이스의 구현을 보여줍니다

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

다음 코드 예제에서는 **ResourceLoadingCallback** 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## TempFolder를 사용하여 메모리 예외 방지

Aspose.Words는 풍부한 콘텐츠로 가득 찬 수천 페이지를 포함하는 매우 큰 문서를 지원합니다. 이러한 문서를 로드하려면 많은 RAM이 필요할 수 있습니다. 로드 과정에서 Aspose.Words는 문서를 구문 분석하는 데 사용되는 임시 구조를 유지하기 위해 더 많은 메모리가 필요합니다.

문서를 로드하는 동안 메모리 부족 예외 문제가 발생하는 경우 [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) 속성을 사용해 보세요. 이 경우 Aspose.Words는 일부 데이터를 메모리 대신 임시 파일에 저장하므로 이러한 예외를 방지하는 데 도움이 될 수 있습니다.

다음 코드 예제에서는 **TempFolder**를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## 인코딩을 명시적으로 설정

대부분의 최신 문서 형식은 콘텐츠를 유니코드로 저장하므로 특별한 처리가 필요하지 않습니다. 반면에 일부 사전 유니코드 인코딩을 사용하고 때로는 인코딩 정보가 누락되거나 기본적으로 인코딩 정보도 지원하지 않는 문서가 여전히 많이 있습니다. Aspose.Words는 기본적으로 적절한 인코딩을 자동으로 감지하려고 시도하지만, 드문 경우지만 인코딩 인식 알고리즘에서 감지한 것과 다른 인코딩을 사용해야 할 수도 있습니다. 이 경우 [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) 속성을 사용하여 인코딩을 가져오거나 설정하세요.

다음 코드 예제에서는 자동으로 선택된 인코딩을 재정의하도록 인코딩을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## 암호화된 문서 로드

비밀번호로 암호화된 Word 문서를 로드할 수 있습니다. 이렇게 하려면 [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) 개체를 허용하는 특수 생성자 오버로드를 사용하세요. 이 객체에는 비밀번호 문자열을 지정하는 [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) 속성이 포함되어 있습니다.

다음 코드 예제에서는 비밀번호로 암호화된 문서를 로드하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

파일이 암호화되었는지 여부를 미리 알 수 없는 경우 [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) 클래스를 사용할 수 있습니다. 이 클래스는 파일 형식 감지 또는 파일 확장자를 파일 형식 열거형으로 변환하는 등 파일 형식 작업을 위한 유틸리티 메서드를 제공합니다. 문서가 암호화되어 있고 문서를 열 때 비밀번호가 필요한지 확인하려면 [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) 속성을 사용하세요.

다음 코드 예제에서는 OpenDocument가 암호화되었는지 여부를 확인하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
