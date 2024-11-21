---
title: 현장 소개 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 회사소개
linktitle: 회사소개
description: "Fields 기능에 대한 세부 사항, 필드 코드 및 필드 결과에 설명 Aspose.Words 제품정보 Java·"
type: docs
weight: 10
url: /ko/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words 서버 측 처리를 위해 디자인된 종류 도서관입니다 Microsoft Word 문서 및 지원 필드 다음 방법:

- 문서의 모든 필드는 개방 / 저장 및 변환 중에 보존됩니다
- 대부분의 필드의 결과를 업데이트 할 수 있습니다

이 문서에서, 우리는 필드 구조에 대해 더 많은 것을 배울 것입니다, 지원되는 필드 Aspose.Words, 이러한 분야에서 일하는 내용.

## 현장 구조

A 필드는 다음과 같습니다

- - - 필드 시작 및 분리기 노드는 필드 코드 (일반적으로 일반 텍스트)를 만드는 콘텐츠를 무시하는 데 사용됩니다.
- 필드 분리기 및 필드 엔드는 필드 결과를 우회합니다. 텍스트의 실행에서 테이블에 이르기까지 다양한 유형의 콘텐츠를 만들 수 있습니다.
- 일부 필드는 전체 콘텐츠가 필드 코드를 구성하는 구분이 없습니다.
- - - 필드 코드는 필드의 동작을 정의하고 필드 식별자 및 필드 이름과 스위치와 같은 다른 매개 변수를 구성합니다.
- - - 필드 결과는 필드의 가장 최근 평가를 포함합니다. 이 값은 필드 결과에 저장되며 사용자가 표시된 것입니다. 일부 필드는 필드 결과가 없으므로 문서에서 아무것도 표시하지 않을 수 있습니다. 마찬가지로 일부 필드는 아직 업데이트되지 않을 수 있으므로 필드 결과가 없습니다.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

필드 코드가 저장되는 내용 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) 노드 사이 [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) · [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)· 결과가 저장됩니다. **FieldSeparator** · [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) 노드는 다양한 종류의 콘텐츠를 만들 수 있습니다. 일반적으로 필드 결과에는 Run 노드로 구성 된 텍스트가 포함되어 있지만 FieldEnd 노드가 완전히 다른 단락에 위치하고 있으므로 필드 결과가 구성되었습니다. [문서의 노드의 논리 수준](/words/ko/java/logical-levels-of-nodes-in-a-document/) · **Table** · **Paragraph** 노드 뿐만 아니라.

여기에 필드가 저장되는 방법의 전망은 Aspose.Words "*DocumentExplorer"* 예제를 사용하여 찾을 수 있습니다 [뚱 베어](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer)·

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## 제품정보 Aspose.Words Document Object Model (주)DOM·

문서가 로드될 때 <span notrans="<span notrans=" Aspose.Words"=""></span>· 문서의 필드가 로드됩니다. Aspose.Words Document Object Model 별도의 구성 요소 (nodes)의 집합으로. 단일 필드는 컬렉션으로로드됩니다. **FieldStart**, **FieldSeparator** · **FieldEnd** 이 노드의 내용과 함께 노드. 필드가 필드가 없다면 그 결과가 없을 것 **FieldSeparator** 노드. 이 노드의 모든 것은 항상 인라인으로 발견됩니다 (아이들처럼) [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) 또는 [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)·

내 계정 Aspose.Words 각각 **FieldXXX** 노드 derives에서 [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/)· 이 클래스는 지정된 노드에 의해 나타내는 필드의 유형을 확인하는 속성을 제공합니다. [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) 호텔 위치 예를 들어 `FieldType.FieldMergeField` 문서에 병합 필드를 나타냅니다.

{{% alert color="primary" %}}

Word 문서에 존재하지 않는 특정 필드가 있습니다. Aspose.Words 이름 * **FieldXXX** 노드. 예를 들어, `LINK` 분야 및 `INCLUDEPICTURE` 분야는 수입됩니다 Aspose.Words 으로 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 이름 * 이 객체는 이 필드에 저장된 이미지 데이터로 작업할 수 있는 속성을 제공합니다. 수입하기 `INCLUDEPICTURE` 본문 바로가기 **FieldXXX** 노드 [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) 옵션은 지정해야 합니다. **true**·

형태 분야는 또한 수입됩니다 Aspose.Words 자신의 특별한 클래스로. 더 보기 [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) 클래스는 Word 문서의 양식 필드를 나타내며, 양식 필드에 특정한 추가 방법을 제공합니다.

{{% /alert %}}

## 지원되는 분야

다음 필드의 계산은 현재 버전에서 지원됩니다. Aspose.Words::

- = (공식)
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
- - - `TOC` (TOT 및 TOF 포함)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Sophisticated 필드 패링

Aspose.Words 다음 방법 Microsoft Word 프로세스 필드와 결과가 올바르게 핸들:

- 배열된 분야:
  `IF { =OR({ `COM뚱 베어` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- 필드 인수는 배열된 필드의 결과일 수 있습니다
- 필드는 필드 코드뿐만 아니라 필드 결과에서 배열 할 수 있습니다
- 공간 / 공간, 인용 / 인용문, 탈출 문자 등:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 여러 단락을 맞은 필드

### 공식 분야

Aspose.Words 공식 엔진의 매우 심각한 구현을 제공하며 다음을 지원합니다

- arithmetic 및 논리 연산자:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 기능:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- 책갈피에 참고:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- 번호 배열 스위치:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

표현의 뒤에 오는 기능은 지원됩니다: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE·

### `IF` · `COMPARE` 제품정보

그냥 몇 가지 `IF` 그 표현 Aspose.Words 쉽게 계산할 수 있습니다 당신에게 강력한이 기능의 아이디어를 제공:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` · `TIME` 제품정보

Aspose.Words 모든 날짜 및 시간 형식 전환을 지원 Microsoft Word, 몇몇 예는:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge 제품정보

Aspose.Words 복잡성에 제한이 없습니다. mail merge 문서의 필드와 배열 지원 `IF` 그리고 수식 필드를 계산할 수도 있습니다.

몇 가지 예 mail merge 분야의 Aspose.Words 지원:

- - - Mail merge 공급 능력:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 공식에 배열된 병합 분야:
  `IF { `채용정보` Value1 } >= { `채용정보` Value2 } True False`
- 병합 필드의 이름을 runtime에서 계산:
  `MERGEFIELD { `이름 *` { `채용정보` Value1 } >= { `채용정보` Value2 } FirstName"LastName" }`
- 상태는 데이터 소스의 다음 레코드로 이동:
  `NEXTIF { `채용정보` Value1 } <= { =IF(-2.45 >= 6*{ `채용정보` Value2 }, 2, -.45) }`

### 형식 스위치

문서의 필드는 결과 값이 포맷되어야 하는지를 지정하는 스위치를 포맷 할 수 있습니다. Aspose.Words 뒤에 오는 체재 스위치를 지원합니다:

- @ - 날짜 및 시간 형식
- \\# – 번호 포맷
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ 회사 소개
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ 더 보기
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ 기타
- \\\\\\\* CHARFORMAT - 필드 코드의 첫 문자에 따라 형식 결과
- \\\\\\\* MERGEFORMAT - 오래된 결과가 형식화되는 방법에 따라 형식의 결과

### Date 필드에 형식 번호

시간: Aspose.Words 필드 결과를 계산, 그것은 종종 문자열을 숫자 또는 날짜 값으로 파싱하고 문자열로 다시 포맷해야합니다. 기본 정보 Aspose.Words 현재 스레드 문화를 사용하여 필드 업데이트 중 필드 값을 계산하고 형식화 할 수 있습니다. mail merge· 또한 옵션이 있습니다. [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) 필드 업데이 트 %에서 더 많은 제어 할 수있는 클래스

* 기본적으로 [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) 숙박 시설 [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) 현재 스레드 문화를 사용하는 형식 필드
* 이 속성은 설정할 수 있습니다. [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) 그래서 필드의 필드 코드에서 설정 언어 대신 포맷에 사용됩니다

### 현재 스레드의 문화를 사용하여 포맷

필드 계산 중에 사용되는 문화를 제어하려면, 그냥 설정 **CurrentCulture** invoking 필드 계산 전에 선택의 문화에 재산.

다음 코드 예제는 업데이트 중 형식 필드에 사용되는 문화를 변경하는 방법을 보여줍니다

EXAMPLE (Public wrapper CurrentThreadSettings.getLocale() 및 setLocale() 대신 개인의 `Thread.CurrentThread`.현재Culture

현재 문화를 사용하여 필드를 포맷 할 수 있도록 시스템을 쉽게 제어하고 문서의 모든 필드가 현장 업데이트 중에 포맷되는 방법을 지속적으로 제어 할 수 있습니다.

### 문서의 문화를 활용

다른 손에, Microsoft Word 각 개별 필드는 필드에서 발견 된 텍스트의 언어를 기반으로 (특히, 필드 코드에서 실행). 이 필드 업데이트 중 때때로 원하는 행동이 될 수 있습니다, 예를 들어, 많은 다른 언어로 만든 콘텐츠가 포함 된 글로벌화 된 문서를 가지고 각 필드는 텍스트에서 사용 된 Locale를 존중하기 위해. Aspose.Words 이 기능을 지원합니다.

더 보기 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 클래스는 [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) 문서 내에서 필드를 업데이트하는 방법을 제어하는 데 사용할 수있는 구성원이 포함되어 있습니다.

다음 코드 예제는 필드 업데이트 중 날짜 형식에 사용되는 문화를 지정하는 방법을 보여줍니다. mail merge 에서 선택:

계정 만들기
