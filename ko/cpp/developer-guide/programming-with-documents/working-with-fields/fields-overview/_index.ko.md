---
title: 필드 개요 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 필드 개요
linktitle: 필드 개요
description: "필드는 세부 사항,필드 코드 및 필드 결과에 설명되어 있습니다 Aspose.Words 에 대한 C++."
type: docs
weight: 10
url: /ko/cpp/fields-overview/
---

Aspose.Words 서버 측 처리를 위해 설계된 클래스 라이브러리입니다. Microsoft Word 다음과 같은 방법으로 문서 및 지원 필드:

- 문서의 모든 필드는 열기/저장 및 변환 중에 보존됩니다
- 그것은 대부분의 필드의 결과를 업데이트 할 수 있습니다

이 글에서,우리는 필드 구조에 대한 자세한 내용은,에서 지원되는 필드 Aspose.Words,그리고 그러한 분야에 대한 세부 사항.

## 필드 구조

필드는:

- 필드 시작 및 분리 노드는 필드 코드를 구성하는 내용을 포괄하는 데 사용됩니다(일반적으로 일반 텍스트로).
- 필드 구분 기호 및 필드 끝은 필드 결과를 포함합니다. 이것은 텍스트의 실행에서 단락,테이블에 이르기까지 다양한 유형의 콘텐츠로 구성 될 수 있습니다.
- 일부 필드에는 구분 기호가 없을 수 있으며 이는 전체 콘텐츠가 필드 코드를 구성한다는 것을 의미합니다.
- 필드 코드는 필드의 동작을 정의하며 필드 식별자와 종종 필드 이름 및 스위치와 같은 다른 매개 변수로 구성됩니다.
- 필드 결과는 필드의 가장 최근의 평가를 포함합니다. 이 값은 필드 결과에 저장되며 사용자에게 표시되는 값입니다. 일부 필드에는 필드 결과가 없을 수 있으므로 문서에 아무 것도 표시되지 않습니다. 마찬가지로 일부 필드는 아직 업데이트되지 않을 수 있으므로 필드 결과가 없습니다.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

필드 코드를 구성하는 콘텐츠는 다음과 같이 저장됩니다 [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) 사이의 노드 [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) 그리고 [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). 필드 결과는 **FieldSeparator** 그리고 [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) 노드는 다양한 유형의 콘텐츠로 구성 될 수 있습니다. 일반적으로 필드 결과에는 **Run** 노드,그러나 그것은 가능 **FieldEnd** 노드는 완전히 다른 단락에 위치하고,따라서 필드 결과를 구성 [블록 레벨 노드](/words/cpp/logical-levels-of-nodes-in-a-document/) 같은 **Table** 그리고 **Paragraph** 노드들도 마찬가지다.

다음은 필드가 저장되는 방식에 대한 뷰입니다 Aspose.Words "를 사용하여*DocumentExplorer"* 예.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## 의 필드 Aspose.Words 문서 개체 모델(DOM)

문서를 로드할 때 Aspose.Words,문서의 필드는 [Aspose.Words 문서 개체 모델](/words/cpp/aspose-words-document-object-model/) 별도의 구성 요소(노드)의 집합으로. 단일 필드는 다음과 같은 집합으로 로드됩니다 **FieldStart**, **FieldSeparator** 그리고 **FieldEnd** 이 노드 사이의 콘텐츠와 함께 노드. 만약 필드에 필드 결과가 없다면, **FieldSeparator** 노드 이 모든 노드는 항상 인라인으로 발견됩니다. [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) 또는 [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

그 안에 Aspose.Words 각 **FieldXXX** 노드는 [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). 이 클래스는 지정된 노드가 나타내는 필드 유형을 확인하는 속성을 제공합니다. [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/) 재산. 예를 들어 **FieldType.FieldMergeField** 문서의 병합 필드를 나타냅니다.

{{% alert color="primary" %}}

단어 문서에 있는 특정 필드로 가져오지 않는 몇 가지 특정 필드가 있습니다 Aspose.Words 의 컬렉션으로 **FieldXXX** 노드 예를 들어, `LINK` 필드 및 `INCLUDEPICTURE` 필드는 다음으로 가져옵니다 Aspose.Words 그 `Shape` 객체 이 개체는 이러한 필드에 일반적으로 저장된 이미지 데이터와 함께 작동하도록 속성을 제공합니다. 가져오기 `INCLUDEPICTURE` 필드 **FieldXXX** 노드 [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) 옵션은 다음과 같이 지정해야 합니다 **true**.

양식 필드는 또한 Aspose.Words 자신의 특별한 클래스로. 그 [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) 클래스는 단어 문서의 양식 필드를 나타내며 양식 필드에 특정한 추가 메서드를 제공합니다.

{{% /alert %}}

## 지원되는 필드

다음 필드의 계산은 현재 버전에서 지원됩니다 Aspose.Words:

- =(공식)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## 정교한 필드 구문 분석

Aspose.Words 길을 따라 Microsoft Word 필드를 처리하고 그 결과 올바르게 처리합니다.:

- 중첩 필드:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- 필드 인수는 중첩된 필드의 결과일 수 있습니다
- 필드는 필드 결과뿐만 아니라 필드 코드 내에 중첩될 수 있습니다
- 공백/공백 없음,따옴표/따옴표 없음,필드의 이스케이프 문자 등:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 여러 단락에 걸쳐 있는 필드

### 수식 필드

Aspose.Words 공식 엔진의 매우 심각한 구현을 제공하고 다음을 지원합니다:

- 산술 및 논리 연산자:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 기능:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- 책갈피에 대한 참조:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- 숫자 서식 스위치:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

식의 다음 함수가 지원됩니다: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

그냥 일부 `IF` 그 표현 Aspose.Words 이 기능이 얼마나 강력한지에 대한 아이디어를 쉽게 계산할 수 있습니다:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words 에서 사용할 수있는 모든 날짜 및 시간 서식 스위치를 지원합니다 Microsoft Word,몇 가지 예는:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge 필드

Aspose.Words 의 복잡성에 제한을 부과하지 않습니다 mail merge 문서의 필드 및 중첩 지원 `IF` 수식을 사용하여 병합 필드의 이름을 계산할 수도 있습니다.

몇 가지 예 mail merge 그 분야 Aspose.Words 지원:

- Mail merge 필드 스위치:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 수식에 중첩된 병합 필드:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- 런타임에 병합 필드 이름 계산:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- 데이터 원본의 다음 레코드로 조건부 이동:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### 포맷 스위치

문서의 필드에는 결과 값의 형식을 지정하는 형식 지정 스위치가 있을 수 있습니다. Aspose.Words 다음 형식 스위치를 지원합니다:

- @-날짜 및 시간 서식 지정
- \\\# -숫자 서식
- \\\\\\\\* 모자
- \\\\\\\\* FirstCap
- \\\\\\\\* 낮은
- \\\\\\\\* 어퍼
- \\\\\\\\* CHARFORMAT -필드 코드의 첫 번째 문자에 따라 결과 형식 지정
- \\\\\\\\* MERGEFORMAT -이전 결과를 포맷하는 방법에 따라 포맷 결과

### 필드의 날짜 및 숫자 서식 지정

언제 Aspose.Words 필드 결과를 계산,그것은 종종 숫자 또는 날짜 값으로 문자열을 구문 분석하고 또한 다시 포맷해야합니다 string.By 기본값 Aspose.Words 현재 스레드 문화권을 사용하여 필드 업데이트 중 필드 값을 계산할 때 구문 분석 및 서식을 수행합니다. mail merge. 또한 다음과 같은 형태로 제공되는 옵션도 있습니다. [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) 필드 업데이트 중에 사용되는 문화권을 추가로 제어할 수 있는 클래스입니다.

- 기본적으로 [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) 속성이 설정됨 [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) 현재 스레드 문화권을 사용하여 필드 형식을 지정하는
- 이 속성은 다음과 같이 설정할 수 있습니다 [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) 따라서 필드의 필드 코드에서 설정된 언어는 대신 포맷을 위해 사용됩니다

### 현재 스레드의 문화권을 사용하여 서식 지정

필드 계산 중에 사용되는 문화권을 제어하려면 **CurrentCulture** 필드 계산을 호출하기 전에 선택한 문화권에 대한 속성입니다.

다음 코드 예제에서는 업데이트하는 동안 필드 서식 지정에 사용되는 문화권을 변경하는 방법을 보여 줍니다:

EXAMPLE

현재 문화권을 사용하여 필드 서식을 지정하면 시스템이 필드 업데이트 중에 문서의 모든 필드의 서식을 지정하는 방법을 쉽고 일관되게 제어할 수 있습니다.

### 문서의 문화권을 사용하여 서식 지정

다른 한편으로는, Microsoft Word 필드에 있는 텍스트의 언어(특히 필드 코드에서 실행)를 기반으로 각 개별 필드의 형식을 지정합니다. 때로는 필드 업데이트 중에 원하는 동작이 될 수 있습니다.예를 들어 여러 다른 언어로 구성된 콘텐츠가 포함 된 문서를 세계화하고 각 필드가 텍스트에서 사용 된 로캘을 존중하려는 경우. Aspose.Words 또한이 기능을 지원합니다.

그 [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) 클래스는 [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) 문서 내에서 필드가 업데이트되는 방법을 제어하는 데 사용할 수 있는 멤버가 포함된 속성입니다.

다음 코드 예제에서는 필드 업데이트 중 날짜 서식 지정에 사용되는 문화권을 지정하는 방법을 보여 줍니다. mail merge 에서 선택됩니다.:

EXAMPLE