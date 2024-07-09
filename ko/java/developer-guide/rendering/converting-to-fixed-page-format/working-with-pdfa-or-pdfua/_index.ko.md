---
title: PDF/A 또는 PDF/UA 작업
second_title: Aspose.Words 제품정보 Java
articleTitle: PDF/A 또는 PDF/UA 작업
linktitle: PDF/A 또는 PDF/UA 작업
description: "PDF/A-1, PDF/A-2, PDF/A-4 및 PDF/UA로 변환 Java· PDF/A 문서로 변환 할 때 몇 가지 문제가 있습니다. Aspose.Words 제품정보 Java 그들을 해결합니다."
type: docs
weight: 28
url: /ko/java/working-with-pdfa-or-pdfua/
---

PDF/A 및 PDF/UA 형식은 Word 형식으로 문서에서 PDF로 자동 변환 중에 수행 할 수없는 문서 내용과 관련된 여러 요구 사항을 부과합니다. 이 요구 사항은 PDF/A 및 PDF/UA 준수 문서를 생성하기 위해 변환 후 변환 또는 PDF 문서에서 변환하기 전에 Word 문서에서 확인 및 수정해야 합니다.

기본 요구 사항은 PDF/A 및 PDF/UA 문서의 구조 또는 글꼴을 위해 다음과 같은 섹션에서 고려할 것입니다.

{{% alert color="primary" %}}

PDF/UA-1 산출은 또한 WCAG 2.0와 단면도 508가 호환될 것이라는 점을 주의하십시오.

{{% /alert %}}

## 문서 구조 요구사항

현재 필요조건은 PDF/A-1a, PDF/A-2a, PDF/A-4 및 PDF/UA-1 체재를 위해 입니다.

몇 가지 nuances 의 방법 Aspose.Words 다양한 PDF 형식 표준으로 변환 할 때 작동합니다. 예상 결과를 얻기 위해 원하는 경우 계정으로 이동합니다.

{{% alert color="primary" %}}

PDF/A-4에 대한 논리적 구조 요구 사항은 없습니다. 이 이유를 들어, 우리는이 "Document Structure Requirements"섹션에서 PDF / A-4 버전을 고려하지 않습니다.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>자동화된 프로세스를 사용하여 구조적 또는 semantic 정보를 생성하는 작가를 위해 inadvisable 입니다.</p>
    <p>ISO 19005-2, 6.7.1 또는</p>
</details>
{{% /alert %}}

아래의 하위 섹션은 방법의 nuances를 설명합니다. Aspose.Words 다양한 PDF 형식 표준 및 솔루션으로 변환 할 때 작동합니다.

### 구조 유형

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |   {{< emoticons/tick >}}   |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF 파일 |   {{< emoticons/tick >}}   |

PDF 문서는 헤드, 단락, 테이블 및 기타와 같은 블록의 순서입니다. 이 블록은 문서 구조를 형성 – 강력하거나 약합니다.

강력하고 약한 구조는 PDF/A에 유효합니다. Microsoft Word 문서에는 디자인에 의해 약한 구조가 있고, Aspose.Words 각각 약한 구조로 PDF를 생성하고 소스 문서의 단락에 따라 헤드링을 생성합니다.

약한 구조를 가진 PDF/UA-1 문서를 위해, 그것은 격차가 간격 없이 순서로 들어가는 것을 추가적으로 요구됩니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>블록 레벨 구조는 두 개의 주요 패러다임 중 하나를 따를 수 있습니다.</p>
    </ol>
      <li>강한 구조. 그룹화 요소는 기사, 섹션, 하위 섹션 등 재료의 조직을 반영하기 위해 필요한 많은 수준으로 배열합니다. 각 수준에서 그룹화 요소의 어린이는 헤드링 (H), 그 수준에서 콘텐츠에 대한 하나 이상의 단락 (P), 그리고 아마도 하나 이상의 추가 그룹화 요소로 이루어져야합니다.</li>
      <li>Weakly 구조. 문서는 상대적으로 평평하며, 모든 헤드, 단락 및 다른 BLSEs와 함께 그룹화 요소의 하나 또는 두 가지 수준 만 있습니다. 이 경우, 재료의 조직은 논리 구조에 반영되지 않습니다. 그러나 특정 수준 (H1-H6)과 헤드링의 사용에 의해 표현 될 수 있습니다.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>PDF/UA-1 문서를 위해, 명세는 두는 수준과 관련있는 추가를 포함합니다 ( 세부사항을 보기 위하여):</summary>
    <p></p>
    <p>문서 semantics가 헤더의 후속 순서가 요구되면, 그런 순서는 엄격한 수치 순서로 진행되며 복수의 헤드 레벨을 건너지 않습니다. H1 H2 H3는 허용되지만 H1 H3는 아닙니다.</p>
    <p>ISO-14289-1, 7.4.2 과</p>
</details>
{{% /alert %}}

정확한 출력을 보장하기 위해, 사용자는 소스 문서 내용이 제대로 조직되고 개략 수준이 단락을 위해 올바르게 지정된다는 것을 보증해야 합니다. 그렇지 않으면 사용자는 출력 PDF 문서의 구조를 확인하고 수정해야합니다.

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서 예제를 볼 수 있습니다. 개요 레벨을 설정하는 방법 Microsoft Word 또는 출력 PDF 문서의 구조를 확인하고 수정하십시오 (자세한 내용은 볼 수 있습니다).</summary>
    <p></p>
    <p>내 계정 Microsoft Word 기본 "Heading X" 스타일은 개요 수준을 설정하는 데 사용될 수 있습니다.</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>또한, 개요 수준은 "Paragraph" 창에서 확인되거나 변경 될 수 있습니다.</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>문서 구조가 확인되거나 "Tags"판에서 변경 될 수 있습니다.</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Artifact로 콘텐츠를 표시

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |   {{< emoticons/tick >}}   |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF 파일 |   {{< emoticons/tick >}}   |

현재, Aspose.Words 표 페이지 우두머리 및 발자, 주 분리기, 반복 테이블 우두머리 세포 및 artifacts로 장식적인 이미지. 이 목록은 미래에 업데이트 될 수 있습니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>문서의 그래픽 객체는 두 개의 클래스로 나눌 수 있습니다.</p>
    </ol>
      <li>문서의 실제 콘텐츠는 문서의 저자에 의해 원래 도입 된 물질을 나타내는 개체를 포함한다.</li>
      <li>Artifacts는 저자의 원래 내용의 일부가 아니라 pagination, layout, 기타 엄격하게 기계 공정의 과정에서 적합 작가에 의해 생성되지 않은 그래픽 객체입니다.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

문서에는 artifact로 표시해야 할 다른 내용이 포함되어 있거나, artifacted 내용이 실제 콘텐츠 인 경우 고객은 출력 PDF에서 수정해야합니다.

{{% alert color="secondary" %}}
<details>
    <summary>이 구획에서는, 당신은 보기 수 있습니다: 모양을 장식으로 표하는 방법 Microsoft Word 또는 출력 PDF 문서의 artifact로 마크 모양 (자세한 내용을 볼 수 있음).</summary>
    <p></p>
    <p>예를 들면, 모양은 장식으로 표시될 수 있었습니다 Microsoft Word, 그래서 그들은 artifact로 PDF에 수출될 것입니다:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>산출 PDF에 있는 artifact로 모양을 표시할 수 있습니다:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>또한, 출력 PDF의 실제 콘텐츠에 artifact에서 헤더에 텍스트를 전환 할 수 있습니다.</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### 제품 소개

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |   {{< emoticons/tick >}}   |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF 파일 |   {{< emoticons/tick >}}   |

텍스트 언어는 Microsoft Word 문서. Aspose.Words 지정된 언어를 출력 PDF로 내보내기 *Lang* 표시된 내용 순서 또는 경간 꼬리표에 붙어 있는 특성 – 그것은에 의해 통제됩니다 [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) 호텔 위치 일반적으로 텍스트가 사용자가 입력 할 때 언어 문제가 없습니다. Microsoft Word· 그러나 텍스트가 자동으로 생성 된 경우 언어가 inaccurate 될 수있는 가능성이 있습니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>파일에 있는 모든 텍스트에 대한 기본 자연적인 언어는 문서의 카탈로그 사전에 있는 Lang 입장에 의해 지정되어야 합니다.</p>
    <p>기본 언어와 다른 파일 내의 모든 텍스트 콘텐츠는 사용으로 표시되어야한다 `Lang` 표시된 내용 순서에 첨부 된 속성, 또는 구조 요소 사전에 Lang 항목에 의해 ...</p>
    <p>ISO-19005-2, 6.7.4 과</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>PDF/UA-1를 위해, 명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여)를 말합니다:</summary>
    <p></p>
    <p>자연은 선언한다 ... 자연의 변화는 선언한다.</p>
    <p>ISO-14289-1, 7.2 과</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서, 당신은 예제를 볼 수 있습니다: 언어가 올바르게 지정되도록 보장하는 방법 (자세한 내용을 볼 수 있음).</summary>
    <p></p>
    <p>사용자는 소스 Word 문서에서 언어가 올바르게 지정되어야한다.</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>또는 산출 PDF 문서:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### 그림 Caption

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |                           |
|  PDF/A-2a를 |                           |
|  PDF 파일 |   {{< emoticons/tick >}}   |

Microsoft Word 문서는 사용자가 그림 캡션을 추가 할 수 있습니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>숫자를 동반하는 캡션은 캡션 태그로 표시됩니다.</p>
    <p>ISO-14289-1, 7.3번</p>
</details>
{{% /alert %}}

현재 위치 Aspose.Words Caption 태그를 가진 captions를 수출할 수 없습니다, 그래서 그들은 산출 PDF에서 파열되어야 합니다.

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서 예제를 볼 수 있습니다. 캡션을 삽입하는 방법 (자세한 내용을 볼 수 있음).</summary>
    <p></p>
    <p>내 계정 Microsoft Word, 캡션은 컨텍스트 메뉴를 통해 삽입될 수 있습니다:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Acrobat에서 caption을 추가하거나 변경할 수 있습니다. `Object` 속성 대화 상자:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternate 묘사

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |   {{< emoticons/tick >}}   |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF 파일 |   {{< emoticons/tick >}}   |

Microsoft Word 문서는 사용자가 이미지, 모양 및 테이블에 대체 텍스트를 추가 할 수 있습니다. Aspose.Words 산출 PDF에 같은 대체 텍스트를 수출합니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>모든 구성 요소는 자연 predetermined textual Analogue, e.g. 이미지, Formulae 등, 구조 요소 사전의 Alt Entry를 사용하여 대체 텍스트 설명을 제공해야합니다 ...</p>
    <p>이름 * Alternate 묘사는 다른 opaque non-textual 내용의 적당한 해석에 원조하는 textual 묘사를 제공합니다.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서, 당신은 예제를 볼 수 있습니다: 모든 요소가 대체 텍스트가 있는지 확인하는 방법 (자세한 내용을 볼 수 있음).</summary>
    <p></p>
    <p>사용자는 모든 요소가 소스 Word 문서의 대체 텍스트를 가지고 있어야한다.</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>또는 산출 PDF 문서:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Hyperlinks에 대한 간단한 설명

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |                           |
|  PDF/A-2a를 |                           |
|  PDF 파일 |   {{< emoticons/tick >}}   |

이전 시점 외에도 Microsoft Word 문서는 또한 사용자가 하이퍼 링크에 대체 텍스트를 추가 할 수 있습니다. Aspose.Words 산출 PDF에 같은 대체 텍스트를 수출합니다.

불행히도, 모든 응용 프로그램은 당신이 대체 설명을 설정 할 수 있습니다. 예를 들어, Adobe Acrobat 현재 하이퍼링크에 대한 설명을 설정할 수 없습니다. 그러나 Microsoft Word, 다음과 같이 이것을 할 수 있습니다:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

때때로 내용 (TOC)의 테이블에 자동 생성 하이퍼 링크에 대한 alt 텍스트를 설정 할 수없는 문제가 있습니다. Microsoft Word 사이트맵 Aspose.Words 이러한 필드를 업데이트하고 자신의 링크 생성 할 수 있습니다.

코드 예제를 따라 업데이트 `TOC` 본문내용 바로가기 Aspose.Words Document Object Model (주)DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### 테이블 Headers

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |                           |
|  PDF/A-2a를 |                           |
|  PDF 파일 |   {{< emoticons/tick >}}   |

PDF/UA-1 문서의 테이블은 헤더가 있어야 합니다 – 열, 행, 또는 둘 다. PDF/A는 추가 제한이 없는 표준 테이블 markup만 요구합니다. 이름 * Aspose.Words 표준 테이블 markup을 자동으로 생성합니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>표는 헤더를 포함해야 ... 테이블은 란 우두머리, 줄 우두머리 또는 둘 다를 포함할 수 있습니다.</p>
    <p>ISO-14289-1, 7.5명</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서, 당신은 예제를 볼 수 있습니다: 테이블 헤더를 설정하는 방법 (자세한 내용을 볼 수 있음).</summary>
    <p></p>
    <p>테이블 헤더는 소스를 설정할 수 있습니다. Microsoft Word 문서:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>또는 산출 PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### 교체 텍스트

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |   {{< emoticons/tick >}}   |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF 파일 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>명세는 저희에게 뒤에 말합니다:</p>
    <p>비표준 방식으로 표현되는 모든 텍스트 구조 요소, 예를 들어, 사용자 정의 문자 또는 인라인 그래픽, 교체 텍스트를 사용해야합니다 `ActualText` 구조 요소 사전에 항목 ...</p>
    <p>ISO-19005-2, 6.7.7 이상</p>
</details>
{{% /alert %}}

Microsoft Word 문서는 사용자가 교체 텍스트를 설정할 수 없습니다. 그래서 이것은 산출 PDF에서 확인되고 고쳐질 필요가 있습니다:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### 약어와 약어 확장

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |   {{< emoticons/tick >}}   |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF 파일 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>E 속성이 약어 또는 약어를 제공하는 스팬 태그와 함께 표시된 내용 순서에 배치되어야 합니다.</p>
<p>ISO-19005-2, 6.7.8의</p>
</details>
{{% /alert %}}

Microsoft Word 문서는 사용자가 약어와 약어 확장을 설정할 수 없습니다. 그래서 이것은 산출 PDF에서 확인되고 고쳐질 필요가 있습니다:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## 문서 제목

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a에 |                                                                |
|  PDF/A-2a를 |                                                                |
|  PDF/A-4 다운로드 |                                                                |
|  PDF 파일 |  {{< emoticons/tick >}}<br/>PDF/UA-1 문서는 제목이 있어야 합니다 |

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>명세는 저희에게 뒤에 말합니다:</p>
    <p>문서의 카탈로그 사전의 Metadata 스트림은 DC를 포함해야합니다: 제목 항목, dc는 Dublin Core metadata schema에 대한 권장 접두사입니다 ...</p>
    <p>ISO-14289-1, 7.1 원</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서, 당신은 예제를 볼 수 있습니다: 문서 제목을 설정하는 방법 (자세한 내용을 볼 수 있음).</summary>
    <p></p>
    <p>문서 제목은 소스를 설정할 수 있습니다. Microsoft Word 문서:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>또는 산출 PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## 이름 *

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |   {{< emoticons/tick >}}   |
|  PDF/A-1b에 |   {{< emoticons/tick >}}   |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF/A-2b의 |   {{< emoticons/tick >}}   |
|  PDF/A-4 다운로드 |   {{< emoticons/tick >}}   |
|  PDF 파일 |   {{< emoticons/tick >}}   |

PDF/A-1, PDF/A-2, PDF/A-4 또는 PDF/UA-1 형식으로 변환 할 때 글꼴과 함께 일하는 여러 가지 숫자가 있습니다. Aspose.Words· 출력 문서로 가능한 문제를 피하려면 계정으로 가져 가야 합니다.

아래의 섹션은 이러한 nuances와 그들의 솔루션에 대한 옵션을 설명합니다.

### 비밀번호

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |   {{< emoticons/tick >}}   |
|  PDF/A-1b에 |   {{< emoticons/tick >}}   |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF/A-2b의 |   {{< emoticons/tick >}}   |
|  PDF/A-4 다운로드 |   {{< emoticons/tick >}}   |
|  PDF 파일 |   {{< emoticons/tick >}}   |

Aspose.Words 사용 된 글꼴의 법적 제한을 검증하지 않습니다 - 그것은 사용자에게 달려 있습니다. 다른 단어에서 사용자는 PDF 변환에 부적절한 글꼴을 제공하지 않아야합니다. Aspose.Words·

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>무제한의 파일에 법적으로 포함되는 글꼴 프로그램만, 범용 렌더링을 사용할 수 있습니다.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (2개의 specs에 있는 동일한 따옴표)</p>
</details>
{{% /alert %}}

### .사이트맵 Glyph

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |                           |
|  PDF/A-1b에 |                           |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF/A-2b의 |   {{< emoticons/tick >}}   |
|  PDF/A-4 다운로드 |   {{< emoticons/tick >}}   |
|  PDF 파일 |   {{< emoticons/tick >}}   |

사용 방법 `.notdef` glyph 이용안내 더 보기 `.notdef` glyph 문서가 선택한 글꼴에 존재하는 문자를 포함하지 않는 경우 표시되며 글꼴 Fallback 메커니즘을 통해 해결 될 수 없습니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>준수 문서는 .notdef에 대한 참조를 포함하지 않습니다 glyph 텍스트 렌더링 모드에 관계없이 모든 텍스트 표시 연산자의 모든 내용 스트림.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (2개의 specs에 있는 동일한 따옴표)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서 예제를 볼 수 있습니다. 제거하거나 이러한 문자를 교체하는 방법 (자세한 내용을 볼 수 있음).</summary>
    <p></p>
    <p>사용자는 소스 Word 문서에서 이러한 문자를 제거하거나 교체해야합니다.</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>또는 "Edit PDF" 도구를 사용하여 출력 PDF 문서:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### 개인 사용 지역 (PUA)

|  PDF 표준 준수 수준 내 Aspose.Words |  자주 묻는 질문 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a에 |                           |
|  PDF/A-1b에 |                           |
|  PDF/A-2a를 |   {{< emoticons/tick >}}   |
|  PDF/A-2b의 |   {{< emoticons/tick >}}   |
|  PDF/A-4 다운로드 |   {{< emoticons/tick >}}   |
|  PDF 파일 |                           |

Private Use Area (PUA) 문자는 주로 나타납니다. Windows "Symbol", "Wingdings", "Webdings", 등과 같은 상징적인 글꼴. Microsoft Word 형식은 문자에 대한 실제 텍스트를 저장하는 옵션을 제공하지 않습니다.

{{% alert color="secondary" %}}
<details>
    <summary>명세는 저희에게 뒤에 오는 (자세한 내용을 보기 위하여) 말합니다:</summary>
    <p></p>
    <p>수평으로 준수 만, 어떤 문자에 대 한 ... 그것은 Unicode 개인 사용 영역 (PUA)의 코드 또는 코드에 매핑, 실제 입력 ... 이 문자 또는 문자의 순서에 대 한 제시 될 것입니다.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol"은 Windows 상징적인 폰트로 사용할 수 있는 유니코드 폰트.

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서, 당신은 예제를 볼 수 있습니다: 사용자가 심볼 글꼴 (자세한 내용을 볼 수 있음)과 문제를 해결해야합니다.</summary>
    <p></p>
    <p>소스 Word 문서에서 Unicode 하나와 상징적인 글꼴을 대체하십시오:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>또는 출력 PDF 문서의 문제 문자에 실제 텍스트 항목을 추가:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
