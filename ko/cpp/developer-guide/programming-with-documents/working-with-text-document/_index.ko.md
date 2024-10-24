---
title: 텍스트 문서 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 텍스트 문서 작업
linktitle: 텍스트 문서 작업
description: "고급 TXT 문서 처리,목록, BiDi,머리글/바닥 글,사용 C++."
type: docs
weight: 430
url: /ko/cpp/working-with-text-document/
---

이 기사에서는 다음을 통해 텍스트 문서 작업에 어떤 옵션이 유용 할 수 있는지 배웁니다 Aspose.Words. 이것은 사용 가능한 옵션의 전체 목록이 아니라 그 중 일부와 함께 작업하는 예일뿐입니다.

## 양방향 표시 추가

당신은 사용할 수 있습니다 [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) 각 표시 앞에 양방향 표시를 추가할지 여부를 지정하는 속성 BiDi 일반 텍스트 형식으로 내보낼 때 실행합니다. Aspose.Words 유니코드 문자 삽입'RIGHT-TO-LEFT MARK'(유+200 에프)텍스트의 각 양방향 실행 전에. 이 옵션은"양방향 표시 추가"옵션에 해당합니다. MS 당신은 일반 텍스트 형식으로 내보낼 때 워드 파일 변환 대화. 아랍어 또는 히브리어 편집 언어 중 하나가 추가 된 경우에만 대화에 나타납니다. MS 단어.

다음 코드 예제에서는 사용 방법을 보여 줍니다 **AddBidiMarks** 재산. 이 속성의 기본값은 다음과 같습니다 *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## 로드 중 목록 항목 인식 TXT

Aspose.Words 텍스트 파일의 목록 항목을 문서 개체 모델에서 목록 번호 또는 일반 텍스트로 가져올 수 있습니다. 그 [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) 속성을 사용하면 일반 텍스트 형식에서 문서를 가져올 때 번호 매기기 목록 항목을 인식하는 방법을 지정할 수 있습니다:

* 이 옵션이 로 설정된 경우 *true*,공백은 목록 번호 구분 기호로도 사용됩니다:아랍어 스타일 번호 매기기를위한 목록 인식 알고리즘(1., 1.1.2.)공백과 점을 모두 사용합니다.".")기호
* 이 옵션이 로 설정된 경우 *false*,목록 인식 알고리즘은 목록 번호가 점,오른쪽 괄호 또는 글머리 기호(예: "•", "*", "-" 또는 "o").

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## 로드 중 선행 및 후행 공백을 처리하는 방법 TXT

로드하는 동안 선행 및 후행 공백을 처리하는 방법을 제어 할 수 있습니다 TXT 파일 선행 공백은 잘라내거나 보존하거나 들여쓰기로 변환할 수 있고 후행 공백은 잘라내거나 보존할 수 있습니다.

다음 코드 예제에서는 가져오는 동안 선행 및 후행 공백을 잘라내는 방법을 보여 줍니다 TXT 파일:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## 출력에서 머리글 및 바닥글 내보내기 TXT

당신은 출력에서 머리글과 바닥 글을 내보낼 경우 TXT 문서,당신은 사용할 수 있습니다 [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/) 재산. 이 속성은 머리글과 바닥글을 일반 텍스트 형식으로 내보내는 방법을 지정합니다.

다음 코드 예제에서는 머리글과 바닥글을 일반 텍스트 형식으로 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## 출력에서 목록 들여 쓰기 내보내기 TXT

Aspose.Words 소개 [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) 일반 텍스트 형식으로 내보내는 동안 목록 수준을 들여쓰기하는 방법을 지정할 수 있는 클래스입니다. 작업하는 동안 [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) 목록 수준 들여쓰기에 사용할 문자를 지정하고 한 목록 수준당 들여쓰기로 사용할 문자 수를 지정하는 개수를 지정하는 속성이 제공됩니다.

문자 속성의 기본값은'\0'는 진공이 없다는 것을 나타냅니다. 개수 속성의 경우 기본값은 다음과 같습니다 0 이는 들여 쓰기가 없음을 의미합니다.

### 탭 문자 사용

다음 코드 예제에서는 탭 문자를 사용하여 목록 수준을 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### 공백 문자 사용

다음 코드 예제에서는 공백 문자를 사용하여 목록 수준을 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### 기본 들여쓰기 사용

다음 코드 예제에서는 기본 들여쓰기를 사용하여 목록 수준을 내보내는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
