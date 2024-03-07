---
title: C#의 필드 개요
second_title: .NET용 Aspose.Words
articleTitle: 필드 개요
linktitle: 필드 개요
description: ".NET용 Aspose.Words에 설명된 세부 정보, 필드 코드 및 필드 결과의 필드 기능입니다."
type: docs
weight: 10
url: /ko/net/fields-overview/
---

Aspose.Words는 Microsoft Word 문서의 서버측 처리를 위해 설계된 클래스 라이브러리이며 다음과 같은 방식으로 필드를 지원합니다

- 문서의 모든 필드는 열기/저장 및 변환 중에 유지됩니다
- 대부분의 필드에 대한 결과 업데이트가 가능합니다

이 기사에서는 필드 구조, Aspose.Words에서 지원되는 필드 및 해당 필드 작업에 대한 세부 사항에 대해 자세히 알아봅니다.

## 필드 구조

필드는 다음으로 구성됩니다

- 필드 시작 및 구분 노드는 필드 코드(일반적으로 일반 텍스트)를 구성하는 콘텐츠를 포함하는 데 사용됩니다.
- 필드 구분 기호와 필드 끝은 필드 결과를 포함합니다. 이는 일련의 텍스트부터 단락, 표에 이르기까지 다양한 유형의 콘텐츠로 구성될 수 있습니다.
- 일부 필드에는 구분 기호가 없을 수 있습니다. 이는 전체 내용이 필드 코드를 구성한다는 의미입니다.
- 필드 코드는 필드의 동작을 정의하며 필드 식별자와 필드 이름 및 스위치와 같은 기타 매개변수로 구성됩니다.
- 현장 결과에는 해당 분야의 가장 최근 평가가 포함됩니다. 이 값은 필드 결과에 저장되며 사용자에게 표시됩니다. 일부 필드에는 필드 결과가 없을 수 있으므로 문서에 아무 것도 표시되지 않습니다. 마찬가지로 일부 필드는 아직 업데이트되지 않을 수 있으므로 필드 결과도 없습니다.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

필드 코드를 구성하는 콘텐츠는 [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/)와 [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) 사이의 [Run](https://reference.aspose.com/words/net/aspose.words/run/) 노드로 저장됩니다. 필드 결과는 **FieldSeparator**와 [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) 노드 사이에 저장되며 다양한 유형의 콘텐츠로 구성될 수 있습니다. 일반적으로 필드 결과에는 **Run** 노드로 구성된 텍스트만 포함되지만 **FieldEnd** 노드가 완전히 다른 단락에 위치할 수 있으므로 필드 결과가 **Table** 및 **Paragraph** 노드와 같은 [문서에 있는 노드의 논리적 수준](/words/ko/net/logical-levels-of-nodes-in-a-document/)로 구성될 수도 있습니다.

다음은 [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)에서 찾을 수 있는 "*DocumentExplorer"* 예제를 사용하여 Aspose.Words에 필드가 저장되는 방법을 보여줍니다.

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Aspose.Words Document Object Model(DOM)의 필드

문서가 Aspose.Words에 로드되면 문서의 필드가 별도의 구성 요소(노드) 집합으로 [Aspose.Words Document Object Model (DOM)](/words/ko/net/aspose-words-document-object-model/)에 로드됩니다. 단일 필드는 이러한 노드 사이의 콘텐츠와 함께 **FieldStart**, **FieldSeparator** 및 **FieldEnd** 노드의 컬렉션으로 로드됩니다. 필드에 필드 결과가 없으면 **FieldSeparator** 노드가 없습니다. 이러한 모든 노드는 항상 인라인([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 또는 [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/)의 하위 항목)으로 발견됩니다.

Aspose.Words에서 각 **FieldXXX** 노드는 [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/)에서 파생됩니다. 이 클래스는 [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) 속성을 통해 지정된 노드가 나타내는 필드 유형을 확인하는 속성을 제공합니다. 예를 들어 **FieldType.FieldMergeField**은 문서의 병합 필드를 나타냅니다.

{{% alert color="primary" %}}

**FieldXXX** 노드 모음으로 Aspose.Words로 가져오지 않는 Word 문서에 존재하는 일부 특정 필드가 있습니다. 예를 들어 `LINK` 필드와 `INCLUDEPICTURE` 필드는 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 개체로 Aspose.Words에 가져옵니다. 이 객체는 일반적으로 이러한 필드에 저장된 이미지 데이터로 작업하기 위한 속성을 제공합니다. `INCLUDEPICTURE` 필드를 **FieldXXX** 노드로 가져오려면 [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) 옵션을 **true**로 지정해야 합니다.

양식 필드도 고유한 특수 클래스로 Aspose.Words로 가져옵니다. [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) 클래스는 Word 문서의 양식 필드를 나타내며 양식 필드와 관련된 추가 메서드를 제공합니다.

{{% /alert %}}

## 지원되는 분야

현재 버전의 Aspose.Words에서는 다음 필드의 계산이 지원됩니다

- = (수식)
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
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## 정교한 필드 구문 분석

Aspose.Words는 Microsoft Word가 필드를 처리하는 방식을 따르며 결과적으로 다음을 올바르게 처리합니다

- 중첩된 필드:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- 필드 인수는 중첩된 필드의 결과일 수 있습니다
- 필드는 필드 코드뿐만 아니라 필드 결과에도 중첩될 수 있습니다
- 공백/공백 없음, 따옴표/따옴표 없음, 필드의 이스케이프 문자 등:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 여러 단락에 걸쳐 있는 필드

### 수식 필드

Aspose.Words는 수식 엔진의 매우 진지한 구현을 제공하며 다음을 지원합니다

- 산술 및 논리 연산자:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 기능:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- 북마크에 대한 참조:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- 숫자 형식 스위치:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

표현식에서 지원되는 함수는 `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE입니다.

### `IF` 및 `COMPARE` 필드

Aspose.Words가 쉽게 계산할 수 있는 `IF` 표현식 중 일부를 보면 이 기능이 얼마나 강력한지 알 수 있습니다

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` 및 `TIME` 필드

Aspose.Words는 Microsoft Word에서 사용할 수 있는 모든 날짜 및 시간 형식 스위치를 지원합니다. 몇 가지 예는 다음과 같습니다

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge 필드

Aspose.Words는 문서의 mail merge 필드 복잡성에 제한을 두지 않으며 중첩된 `IF` 및 수식 필드를 지원하며 수식을 사용하여 병합 필드의 이름을 계산할 수도 있습니다.

Aspose.Words가 지원하는 mail merge 필드의 몇 가지 예는 다음과 같습니다

- Mail merge 필드 스위치:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 수식의 중첩된 병합 필드:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- 런타임 시 병합 필드의 이름을 계산합니다
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- 데이터 소스의 다음 레코드로 조건부 이동:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### 포맷 스위치

문서의 필드에는 결과 값의 형식을 지정하는 형식 스위치가 있을 수 있습니다. Aspose.Words는 다음 형식 스위치를 지원합니다

- \\@ – 날짜 및 시간 형식
- \\\\# – 숫자 형식
- \\* 대문자
- \\* FirstCap
- \\\* 낮추다
- \\* 상위
- \\\\* CHARFORMAT – 필드 코드의 첫 번째 문자에 따라 결과 형식을 지정합니다
- \\* MERGEFORMAT – 이전 결과의 형식에 따라 결과 형식을 지정합니다

### 필드의 Date 및 숫자 형식

Aspose.Words가 필드 결과를 계산할 때 문자열을 숫자 또는 날짜 값으로 구문 분석하고 다시 문자열로 형식을 지정해야 하는 경우가 많습니다. 기본적으로 Aspose.Words는 필드 업데이트 중 필드 값을 계산할 때 현재 스레드 문화권을 사용하여 구문 분석 및 형식 지정을 수행합니다. 그리고 mail merge. 필드 업데이트 중에 사용되는 문화권을 추가로 제어할 수 있는 [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) 클래스 형식으로 제공되는 옵션도 있습니다.

- 기본적으로 [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) 속성은 현재 스레드 문화권을 사용하여 필드 형식을 지정하는 [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/)로 설정됩니다
- 이 속성을 [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/)로 설정할 수 있으므로 필드의 필드 코드에서 설정된 언어가 대신 서식 지정에 사용됩니다

### 현재 스레드의 문화권을 사용하여 서식 지정

필드 계산 중에 사용되는 문화권을 제어하려면 필드 계산을 호출하기 전에 **Thread.CurrentThread.CurrentCulture** 속성을 원하는 문화권으로 설정하면 됩니다.

다음 코드 예제에서는 업데이트 중에 필드 형식 지정에 사용되는 문화권을 변경하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

현재 문화권을 사용하여 필드 형식을 지정하면 시스템에서 필드 업데이트 중에 문서의 모든 필드 형식이 지정되는 방식을 쉽고 일관되게 제어할 수 있습니다.

### 문서의 문화를 사용하여 서식 지정

반면 Microsoft Word는 필드에 있는 텍스트의 언어(특히 필드 코드에서 실행)를 기반으로 각 개별 필드의 형식을 지정합니다. 때로는 필드 업데이트 중에 이것이 바람직한 동작일 수 있습니다. 예를 들어 다양한 언어로 구성된 콘텐츠가 포함된 세계화된 문서가 있고 각 필드가 텍스트에서 사용된 로케일을 따르도록 하려는 경우입니다. Aspose.Words도 이 기능을 지원합니다.

[Document](https://reference.aspose.com/words/net/aspose.words/document/) 클래스는 문서 내에서 필드가 업데이트되는 방식을 제어하는 데 사용할 수 있는 멤버가 포함된 [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) 속성을 제공합니다.

다음 코드 예제에서는 필드 업데이트 및 mail merge 중 날짜 형식 지정에 사용되는 문화권이 선택되는 위치를 지정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
