---
title: PDF/A 또는 PDF/UA 작업
second_title: Python용 Aspose.Words
articleTitle: PDF/A 또는 PDF/UA 작업
linktitle: PDF/A 또는 PDF/UA 작업
description: "Python를 사용하여 PDF/A-1, PDF/A-2, PDF/A-4 및 PDF/UA로 변환합니다. PDF/A 문서로 변환할 때 몇 가지 문제가 있는데 Aspose.Words for Python가 이 문제를 해결합니다."
type: docs
weight: 28
url: /ko/python-net/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A 및 PDF/UA 형식은 Word 형식의 문서를 PDF로 자동 변환하는 동안 충족할 수 없는 문서 내용과 관련된 몇 가지 요구 사항을 부과합니다. 완벽한 PDF/A 및 PDF/UA 호환 문서를 생성하려면 변환 전 Word 문서 또는 변환 후 PDF 문서에서 이러한 요구 사항을 확인하고 수정해야 합니다.

기본 요구 사항은 PDF/A 및 PDF/UA 문서의 구조 또는 글꼴에 대한 것이며, 다음 섹션에서 이에 대해 살펴보겠습니다.

{{% alert color="primary" %}}

PDF/UA-1 출력도 WCAG 2.0 및 섹션 508을 준수합니다.

{{% /alert %}}

## 문서 구조 요구 사항

현재 요구 사항은 PDF/A-1a, PDF/A-2a, PDF/A-4 및 PDF/UA-1 형식에 대한 것입니다.

다양한 PDF 형식 표준으로 변환할 때 Aspose.Words가 작동하는 방식에 약간의 차이가 있습니다. 예상되는 결과를 얻으려면 이를 고려해야 합니다.

{{% alert color="primary" %}}

PDF/A-4에는 논리적 구조 요구 사항이 없습니다. 이러한 이유로 이 "문서 구조 요구 사항" 섹션에서는 PDF/A-4 버전을 고려하지 않습니다.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>작가가 적절한 검증 없이 자동화된 프로세스를 사용하여 구조적 또는 의미적 정보를 생성하는 것은 바람직하지 않습니다.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

아래 하위 섹션에서는 다양한 PDF 형식 표준으로 변환할 때 Aspose.Words가 작동하는 방식과 솔루션 옵션에 대한 미묘한 차이를 설명합니다.

### 구조 유형

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

PDF 문서는 제목, 단락, 표 등과 같은 일련의 블록입니다. 이러한 블록은 강력하거나 약한 문서 구조를 형성합니다.

PDF/A에는 강한 구조와 약한 구조가 모두 유효합니다. Microsoft Word 문서는 설계상 약한 구조를 갖고 있는데 Aspose.Words는 각각 약한 구조로 PDF를 생성하고 소스 문서의 단락 개요 수준에 따라 제목도 생성합니다.

구조가 약한 PDF/UA-1 문서의 경우 제목 번호가 간격 없이 순서대로 배열되어야 합니다.

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>블록 수준 구조는 두 가지 주요 패러다임 중 하나를 따를 수 있습니다.</p>
    </ol>
      <li>강력한 구조. 그룹화 요소는 자료의 구성을 기사, 섹션, 하위 섹션 등으로 반영하는 데 필요한 만큼의 수준으로 중첩됩니다. 각 수준에서 그룹화 요소의 하위 항목은 제목(H), 해당 수준의 콘텐츠에 대한 하나 이상의 단락(P), 중첩된 하위 섹션에 대한 하나 이상의 추가 그룹화 요소로 구성되어야 합니다.</li>
      <li>구조가 약함. 문서는 비교적 평면적이며 모든 제목, 단락 및 기타 BLSE를 직계 하위 요소로 포함하는 그룹화 요소의 한두 수준만 포함합니다. 이 경우 자료의 구성은 논리적 구조에 반영되지 않습니다. 그러나 특정 수준(H1~H6)의 제목을 사용하여 표현할 수도 있습니다.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>PDF/UA-1 문서의 경우 사양에는 제목 수준과 관련된 추가 사항이 포함되어 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>문서 의미론이 헤더의 내림차순 순서를 요구하는 경우, 그러한 순서는 엄격한 숫자 순서로 진행되어야 하며 중간 제목 수준을 건너뛰어서는 안 됩니다. H1 H2 H3은 허용되지만 H1 H3은 허용되지 않습니다.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

올바른 출력을 보장하려면 사용자는 소스 문서 내용이 적절하게 구성되어 있고 단락에 대한 개요 수준이 올바르게 지정되어 있는지 확인해야 합니다. 그렇지 않으면 사용자는 출력 PDF 문서의 구조를 확인하고 수정해야 합니다.

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 Microsoft Word에서 개요 수준을 설정하는 방법이나 출력 PDF 문서의 구조를 확인하고 수정하는 방법(자세한 내용을 보려면 확장하세요) 등의 예를 볼 수 있습니다.</summary>
    <p></p>
    <p>Microsoft Word 기본 "제목 X" 스타일을 사용하여 개요 수준을 설정할 수 있습니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MW제목1-2" style="width:800px"/>
    <p>또한 "단락" 창에서 개요 수준을 확인하거나 변경할 수 있습니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MW개요 고급" style="width:800px"/>
    <p>Acrobat에서는 "태그" 창에서 문서 구조를 확인하거나 변경할 수 있습니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="Acrobat 태그 창" style="width:800px"/>
</details>
{{% /alert %}}

### 콘텐츠를 아티팩트로 표시

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

현재 Aspose.Words는 페이지 머리글과 바닥글, 메모 구분 기호, 반복되는 테이블 머리글 셀, 장식 이미지를 아티팩트로 표시합니다. 이 목록은 향후 업데이트될 수 있습니다.

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>문서의 그래픽 개체는 두 가지 클래스로 나눌 수 있습니다.</p>
    </ol>
      <li>문서의 실제 콘텐츠는 문서 작성자가 처음 소개한 자료를 나타내는 개체로 구성됩니다.</li>
      <li>아티팩트는 작성자의 원본 콘텐츠의 일부가 아니라 페이지 매김, 레이아웃 또는 기타 엄격한 기계적 프로세스 과정에서 작성자가 준수하는 작성자에 의해 생성된 그래픽 개체입니다.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

문서에 아티팩트로 표시되어야 하는 다른 콘텐츠가 포함되어 있거나 아티팩트된 콘텐츠가 실제 콘텐츠인 경우 고객은 출력 PDF에서 해당 내용을 수정해야 합니다.

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 Microsoft Word에서 모양을 장식용으로 표시하거나 출력 PDF 문서에서 모양을 아티팩트로 표시하는 방법(자세한 내용을 보려면 확장하세요)의 예를 볼 수 있습니다.</summary>
    <p></p>
    <p>예를 들어, 도형은 Microsoft Word에서 장식용으로 표시될 수 있으므로 PDF에 아티팩트로 내보내집니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MW장식적인모양" style="width:800px"/>
    <p>출력 PDF에서 모양을 아티팩트로 표시할 수 있습니다.</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PDF삭제빈태그" style="width:800px"/>
    <p>또한 헤더의 텍스트를 아티팩트에서 출력 PDF의 실제 콘텐츠로 전환할 수 있습니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="곡예사스위치텍스트인헤더" style="width:800px"/>
</details>
{{% /alert %}}

### 자연어 사양

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

텍스트 언어는 Microsoft Word 문서에 지정됩니다. Aspose.Words는 표시된 콘텐츠 시퀀스 또는 Span 태그에 첨부된 *Lang* 속성을 사용하여 지정된 언어를 출력 PDF로 내보냅니다. 이는 [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/) 속성에 의해 제어됩니다. 일반적으로 사용자가 Microsoft Word를 통해 텍스트를 입력할 때 언어 문제는 없습니다. 하지만 자동으로 텍스트가 생성되면 언어가 정확하지 않을 가능성이 있습니다.

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>파일의 모든 텍스트에 대한 기본 자연 언어는 문서의 카탈로그 사전에 있는 Lang 항목으로 지정되어야 합니다.</p>
    <p>기본 언어와 다른 파일 내의 모든 텍스트 콘텐츠는 표시된 콘텐츠 시퀀스에 첨부된 `Lang` 속성을 사용하거나 구조 요소 사전의 Lang 항목으로 표시되어야 합니다.</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>또한 PDF/UA-1의 경우 사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>자연어를 선언해야 합니다... 자연어의 변경 사항을 선언해야 합니다.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 언어가 올바르게 지정되었는지 확인하는 방법의 예를 볼 수 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>사용자는 소스 Word 문서에서 언어가 올바르게 지정되었는지 확인해야 합니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MW언어" style="width:800px"/>
    <p>또는 출력 PDF 문서:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="Acrobat체크변경언어" style="width:800px"/>
</details>
{{% /alert %}}

### 대체 설명

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word 문서를 통해 사용자는 이미지, 도형 및 표에 대체 텍스트를 추가할 수 있습니다. Aspose.Words는 이러한 대체 텍스트를 출력 PDF로 내보냅니다.

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>이미지, 공식 등과 같이 사전에 결정된 자연스러운 텍스트 유사체가 없는 콘텐츠의 모든 구조 요소는 구조 요소 사전의 Alt 항목을 사용하여 대체 텍스트 설명을 제공해야 합니다.</p>
    <p>참고 대체 설명은 불투명한 비텍스트 내용을 적절하게 해석하는 데 도움이 되는 텍스트 설명을 제공합니다.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 모든 요소에 대체 텍스트가 있는지 확인하는 방법의 예를 볼 수 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>사용자는 소스 Word 문서에 모든 요소에 대체 텍스트가 있는지 확인해야 합니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAlt텍스트" style="width:800px"/>
    <p>또는 출력 PDF 문서:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="곡예사표대체텍스트" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="곡예사모양대체텍스트" style="width:800px"/>
</details>
{{% /alert %}}

### 대체 텍스트

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>사양은 다음을 알려줍니다.</p>
    <p>비표준 방식으로 표현되는 모든 텍스트 구조 요소(예: 사용자 정의 문자 또는 인라인 그래픽)는 구조 요소 사전의 `ActualText` 항목을 사용하여 대체 텍스트를 제공해야 합니다.</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word 문서에서는 사용자가 대체 텍스트를 설정할 수 없습니다. 따라서 출력 PDF에서 이를 확인하고 수정해야 합니다

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="곡예사교체텍스트" style="width:800px"/>

### 약어 및 두문자어 확장

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>텍스트 콘텐츠의 모든 약어 및 두문자어 인스턴스는 E 속성이 약어 또는 두문자어의 텍스트 확장을 제공하는 Span 태그를 사용하여 표시된 콘텐츠 순서로 배치되어야 합니다.</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word 문서에서는 사용자가 약어 및 두문자어 확장을 설정할 수 없습니다. 따라서 출력 PDF에서 이를 확인하고 수정해야 합니다

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="Acrobat분할추가확장텍스트" style="width:800px"/>

## 글꼴 요구 사항

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words를 사용하여 PDF/A-1, PDF/A-2, PDF/A-4 또는 PDF/UA-1 형식으로 변환할 때 글꼴 작업에는 여러 가지 미묘한 차이가 있습니다. 출력 문서에 발생할 수 있는 문제를 피하려면 이를 고려해야 합니다.

아래 섹션에서는 해당 솔루션의 미묘한 차이와 옵션을 설명합니다.

### 글꼴 법적 요구 사항

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words는 사용된 글꼴의 법적 제한을 확인하지 않으며 이는 사용자에게 달려 있습니다. 즉, 사용자는 Aspose.Words를 사용한 PDF 변환에 부적절한 글꼴을 제공해서는 안 됩니다.

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>무제한의 범용 렌더링을 위해 파일에 합법적으로 삽입할 수 있는 글꼴 프로그램만 사용해야 합니다.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1(두 사양에서 정확히 동일한 인용문)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

`.notdef` glyph의 사용은 금지됩니다. 문서에 선택한 글꼴에 없고 글꼴 대체 메커니즘을 통해 확인할 수 없는 문자가 포함된 경우 `.notdef` glyph가 나타납니다.

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>적합한 문서에는 모든 콘텐츠 스트림의 텍스트 렌더링 모드에 관계없이 연산자를 표시하는 텍스트의 .notdef glyph에 대한 참조가 포함되어서는 안 됩니다.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8(두 사양에서 정확히 동일한 인용문)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 이러한 문자를 제거하거나 바꾸는 방법에 대한 예를 볼 수 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>사용자는 소스 Word 문서에서 다음 문자를 제거하거나 바꿔야 합니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>또는 "PDF 편집" 도구를 사용하여 PDF 문서 출력:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdf도구" style="width:800px"/>
</details>
{{% /alert %}}

### 개인 사용 구역(PUA)

|  Aspose.Words 내의 PDF 표준 준수 수준 |  요구 사항의 존재 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

PUA(Private Use Area) 문자는 주로 "Symbol", "Wingdings", "Webdings" 등과 같은 Windows 기호 글꼴에 나타납니다. Microsoft Word 형식은 문자의 실제 텍스트를 저장하는 옵션을 제공하지 않습니다.

{{% alert color="secondary" %}}
<details>
    <summary>사양에는 다음 내용이 나와 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>레벨 A 적합성에 대해서만 유니코드 PUA(Private Use Area)의 코드에 매핑된 모든 문자에 대해 ActualText 항목이 ... 이 문자 또는 다음과 같은 문자 시퀀스에 대해 존재해야 합니다. 캐릭터는 일부입니다.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI 기호"는 기호 글꼴의 대안으로 사용할 수 있는 Windows 유니코드 글꼴입니다.

{{% alert color="secondary" %}}
<details>
    <summary>이 블록에서는 기호 글꼴 문제를 해결하기 위해 사용자가 수행해야 하는 작업의 예를 볼 수 있습니다(자세한 내용을 보려면 확장하세요).</summary>
    <p></p>
    <p>소스 Word 문서에서 기호 글꼴을 유니코드 글꼴로 바꿉니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="M삽입기호" style="width:800px"/>
    <p>또는 출력 PDF 문서에서 문제가 있는 문자에 ActualText 항목을 추가합니다.</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpan태그실제텍스트" style="width:800px"/>
</details>
{{% /alert %}}
