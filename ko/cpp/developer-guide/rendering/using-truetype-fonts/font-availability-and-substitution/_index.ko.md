---
title: MFont 가용성 및 대체 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 글꼴 가용성 및 대체
linktitle: 글꼴 가용성 및 대체
description: "정확한 대체 글꼴을 찾을 수 없는 경우, Aspose.Words 대신 비슷한 글꼴로 대체해야합니다. 이 기사에서는 가장 적합한 글꼴을 찾는 과정에 대해 설명합니다."
type: docs
weight: 12
url: /ko/cpp/font-availability-and-substitution/
---

문서의 텍스트는 굴림,타임즈 뉴 로만,베르다나 등과 같은 다양한 글꼴로 서식을 지정할 수 있습니다. 언제 Aspose.Words 이 문서에 지정된 글꼴을 선택하려고,문서를 렌더링합니다.

그러나 정확한 글꼴을 찾을 수 없는 상황이 있습니다. Aspose.Words 대신 비슷한 글꼴로 대체해야합니다. Aspose.Words 다음 프로세스에 따라 글꼴을 선택합니다:

1. Aspose.Words 정확한 글꼴 이름을 가진 사용 가능한 글꼴 소스 중에서 글꼴을 찾으려고 합니다.
1. Aspose.Words 원본 문서에 포함된 글꼴 중에서 필요한 글꼴을 찾습니다. 다음과 같은 일부 문서 형식 DOCX 포함 된 글꼴을 포함 할 수 있습니다.
1. 만약 Aspose.Words 정확한 이름과 일치하는 필수 글꼴을 찾을 수 없습니다. [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) 이 글꼴에 대해 정의 된 속성 Aspose.Words 로 정의 된 글꼴을 찾을 것입니다 **AltName** 에서 [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info) 글꼴 정보를 지정하는 클래스입니다.
1. 만약 Aspose.Words 정의 된 글꼴을 찾을 수 없습니다. **AltName** (적절한 교체가 발견되면 글꼴 대체 프로세스가 중지되고 다음 단계가 실행되지 않음):
   1. Aspose.Words 신청을 시도 할 것입니다 OS 글꼴 설정,그들이 사용할 수있는 경우,를 사용하여 `FontConfig` 유틸리티. 이 비-Windows 이 기능은 FontConfig-호환 가능 OS. 거의 모든 유닉스 기반 OS 이미 `FontConfig` 시스템 전체 글꼴 구성,사용자 정의 및 응용 프로그램에 대한 액세스를 제공하도록 설계된 라이브러리입니다. 그렇지 않으면 사용자가 이 라이브러리를 쉽게 설치할 수 있습니다.<br>
      Aspose.Words 데이터를 쿼리하고 해석하는 방법을 알고 있습니다 FontConfig 자신의 목적을 위해 결과. 기본적으로, `FontConfig` 유틸리티를 사용할 수 없습니다. 다음과 같이 활성화 할 수 있습니다:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. 다음 단계는 간단하지만 매우 강력한 메커니즘입니다. [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). 기본적으로 이 기능은 활성 상태이며 모든 사용자가 사용할 수 있습니다 OS. Aspose.Words 용도 XML 다른 것에 대한 기본 대체 규칙을 정의하는 테이블 OS. 테이블 대체 규칙에 따라 대체 글꼴 이름 목록이 사용됩니다.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont -대체 할 글꼴, SubstituteFonts -쉼표로 구분 된 대체 변형 목록. 사용 가능한 첫 번째 글꼴은 교체에 사용됩니다.<br>
      이 규칙의 주요 기능은 다음 예제와 같이 자체 대체 테이블을 로드하는 기능입니다:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      항아리에서 기존 테이블을 기본으로 사용하거나 다음과 같은 방법으로 프로그래밍 방식으로 저장할 수 있습니다:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      이 메커니즘의 유연성에도 불구하고 아래 그림과 같이 비활성화하는 것이 더 나은 경우가 있습니다:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. 그 **FontInfo** 테이블 대체 규칙이 글꼴을 찾을 수 없는 경우 대체 규칙이 적용됩니다. 이 메커니즘은 기본적으로 활성화되어 있습니다. Aspose.Words 특정 문서에 포함된 글꼴 정보에 따라 가장 적합한 글꼴을 찾습니다. 이 정보는 다음에서 얻을 수 있습니다 **FontInfo** 아래 그림과 같이 클래스:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      사용자가 만족스럽지 못한 결과가 발생할 경우 이 기능을 사용하지 않도록 설정하지 않으면 이 기능의 워크플로를 방해할 수 없습니다:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      만약 **FontInfo** 누락 된 글꼴을 사용할 수 없습니다,다음 프로세스가 중지됩니다.
   1. **DefaultFont** 대체 규칙은 `FontInfo` 교체도 실패했습니다. 이 규칙은 기본적으로 활성화되어 있습니다. 이 규칙에 따르면, Aspose.Words 에 지정된 기본 글꼴을 사용하려고합니다 [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/) 재산. 사용자가 자신의 기본 글꼴을 선택하지 않은 경우"타임즈 뉴 로만"이 기본 글꼴로 사용됩니다. 이 규칙은 아래와 같이 비활성화 할 수 있습니다:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      현재 기본 글꼴을 확인하려면 다음을 사용합니다:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      자체 교체 옵션을 설정하려면 다음을 적용하십시오:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. 만약 Aspose.Words 글꼴 대체를 수행 할 수 없습니다,그것은 사용 가능한 글꼴 소스에서 사용할 수있는 첫 번째 글꼴을 얻기 위해 시도합니다.
1. 마지막으로,만약 Aspose.Words 사용 가능한 글꼴 소스 중 글꼴을 찾을 수 없습니다,그것은에 포함 된 무료 팬 우드 글꼴을 사용하여 문서를 렌더링 Aspose.Words 조립.

{{% alert color="primary" %}}

만약 **FontInfo** 사용할 수 있습니다 *FontInfo substitution rule* 항상 글꼴을 해결하고 기본 글꼴 규칙을 무시합니다. 기본 글꼴 규칙을 사용하려면 기본 글꼴 규칙을 사용하지 않도록 설정해야 합니다. *FontInfo substitution rule*. 참고: *FontConfig substitution rule* 대부분의 경우 글꼴을 해결하므로 다른 모든 규칙을 무시합니다.

{{% /alert %}}


