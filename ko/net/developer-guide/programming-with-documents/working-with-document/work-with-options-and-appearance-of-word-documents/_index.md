---
title: 옵션 및 모양 Word 문서
second_title: .NET용 Aspose.Words
articleTitle: Word 문서의 옵션 및 모양 작업
linktitle: Word 문서의 옵션 및 모양 작업
description: "C#를 사용하여 다양한 Microsoft Word 버전 간의 차이를 고려하여 Word 문서의 모양을 제어합니다."
type: docs
weight: 40
url: /ko/net/work-with-word-document-options-and-appearance/
---

때로는 언어 기본 설정이나 페이지당 줄 수를 설정하는 등 문서의 모양을 변경해야 할 수도 있습니다. Aspose.Words는 문서 표시 방법과 몇 가지 추가 옵션을 제어하는 기능을 제공합니다. 이 문서에서는 그러한 가능성에 대해 설명합니다.

## 문서 표시 옵션 설정

[ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/) 클래스를 사용하여 Microsoft Word에 문서가 표시되는 방법을 제어할 수 있습니다. 예를 들어 [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) 속성을 사용하여 문서 확대/축소 값을 설정하거나 [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/) 속성을 사용하여 보기 모드를 설정할 수 있습니다.

다음 코드 예제에서는 Microsoft Word에서 문서를 열 때 문서가 50%로 표시되도록 하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013은 문서에 확대/축소 비율을 기록하지 않으며 더 이상 문서에 기록된 값에서 기본 확대/축소를 설정하지 않고 대신 마지막으로 열린 문서의 확대/축소 비율을 사용하는 것으로 보입니다.

{{% /alert %}}

## 페이지 표시 옵션 설정

한 줄당 문자 수를 설정하려면 [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/) 속성을 사용하십시오. Word 문서의 페이지당 줄 수를 설정할 수도 있습니다. [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) 속성을 사용하여 문서 격자의 페이지당 줄 수를 가져오거나 설정합니다.

{{% alert color="primary" %}}

Microsoft Word에서는 아시아 언어 지원이 설치된 경우에만 "페이지 설정" 대화 상자의 "문서 그리드" 탭을 사용하여 동일한 매개변수를 설정할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 Microsoft Word 문서의 줄당 문자 수와 페이지당 줄 수를 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## 언어 기본 설정 지정

Microsoft Word에 문서를 표시하는 것은 이 문서의 기본값으로 설정된 언어에 따라 달라집니다. 기본적으로 언어가 설정되지 않은 경우 Microsoft Word는 "Office 언어 기본 설정 지정" 대화 상자에서 정보를 가져옵니다. 예를 들어 Microsoft Word 2019의 "파일 → 옵션 → 언어"에서 찾을 수 있습니다.

Aspose.Words를 사용하면 [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) 클래스를 사용하여 언어 기본 설정을 설정할 수도 있습니다. 또한 문서를 올바르게 표시하려면 문서 로드 프로세스와 일치해야 하는 Microsoft Word 버전을 설정해야 합니다. 이는 [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) 속성을 사용하여 수행할 수 있습니다.

{{% alert color="primary" %}}

Aspose.Words 생성 문서가 예상대로 보이지 않으면 **LanguagePreferences** 및 **MswVersion** 값을 확인하고 필요한 경우 Microsoft Word 버전의 설정과 일치하도록 조정하십시오.

{{% /alert %}}

다음 코드 예제에서는 편집 언어에 일본어를 추가하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

다음 코드 예제에서는 러시아어를 기본 편집 언어로 설정하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## 특정 Word 버전에 맞게 문서 최적화

[OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) 방법을 사용하면 특정 버전의 Microsoft Word에 대한 기본 Aspose.Words 동작뿐만 아니라 문서 콘텐츠를 최적화할 수 있습니다. 이 방법을 사용하면 문서 로드 시 Microsoft Word이 "호환성 모드" 리본을 표시하지 않도록 할 수 있습니다. `Compliance` 속성을 Iso29500_2008_Transitional 이상으로 설정해야 할 수도 있습니다.

다음 코드 예제는 Microsoft Word 2016에 맞게 문서 콘텐츠를 최적화하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
