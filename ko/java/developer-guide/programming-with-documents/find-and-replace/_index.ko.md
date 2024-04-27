---
title: 자주 묻는 질문 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 찾기 및 교체
linktitle: 찾기 및 교체
type: docs
description: "문서의 문자열 또는 정규 표현 패턴을 찾아 원하는 텍스트로 대체 Java·"
weight: 100
url: /ko/java/find-and-replace/
---

키보드와 마우스를 사용하여 문서 내에서 쉽게 탐색 할 수 있지만 스크롤을 통해 많은 페이지를 가지고 있다면 긴 문서에서 특정 텍스트를 찾는 동안 꽤 걸릴 것입니다. 문서에 사용되는 특정 문자 또는 단어를 대체 할 때 더 많은 시간 소모가 될 것입니다. "Find and replace" 기능은 문서에서 문자의 순서와 문자의 다른 순서로 대체 할 수 있습니다.

Aspose.Words 문서의 특정 문자열 또는 일반 표현 패턴을 찾을 수 있으며 추가 응용 프로그램을 설치하지 않고 대안으로 대체 Microsoft Word· 이것은 많은 타이핑 및 포맷 작업을 가속화 할 것이며 잠재적으로 작업 시간을 절약 할 수 있습니다.

이 문서는 metacharacters의 지원과 문자열 교체 및 정규식을 적용하는 방법을 설명합니다.

## 찾기 및 교체 방법 {#ways-to-find-and-replace}

Aspose.Words 다음을 사용하여 찾기 및 교체 작업을 적용 할 수있는 두 가지 방법을 제공합니다:

1. 명세 *Simple string Replacement* – 다른 문자열을 찾아 교체하기 위해, 다른 지정된 교체 문자열로 모든 발생에 따라 교체 될 검색 문자열 (alphanumeric Character)를 지정해야합니다. 두 문자열은 기호를 포함하지 않아야합니다. 문자열 비교가 case-sensitive 될 수 있는 계정으로 가져 오거나, 맞춤법이나 여러 유사한 맞춤법이 있을 수 있습니다.
2. *Regular expressions* - 정확한 문자열 일치를 찾기 위해 정규 표현식을 지정하고 정규 표현에 따라 교체합니다. 단어는 알파벳 문자로 만들어져 정의됩니다. 모든 단어가 일치하고 입력 문자열이 기호를 포함하도록 설정하면 구문이 발견되지 않습니다.

또한, 간단한 문자열 교체 및 일반 표현을 사용하여 특수 metacharacters를 사용할 수 있습니다.

Aspose.Words 검색 및 대체 기능을 제공합니다. [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/)· 찾을 때 많은 옵션과 작업 할 수 있으며 프로세스를 교체 할 수 있습니다. [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) 수업.

### 간단한 문자열 교체를 사용하여 텍스트 찾기 및 교체 {#find-and-replace-text-using-simple-string-replacement}

중 하나를 사용할 수 있습니다 [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) 특정 문자열을 찾기 또는 교체하는 방법 및 그 만든 교체의 번호를 반환. 이 경우, 교체 할 문자열을 지정할 수 있습니다., 모든 발생을 대체 할 문자열, 교체가 case-sensitive인지 여부, 독립 단어 만 영향을받을 수 있습니다.

다음 코드 예제 문자열을 찾는 방법을 보여줍니다 "_CustomerName_" 문자열로 교체 *"James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

간단한 문자열 교체를 적용하기 전에 문서의 차이를 알 수 있습니다

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

간단한 문자열 교체를 적용한 후:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### 자주 묻는 질문 {#find-and-replace-text-using-regular-expressions}

정규 표현식 (regex)은 텍스트의 특정 순서에 대해 설명하는 패턴입니다. 단일 단어 발생과 단어의 모든 두 배 발생을 대체하려는 공급. 그런 다음 두 배 단어 패턴을 지정하려면 다음 정규 표현식을 적용 할 수 있습니다. `([a-zA-Z]+) \1`·

다른 용도 [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) 특정 문자 조합을 검색하고 교체하는 방법 `Regex` 정규 표현식 패턴으로 일치를 찾습니다.

다음과 같은 코드 예제는 지정된 교체 문자열과 정규식 패턴과 일치하는 문자열을 대체하는 방법을 보여줍니다


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


정규식과 문자열 교체를 적용하기 전에 문서의 차이를 알 수 있습니다

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

그리고 문자열 교체를 정규 표현식으로 적용한 후:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Metacharacters를 사용하여 문자열 찾기 및 교체 {#find-and-replace-text-using-metacharacters}

특정 텍스트 또는 구문이 여러 단락, 섹션 또는 페이지로 구성되는 경우 검색 문자열 또는 교체 문자열에서 metacharacters를 사용할 수 있습니다. metacharacters의 일부는 다음과 같습니다. **&p** 단락을 위해, **&b** 부분 휴식, **&m** 페이지 휴식 및 **&l** 라인 브레이크를 위해.

{{% alert color="primary" %}}

metacharacter를 참고하십시오. **&&** 관련 기사 **&**· 예를 들어, 텍스트를 찾을 필요가 있다면 **&p** 그 단락이 아니라면 사용할 수 있습니다. **&&p**·

{{% /alert %}}

다음 코드 예제는 단락과 페이지 브레이크로 텍스트를 대체하는 방법을 보여줍니다:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## 문서의 Header/Footer에서 문자열 찾기 및 교체 {#find-and-replace-string-in-header-or-footer-of-a-document}

Word 문서의 헤더/footer 섹션에서 텍스트를 찾을 수 있습니다. [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) 수업.

다음 코드 예제는 문서의 헤더 섹션의 텍스트를 대체하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


헤더 문자열 교체를 적용하기 전에 문서의 차이를 알 수 있습니다

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

그리고 헤더 문자열 교체를 적용한 후:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

문서의 footer 섹션의 텍스트를 대체하는 코드 예는 이전 헤더 코드 예와 매우 유사합니다. 당신이 해야 할 일은 다음과 같은 두 줄을 교체:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

다음으로:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


footer string 교체를 적용하기 전에 문서의 차이를 알 수 있습니다

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

그리고 footer string 교체를 적용한 후에:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## 찾기 중 텍스트를 무시하고 교체 {#ignore-text-during-find-and-replace}

검색 및 교체 작업을 적용하는 동안 텍스트의 특정 세그먼트를 무시할 수 있습니다. 그래서, 텍스트의 특정 부분은 검색에서 제외 될 수 있으며, 찾기 및 교체는 나머지 부분에만 적용 할 수 있습니다.

Aspose.Words ignoring 텍스트에 대한 많은 검색 및 교체 속성을 제공합니다. [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), · [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted)·

다음과 같은 코드 예제는 삭제 된 수정에서 텍스트를 무시하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## 사용자 정의 찾기 및 교체 작업 {#customize-find-and-replace-operation}

Aspose.Words 많은 다른 [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) 특정 형식의 적용과 같은 텍스트를 찾아 교체 [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) · [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) 속성, 교체 패턴에 대 한 대체 사용 [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) 재산, 다른 사람.

다음 코드 예제는 문서의 특정 단어를 강조하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words 사용 가능 [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) 인터페이스를 만들고 교체 작업 중에 사용자 정의 방법을 호출합니다. HTML 태그를 가진 정규 표현식으로 지정된 텍스트를 대체하는 것과 같은 검색 및 교체 작업을 사용자 정의 할 필요가있는 일부 사용 사례가 있으므로 기본적으로 HTML을 삽입하는 것과 같이 대체 할 수 있습니다.

HTML 태그로 문자열을 교체해야하는 경우, apply **IReplacingCallback** 를 사용자 정의하고 작업을 대체하기 위해 인터페이스 그래서 일치는 문서의 일치 노드와 함께 실행의 시작 부분에 시작합니다. 사용의 몇 가지 예를 제공하자 **IReplacingCallback**·

다음 코드 예제는 HTML로 지정된 텍스트를 대체하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


다음과 같은 코드 예제는 녹색 색상과 빨간색과 부정적인 숫자를 강조하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

다음 코드 예제는 각 줄에 줄 번호를 prepend하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
