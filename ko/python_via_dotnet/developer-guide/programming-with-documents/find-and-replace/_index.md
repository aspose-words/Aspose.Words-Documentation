---
title: Python에서 찾기 및 바꾸기
second_title: Python via .NET용 Aspose.Words
articleTitle: 찾기 및 바꾸기
linktitle: 찾기 및 바꾸기
type: docs
description: "문서에서 문자열이나 정규식 패턴을 찾아 Python를 사용하여 원하는 텍스트로 바꿉니다."
weight: 100
url: /ko/python-net/find-and-replace/
---

키보드와 마우스를 사용하여 문서 내에서 쉽게 탐색할 수 있지만, 스크롤할 페이지가 많으면 긴 문서에서 특정 텍스트를 찾는 데 상당한 시간이 걸립니다. 문서에서 사용한 특정 문자나 단어를 바꾸려면 시간이 더 많이 걸립니다. "찾기 및 바꾸기" 기능을 사용하면 문서에서 일련의 문자를 찾아 다른 문자 시퀀스로 바꿀 수 있습니다.

Aspose.Words를 사용하면 문서에서 특정 문자열이나 정규식 패턴을 찾아 Microsoft Word와 같은 추가 응용 프로그램을 설치 및 사용하지 않고도 대체 패턴으로 바꿀 수 있습니다. 이렇게 하면 많은 입력 및 서식 지정 작업의 속도가 빨라지고 잠재적으로 작업 시간이 절약됩니다.

이 문서에서는 메타 문자 지원을 통해 문자열 대체 및 정규식을 적용하는 방법을 설명합니다.

## {#ways-to-find-and-replace}를 찾고 바꾸는 방법

Aspose.Words는 다음을 사용하여 찾기 및 바꾸기 작업을 적용하는 두 가지 방법을 제공합니다

1. *간단한 문자열 대체* – 특정 문자열을 찾아서 다른 문자열로 바꾸려면 모든 발생에 따라 지정된 다른 대체 문자열로 대체될 검색 문자열(영숫자 문자)을 지정해야 합니다. 두 문자열 모두 기호를 포함할 수 없습니다. 문자열 비교에서는 대소문자를 구분할 수 있으며 철자가 확실하지 않거나 유사한 철자가 여러 개 있을 수 있다는 점을 고려하십시오.
2. *정규식* - 정확한 문자열 일치를 찾고 정규식에 따라 바꾸는 정규식을 지정합니다. 단어는 영숫자로만 구성되는 것으로 정의됩니다. 전체 단어만 일치하도록 교체를 실행하고 입력 문자열에 기호가 포함되어 있으면 구문이 발견되지 않습니다.

또한 간단한 문자열 바꾸기 및 정규식과 함께 특수 메타 문자를 사용하여 찾기 및 바꾸기 작업 내에서 구분선을 지정할 수 있습니다.

Aspose.Words는 [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) 모듈을 통해 찾기 및 바꾸기 기능을 제공합니다. [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) 클래스를 사용하여 찾기 및 바꾸기 프로세스 중에 다양한 옵션을 사용할 수 있습니다.

### 단순 문자열 교체 {#find-and-replace-text-using-simple-string-replacement}를 사용하여 텍스트 찾기 및 바꾸기

[replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) 및 [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) 메소드 중 하나를 사용하여 특정 문자열을 찾거나 바꾸고 대체된 횟수를 반환할 수 있습니다. 이 경우 대체할 문자열, 해당 항목을 모두 대체할 문자열, 대체 항목이 대소문자를 구분하는지 여부, 독립형 단어만 영향을 받는지 여부를 지정할 수 있습니다.

다음 코드 예제에서는 "_CustomerName_" 문자열을 찾아서 *"James Bond"* 문자열로 바꾸는 방법을 보여줍니다

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

간단한 문자열 교체를 적용하기 전에 문서 간의 차이점을 확인할 수 있습니다

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="단순 문자열 교체 전" style="width:600px"/>

그리고 간단한 문자열 교체를 적용한 후:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="간단한 문자열 교체 후" style="width:600px"/>

### 정규식 {#find-and-replace-text-using-regular-expressions}를 사용하여 텍스트 찾기 및 바꾸기

정규식은 특정 텍스트 시퀀스를 설명하는 패턴입니다. 한 단어가 두 번 나타나는 경우를 모두 한 단어로 바꾸는 경우를 가정해 보겠습니다. 그런 다음 `([a-zA-Z]+) \1`라는 정규식을 적용하여 이중 단어 패턴을 지정할 수 있습니다.

[replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) 방법을 사용하면 정규식 매개변수를 일치 항목을 찾는 패턴으로 설정하여 특정 문자 조합을 검색하고 바꿀 수 있습니다.

다음 코드 예제에서는 정규식 패턴과 일치하는 문자열을 지정된 대체 문자열로 바꾸는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

정규식으로 문자열 대체를 적용하기 전에 문서 간의 차이점을 확인할 수 있습니다

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="정규식으로 대체하기 전" style="width:600px"/>

그리고 정규 표현식으로 문자열 대체를 적용한 후:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="정규 표현식으로 교체 후" style="width:600px"/>

### 메타문자 {#find-and-replace-text-using-metacharacters}를 사용하여 문자열 찾기 및 바꾸기

특정 텍스트나 구문이 여러 단락, 섹션 또는 페이지로 구성된 경우 검색 문자열이나 대체 문자열에 메타 문자를 사용할 수 있습니다. 일부 메타 문자에는 단락 나누기용 **&amp;피**, 섹션 나누기용 **&amp;비**, 페이지 나누기용 **&amp;중**, 줄 바꿈용 **&amp;엘**가 포함됩니다.

{{% alert color="primary" %}}

메타문자 **&&**는 **&**와 동일합니다. 예를 들어 단락 구분이 아닌 **&amp;피**용 텍스트를 찾아야 하는 경우 **&amp;&amp;피**를 사용할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 텍스트를 단락 및 페이지 나누기로 바꾸는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## 문서 머리글/바닥글에서 문자열 찾기 및 바꾸기 {#find-and-replace-string-in-header-or-footer-of-a-document}

[HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) 클래스를 사용하여 Word 문서의 머리글/바닥글 섹션에서 텍스트를 찾고 바꿀 수 있습니다.

다음 코드 예제에서는 문서의 헤더 섹션 텍스트를 바꾸는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

헤더 문자열 교체를 적용하기 전에 문서 간의 차이점을 확인할 수 있습니다

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="적용 전 헤더 문자열 교체" style="width:600px"/>

그리고 헤더 문자열 교체를 적용한 후:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="적용 후 헤더 문자열 교체" style="width:600px"/>

문서의 바닥글 섹션 텍스트를 바꾸는 코드 예제는 이전 헤더 코드 예제와 매우 유사합니다. 당신이 해야 할 일은 다음 두 줄을 바꾸는 것 뿐입니다:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

다음과 같습니다:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

바닥글 문자열 교체를 적용하기 전에 문서 간의 차이점을 확인할 수 있습니다

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="적용 전 바닥글 문자열 교체" style="width:600px"/>

그리고 바닥글 문자열 교체를 적용한 후:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="적용 후 바닥글 문자열 교체" style="width:600px"/>

## {#ignore-text-during-find-and-replace} 찾기 및 바꾸기 중 텍스트 무시

찾기 및 바꾸기 작업을 적용하는 동안 텍스트의 특정 세그먼트를 무시할 수 있습니다. 따라서, 텍스트의 특정 부분을 검색에서 제외할 수 있으며, 나머지 부분에만 찾기 및 바꾸기가 적용될 수 있습니다.

Aspose.Words는 [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/), [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/)와 같은 텍스트를 무시하기 위한 다양한 찾기 및 바꾸기 속성을 제공합니다.

다음 코드 예제에서는 삭제 버전 내의 텍스트를 무시하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## 찾기 및 바꾸기 작업 {#customize-find-and-replace-operation} 사용자 정의

Aspose.Words는 [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) 및 [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) 속성으로 특정 형식을 적용하고, [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) 속성으로 대체 패턴에서 대체 항목을 사용하는 등 텍스트를 찾고 바꾸는 다양한 속성을 제공합니다.

다음 코드 예제에서는 문서에서 특정 단어를 강조 표시하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
