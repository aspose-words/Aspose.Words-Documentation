---
title: C#에서 텍스트 문서 작업
second_title: .NET용 Aspose.Words
articleTitle: 텍스트 문서 작업
linktitle: 텍스트 문서 작업
description: "C#를 사용한 고급 TXT 문서 처리, 목록, BiDi, 머리글/바닥글."
type: docs
weight: 430
url: /ko/net/working-with-text-document/
---

이 기사에서는 Aspose.Words를 통해 텍스트 문서 작업에 유용한 옵션이 무엇인지 알아봅니다. 이는 사용 가능한 옵션의 전체 목록이 아니며 일부 옵션에 대한 작업 예일 뿐입니다.

## 양방향 표시 추가

[AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) 속성을 사용하여 일반 텍스트 형식으로 내보낼 때 각 BiDi 실행 전에 양방향 표시를 추가할지 여부를 지정할 수 있습니다. Aspose.Words는 텍스트의 각 양방향 실행 앞에 유니코드 문자 'RIGHT-TO-LEFT MARK'(U+200F)를 삽입합니다. 이 옵션은 일반 텍스트 형식으로 내보낼 때 MS Word 파일 변환 대화 상자의 "양방향 표시 추가" 옵션에 해당합니다. MS Word에 아랍어나 히브리어 편집 언어가 추가된 경우에만 대화 상자에 나타납니다.

다음 코드 예제에서는 **AddBidiMarks** 속성을 사용하는 방법을 보여줍니다. 이 속성의 기본값은 *false*입니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## TXT를 로드하는 동안 목록 항목 인식

Aspose.Words는 문서 개체 모델의 목록 번호 또는 일반 텍스트로 텍스트 파일의 목록 항목을 가져올 수 있습니다. [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) 속성을 사용하면 일반 텍스트 형식에서 문서를 가져올 때 번호가 매겨진 목록 항목을 인식하는 방법을 지정할 수 있습니다

* 이 옵션이 *true*로 설정된 경우 공백은 목록 번호 구분 기호로도 사용됩니다. 아랍어 스타일 번호 매기기(1., 1.1.2.)에 대한 목록 인식 알고리즘은 공백과 점(".") 기호를 모두 사용합니다.

* 이 옵션이 *false*로 설정된 경우 목록 인식 알고리즘은 목록 번호가 점, 오른쪽 대괄호 또는 글머리 기호 기호(예: "•", "*", "-" 또는 "o")로 끝나는 경우 목록 단락을 감지합니다.

다음 코드 예제에서는 이 속성을 사용하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## TXT를 로드하는 동안 선행 및 후행 공백 처리

TXT 파일을 로드하는 동안 선행 및 후행 공백을 처리하는 방법을 제어할 수 있습니다. 선행 공백은 잘라내거나 유지하거나 들여쓰기로 변환할 수 있으며 후행 공백은 잘라내거나 보존할 수 있습니다.

다음 코드 예제에서는 TXT 파일을 가져오는 동안 선행 및 후행 공백을 자르는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## 문서 텍스트 방향 감지

Aspose.Words는 문서의 텍스트 방향(RTL/LTR)을 감지하기 위해 [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) 클래스에 [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) 속성을 제공합니다. 이 속성은 [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) 열거형에 제공된 문서 텍스트 방향을 설정하거나 가져옵니다. 기본값은 *right*에 남아 있습니다.

다음 코드 예제에서는 TXT 파일을 가져오는 동안 문서의 텍스트 방향을 감지하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## 출력 TXT의 머리글 및 바닥글 내보내기

출력 TXT 문서에서 머리글과 바닥글을 내보내려면 [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) 속성을 사용할 수 있습니다. 이 속성은 머리글과 바닥글을 일반 텍스트 형식으로 내보내는 방법을 지정합니다.

다음 코드 예제에서는 머리글과 바닥글을 일반 텍스트 형식으로 내보내는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## 출력 TXT의 목록 들여쓰기 내보내기

Aspose.Words는 일반 텍스트 형식으로 내보내는 동안 목록 수준을 들여쓰는 방법을 지정할 수 있는 [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) 클래스를 도입했습니다. [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/)로 작업하는 동안 목록 수준 들여쓰기에 사용할 문자를 지정하고 목록 수준 하나당 들여쓰기로 사용할 문자 수를 지정하는 개수를 지정하기 위해 [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) 속성이 제공됩니다.

문자 속성의 기본값은 들여쓰기가 없음을 나타내는 '\0'입니다. count 속성의 경우 기본값은 들여쓰기가 없음을 의미하는 0입니다.

### 탭 문자 사용

다음 코드 예제에서는 탭 문자를 사용하여 목록 수준을 내보내는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### 공백 문자 사용

다음 코드 예제에서는 공백 문자를 사용하여 목록 수준을 내보내는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### 기본 들여쓰기 사용

다음 코드 예제에서는 기본 들여쓰기를 사용하여 목록 수준을 내보내는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
