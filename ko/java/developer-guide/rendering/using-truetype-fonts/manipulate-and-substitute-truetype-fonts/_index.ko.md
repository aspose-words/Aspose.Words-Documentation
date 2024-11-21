---
title: TrueType 글꼴을 대체하고
second_title: Aspose.Words 제품정보 Java
articleTitle: TrueType 글꼴을 대체하고
linktitle: TrueType 글꼴을 대체하고
description: "Aspose.Words 제품정보 Java 정확한 TrueType 글꼴을 결과 문서에 삽입하여 정확하게 표시하거나 적절한 글꼴 교체를 검색하거나 글꼴 fallback 메커니즘을 사용합니다."
type: docs
weight: 10
url: /ko/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words 견적 요청 다양한 작업에 대한 글꼴을 입력하여 문서를 고정 페이지 형식으로 렌더링, 예를 들어, PDF 또는 XPS· 시간: Aspose.Words 문서 렌더링, 임베디드 글꼴의 embedding 및 subset embedding 수행을 수행해야, 원본 PDF 또는 XPS 파일 형식 이 문서는 어떤 뷰어와 동일하게 나타납니다. 또한, XPS 사양은 항상 문서에 내장 될 글꼴을 요구합니다.

제품 정보 Aspose.Words 문자를 정확하게 측정하고 성공적으로 관련 글꼴을 포함, 다음 조건은 충족해야:

1. 명세 Aspose.Words 시스템에 TrueType 글꼴 파일을 찾을 수 있어야 합니다.
1. 명세 가능한 TrueType 글꼴이 있어야합니다. Aspose.Words, 문서에 사용되는 것과 같은 글꼴 가족 이름과 마찬가지로.

문서의 글꼴은 가족 이름, 스타일, 크기, 색상과 같은 단체를 나타냅니다. `TrueType` 글꼴 (물자 글꼴) 법인. Aspose.Words 문서의 글꼴을 처리의 일부 단계에서 물리적 글꼴로 해결합니다. 이 작업을 수행 할 수 있습니다, 일반적으로 배치 건설 중 텍스트 크기를 계산하는 작업 및 고정 페이지 형식으로 embedding/subsetting. HTML을 로딩하거나 몇 가지 플로우 형식에 따라 HTML 또는 embedding/subsetting을 로딩하는 동안 글꼴 해결 및 대체와 같은 다른 덜 인기있는 작업의 수는 마찬가지로 활성화됩니다.

## Font Manipulation 및 성능 문제

모든 글꼴 조작 메커니즘이 포함되어 있습니다 [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) 수업. 이 클래스는 정의 된 글꼴 소스뿐만 아니라 글꼴 대체 프로세스를 위해 정의 된 글꼴 소스 내에서 태칭 글꼴을 담당합니다.

글꼴은 몇 단계로 나뉩니다

1. 명세 글꼴에 대한 정보를 얻기, 모든 사용 가능한 글꼴에서 해결.
1. 명세 해결된 글꼴을 파서 사용할 수 있습니다. glyphs 및 메트릭 (horizontal 및 수직).
1. 명세 embedding 및 subsetting을 위한 해결된 글꼴을 파.

시간: Aspose.Words 처음으로 문서의 글꼴을 만날 때, 각 글꼴 소스에 위치한 글꼴 파일에서 글꼴 전체 이름, 가족 이름, 버전, 스타일과 같은 기본 글꼴 정보를 얻기 위해 시도. 모든 글꼴이 retrieved 후, Aspose.Words 이 세부 사항을 사용하여 필요한 글꼴 데이터 또는 요청 된 글꼴에 적합한 교체를 찾으십시오.

위에서 설명한 절차는 시간이 많이 걸리기 때문에 첫 번째 발사에서 애플리케이션 성능에 부정적인 영향을 줄 수 있습니다. 그러나, 각 인스턴스의 **FontSettings** 그 자체 캐시를 가지고, 그 후속 문서의 처리 시간을 줄일 수. 예를 들어, 인스턴스를 공유할 수 있습니다. **FontSettings** 다른 문서 사이에 클래스, 당신은 문서를 로딩 할 수 있습니다. 다음 예제는 다음과 같습니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

때에 **FontSettings** 정의되지 않습니다. Aspose.Words 기본 설정 **FontSettings** 예. 이 인스턴스는 문서 중 자동으로 공유되며 다음과 같이 추출할 수 있습니다

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

모든 처리 문서가 동일한 글꼴 설정이 필요하면 설정 및 기본 활용에 좋습니다. **FontSettings** 예. 모든 문서에 동일한 글꼴 소스를 사용해야합니다. 이 경우, 다음과 같이 기본 인스턴스를 수정할 수 있습니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

사용자 정의 **FontSettings** 기본 인스턴스보다 높은 우선 순위가 있습니다.

{{% /alert %}}

## 글꼴 가용성 및 대체

문서의 텍스트는 Arial, Times New Roman, Verdana 등과 같은 다양한 글꼴로 포맷 할 수 있습니다. 시간: Aspose.Words 문서 렌더링, 문서에 지정된 글꼴을 선택하려고합니다.

그러나 정확한 글꼴이 발견 될 수 없을 때 상황이 있습니다. Aspose.Words 대신 유사한 글꼴을 대체해야합니다. Aspose.Words 다음 프로세스에 따라 글꼴을 선택합니다

1. 명세 Aspose.Words 정확한 글꼴 이름과 함께 사용 가능한 글꼴 소스 중 글꼴을 찾을 수 있습니다.
1. 명세 Aspose.Words 원본 문서에 내장된 글꼴 중 필수 글꼴을 찾을 수 있습니다. DOCX와 같은 일부 문서 형식은 내장 된 글꼴을 포함 할 수 있습니다.
1. 명세 이름 * Aspose.Words 정확한 이름 일치와 필수 글꼴을 찾을 수 없습니다, 그리고 [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) 이 폰트에 정의 된 속성, 다음 Aspose.Words 정의된 글꼴을 찾을 것이다 **AltName** 으로 [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) 글꼴 정보를 지정하는 클래스.
1. 명세 이름 * Aspose.Words 정의된 글꼴을 찾을 수 없습니다. **AltName** 또한 정의되지 않습니다. 글꼴 대변 규칙은 아래에 설명 된 것과 같이 하나씩 적용됩니다 (특히 교체가 발견되면, 글꼴 대변 과정 정지 및 다음 단계는 실행되지 않습니다)
   1. 명세 Aspose.Words OS 폰트 설정을 적용하려고합니다. 사용 가능한 경우 `FontConfig` 관련 기사 이 비-Windows 기능은 FontConfig 호환 OS와 함께 사용되어야 합니다. 거의 모든 유닉스 기반 OS 이미 `FontConfig` System-wide 글꼴 구성, 사용자 정의 및 응용 프로그램에 대한 액세스를 제공하기 위해 설계된 라이브러리. 그렇지 않으면이 라이브러리는 사용자가 쉽게 설치할 수 있습니다.<br/>
      Aspose.Words 데이터를 쿼리하고 자체 목적으로 FontConfig 결과를 해석하는 방법을 알고 있습니다. 기본적으로, `FontConfig` 유틸리티가 비활성화됩니다. 다음과 같이 사용할 수 있습니다:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. 다음 단계는 단순하지만 믿을 수없는 강력한 메커니즘 [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/)· 기본적으로, 이 기능은 모든 OS에 사용할 수 있습니다. Aspose.Words XML 테이블을 사용하여 다른 OS의 기본 대용 규칙을 정의합니다. Table substitution 규칙에 따르면, 대체 폰트 이름의 목록은 사용됩니다.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - 대체 될 글꼴, SubstituteFonts - comma에 의해 분리 된 하위 헌법 변형 목록. 첫번째 유효한 글꼴은 보충을 위해 사용됩니다.<br/>
      이 규칙의 주요 특징은 다음과 같은 예에서 보이는 것처럼 자신의 헌법 테이블을로드 할 수있는 능력입니다.<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      당신은 항아리에서 기존 테이블을 기반으로하거나 다음 방법으로 프로그래밍 할 수 있습니다:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      이 메커니즘의 유연성에도 불구하고, 아래에 표시된 것처럼 더 나은 경우 일부 케이스가 있습니다.<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. 더 **FontInfo** 대용법은 테이블 대용법이 글꼴을 찾을 수 없는 경우에 적용될 것입니다. 이 메커니즘은 기본적으로 활성화됩니다. Aspose.Words 특정 문서에 포함된 글꼴 정보에 따라 가장 적합한 글꼴을 찾습니다. 이 정보는 구할 수 있습니다. **FontInfo** 아래와 같이 클래스:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      사용자는 이 기능의 작업 흐름에 방해 할 수 없습니다. 그들은 불면증 결과의 경우 비활성화하기로 결정하면:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      이름 * **FontInfo** 누락된 글꼴을 사용할 수 없습니다, 그 후 프로세스가 중지됩니다.
   1. 명세 **DefaultFont** 헌법 규칙은 경우에 적용될 것입니다 `FontInfo` 헌법도 실패했습니다. 이 규칙은 기본적으로 활성화됩니다. 이 규칙에 따르면, Aspose.Words 지정된 기본 글꼴을 사용하려고합니다. [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) 호텔 위치 사용자가 자신의 기본 글꼴을 선택하지 않은 경우, "Times New Roman"은 기본 글꼴로 사용됩니다. 이 규칙은 다음과 같이 볼 수 있습니다:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      현재 기본 글꼴을 확인하려면:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      자신의 교체 옵션을 설정하려면:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. 명세 이름 * Aspose.Words 폰트 대체를 수행 할 수 없습니다, 사용 가능한 글꼴 소스에서 첫 번째 사용 가능한 글꼴을 얻을 것이다.
1. 명세 마지막으로, if Aspose.Words 가능한 글꼴 소스 중 어떤 글꼴을 찾을 수 없습니다, 그것은 무료 Fanwood 글꼴을 사용하여 문서를 렌더링 Aspose.Words 집합.

{{% alert color="primary" %}}

이름 * **FontInfo** *FontInfo 대변 규칙*는 항상 글꼴을 해결하고 기본 글꼴 규칙을 무시합니다. 기본 글꼴 규칙을 사용하려면 *FontInfo 대문자 규칙 *를 비활성화해야합니다. *FontConfig 대변 규칙 *가 대부분의 경우 글꼴을 해결하고 다른 모든 규칙을 무시합니다.

{{% /alert %}}

## 인정하는 방법 그 폰은 대체되었다

때로는 문서 레이아웃이 변경되었는지, 또는 왜 일부 글꼴이 예상되지 않습니다. 이러한 경우, 글꼴 대변 경고 메시지가 구현 [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) 공용영역은 구조에 옵니다. 그들은 있다 [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) 경고 유형과 표준 설명 텍스트 형식, "Font '<originalfont>'이 발견되지 않았습니다. '사용'<substitutionfont>대신 글꼴. 이유: <reason>", 다음과 같은 이유:</reason></substitutionfont></originalfont>

- "문서의 대체 이름" - 헌법에 대한 [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig substitution" - 글꼴 구성 규칙에 의한 대변의 경우
- "table substitution" - 테이블 규칙에 의해 대용
- "font info substitution" - 폰트 정보 규칙에 의해 헌법에 대한
- "default font substitution" - 기본 폰트 규칙에 의한 대용
- "first available font" - 첫 번째 사용 가능한 글꼴로 대체하기위한

## XML에서 글꼴 FallBack 설정

안으로 사용되는 2개의 다른 기계장치가 있습니다 Aspose.Words - 글꼴 대체 및 글꼴 fallback. 문서에 지정된 글꼴이 위의 섹션에 설명 된대로 글꼴 소스 중 찾을 수 없을 때 글꼴 하위 헌법이 사용됩니다. 글꼴 fallback 메커니즘은 글꼴이 해결 될 때 사용되지만 특정 문자가 포함되지 않습니다. 이 경우, Aspose.Words 문자의 fallback 글꼴 중 하나를 사용하려고합니다.

있음 [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) 스캔 가능한 글꼴로 fallback 설정을 자동으로 구축하는 방법. 이 방법은 비-optimal fallback 설정을 생성 할 수 있으므로, 속성을 사용하여 글꼴 fallback 동작을 제어 할 수 있습니다. [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) 수업. 이 클래스는 글꼴 fallback 메커니즘의 설정을 지정합니다. 인스턴스를 얻을 수 있습니다. **FontFallbackSettings** 다음과 같이 종류:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

*Table substitution rule*에 유사하게, 이 기계장치는 윤곽을 위한 XML 테이블을 이용합니다. 이 XML 테이블은 다음과 같은 방법으로로드되고 저장 될 수 있습니다

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

더 보기 Aspose.Words 방출은 2개의 테이블을 포함합니다: *MsOfficeFallbackSetting.xml* · *NotoFallbackSetting.xml*·

더 보기 *MsOfficeFallbackSetting* 테이블은 문자의 범위에 대한 교체 전략을 정의합니다. Microsoft Word· 따라서 전략은 설치가 필요합니다. Microsoft 사무실 글꼴. *MsOfficeFallbackSetting* 다음 방법을 사용하여 활성화 할 수 있습니다:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

더 보기 *NotoFallbackSetting* 테이블은 특히 사용을위한 Google Noto 글꼴 (더 자세히 보기) Google Noto 다음 섹션에서 글꼴 설정) 다음과 같이 활성화 할 수 있습니다:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

다음 코드 예제는 XML 파일에서 글꼴 fallback 설정을로드하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

위의 코드 예에서 다음 XML 파일이 사용됩니다

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

## Predefined 글꼴 FallBack 설정 Google Noto 이름 *

Aspose.Words 사전 정의된 글꼴 fallback 설정 제공 Google Noto 글꼴. 이 무료 글꼴은 SIL Open Font License에 따라 사용되며 다운로드 할 수 있습니다. Google Noto 이름 * 더 보기 **FontFallbackSettings** 클래스는 [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) 방법. 그것은 predefined fallback 설정, 사용 Google Noto 아래 코드 예시로 글꼴:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Sans 스타일 Noto 글꼴만 일반 무게로 사전 정의 된 설정에서 사용됩니다.

{{% /alert %}}

## 이름 * Aspose.Words 본문 바로가기

Aspose.Words 파일 시스템에 TrueType 글꼴을 자동으로 찾을 수 있습니다. 일반적으로 기본 동작에 의존할 수 있습니다. Aspose.Words 자주 묻는 질문 `TrueType` 글꼴, 그러나 때로는 TrueType 글꼴을 포함하는 자신의 폴더를 지정해야합니다. 더 보기 [진정한 본문 바로가기](/words/ko/java/specify-truetype-fonts-location/) 주제는 방법 및 방법 Aspose.Words 글꼴을 찾고, 또한 자신의 글꼴 위치를 지정하는 방법.

## 글꼴 형식의 처리의 차이 Aspose.Words · Microsoft Word

글꼴 형식의 처리에 약간의 차이가 있습니다. Aspose.Words · Microsoft Word 아래 표에서 보이는 것과 같이:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| TrueType 글꼴 및 OpenType 글꼴과 TrueType 개요 | 지원되는. | 지원되는. |
| PostScript outlines와 OpenType 글꼴 | 대부분의 시나리오에 대한 지원. PDF와 같은 고정 페이지 형식에 삽입 XPS 지원되지 않습니다. 텍스트는 비트 맵 이미지로 대체됩니다. | 고정 페이지 형식에 embedding을 포함하여 대부분의 시나리오에 지원. |
| OpenType 글꼴 변동 | 인스턴스만 지원됩니다. 지원되지 않는 지속적인 변화. | 기본 인스턴스에서만 지원됩니다. Named 인스턴스 및 연속 변형은 지원되지 않습니다. |
| Type1 폰트 | 지원하다 Windows 이전 버전 2013 및 MacOS 버전. 지원은 떨어졌습니다 Windows 2013년부터 시작된 버전. | 지원되지 않음 |

## 더 보기

- - - [Google Noto 이름 *](https://fonts.google.com/noto) 무료 글꼴을 다운로드


