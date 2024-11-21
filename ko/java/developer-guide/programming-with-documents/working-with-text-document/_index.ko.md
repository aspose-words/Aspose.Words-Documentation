---
title: 텍스트 문서 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 텍스트 문서 작업
linktitle: 텍스트 문서 작업
description: "TXT 문서 처리, 목록, BiDi, headers/footer, 사용 Java·"
type: docs
weight: 430
url: /ko/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

이 문서에서, 우리는 텍스트 문서와 함께 작업 할 수있는 옵션을 배울 것입니다 Aspose.Words· 사용 가능한 옵션의 전체 목록이 아니라 그 중 일부 작업의 예입니다.

## Bi-Directional 추가 제품정보

당신은 사용할 수 있습니다 [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) 일반 텍스트 형식으로 수출 할 때 각 BiDi 실행 전에 양방향 표시를 추가 할 수 있는 속성. Aspose.Words 텍스트의 각 양방향 실행 전에 유니코드 문자 'RIGHT-TO-LEFT MARK'(U+200F)를 삽입합니다. 이 옵션은 일반 텍스트 형식으로 내보내면 MS Word 파일 변환 대화 상자의 "Add bi-directional mark"옵션에 해당합니다. 아랍어 또는 히브리어 편집 언어가 MS Word에 추가되는 경우에만 대화 상자에서 나타납니다.

다음 코드 예제는 사용하는 방법을 보여줍니다 `TxtSaveOptions.AddBidiMarks` 호텔 위치 이 속성의 기본 값은 *true*::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## TXT 로딩 중에 목록 아이템 인식

Aspose.Words 문서 객체 모델의 목록 번호 또는 일반 텍스트로 텍스트 파일의 목록을 가져올 수 있습니다. 더 보기 [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) 속성은 문서가 일반 텍스트 형식으로 가져올 때 번호 목록 항목을 인식하는 방법을 지정할 수 있습니다

* 이름 이 옵션이 설정된 경우 *true*, Whitespaces는 목록 번호 delimiters로도 사용됩니다. 아랍 스타일 번호 (1., 1.1.2.)의 목록 인식 알고리즘은 백스페이스와 도트 (".") 기호를 모두 사용합니다.
* 이름 이 옵션이 설정된 경우 *false*, 목록 인식 알고리즘은 목록 단락을 감지합니다. 목록 번호가 dot, 오른쪽 브래킷 또는 총알 기호 (예: "•", "*", "-"또는 "o").

다음 코드 예제는이 속성을 사용하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## TXT 로딩 중 리드 및 트레일 공간 처리

TXT 파일을로드하는 동안 선도적 인 및 트레일 공간을 처리하는 방법을 제어 할 수 있습니다. 가장 큰 공간은 손질될 수 있고, 보존되거나 indent와 trailing 공간에 개조될 수 있었습니다 또는 보존될 수 있었습니다.

아래 코드는 TXT 파일을 가져올 때 지도와 트레일 스페이스를 트리밍하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## 본문 바로가기 텍스트 방향

Aspose.Words 제품정보 [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) 뚱 베어 [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) 문서의 텍스트 방향 (RTL / LTR)을 감지하는 클래스. 이 속성은 설정하거나 문서 텍스트 방향을 가져옵니다 [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) 관련 기사 기본값은 오른쪽으로 왼쪽입니다.

다음 코드 예제는 TXT 파일을 가져올 때 문서의 텍스트 방향을 감지하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## 출력 TXT 파일에 있는 수출 우두머리 그리고 발기

출력 TXT 문서의 헤더와 발기를 내보내려면, 사용할 수 있습니다. [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) 호텔 위치 이 재산은 방법 우두머리 및 발기는 일반 텍스트 형식으로 수출됩니다.

다음 코드 예제는 헤더와 발기를 일반 텍스트 형식으로 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## 산출 TXT에 있는 수출 목록 Indentation

Aspose.Words 제품정보 [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) 일반 텍스트 형식으로 내보내는 동안 목록 수준이 들여지는 방법을 지정할 수 있는 클래스. 일하는 동안 [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), 이름 * [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) 속성을 지정할 수 있는 문자를 지정할 수 있습니다. indenting list level 과 count 를 지정할 수 있습니다.

문자 속성의 기본값은 '\0'이며, indentation은 없다. count 속성의 경우, 기본값은 0이며 indentation은 없다.

### 탭 문자 사용

다음 코드 예제는 탭 문자를 사용하여 목록 레벨을 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Space 문자 사용

다음 코드 예제는 스페이스 문자를 사용하여 목록 레벨을 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### 기본 Indentation 사용

다음 코드 예제는 기본 indentation을 사용하여 목록 레벨을 내보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
