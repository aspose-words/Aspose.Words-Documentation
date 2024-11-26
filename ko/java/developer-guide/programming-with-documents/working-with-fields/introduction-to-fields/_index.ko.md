---
title: Java의 필드 소개
second_title: Aspose.WordsJava
articleTitle: 분야 소개
linktitle: 분야 소개
description: "필드는Java에 대해Aspose.Words에 설명된 세부 사항,필드 코드 및 필드 결과에 표시됩니다."
type: docs
weight: 10
url: /ko/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words는Microsoft Word문서의 서버 쪽 처리를 위해 설계된 클래스 라이브러리이며 다음과 같은 방법으로 필드를 지원합니다:

- 문서의 모든 필드는 열기/저장 및 변환 중에 보존됩니다
- 그것은 대부분의 필드의 결과를 업데이트 할 수 있습니다

이 문서에서는 필드 구조,Aspose.Words에서 지원되는 필드 및 이러한 필드 작업에 대한 세부 정보에 대해 자세히 설명합니다.

## 필드 구조

필드는:

- 필드 시작 및 분리 노드는 필드 코드를 구성하는 내용을 포괄하는 데 사용됩니다(일반적으로 일반 텍스트로).
- 필드 구분 기호 및 필드 끝은 필드 결과를 포함합니다. 이것은 텍스트의 실행에서 단락,테이블에 이르기까지 다양한 유형의 콘텐츠로 구성 될 수 있습니다.
- 일부 필드에는 구분 기호가 없을 수 있으며 이는 전체 콘텐츠가 필드 코드를 구성한다는 것을 의미합니다.
- 필드 코드는 필드의 동작을 정의하며 필드 식별자와 종종 필드 이름 및 스위치와 같은 다른 매개 변수로 구성됩니다.
- 필드 결과는 필드의 가장 최근의 평가를 포함합니다. 이 값은 필드 결과에 저장되며 사용자에게 표시되는 값입니다. 일부 필드에는 필드 결과가 없을 수 있으므로 문서에 아무 것도 표시되지 않습니다. 마찬가지로 일부 필드는 아직 업데이트되지 않을 수 있으므로 필드 결과가 없습니다.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

필드 코드를 구성하는 콘텐츠는[FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/)과[FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)사이의[Run](https://reference.aspose.com/words/java/com.aspose.words/run/)노드로 저장됩니다. 필드 결과는**FieldSeparator**와[FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)노드 사이에 저장되며 다양한 유형의 콘텐츠로 구성될 수 있습니다. 일반적으로 필드 결과에는 실행 노드로 구성된 텍스트만 포함되어 있지만FieldEnd노드가 완전히 다른 단락에 위치하여 필드 결과가 다음과 같이 구성될 수 있습니다 [블록 레벨 노드](/words/java/logical-levels-of-nodes-in-a-document/) **Table**및**Paragraph**노드도 마찬가지입니다.

다음은"*DocumentExplorer"*예제"를 사용하여Aspose.Words에 필드가 어떻게 저장되는지에 대한 뷰입니다. [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Aspose.Words문서 개체 모델(DOM)의 필드

문서가Aspose.Words에 로드되면 문서의 필드가Aspose.Words문서 개체 모델에 별도의 구성 요소(노드)의 집합으로 로드됩니다. 단일 필드는 이러한 노드 사이의 콘텐츠와 함께**FieldStart**,**FieldSeparator**및**FieldEnd**노드의 컬렉션으로 로드됩니다. 필드에 필드 결과가 없으면**FieldSeparator**노드가 없습니다. 이 모든 노드는 항상[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)또는[SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)의 자식으로 인라인으로 발견됩니다.

Aspose.Words에서**FieldXXX**의 각 노드는[FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/)에서 파생됩니다. 이 클래스는[FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/)속성을 통해 지정된 노드가 나타내는 필드 유형을 확인하는 속성을 제공합니다. 예를 들어`FieldType.FieldMergeField`는 문서의 병합 필드를 나타냅니다.

{{% alert color="primary" %}}

단어 문서에는**FieldXXX**노드의 컬렉션으로Aspose.Words로 가져오지 않는 특정 필드가 있습니다. 예를 들어,`LINK`필드와`INCLUDEPICTURE`필드는Aspose.Words에[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)개체로 가져옵니다. 이 개체는 이러한 필드에 일반적으로 저장된 이미지 데이터와 함께 작동하도록 속성을 제공합니다. `INCLUDEPICTURE`필드를**FieldXXX**노드로 가져오려면[PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField)옵션을**true**로 지정해야 합니다.

양식 필드는 또한Aspose.Words에 고유 한 특수 클래스로 가져옵니다. [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/)클래스는 단어 문서의 양식 필드를 나타내며 양식 필드에 특정한 추가 메서드를 제공합니다.

{{% /alert %}}

## 지원되는 필드

다음 필드의 계산은Aspose.Words의 현재 버전에서 지원됩니다:

- =(공식)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (including TOT and TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## 정교한 필드 구문 분석

Aspose.Words는Microsoft Word이 필드를 처리하는 방식을 따르고 결과적으로 올바르게 처리합니다:

- 중첩 필드:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- 필드 인수는 중첩된 필드의 결과일 수 있습니다
- 필드는 필드 결과뿐만 아니라 필드 코드 내에 중첩될 수 있습니다
- 공백/공백 없음,따옴표/따옴표 없음,필드의 이스케이프 문자 등:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 여러 단락에 걸쳐 있는 필드

### 수식 필드

Aspose.Words은 수식 엔진의 매우 심각한 구현을 제공하며 다음을 지원합니다.:

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

Aspose.Words이 쉽게 계산할 수 있는`IF`식 중 일부만 있으면 이 기능이 얼마나 강력한지에 대한 아이디어를 얻을 수 있습니다:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.WordsMicrosoft Word에서 사용할 수 있는 모든 날짜 및 시간 서식 스위치를 지원합니다.:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge필드

Aspose.Words은 문서에서Mail Merge필드의 복잡성에 제한을 두지 않으며 중첩`IF`및 수식 필드를 지원하며 수식을 사용하여 병합 필드의 이름을 계산할 수도 있습니다.

Aspose.Words이 지원하는Mail Merge필드의 몇 가지 예:

- Mail merge필드 스위치:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 수식에 중첩된 병합 필드:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- 런타임에 병합 필드 이름 계산:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- 데이터 원본의 다음 레코드로 조건부 이동:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### 포맷 스위치

문서의 필드에는 결과 값의 형식을 지정하는 형식 지정 스위치가 있을 수 있습니다. Aspose.Words은 다음 형식 스위치를 지원합니다:

- @-날짜 및 시간 서식 지정
- \\\#-숫자 서식 지정
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT–필드 코드의 첫 번째 문자에 따라 결과 서식 지정
- \\\\\\\\* MERGEFORMAT–이전 결과의 포맷 방식에 따라 결과 포맷

### 필드의 날짜 및 숫자 서식 지정

Aspose.Words이 필드 결과를 계산할 때 문자열을 숫자 또는 날짜 값으로 구문 분석하고 다시 형식을 지정해야 하는 경우가 많습니다.string.By 기본Aspose.Words은 현재 스레드 문화권을 사용하여 필드 업데이트 및mail merge동안 필드 값을 계산할 때 구문 분석 및 서식을 수행합니다. 필드 업데이트 중에 사용되는 문화권을 추가로 제어할 수 있는[FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/)클래스의 형태로 제공되는 옵션도 있습니다%

* 기본적으로[FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource)속성은 현재 스레드 문화권을 사용하여 필드의 형식을 지정하는[CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD)로 설정됩니다
* 이 속성은[FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE)으로 설정할 수 있으므로 필드의 필드 코드에서 설정된 언어가 대신 서식 지정에 사용됩니다

### 현재 스레드의 문화권을 사용하여 서식 지정

필드 계산 중에 사용되는 문화권을 제어하려면 필드 계산을 호출하기 전에**CurrentCulture**속성을 원하는 문화권으로 설정하기만 하면 됩니다.

다음 코드 예제에서는 업데이트하는 동안 필드 서식 지정에 사용되는 문화권을 변경하는 방법을 보여 줍니다:

EXAMPLE(공용 래퍼CurrentThreadSettings를 사용합니다.getLocale()및setLocale()대신 개인`Thread.CurrentThread`.CurrentCulture)

현재 문화권을 사용하여 필드 서식을 지정하면 시스템이 필드 업데이트 중에 문서의 모든 필드의 서식을 지정하는 방법을 쉽고 일관되게 제어할 수 있습니다.

### 문서의 문화권을 사용하여 서식 지정

반면에Microsoft Word은 필드에서 찾은 텍스트의 언어(특히 필드 코드에서 실행)를 기반으로 각 개별 필드의 형식을 지정합니다. 때로는 필드 업데이트 중에 원하는 동작이 될 수 있습니다.예를 들어 여러 다른 언어로 구성된 콘텐츠가 포함 된 문서를 세계화하고 각 필드가 텍스트에서 사용 된 로캘을 존중하려는 경우. Aspose.Words도 이 기능을 지원합니다.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)클래스는 문서 내에서 필드가 업데이트되는 방식을 제어하는 데 사용할 수 있는 멤버를 포함하는[FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions)속성을 제공합니다.

다음 코드 예제에서는 필드 업데이트 및Mail Merge중 날짜 서식에 사용되는 문화권이 선택되는 위치를 지정하는 방법을 보여 줍니다:

EXAMPLE
