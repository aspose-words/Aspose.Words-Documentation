---
title: Java의 텍스트 문서 작업
second_title: Aspose.WordsJava
articleTitle: 텍스트 문서 작업
linktitle: 텍스트 문서 작업
description: "고급TXT문서 처리,목록,BiDi,머리글/바닥글,Java사용."
type: docs
weight: 430
url: /ko/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

이 기사에서는Aspose.Words을 통해 텍스트 문서 작업에 어떤 옵션이 유용 할 수 있는지 알아 봅니다. 이것은 사용 가능한 옵션의 전체 목록이 아니라 그 중 일부와 함께 작업하는 예일뿐입니다.

## 양방향 표시 추가

[AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks)속성을 사용하여 일반 텍스트 형식으로 내보낼 때 각BiDi실행 전에 양방향 표시를 추가할지 여부를 지정할 수 있습니다. Aspose.Words유니코드 문자 삽입'RIGHT-TO-LEFT MARK' (각 양방향 실행 전에 텍스트. 이 옵션은 일반 텍스트 형식으로 내보낼 때MS단어 파일 변환 대화 상자의"양방향 표시 추가"옵션에 해당합니다. 아랍어 또는 히브리어 편집 언어 중 하나가MS단어로 추가된 경우에만 대화 상자에 나타납니다.

다음 코드 예제에서는`TxtSaveOptions.AddBidiMarks`속성을 사용하는 방법을 보여 줍니다. 이 속성의 기본값은*true*입니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## TXT로드 중 목록 항목 인식

Aspose.Words는 텍스트 파일의 목록 항목을 문서 개체 모델에서 목록 번호 또는 일반 텍스트로 가져올 수 있습니다. [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces)속성을 사용하면 일반 텍스트 형식에서 문서를 가져올 때 번호 매기기 목록 항목을 인식하는 방법을 지정할 수 있습니다:

* 이 옵션을*true*으로 설정하면 공백은 목록 번호 구분 기호로도 사용됩니다., 1.1.2.)는 공백과 점(".")기호를 모두 사용합니다.
* 이 옵션을*false*으로 설정하면 목록 인식 알고리즘은 목록 번호가 점,오른쪽 대괄호 또는 글머리 기호(예:"•", "*", "-" 또는"o").

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## TXT로드 중 선행 및 후행 공백 처리

TXT파일을 로드하는 동안 선행 및 후행 공백을 처리하는 방법을 제어할 수 있습니다. 선행 공백은 잘라내거나 보존하거나 들여쓰기로 변환할 수 있고 후행 공백은 잘라내거나 보존할 수 있습니다.

아래 코드 예제에서는TXT파일을 가져오는 동안 선행 및 후행 공백을 잘라내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## 문서 텍스트 방향 감지

Aspose.Words[TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/)클래스에서[DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection)속성을 제공하여 문서에서 텍스트 방향(RTL/LTR)을 감지합니다. 이 속성은[DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/)열거형에 제공된 문서 텍스트 방향을 설정하거나 가져옵니다. 기본값은 왼쪽에서 오른쪽입니다.

다음 코드 예제에서는TXT파일을 가져오는 동안 문서의 텍스트 방향을 감지하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## 출력TXT파일에서 머리글 및 바닥글 내보내기

출력TXT문서에서 머리글과 바닥글을 내보내려면[ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode)속성을 사용할 수 있습니다. 이 속성은 머리글과 바닥글을 일반 텍스트 형식으로 내보내는 방법을 지정합니다.

다음 코드 예제에서는 머리글과 바닥글을 일반 텍스트 형식으로 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## 출력TXT에서 목록 들여쓰기 내보내기

Aspose.Words일반 텍스트 형식으로 내보내는 동안 목록 수준이 들여 쓰기 방법을 지정할 수있는[TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/)클래스를 도입했습니다. [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/)로 작업하는 동안[ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation)속성은 목록 수준을 들여쓰기하는 데 사용할 문자를 지정하고 한 목록 수준당 들여쓰기로 사용할 문자 수를 지정하는 데 제공됩니다.

문자 속성의 기본값은 들여쓰기가 없음을 나타내는'\0'입니다. 개수 속성의 경우 기본값은 0 으로 들여쓰기가 없음을 의미합니다.

### 탭 문자 사용

다음 코드 예제에서는 탭 문자를 사용하여 목록 수준을 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### 공백 문자 사용

다음 코드 예제에서는 공백 문자를 사용하여 목록 수준을 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### 기본 들여쓰기 사용

다음 코드 예제에서는 기본 들여쓰기를 사용하여 목록 수준을 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
