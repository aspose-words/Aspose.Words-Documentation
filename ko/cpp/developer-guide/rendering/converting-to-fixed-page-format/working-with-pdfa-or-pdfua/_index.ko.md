---
title: 함께 작업 PDF/A 또는 PDF/UA
second_title: Aspose.Words 에 대한 C++
articleTitle: 함께 작업 PDF/A 또는 PDF/UA
linktitle: 함께 작업 PDF/A 또는 PDF/UA
description: "로 변환 PDF/A-1, PDF/A-2, PDF/A-4 그리고 PDF/UA 사용 C++. 로 변환 할 때 몇 가지 문제가 있습니다 PDF/A 문서 및 Aspose.Words 에 대한 C++ 그들을 해결합니다."
type: docs
weight: 38
url: /ko/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A 그리고 PDF/UA 형식은 문서 내용과 관련된 몇 가지 요구 사항을 부과합니다. PDF. 이러한 요구 사항은 변환 전에 워드 문서 또는 PDF 완전히 생성하기 위하여 변환 후에 문서 PDF/A 그리고 PDF/UA 준수 문서.

기본 요구 사항은 PDF/A 그리고 PDF/UA 문서,우리는 다음 섹션에서 고려할 것입니다.

{{% alert color="primary" %}}

양해 바랍니다 PDF/UA-1 산출은 또한 일 것입니다 WCAG 2.0 그리고 섹션 508 준수.

{{% /alert %}}

## 문서 구조 요구 사항

현재 요구 사항은 PDF/A-1a, PDF/A-2a, PDF/A-4,그리고 PDF/UA-1 형식

방법에 대한 몇 가지 뉘앙스가 있습니다 Aspose.Words 다양한 변환 할 때 작동 PDF 형식 표준. 예상된 결과 얻으려면 그들은 고려 되어야 합니다.

{{% alert color="primary" %}}

논리 구조 요구 사항은 없습니다. PDF/A-4. 이런 이유로,우리는 고려하지 않습니다 PDF/A-4 이"문서 구조 요구 사항"섹션의 버전입니다.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>작성자가 적절한 검증 없이 자동화된 프로세스를 사용하여 구조적 또는 의미적 정보를 생성하는 것은 바람직하지 않습니다.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

아래의 하위 섹션은 방법의 뉘앙스를 설명합니다 Aspose.Words 다양한 변환 할 때 작동 PDF 솔루션에 대한 형식 표준 및 옵션.

### 구조 유형

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

A PDF 문서는 제목,단락,표 및 기타와 같은 일련의 블록입니다. 이 블록은 문서 구조를 강하게 또는 약하게 형성합니다.

강하고 약한 구조는 모두 PDF/A. Microsoft Word 문서는 설계상 구조가 약하고 Aspose.Words 생성 PDF 또한 소스 문서의 단락의 개요 수준에 따라 제목을 생성합니다.

에 대한 PDF/UA-1 약한 구조를 가진 문서,그것은 또한 제목 번호가 간격없이 순서대로 이동하는 것이 필요합니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>블록 레벨 구조는 두 가지 주요 패러다임 중 하나를 따를 수 있습니다.:</p>
    </ol>
      <li>강하게 구조화. 그룹화 요소는 자료의 조직을 기사,섹션,하위 섹션 등으로 반영하기 위해 필요한 만큼 많은 수준으로 중첩됩니다. 각 수준에서 그룹화 요소의 자식은 제목(시간),해당 수준의 콘텐츠에 대한 하나 이상의 단락(피)및 중첩 된 하위 섹션에 대한 하나 이상의 추가 그룹화 요소로 구성되어야합니다.</li>
      <li>약한 구조. 이 문서는 상대적으로 평평하며 모든 제목,단락 및 기타 항목과 함께 하나 또는 두 개의 그룹화 요소 수준 만있을 수 있습니다 BLSEs 그들의 직계 자녀들처럼 이 경우,재료의 조직은 논리적 구조에 반영되지 않는다;그러나,그것은 특정 수준의 제목의 사용에 의해 표현 될 수있다(H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>에 대한 PDF/UA-1 문서,사양은 표제 레벨에 관련된 추가를 포함(자세한 내용을 보려면 확장):</summary>
    <p></p>
    <p>문서 의미론이 헤더의 내림차순 시퀀스를 요구하는 경우,이러한 시퀀스는 엄격한 숫자 순서로 진행되어야 하며 중간 헤딩 레벨을 건너뛰지 않아야 합니다. H1 H2 H3 허용되지만, H1 H3 그렇지 않아요</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

올바른 출력을 보장하기 위해 사용자는 원본 문서 내용이 올바르게 구성되고 단락에 대한 개요 수준이 올바르게 지정되었는지 확인해야 합니다. 그렇지 않으면 사용자가 출력 구조를 확인하고 수정해야 합니다 PDF 문서

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 다음과 같은 예제를 볼 수 있습니다. Microsoft Word 또는 출력 구조 확인 및 수정 PDF 문서(자세한 내용을 보려면 확장).</summary>
    <p></p>
    <p>그 안에 Microsoft Word 기본"제목 엑스"스타일을 사용하여 개요 수준을 설정할 수 있습니다:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>또한"단락"창에서 개요 수준을 확인하거나 변경할 수 있습니다:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>애크로뱃에서는"태그"창에서 문서 구조를 확인하거나 변경할 수 있습니다:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### 콘텐츠를 아티팩트로 표시

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

현재, Aspose.Words 페이지 머리글과 바닥글,메모 구분 기호,반복되는 표 머리글 셀 및 장식 이미지를 아티팩트로 표시합니다. 이 목록은 향후 업데이트 될 수 있습니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>문서의 그래픽 객체는 두 가지 클래스로 나눌 수 있습니다:</p>
    </ol>
      <li>문서의 실제 내용은 문서의 작성자가 처음 도입한 자료를 나타내는 객체를 포함한다.</li>
      <li>아티팩트는 작가의 원래 콘텐츠의 일부가 아니라 페이지 매김,레이아웃 또는 기타 엄격하게 기계적 프로세스의 과정에서 적합한 작가에 의해 생성되는 그래픽 객체입니다.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

문서에 아티팩트로 표시해야 하는 다른 콘텐츠가 포함되어 있거나 아티팩트된 콘텐츠가 실제 콘텐츠인 경우 고객은 출력에서 이를 수정해야 합니다 PDF.

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 다음과 같은 예를 볼 수 있습니다. Microsoft Word 또는 출력에서 아티팩트로 모양을 표시 PDF 문서(자세한 내용을 보려면 확장).</summary>
    <p></p>
    <p>예를 들어,모양은 장식용으로 표시 될 수 있습니다. Microsoft Word,그래서 그들은 수출 될 것입니다 PDF 유물로서:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>출력에서 모양을 아티팩트로 표시할 수 있습니다 PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>또한 헤더의 텍스트를 아티팩트에서 출력의 실제 콘텐츠로 전환할 수 있습니다 PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### 자연어 사양

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

텍스트 언어는 Microsoft Word 문서. Aspose.Words 지정된 언어를 출력으로 내보냅니다 PDF 함께 *Lang* 표시된 콘텐츠 시퀀스 또는 스팬 태그에 연결된 속성-그것은 [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/) 재산. 일반적으로 텍스트를 통해 사용자가 입력 할 때 언어 문제가 없습니다 Microsoft Word. 하지만 텍스트가 자동으로 생성되면 언어가 부정확할 가능성이 있습니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>파일의 모든 텍스트에 대한 기본 자연어는 문서 카탈로그 사전의 랭 항목에 의해 지정되어야 합니다.</p>
    <p>기본 언어와 다른 파일 내의 모든 텍스트 콘텐츠는 `Lang` 표시된 콘텐츠 시퀀스에 첨부된 속성 또는 구조 요소 사전의 랭 항목에 의해 첨부된 속성입니다...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>추가로 PDF/UA-1,명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>자연어는 선언되어야 합니다.자연어의 변화는 선언되어야 합니다.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 예를 볼 수 있습니다:언어가 올바르게 지정되었는지 확인하는 방법(자세한 내용을 보려면 확장).</summary>
    <p></p>
    <p>사용자는 원본 단어 문서 중 하나에서 언어가 올바르게 지정되었는지 확인해야 합니다:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>또는 출력 PDF 문서:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### 그림 캡션

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word 문서는 사용자가 그림 캡션을 추가 할 수 있습니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>그림과 함께 있는 캡션에는 캡션 태그가 붙어 있어야 합니다.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

현재 Aspose.Words 캡션 태그로 캡션을 내보낼 수 없으므로 출력에 플래그가 지정되어야 합니다 PDF.

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 예를 볼 수 있습니다:캡션을 삽입하는 방법(세부 정보를 보려면 확장).</summary>
    <p></p>
    <p>그 안에 Microsoft Word,캡션은 컨텍스트 메뉴를 통해 삽입 될 수 있습니다:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>아크로바트에서는 캡션을 추가하거나 변경할 수 있습니다. `Object` 속성 대화 상자:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### 대체 설명

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word 문서를 통해 사용자는 이미지,도형 및 표에 대체 텍스트를 추가 할 수 있습니다. Aspose.Words 이러한 대체 텍스트를 출력으로 내보냅니다 PDF.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>모든 구조 요소는 자연적으로 미리 결정된 텍스트 아날로그를 가지고 있지 않습니다.예를 들어 이미지,공식 등.,구조 요소 사전의 대체 항목을 사용하여 대체 텍스트 설명을 제공해야합니다...</p>
    <p>NOTE 대체 설명은 텍스트 설명을 제공하여 그렇지 않으면 불투명한 비 텍스트 콘텐츠를 올바르게 해석하는 데 도움이됩니다.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 예제를 볼 수 있습니다:모든 요소에 대체 텍스트가 있는지 확인하는 방법(세부 정보를 보려면 확장).</summary>
    <p></p>
    <p>사용자는 모든 요소에 원본 단어 문서 중 하나에 대체 텍스트가 있는지 확인해야 합니다:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>또는 출력 PDF 문서:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### 하이퍼링크에 대한 대체 설명

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

이전 점 외에도, Microsoft Word 또한 문서를 통해 사용자는 하이퍼링크에 대체 텍스트를 추가할 수 있습니다. Aspose.Words 이러한 대체 텍스트를 출력으로 내보냅니다 PDF.

불행히도 모든 응용 프로그램에서 대체 설명을 설정할 수있는 것은 아닙니다. 예를 들어, Adobe Acrobat 현재 하이퍼 링크에 대한 이러한 설명을 설정할 수 없습니다. 하지만 Microsoft Word,다음과 같이 할 수 있습니다:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

때때로 목차에서 자동 생성된 하이퍼링크에 대한 대체 텍스트를 설정할 수 없는 문제가 있습니다.TOC)를 통해 Microsoft Word GUI. Aspose.Words 이러한 필드를 업데이트하고 자체적으로 링크를 생성 할 수 있습니다.

코드 예제를 따라 업데이트합니다 `TOC` 필드를 사용하여 Aspose.Words 문서 개체 모델(DOM):

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### 테이블 헤더

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

테이블 PDF/UA-1 문서에 머리글(열,행 또는 둘 다)이 있어야 합니다. PDF/A 추가 제한이 없는 표준 테이블 마크업만 필요합니다. 참고: Aspose.Words 표준 테이블 마크업을 자동으로 생성합니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>테이블에는 열 머리글,행 머리글 또는 둘 다를 포함 할 수 있습니다.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 예를 볼 수 있습니다:테이블 헤더를 설정하는 방법(세부 정보를 보려면 확장).</summary>
    <p></p>
    <p>테이블 헤더는 소스 중 하나를 설정할 수 있습니다 Microsoft Word 문서:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>또는 출력 PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### 대체 텍스트

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>명세는 저희에게 뒤에 오는 것 말합니다:</p>
    <p>비표준 방식으로 표현되는 모든 텍스트 구조 요소,예를 들어 사용자 정의 문자 또는 인라인 그래픽은 `ActualText` 구조 요소 사전의 항목...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word 문서는 사용자가 대체 텍스트를 설정할 수 없습니다. 그래서 이것은 검증되고 출력에서 수정되어야 합니다. PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### 약어 및 약어 확장

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>텍스트 콘텐츠의 약어 및 두문자어의 모든 인스턴스는 약어 또는 두문자어의 텍스트 확장을 제공하는 범위 태그가 있는 표시된 콘텐츠 시퀀스에 배치되어야 합니다...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word 문서는 사용자가 약어 및 약어 확장을 설정할 수 없습니다. 그래서 이것은 검증되고 출력에서 수정되어야 합니다. PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## 문서 제목

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />문서 PDF/UA-1 제목이 있어야 합니다. |

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>명세는 저희에게 뒤에 오는 것 말합니다:</p>
    <p>문서 카탈로그 사전의 메타데이터 스트림에는 직류:제목 항목이 포함되어야 하며,여기서 직류 는 더블린 코어 메타데이터 스키마의 권장 접두사입니다…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 예를 볼 수 있습니다:문서 제목을 설정하는 방법(자세한 내용을 보려면 확장).</summary>
    <p></p>
    <p>문서 제목은 소스 중 하나를 설정할 수 있습니다 Microsoft Word 문서:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>또는 출력 PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## 글꼴 요구 사항

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

로 변환 할 때 글꼴 작업의 뉘앙스도있다 PDF/A-1, PDF/A-2, PDF/A-4 또는 PDF/UA-1 다음을 사용하는 형식 Aspose.Words. 출력 문서에 문제가 발생하지 않도록 하려면 이러한 문제를 고려해야 합니다.

아래 섹션에서는 솔루션에 대한 이러한 뉘앙스 및 옵션에 대해 설명합니다.

### 글꼴 법적 요구 사항

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words 사용 된 글꼴의 법적 제한을 확인하지 않습니다-그것은 사용자에게 달려 있습니다. 다른 말로 하면,사용자는 부적절한 글꼴을 제공해서는 안 됩니다. PDF 변환 사용 Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>무제한의 보편적 렌더링을 위해 파일에 합법적으로 임베드할 수 있는 글꼴 프로그램만 사용해야 합니다.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (두 사양에서 정확히 같은 따옴표)</p>
</details>
{{% /alert %}}

### .노트데프 Glyph

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

의 사용 `.notdef` 문양은 금지되어 있습니다. 그 `.notdef` 문양은 문서에 선택한 글꼴에 없는 문자가 포함되어 있고 글꼴 대체 메커니즘을 통해 확인할 수 없는 경우 나타납니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>부합하는 문서에는텍스트 렌더링 모드에 관계없이 모든 콘텐츠 스트림에서 연산자를 표시하는 텍스트의 문양을 정의합니다.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (두 사양에서 정확히 같은 따옴표)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 이러한 문자를 제거하거나 대체하는 방법(자세한 내용을 보려면 확장)의 예를 볼 수 있습니다.</summary>
    <p></p>
    <p>사용자는 원본 단어 문서 중 하나에서 이러한 문자를 제거하거나 대체해야 합니다:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>또는 출력 PDF "편집"을 사용하는 문서 PDF"도구:</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### 개인 사용 영역(PUA)

| PDF 표준 규정 준수 수준 Aspose.Words | 요구 사항의 존재 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

개인 사용 영역(PUA)문자는 주로 Windows "기호","윙딩","웹딩"등과 같은 기호 글꼴. Microsoft Word 형식은 문자에 대한 실제 텍스트를 저장하는 옵션을 제공하지 않습니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 것 말합니다(세부사항을 보기 위하여 확장하십시오):</summary>
    <p></p>
    <p>수준에 대한 적합성 만,모든 문자에 대한... 유니코드 개인 사용 영역의 코드 또는 코드에 매핑됩니다.PUA), ActualText 입장... 이 문자 또는 해당 문자가 일부인 일련의 문자에 대해 존재합니다.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"세고 UI 기호"는 Windows 유니코드 글꼴은 기호 글꼴의 대안으로 사용될 수 있습니다.

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 예를 볼 수 있습니다:기호 글꼴 문제를 해결하기 위해 사용자가해야 할 일(세부 정보를 보려면 확장).</summary>
    <p></p>
    <p>원본 단어 문서에서 기호 글꼴을 유니코드 글꼴로 바꿉니다:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>또는 추가 ActualText 출력에서 문제가 있는 문자 입력 PDF 문서:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
