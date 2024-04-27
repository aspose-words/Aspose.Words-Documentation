---
title: Word 문서의 옵션 및 외관
second_title: Aspose.Words 제품정보 Java
articleTitle: Word 문서의 옵션 및 외관 작업
linktitle: Word 문서의 옵션 및 외관 작업
description: "Word 문서의 외관을 제어하여 다양한 차이를 고려합니다. Microsoft Word 버전 사용 Java·"
type: docs
weight: 40
url: /ko/java/work-with-word-document-options-and-appearance/
---

때로는 문서의 모양을 변경할 필요가 있습니다. 예를 들어, 언어 설정 또는 페이지 당 줄 수.Aspose.Words 문서가 표시될 수 있는 방법을 제어할 수 있는 기능을 제공합니다. 이 문서는 이러한 가능성을 설명합니다.

## 문서 표시 옵션 설정

문서가 어떻게 표시될지 제어할 수 있습니다. Microsoft Word 사용 방법 [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) 수업. 예를 들어 문서 급상승 값을 사용하여 설정할 수 있습니다. [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) 속성, 또는 보기 모드 사용 [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) 호텔 위치

다음 코드 예제는 문서가 50 %에 표시되도록하는 방법을 보여줍니다. Microsoft Word::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc)·

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013은 문서에 어떤 급상승 요인을 쓰고 더 이상 문서에 기록된 값에서 기본 급상승을 놓지 않습니다, 대신, 마지막 열린 문서의 급상승 요인을 사용하는 것 같습니다.

{{% /alert %}}

## 페이지 표시 옵션 설정

행당 문자 수를 설정하려면, 사용 [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) 호텔 위치 Word 문서에 대한 페이지 당 줄 수를 설정할 수 있습니다. - 사용 [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) 문서 그리드의 페이지 당 줄의 수를 얻을 또는 설정할 수 있는 속성.

{{% alert color="primary" %}}

내 계정 Microsoft Word, "Document Grid" 탭을 사용하여 동일한 매개 변수를 설정할 수 있습니다. "Page Setup" 대화 상자는 아시아 언어 지원이 설치 될 때만.

{{% /alert %}}

다음 코드 예제는 줄 당 문자 수를 설정하는 방법을 보여 주며 페이지 당 줄 수 Microsoft Word 문서:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## 언어 설정

문서 표시 Microsoft Word 이 문서의 기본값으로 설정된 언어에 따라 달라집니다. 언어가 기본적으로 설정되지 않는 경우, Microsoft Word "Set Office Language Preferences" 대화 상자에서 정보가 걸립니다. 예를 들어 "File → Options → Language"에서 찾을 수 있습니다. Microsoft Word 2019년

이름 * Aspose.Words, 언어 설정도 할 수 있습니다. [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) 수업. 문서의 올바른 표시에 대해 설정해야합니다. Microsoft Word 문서 로딩 프로세스가 일치해야 하는 버전 – 이를 사용하여 수행 할 수 있습니다. [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) 호텔 위치

{{% alert color="primary" %}}

이름 * Aspose.Words 생성된 문서는 예상대로 보이지 않습니다, 체크 **LanguagePreferences** · **MswVersion** 값을 조정하고 설정을 일치해야 할 경우 조정 Microsoft Word 버전.

{{% /alert %}}

다음 코드 예제는 일본어를 편집하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

다음 코드 예제는 기본 편집 언어로 러시아어를 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Particular에 대한 문서 최적화 워드 버전

더 보기 [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) 방법은 문서 콘텐츠를 최적화 할 수 있으며 기본적으로 Aspose.Words 특정 버전의 행동 Microsoft Word· 이 방법을 사용하여 예방할 수 있습니다. Microsoft Word 문서 로딩시 "Compatibility mode" 리본을 표시합니다. 설정할 수도 있습니다. `Compliance` Iso29500_2008_Transitional 또는 그 이상의 재산.

다음 코드 예제는 문서 콘텐츠를 최적화하는 방법을 보여줍니다. Microsoft Word 2016년:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
