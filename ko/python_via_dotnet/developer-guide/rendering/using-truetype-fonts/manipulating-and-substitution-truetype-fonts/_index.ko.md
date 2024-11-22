---
title: 트루타입 글꼴 대체
second_title: Python via .NET용 Aspose.Words
articleTitle: 트루타입 글꼴 조작 및 대체
linktitle: 트루타입 글꼴 조작 및 대체
description: "Python via .NET용 Aspose.Words는 결과 문서에 올바른 트루타입 글꼴을 포함시켜 문서가 정확하게 표시되도록 할 수 있습니다. 글꼴이나 특정 문자를 사용할 수 없는 경우 Aspose.Words는 적합한 글꼴 대체를 검색하거나 글꼴 대체 메커니즘을 사용합니다."
type: docs
weight: 10
url: /ko/python-net/manipulating-and-substitution-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words에는 문서를 PDF 또는 XPS와 같은 고정 페이지 형식으로 렌더링하는 것을 포함하여 다양한 작업에 트루타입 글꼴이 필요합니다. Aspose.Words가 문서를 렌더링할 때 트루타입 글꼴을 결과 문서에 포함 및 하위 집합 포함을 수행해야 합니다. 이는 널리 사용되는 PDF 또는 XPS 형식을 포함하여 문서 생성 중 일반적인 관행입니다. 이렇게 하면 문서가 모든 뷰어에게 동일하게 표시됩니다. 또한 XPS 사양에서는 문서에 글꼴이 항상 포함되도록 요구합니다.

Aspose.Words가 문자를 정확하게 측정하고 관련 글꼴을 성공적으로 포함하도록 하려면 다음 조건을 충족해야 합니다

1. Aspose.Words는 시스템에서 트루타입 글꼴 파일을 찾고 액세스할 수 있어야 합니다.
1. Aspose.Words에 사용할 수 있는 트루타입 글꼴이 충분해야 하며, 문서에 사용된 것과 동일한 글꼴 계열 이름을 사용하는 것이 좋습니다.

문서의 글꼴은 `TrueType` 글꼴(물리적 글꼴) 엔터티와 다른 제품군 이름, 스타일, 크기, 색상과 같은 엔터티를 나타냅니다. Aspose.Words는 처리의 일부 단계에서 문서의 글꼴을 실제 글꼴로 확인합니다. 이를 통해 특정 작업이 가능하며, 가장 일반적으로 레이아웃 구성 중 텍스트 크기를 계산하고 고정 페이지 형식에 포함/하위 설정하는 작업이 가능합니다. HTML을 로드하는 동안 글꼴 확인 및 대체, 일부 흐름 형식에 포함/하위 설정 등 덜 인기 있는 여러 작업도 마찬가지로 활성화됩니다.

## 글꼴 조작 및 성능 문제

사용 가능한 모든 글꼴 조작 메커니즘은 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 클래스에 포함되어 있습니다. 이 클래스는 아래 설명된 대로 정의된 글꼴 소스 내에서 글꼴을 가져오고 글꼴 대체 프로세스를 담당합니다.

글꼴은 여러 단계로 구문 분석됩니다

1. 글꼴에 대한 정보를 얻고 사용 가능한 모든 글꼴에서 확인합니다.
1. 사용 가능한 glyph 및 메트릭(가로 및 세로)을 얻기 위해 확인된 글꼴을 구문 분석합니다.
1. 포함 및 하위 설정을 위해 확인된 글꼴을 구문 분석합니다.

Aspose.Words는 문서에서 처음으로 글꼴을 발견하면 각 글꼴 소스에 있는 글꼴 파일에서 글꼴 전체 이름, 제품군 이름, 버전, 스타일과 같은 기본 글꼴 정보를 얻으려고 시도합니다. 모든 글꼴이 검색된 후 Aspose.Words는 이러한 세부 정보를 사용하여 필요한 글꼴 데이터 또는 요청된 글꼴에 적합한 대체 글꼴을 찾습니다.

위에서 설명한 절차는 시간이 많이 걸리기 때문에 처음 시작할 때 애플리케이션 성능에 부정적인 영향을 미칠 수 있습니다. 그러나 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)의 각 인스턴스에는 자체 캐시가 있으므로 후속 문서의 처리 시간을 줄일 수 있습니다. 예를 들어, 서로 다른 문서 간에 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 클래스의 인스턴스를 공유할 수 있으므로 문서 로드 속도를 높일 수 있습니다. 다음 예에서는 이를 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

[FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)가 명시적으로 정의되지 않은 경우 Aspose.Words는 기본 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 인스턴스를 사용합니다. 이 인스턴스는 문서 간에 자동으로 공유되며 다음과 같이 추출할 수 있습니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

모든 처리 문서에 동일한 글꼴 설정이 필요하다고 확신하는 경우 기본 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) 인스턴스를 설정하고 활용하는 것이 좋습니다. 모든 문서에 동일한 글꼴 소스를 사용해야 한다고 가정해 보겠습니다. 이 경우 다음과 같이 기본 인스턴스를 수정할 수 있습니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

사용자 정의 [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)는 기본 인스턴스보다 우선순위가 높습니다.

{{% /alert %}}

## 글꼴 가용성 및 대체

문서의 텍스트는 Arial, Times New Roman, Verdana 등과 같은 다양한 글꼴로 서식을 지정할 수 있습니다. Aspose.Words는 문서를 렌더링할 때 문서에 지정된 글꼴을 선택하려고 시도합니다.

그러나 정확한 글꼴을 찾을 수 없는 경우 Aspose.Words는 이를 유사한 글꼴로 대체해야 합니다. Aspose.Words는 다음 프로세스에 따라 글꼴을 선택합니다
1. Aspose.Words는 사용 가능한 글꼴 소스 중에서 정확한 글꼴 이름을 가진 글꼴을 찾으려고 시도합니다.
1. Aspose.Words는 원본 문서에 포함된 글꼴 중에서 필요한 글꼴을 찾으려고 시도합니다. DOCX와 같은 일부 문서 형식에는 내장된 글꼴이 포함될 수 있습니다.
1. Aspose.Words가 이름이 정확히 일치하고 이 글꼴에 대해 정의된 [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) 속성이 있는 필수 글꼴을 찾을 수 없는 경우 Aspose.Words는 글꼴 정보를 지정하는 [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) 클래스에서 [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/)로 정의된 글꼴을 찾습니다.
1. Aspose.Words가 정의된 글꼴을 찾을 수 없고 [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/)도 정의되지 않은 경우 아래 설명된 대로 글꼴 대체 규칙이 하나씩 적용됩니다(적절한 대체 글꼴이 발견되면 글꼴 대체 프로세스가 중지되고 다음 단계는 실행되지 않습니다):
   1. 먼저 Aspose.Words는 대체를 얻기 위해 글꼴 이름을 처리하려고 시도합니다. 특히 "-" 및 "," 구분 기호가 있는 접미사를 제거하려고 시도합니다.<br>
      이 대체 규칙이 적용되면 "'<OriginalFont>' 글꼴을 찾을 수 없습니다. 대신 '<SubstitutionFont>' 글꼴을 사용합니다. 이유: 글꼴 이름 대체." 경고가 나타납니다.<br>
   1. 그런 다음 Aspose.Words는 **FontConfig** 유틸리티를 사용하여 OS 글꼴 설정을 적용하려고 시도합니다(사용 가능한 경우). 이 비 Windows 기능은 FontConfig 호환 OS와 함께 사용해야 합니다. 거의 모든 Unix 기반 OS에는 시스템 전반의 글꼴 구성, 사용자 정의 및 응용 프로그램에 대한 액세스를 제공하도록 설계된 `FontConfig` 라이브러리가 이미 있습니다. 그렇지 않으면 이 라이브러리를 사용자가 쉽게 설치할 수 있습니다.
      Aspose.Words는 자체 목적에 맞게 데이터를 쿼리하고 FontConfig 결과를 해석하는 방법을 알고 있습니다. 기본적으로 `FontConfig` 유틸리티는 비활성화되어 있습니다. 다음과 같이 활성화할 수 있습니다.<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
   1. 다음 단계에서는 **Table** 대체 규칙이라는 간단하지만 강력한 메커니즘을 사용합니다. 기본적으로 이 기능은 특정 운영 체제에서 활성화되어 사용할 수 있습니다. Aspose.Words는 `FontConfig` 대체 규칙으로 대체되지 않은 경우 이 규칙으로 글꼴을 대체합니다.<br>
      Aspose.Words는 다양한 OS에 대한 기본 대체 규칙을 정의하는 XML 테이블을 사용합니다. 테이블 대체 규칙에 따라 대체 글꼴 이름 목록이 사용됩니다.<br>
      **XML**<br>
{{< highlight html >}}
<TableSubstitutionSettings xmlns="Aspose.Words"> 
<SubstitutesTable> 
<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
… 
</SubstitutesTable> 
</TableSubstitutionSettings>
{{< /highlight >}}
      이 규칙의 주요 기능은 다음 예에 표시된 것처럼 사용자 고유의 대체 테이블을 로드하는 기능입니다.<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.load("Table.xml")
{{< /highlight >}}
      이 메커니즘의 유연성에도 불구하고 아래와 같이 비활성화하는 것이 더 나은 경우도 있습니다.<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.enabled = False
{{< /highlight >}}
   1. 테이블 대체 규칙으로 글꼴을 찾을 수 없는 경우 [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) 대체 규칙이 적용됩니다. 이 메커니즘은 기본적으로 활성화되어 있습니다. Aspose.Words는 특정 문서에 포함된 글꼴 정보에 따라 가장 적합한 글꼴을 찾습니다. 이 정보는 아래와 같이 [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) 클래스에서 얻을 수 있습니다.<br>
{{< highlight python >}}
fontInfos = doc.font_infos
{{< /highlight >}}
      사용자는 결과가 만족스럽지 못한 경우 비활성화하기로 결정하지 않는 한 이 기능의 작업 흐름을 방해할 수 없습니다.<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_info_substitution.enabled = False
{{< /highlight >}}
      누락된 글꼴에 대해 [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/)를 사용할 수 없는 경우 프로세스가 중지됩니다.<br>
   1. `FontInfo` 대체도 실패한 경우 [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) 대체 규칙이 적용됩니다. 이 규칙은 기본적으로 활성화되어 있습니다. 이 규칙에 따라 Aspose.Words은 [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/) 속성에 지정된 기본 글꼴을 사용하려고 시도합니다. 사용자가 자신의 기본 글꼴을 선택하지 않은 경우 "Times New Roman"이 기본 글꼴로 사용됩니다. 이 규칙은 아래와 같이 비활성화할 수 있습니다.<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.enabled = False
{{< /highlight >}}
      현재 기본 글꼴을 확인하려면 다음을 사용하십시오.<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name
{{< /highlight >}}
      자체 교체 옵션을 설정하려면 다음을 적용하세요.<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
{{< /highlight >}}
1. Aspose.Words가 글꼴 대체를 수행할 수 없는 경우 사용 가능한 글꼴 소스에서 사용 가능한 첫 번째 글꼴을 가져오려고 시도합니다.
1. 마지막으로 Aspose.Words가 사용 가능한 글꼴 소스 중에서 글꼴을 찾을 수 없는 경우 Aspose.Words 패키지에 포함된 무료 Fanwood 글꼴을 사용하여 문서를 렌더링합니다.<br>

[FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/)를 사용할 수 있는 경우 *FontInfo 대체 규칙*은 항상 글꼴을 확인하고 기본 글꼴 규칙을 재정의합니다. 기본 글꼴 규칙을 사용하려면 *FontInfo 대체 규칙*을 비활성화해야 합니다. *FontConfig 대체 규칙*은 대부분의 경우 글꼴을 확인하므로 다른 모든 규칙보다 우선합니다.

## XML의 글꼴 대체 설정

Aspose.Words에는 글꼴 대체와 글꼴 대체라는 두 가지 메커니즘이 사용됩니다. 글꼴 대체는 위 섹션에서 설명한 대로 문서에 지정된 글꼴을 글꼴 소스 중에서 찾을 수 없을 때 사용됩니다. 글꼴 대체 메커니즘은 글꼴이 확인될 때 사용되지만 특정 문자를 포함하지 않습니다. 이 경우 Aspose.Words는 문자에 대해 대체 글꼴 중 하나를 사용하려고 합니다.

사용 가능한 글꼴을 스캔하여 대체 설정을 자동으로 구축하는 [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/) 방법이 있습니다. 이 방법은 최적이 아닌 대체 설정을 생성할 수 있으므로 [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) 클래스의 속성을 사용하여 글꼴 대체 동작을 제어할 수 있습니다. 이 클래스는 글꼴 대체 메커니즘의 설정을 지정합니다. 다음과 같이 [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) 클래스의 인스턴스를 가져올 수 있습니다

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

*테이블 대체 규칙*과 마찬가지로 이 메커니즘은 구성에 XML 테이블을 사용합니다. 이러한 XML 테이블은 다음 방법으로 로드하고 저장할 수 있습니다

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

Aspose.Words 릴리스에는 *MsOfficeFallbackSetting.xml*와 *NotoFallbackSetting.xml*이라는 두 개의 테이블이 포함되어 있습니다.

*MsOfficeFallbackSetting* 테이블은 Microsoft Word에서 사용하는 전략과 유사한 문자 범위에 대한 대체 전략을 정의합니다. 따라서 이 전략을 사용하려면 Microsoft Office 글꼴을 설치해야 합니다. *MsOfficeFallbackSetting*는 다음 방법을 사용하여 활성화할 수 있습니다:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

*NotoFallbackSetting* 테이블은 Google Noto 글꼴과 함께 사용하기 위해 특별히 생성되었으며(다음 섹션의 Google Noto 글꼴 설정에 대한 자세한 내용 참조) 다음과 같이 활성화할 수 있습니다

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

다음 코드 예제에서는 XML 파일에서 글꼴 대체 설정을 로드하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

위의 코드 예제에서는 다음 XML 파일이 사용됩니다

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Google Noto 글꼴에 대한 사전 정의된 글꼴 대체 설정

Aspose.Words는 Google Noto 글꼴에 대해 미리 정의된 글꼴 대체 설정을 제공합니다. 이는 SIL Open Font License에 따라 라이센스가 부여된 무료 글꼴이며 Google Noto 글꼴에서 다운로드할 수 있습니다. [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) 클래스는 [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/) 메서드를 제공합니다. 아래 코드 예제와 같이 Google Noto 글꼴을 사용하는 사전 정의된 대체 설정을 로드합니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

사전 정의된 설정에서는 일정한 두께의 Sans 스타일 Noto 글꼴만 사용됩니다.

{{% /alert %}}

## Aspose.Words가 글꼴을 찾는 위치

Aspose.Words는 파일 시스템에서 자동으로 트루타입 글꼴을 찾으려고 시도합니다. 일반적으로 Aspose.Words의 기본 동작을 사용하여 `TrueType` 글꼴을 찾을 수 있지만 때로는 TrueType 글꼴이 포함된 폴더를 직접 지정해야 하는 경우도 있습니다. [트루타입 글꼴 위치 지정](/words/ko/python-net/specifying-truetype-fonts-location/) 항목에서는 Aspose.Words가 글꼴을 찾는 방법과 위치는 물론 사용자 고유의 글꼴 위치를 지정하는 방법도 설명합니다.

## Aspose.Words와 Microsoft Word의 글꼴 형식 처리 차이점

아래 표에 표시된 것처럼 Aspose.Words 및 Microsoft Word의 글꼴 형식 처리에는 몇 가지 차이점이 있습니다

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| 트루타입 윤곽선이 있는 트루타입 글꼴 및 오픈타입 글꼴 | 지원됩니다. | 지원됩니다. |
| PostScript 윤곽선이 있는 OpenType 글꼴 | 대부분의 시나리오에서 지원됩니다. PDF 및 XPS와 같은 고정 페이지 형식에 포함하는 것은 지원되지 않습니다. 텍스트가 비트맵 이미지로 대체됩니다. | 고정 페이지 형식에 포함하는 것을 포함하여 대부분의 시나리오에서 지원됩니다. |
| OpenType 글꼴 변형 | 명명된 인스턴스만 지원됩니다. 연속 변형은 지원되지 않습니다. | 기본 인스턴스에만 지원됩니다. 명명된 인스턴스와 연속 변형은 지원되지 않습니다. |
| Type1 글꼴 | 2013 이전 Windows 버전과 MacOS 버전에서 지원됩니다. 2013년부터 Windows 버전에 대한 지원이 중단됩니다. | 지원되지 않습니다. |

## 또한보십시오

- 무료 글꼴을 다운로드할 수 있는 [Google Noto 글꼴](https://fonts.google.com/noto)
