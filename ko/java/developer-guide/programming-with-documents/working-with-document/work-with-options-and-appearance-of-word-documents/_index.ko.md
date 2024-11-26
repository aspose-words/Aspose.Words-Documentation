---
title: 워드 문서의 옵션 및 모양
second_title: Aspose.WordsJava
articleTitle: 워드 문서의 옵션 및 모양 작업
linktitle: 워드 문서의 옵션 및 모양 작업
description: "계정에Java를 사용하여 다양한Microsoft Word버전의 차이를 복용 워드 문서의 모양을 제어 할 수 있습니다."
type: docs
weight: 40
url: /ko/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

때로는 문서의 모양을 변경해야 할 수도 있습니다(예:언어 기본 설정 또는 페이지 당 줄 수 설정).Aspose.Words은 문서 표시 방법과 몇 가지 추가 옵션을 제어할 수 있는 기능을 제공합니다. 이 기사에서는 이러한 가능성을 설명합니다.

## 문서 표시 옵션 설정

[ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/)클래스를 사용하여Microsoft Word에 문서가 표시되는 방법을 제어할 수 있습니다. 예를 들어[ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent)속성을 사용하여 문서 확대/축소 값을 설정하거나[ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType)속성을 사용하여 보기 모드를 설정할 수 있습니다.

다음 코드 예제에서는Microsoft Word에서 열 때 문서가 50%로 표시되도록 하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word2013 은 문서에 확대/축소 비율을 쓰지 않고 더 이상 문서에 기록된 값에서 기본 확대/축소를 설정하지 않고 마지막으로 열린 문서의 확대/축소 비율을 사용하는 것 같습니다.

{{% /alert %}}

## 페이지 표시 옵션 설정

줄당 문자 수를 설정하려면[CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine)속성을 사용합니다. [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage)속성을 사용하여 문서 표에서 페이지당 줄 수를 가져오거나 설정합니다.

{{% alert color="primary" %}}

Microsoft Word에서는 아시아 언어 지원이 설치된 경우에만"페이지 설정"대화 상자의"문서 표"탭을 사용하여 동일한 매개 변수를 설정할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는Microsoft Word문서에 대해 행당 문자 수와 페이지당 줄 수를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## 언어 기본 설정 설정

Microsoft Word에서 문서를 표시하는 것은 이 문서의 기본 언어로 설정된 언어에 따라 달라집니다. 기본 언어로 설정된 언어가 없는 경우 Microsoft Word은 "Office 언어 기본 설정 설정" 대화 상자에서 정보를 가져옵니다. 예를 들어, Microsoft Word 2019의 "파일 → 옵션 → 언어"에서 찾을 수 있습니다.

Aspose.Words을 사용하면 [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) 클래스를 사용하여 언어 기본 설정을 설정할 수도 있습니다. 또한 문서를 올바르게 표시하려면 문서 로딩 프로세스가 일치해야 하는 Microsoft Word 버전을 설정해야 합니다. 이는 [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) 속성을 사용하여 수행할 수 있습니다.

{{% alert color="primary" %}}

Aspose.Words생성 된 문서가 예상대로 보이지 않는 경우**LanguagePreferences**및**MswVersion**값을 확인하고 필요한 경우Microsoft Word버전의 설정과 일치하도록 조정하십시오.

{{% /alert %}}

다음 코드 예제에서는 편집 언어에 일본어를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

다음 코드 예제에서는 러시아어를 기본 편집 언어로 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## 특정 단어 버전에 대한 문서 최적화

[OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int)방법을 사용하면 특정 버전의Microsoft Word에 대한 기본Aspose.Words동작뿐만 아니라 문서 내용을 최적화 할 수 있습니다. 이 방법을 사용하면Microsoft Word가 문서 로드 시"호환 모드"리본을 표시하지 못하도록 할 수 있습니다. `Compliance`속성을Iso29500_2008_Transitional이상으로 설정해야 할 수도 있습니다.

다음 코드 예제에서는Microsoft Word2016 에 대한 문서 콘텐츠를 최적화하는 방법을 보여 줍니다:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
