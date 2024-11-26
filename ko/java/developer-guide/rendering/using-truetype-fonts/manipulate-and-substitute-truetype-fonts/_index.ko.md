---
title: TrueType글꼴 조작 및 대체
second_title: Aspose.WordsJava
articleTitle: TrueType글꼴 조작 및 대체
linktitle: TrueType글꼴 조작 및 대체
description: "Aspose.Words의 경우Java는 올바른TrueType글꼴을 결과 문서에 포함시켜 정확하게 표시되도록 하거나 적절한 글꼴 대체를 검색하거나 글꼴 대체 메커니즘을 사용할 수 있습니다."
type: docs
weight: 10
url: /ko/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words에는PDF또는XPS과 같은 고정 페이지 형식으로 문서를 렌더링하는 등 다양한 작업에TrueType글꼴이 필요합니다. Aspose.Words이 문서를 렌더링할 때,결과 문서에TrueType글꼴의 임베딩 및 하위 집합 임베딩을 수행해야 합니다.이는 인기있는PDF또는XPS형식을 포함하여 문서 생성 중에 일반적인 관행입니다. 이렇게 하면 문서가 모든 뷰어에게 동일하게 표시됩니다. 또한,XPS사양은 글꼴이 항상 문서에 포함되어야 한다고 요구합니다.

Aspose.Words문자를 정확하게 측정하고 관련 글꼴을 성공적으로 포함하려면 다음 조건을 충족해야 합니다:

1. Aspose.Words시스템에서TrueType글꼴 파일을 찾아 액세스할 수 있어야 합니다.
1. Aspose.Words에 사용할 수 있는TrueType글꼴이 충분해야 하며,가급적이면 문서에 사용된 글꼴과 동일한 글꼴 이름을 사용해야 합니다.

문서의 글꼴은`TrueType`글꼴(실제 글꼴)엔터티와 다른 가족 이름,스타일,크기,색상과 같은 엔터티를 나타냅니다. Aspose.Words처리 중 일부 단계에서 문서의 글꼴을 실제 글꼴로 확인합니다. 이것은 특정 작업을 가능하게 합니다.일반적으로 레이아웃 구성과 고정 페이지 형식으로 임베딩/하위 설정 중에 텍스트 크기를 계산하는 작업입니다. HTML로드 중 글꼴 해결 및 대체 또는 일부 흐름 형식에 포함/하위 설정과 같은 덜 인기있는 여러 작업도 마찬가지로 활성화됩니다.

## 글꼴 조작 및 성능 문제

사용 가능한 모든 글꼴 조작 메커니즘은[FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)클래스에 포함되어 있습니다. 이 클래스는 정의 된 글꼴 소스 내에서 글꼴을 가져 오기뿐만 아니라 아래에 설명 된대로 글꼴 대체 프로세스에 대한 책임이 있습니다.

글꼴은 여러 단계로 구문 분석됩니다:

1. 사용 가능한 모든 글꼴에서 해결,글꼴에 대한 정보를 얻기.
1. 해결 된 글꼴을 구문 분석하여 사용 가능한 글리프 및 메트릭(가로 및 세로)을 가져옵니다.
1. 포함 및 하위 설정을 위해 해결 된 글꼴을 구문 분석합니다.

Aspose.Words이 문서에서 처음으로 글꼴을 발견하면 각 글꼴 소스에 있는 글꼴 파일에서 글꼴 전체 이름,가족 이름,버전,스타일과 같은 기본 글꼴 정보를 얻으려고 시도합니다. 모든 글꼴이 검색된 후Aspose.Words은 이러한 세부 정보를 사용하여 필요한 글꼴 데이터 또는 요청된 글꼴의 적절한 대체를 찾습니다.

위에서 설명한 절차는 시간이 많이 걸리기 때문에 처음 시작할 때 응용 프로그램 성능에 부정적인 영향을 줄 수 있습니다. 그러나**FontSettings**의 각 인스턴스에는 자체 캐시가 있으므로 후속 문서의 처리 시간을 줄일 수 있습니다. 예를 들어,서로 다른 문서 간에**FontSettings**클래스의 인스턴스를 공유할 수 있으므로 문서 로드 속도를 높일 수 있습니다. 다음 예제에서는 이를 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

**FontSettings**이 명시적으로 정의되지 않은 경우Aspose.Words은 기본**FontSettings**인스턴스를 사용합니다. 이 인스턴스는 문서 간에 자동으로 공유되며 다음과 같이 추출할 수 있습니다:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

모든 처리 문서에 동일한 글꼴 설정이 필요한 경우 기본**FontSettings**인스턴스를 설정하고 사용하는 것이 좋습니다. 모든 문서에 대해 동일한 글꼴 소스를 사용해야 한다고 가정합니다. 이 경우 다음과 같이 기본 인스턴스를 수정할 수 있습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

사용자 지정**FontSettings**은 기본 인스턴스보다 우선 순위가 높습니다.

{{% /alert %}}

## 글꼴 가용성 및 대체

문서의 텍스트는 굴림,타임즈 뉴 로만,베르다나 등과 같은 다양한 글꼴로 서식을 지정할 수 있습니다. Aspose.Words이 문서를 렌더링하면 문서에 지정된 글꼴을 선택하려고 합니다.

그러나 정확한 글꼴을 찾을 수 없으며Aspose.Words대신 유사한 글꼴로 대체해야 하는 상황이 있습니다. Aspose.Words다음 프로세스에 따라 글꼴을 선택합니다:

1. Aspose.Words정확한 글꼴 이름을 가진 사용 가능한 글꼴 소스 중에서 글꼴을 찾으려고 합니다.
1. Aspose.Words원본 문서에 포함된 글꼴 중에서 필요한 글꼴을 찾습니다. DOCX과 같은 일부 문서 형식에는 포함된 글꼴이 포함될 수 있습니다.
1. Aspose.Words가 정확한 이름과 일치하는 필수 글꼴과 이 글꼴에 대해 정의된[AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName)속성을 찾을 수 없는 경우Aspose.Words는 글꼴 정보를 지정하는[FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/)클래스에서**AltName**로 정의된 글꼴을 찾습니다.
1. Aspose.Words이 정의된 글꼴을 찾을 수 없고**AltName**도 정의되지 않은 경우 아래에 설명된 대로 글꼴 대체 규칙이 하나씩 적용됩니다(적절한 대체가 발견되면 글꼴 대체 프로세스가 중지되고 다음 단계가 실행되지 않음).:
   1. Aspose.Words은`FontConfig`유틸리티를 사용하여OS글꼴 설정을 사용할 수 있는 경우 적용하려고 시도합니다. 이 비Windows기능은FontConfig호환OS와 함께 사용해야 합니다. 거의 모든 유닉스 기반OS는 이미 시스템 전체의 글꼴 구성,사용자 정의 및 응용 프로그램에 대한 액세스를 제공하도록 설계된`FontConfig`라이브러리를 가지고 있습니다. 그렇지 않으면 사용자가 이 라이브러리를 쉽게 설치할 수 있습니다.<br>
      Aspose.Words은 데이터를 쿼리하고FontConfig결과를 자체 목적으로 해석하는 방법을 알고 있습니다. 기본적으로`FontConfig`유틸리티는 비활성화되어 있습니다. 다음과 같이 활성화 할 수 있습니다:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. 다음 단계는 간단하지만 믿을 수 없을 정도로 강력한 메커니즘인[TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/)입니다. 기본적으로 이 기능은 활성화되어 있으며OS에 사용할 수 있습니다. Aspose.Words은 다른OS에 대한 기본 대체 규칙을 정의하는XML테이블을 사용합니다. 테이블 대체 규칙에 따라 대체 글꼴 이름 목록이 사용됩니다.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont-대체 할 글꼴,SubstituteFonts-쉼표로 구분 된 대체 변형 목록. 사용 가능한 첫 번째 글꼴은 교체에 사용됩니다.<br>
      이 규칙의 주요 기능은 다음 예제와 같이 자체 대체 테이블을 로드하는 기능입니다:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      항아리에서 기존 테이블을 기본으로 사용하거나 다음과 같은 방법으로 프로그래밍 방식으로 저장할 수 있습니다:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      이 메커니즘의 유연성에도 불구하고 아래 그림과 같이 비활성화하는 것이 더 나은 경우가 있습니다:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. 테이블 대체 규칙이 글꼴을 찾을 수 없는 경우**FontInfo**대체 규칙이 적용됩니다. 이 메커니즘은 기본적으로 활성화되어 있습니다. Aspose.Words특정 문서에 포함된 글꼴 정보에 따라 가장 적합한 글꼴을 찾습니다. 이 정보는 아래와 같이**FontInfo**클래스에서 얻을 수 있습니다:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      사용자가 만족스럽지 못한 결과가 발생할 경우 이 기능을 사용하지 않도록 설정하지 않으면 이 기능의 워크플로를 방해할 수 없습니다:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      누락된 글꼴에**FontInfo**을 사용할 수 없는 경우 프로세스가 중지됩니다.
   1. **DefaultFont**대체 규칙은`FontInfo`대체도 실패한 경우에 적용됩니다. 이 규칙은 기본적으로 활성화되어 있습니다. 이 규칙에 따라Aspose.Words는[DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName)속성에 지정된 기본 글꼴을 사용하려고 합니다. 사용자가 자신의 기본 글꼴을 선택하지 않은 경우"타임즈 뉴 로만"이 기본 글꼴로 사용됩니다. 이 규칙은 아래와 같이 비활성화 할 수 있습니다:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      현재 기본 글꼴을 확인하려면 다음을 사용합니다:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      자체 교체 옵션을 설정하려면 다음을 적용하십시오:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Aspose.Words이 글꼴 대체를 수행할 수 없는 경우 사용 가능한 글꼴 소스에서 사용 가능한 첫 번째 글꼴을 가져오려고 합니다.
1. 마지막으로Aspose.Words에서 사용 가능한 글꼴 소스 중에서 글꼴을 찾을 수 없는 경우Aspose.Words어셈블리에 포함된 사용 가능한 팬우드 글꼴을 사용하여 문서를 렌더링합니다.

{{% alert color="primary" %}}

**FontInfo**를 사용할 수 있는 경우*FontInfo substitution rule*는 항상 글꼴을 해결하고 기본 글꼴 규칙을 재정의합니다. 기본 글꼴 규칙을 사용하려면*FontInfo substitution rule*을 사용하지 않도록 설정해야 합니다. *FontConfig substitution rule*은 대부분의 경우 글꼴을 해결하므로 다른 모든 규칙을 재정의합니다.

{{% /alert %}}

## 글꼴이 대체 된 것을 인식하는 방법

때로는 문서 레이아웃이 변경된 이유 또는 일부 글꼴이 예상대로 보이지 않는 이유가 불분명 할 수 있습니다. 이러한 경우[IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/)인터페이스에 의해 구현 된 글꼴 대체 경고 메시지가 구출됩니다. [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION)경고 유형과 표준 설명 텍스트 형식인"글꼴'<OriginalFont>'을 찾을 수 없습니다. 대신'<SubstitutionFont>'글꼴을 사용합니다. 이유:<Reason>",다음과 같은 이유:

- "문서의 대체 이름"-[AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)으로 대체
- "글꼴 구성 대체"-글꼴 구성 규칙에 의한 대체
- "테이블 대체"-테이블 규칙에 의한 대체
- "글꼴 정보 대체"–글꼴 정보 규칙에 의한 대체
- "기본 글꼴 대체–-기본 글꼴 규칙에 의한 대체
- "사용 가능한 첫 번째 글꼴"–사용 가능한 첫 번째 글꼴로 대체

## 글꼴FallBackXML에서 설정

Aspose.Words에는 글꼴 대체 및 글꼴 대체라는 두 가지 메커니즘이 사용됩니다. 글꼴 대체는 문서에 지정된 글꼴이 위의 섹션에서 설명한 것처럼 글꼴 소스에서 찾을 수 없을 때 사용됩니다. 글꼴 대체 메커니즘은 글꼴이 확인될 때 사용되지만 특정 문자를 포함하지 않습니다. 이 경우Aspose.Words은 문자에 대한 대체 글꼴 중 하나를 사용하려고 합니다.

사용 가능한 글꼴을 스캔하여 대체 설정을 자동으로 빌드하는[BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic)메서드가 있습니다. 이 메서드는 최적이 아닌 대체 설정을 생성할 수 있으므로[FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/)클래스의 속성을 사용하여 글꼴 대체 동작을 제어할 수 있습니다. 이 클래스는 글꼴 대체 메커니즘의 설정을 지정합니다. 다음과 같이**FontFallbackSettings**클래스의 인스턴스를 얻을 수 있습니다:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

*Table substitution rule*과 마찬가지로 이 메커니즘은XML테이블을 구성에 사용합니다. 이러한XML테이블은 다음과 같은 방법으로 로드 및 저장할 수 있습니다:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Aspose.Words릴리스에는*MsOfficeFallbackSetting.xml*및*NotoFallbackSetting.xml*의 두 테이블이 포함됩니다.

*MsOfficeFallbackSetting*테이블은Microsoft Word에서 사용하는 전략과 유사한 문자 범위에 대한 대체 전략을 정의합니다. 따라서 이 전략은Microsoft사무실 글꼴을 설치해야 합니다. *MsOfficeFallbackSetting*은 다음 방법을 사용하여 활성화할 수 있습니다:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

*NotoFallbackSetting*테이블은Google Noto글꼴과 함께 사용하기 위해 특별히 만들어졌으며(다음 섹션의Google Noto글꼴 설정에 대한 자세한 내용 참조)다음과 같이 사용할 수 있습니다:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

다음 코드 예제에서는XML파일에서 글꼴 대체 설정을 로드하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

위의 코드 예제에서는 다음XML파일이 사용됩니다:

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

## Google Noto글꼴에 대한 미리 정의된 글꼴FallBack설정

Aspose.WordsGoogle Noto글꼴에 대해 미리 정의된 글꼴 대체 설정을 제공합니다. 이들은Google Noto글꼴에서 다운로드 할 수있는SIL오픈 글꼴 라이센스에 따라 라이센스가 부여 된 무료 글꼴입니다. **FontFallbackSettings**클래스는[LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings)메서드를 제공합니다. 아래 코드 예제와 같이Google Noto글꼴을 사용하는 미리 정의된 대체 설정을 로드합니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

일반 무게 만 산세 스타일 노토 글꼴은 미리 정의 된 설정에서 사용됩니다.

{{% /alert %}}

## 여기서Aspose.Words은 글꼴을 찾습니다

Aspose.Words파일 시스템에서TrueType글꼴을 자동으로 찾으려고 시도합니다. 일반적으로Aspose.Words의 기본 동작에 의존하여`TrueType`글꼴을 찾을 수 있지만 때로는TrueType글꼴이 포함 된 자신의 폴더를 지정해야합니다. 그 [TrueType글꼴 위치 지정](/words/java/specify-truetype-fonts-location/) 항목에서는Aspose.Words에서 글꼴을 찾는 방법과 위치를 설명하고 자신의 글꼴 위치를 지정하는 방법을 설명합니다.

## Aspose.Words및Microsoft Word의 글꼴 형식 처리의 차이점

아래 표와 같이Aspose.Words및Microsoft Word의 글꼴 형식 처리에는 약간의 차이가 있습니다:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType글꼴 및TrueType윤곽선이 있는OpenType글꼴 | 지원. | 지원. |
| OpenTypePostScript윤곽선이 있는 글꼴 | 대부분의 시나리오에서 지원됩니다. PDF및XPS과 같은 고정 페이지 형식으로 임베딩은 지원되지 않습니다. 텍스트가 비트맵 이미지로 바뀝니다. | 고정 페이지 형식으로 임베딩을 포함하여 대부분의 시나리오에서 지원됩니다. |
| OpenType글꼴 변형 | 명명된 인스턴스만 지원됩니다. 연속 변형은 지원되지 않습니다. | 유일한 기본 인스턴스에 대해 지원됩니다. 명명된 인스턴스 및 연속 변형은 지원되지 않습니다. |
| 유형 1 글꼴 | 2013 년 이전Windows버전과MacOS 버전에서 지원됩니다. 2013 년부터 시작되는Windows버전에서는 지원이 중단됩니다. | 지원되지 않습니다. |

## 또한 참조

- [Google Noto글꼴](https://fonts.google.com/noto) 무료 글꼴을 다운로드하려면


