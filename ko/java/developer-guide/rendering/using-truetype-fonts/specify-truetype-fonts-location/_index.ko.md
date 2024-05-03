---
title: 진정한 Type 글꼴 위치 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 진정한 본문 바로가기
linktitle: 진정한 본문 바로가기
description: "다양한 한국어 유형 글꼴 소스: 시스템 폴더, 사용자 소스, 스트림에서 글꼴로드, 파일 시스템, 또는 메모리 사용 Java·"
type: docs
weight: 30
url: /ko/java/specify-truetype-fonts-location/
---

이 항목은 기본 행동을 설명합니다. Aspose.Words TrueType 글꼴을 볼 때, 운영 체제 특정 차이를 포함하여, 사용자 글꼴 소스를 지정하는 방법을 보여줍니다.

더 보기 [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) 클래스는 다양한 글꼴 소스를 지정하는 데 사용됩니다. 몇 가지 구현이 있습니다. **FontSourceBase** 종류:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

일부 클래스의 구현 세부 사항은 아래 설명되어 있습니다.

## 시스템의 Load Fonts {#loading-fonts-from-system}

특별한 [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) 기본적으로 항상 사용하는 클래스. 시스템에 설치된 모든 TrueType 글꼴을 나타냅니다. 따라서 소스 목록을 만들 수 있습니다. **SystemFontSource** 다른 어떤 소스:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

단일 인스턴스 **SystemFontSource** class는 기본적으로 정의됩니다. [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/)· 다른 운영 체계에, 글꼴은 다른 장소에서 있을지도 모릅니다. 그러나, 사용 **FontSettings** 각 문서의 경우 최적의 솔루션이 아닙니다. 대부분의 경우, 사용 [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) 충분히.

Per-document 인스턴스는 다른 문서의 다른 글꼴 소스를 사용하는 데 필요한 경우에만 필요합니다. 몇 가지 **FontSettings** 인스턴스는 캐시를 공유하지 않기 때문에 성능이 감소합니다.

### 이름 * Aspose.Words TrueType 글꼴을 찾습니다. Windows

대부분의 경우, Windows 사용자는 놓은 글꼴 또는 잘못된 레이아웃과 중요한 문제를 직면하지 않습니다. 일반적으로, Aspose.Words 문서를 통해 이동하고 글꼴의 링크를 만날 때, 시스템 폴더에서 글꼴 데이터를 성공적으로 fetches.

에 의해 <span notrans="<span notrans=" Windows"=""></span>· Aspose.Words 첫번째는 모두에서 사용할 수 있는 글꼴을 가지고 갑니다 _%windir%\Fonts 폴더. 이 설정은 대부분의 시간 동안 작동합니다. 필요한 경우 자체 글꼴 폴더만 지정합니다. Aspose.Words 또한 추가 글꼴을 찾습니다 HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts 등록 키. 또한, Windows 10는 현재 사용자를 위한 글꼴의 임명을 가능하게 합니다. 본문 바로가기 %userprofile%\AppData\Local\Microsoft\Windows\Fonts 폴더도 지정 HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts 레지스트리, 어디에 Aspose.Words 이 글꼴을 찾습니다.

문서가 임베디드 글꼴을 포함하면, Aspose.Words 문서의 관련 글꼴 데이터를 읽고 문서의 레이아웃을 만들 수 있습니다. 문서는 시스템 폴더에 있지 않은 글꼴에 대한 링크도 포함 할 수 있습니다, 다음 시나리오가 작동에 올 경우:

- 사용자는 새로운 글꼴 소스를 통해 설정할 수 있습니다. **FontSettings** 수업시간
- - - Aspose.Words 비슷한 글꼴을 대체 할 수 있습니다

### 본문 바로가기Windows 시스템

Aspose.Words 시스템 글꼴 폴더에 글꼴을 찾습니다. 이 폴더의 목록은 [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) 방법. 지원된 글꼴이 없는 경우, Aspose.Words 내장 기본 글꼴 Fanwood.ttf를 사용합니다.

글꼴 미터 이후 Windows 그리고 비-Windows OS는 다릅니다, Aspose.Words 비슷한 글꼴을 찾을 수 있으며 원래와 비슷한 레이아웃을 구축 할 수 있습니다. 그러나 항상 불가능합니다. 이 경우, **FontSettings** 클래스는 사용자 정의 글꼴 또는 대체 규칙을 추가하는 데 사용되어야한다.

#### 이름 * Aspose.Words TrueType 글꼴을 찾습니다. Linux

기타 Linux 배포는 다른 폴더에 글꼴을 저장할 수 있습니다. Aspose.Words 몇몇 위치에 있는 글꼴을 찾습니다. 기본적으로, Aspose.Words 뒤에 오는 위치 전부에 있는 글꼴을 찾습니다: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts 이 기본 동작은 대부분의 작업 Linux 배포, 하지만 그것은 보장 되지 않습니다 모든 시간, 어느 경우 당신이의 위치를 지정할 필요가 있는 경우 true 명시적으로 글꼴을 입력합니다. 이렇게하려면 TrueType 글꼴이 설치된 곳을 알아야 합니다. Linux 관련 상품

#### 이름 * Aspose.Words Mac OS X에서 TrueType 글꼴을 찾습니다

Aspose.Words /Library/Fonts 폴더에 있는 글꼴을 찾습니다. 이 설정은 대부분의 시간 동안 작동하지만, 필요한 경우 자신의 글꼴 폴더를 지정해야합니다.

#### TrueType 글꼴에 Android

에 의해 Android, 글꼴 작업 흐름은 Typeface 클래스에 캡슐화됩니다.
Typefaces의 5가지 종류가 있으며, 각 typeface는 비슷한 폰트 제품군의 그룹을 나타냅니다

- 데모
- DEFAULT_본
- 모노스픽
- SANS_SERIF의 특징
- SERIF의

예를 들면, 에 따라 Android· [파일 형식](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) config 파일, "times"는 "serif"가족에 속합니다. NotoSerif-Regular.ttf는 "times"가 요청될 때 사용됩니다

**사이트맵**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

비슷한 글꼴을 검색하려면 먼저 설명 된 전략이 사용됩니다

그들 외에는 Aspose.Words 대체의 자체 목록 Android 플랫폼.

문서는 PMingLiU-ExtB 글꼴, 우선, 포함 Aspose.Words 시스템 소스 내에서 필요한 글꼴을 찾고 있습니다.

기본 목록 Android 글꼴의 폴더는:

- /시스템/폰트
- /시스템/폰트
- /데이터/폰트

더 보기 Aspose.Words 메소드로 설정된 사용자 정의 소스를 통해 봅시다:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

명시된 교체가 지정된 경우, Aspose.Words 사용자의 제안을 가진 누락된 글꼴을 대체하십시오:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

규칙이 작동하지 않는 경우, Aspose.Words 내부 교체 테이블을 확인합니다. 테이블에는 좋은 적합에 대한 정보가 포함되면 글꼴이 교체됩니다. 우리의 경우 Aspose.Words 공지사항 `Typeface.SERIF`· 그러나 테이블이 요청 된 글꼴에 대해 아무것도 모른다면 Aspose.Words 특수 MS Word 규칙을 기반으로 글꼴을 선택하거나 Panose 공간에서 가장 가까운 거리에 있습니다.

#### TrueType 글꼴에 .NET Core · Xamarin

제품 정보 .NET Core · Xamarin 같은 규칙은 다음과 같이 적용됩니다. Aspose.Words 제품정보 Java 버전. 기본적으로, 모든 시스템 글꼴의 플랫폼에서 응용 프로그램이 사용할 수 있습니다.
검색이 수행 될 폴더 목록은 메소드를 호출하여 찾을 수 있습니다

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Folder의 로드 글꼴 {#loading-fonts-from-folder}

처리 된 문서가 시스템에없는 글꼴에 대한 링크가 포함 된 경우, 또는 시스템 폴더에 추가하고 싶지 않거나 권한이 부족한 경우, 최고의 솔루션은 자신의 글꼴을 사용하여 폴더를 추가 할 것입니다 `SetFontsSources` 방법. 시스템 소스를 사용자 소스로 교체 할 수 있습니다. Aspose.Words 더 이상 레지스트리의 폰트를 볼 수 없거나 Windows\Font 폴더와 대신 지정된 폴더(s) 내에서 글꼴만 스캔합니다. 더 보기 `GetFontSources` 방법은 해당 값을 반환합니다.

### 1개 또는 다중 글꼴 폴더 지정

더 보기 [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) 그리고 SetFontsFolders 방법은 단축키입니다. **SetFontSources** 하나 또는 몇몇을 가진 방법 [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) 예제. 이 방법은 어디를 나타내는 데 사용됩니다. Aspose.Words 글꼴을 찾습니다. 폴더가 존재하지 않거나 접근하지 않는 경우, Aspose.Words 이 폴더를 무시합니다. 글꼴 대용 소스를 포함한 모든 폴더가 무시된 경우, Aspose.Words 기본적으로 Fanwood 글꼴을 사용합니다.

다음 예제는 폴더 또는 소스를 설정하는 방법을 설명합니다. Aspose.Words TrueType 글꼴을 사용하거나 글꼴의 삽입 또는 embedding 동안:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)·

{{% /alert %}}

추가 Boolean 매개 변수는 글꼴이 모든 폴더를 통해 반복적으로 스캔되는지 여부를 제어하므로 지정된 폴더의 모든 아이 폴더를 스캔합니다. 다음 예제는 설정하는 방법을 보여줍니다. Aspose.Words TrueType 글꼴에 대한 여러 폴더를 살펴보려면:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)·

{{% alert color="primary" %}}

주의사항 다른 폰트 소스에서 동일한 가족 이름과 스타일로 글꼴이 있다면, Aspose.Words 더 높은 우선 순위로 소스에서 글꼴을 선택합니다. 아래의 "Priority" 필드의 설명을 참조하십시오.

{{% /alert %}}

시스템 글꼴을 전혀 사용하지 않는 경우, Aspose.Words 당신은 그들을 무시하고 자신의 글꼴을 사용 할 수 있습니다:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### 우선 순위

더 보기 [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) 다른 폰트 소스에서 같은 가족 이름과 스타일로 글꼴이있을 때 속성이 사용됩니다. 이 경우 Aspose.Words 더 높은 우선 순위 값으로 소스에서 글꼴을 선택합니다. 예를 들어, 시스템 폴더에 글꼴의 오래된 버전이 있고 고객은 사용자 정의 폴더에 동일한 글꼴의 새로운 버전을 추가했습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Stream의 로드 글꼴 {#loading-fonts-from-stream}

Aspose.Words 제품정보 [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) 스트림에서 글꼴을로드 할 수있는 클래스. 스트림 글꼴 소스를 사용하려면 사용자가 파생 된 클래스를 만들 필요가 **StreamFontSource** 그리고 구현을 제공합니다 [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) 방법. 더 보기 **OpenFontDataStream** 방법은 몇 번 호출 될 수 있습니다. 처음으로, 그것은 때 호출됩니다 Aspose.Words 제공되는 글꼴 소스를 스캔하여 사용 가능한 글꼴 목록을 얻을 수 있습니다. 나중에 폰트가 문서에 사용되는 경우 폰트 데이터를 파싱하고 일부 출력 형식에 글꼴 데이터를 삽입 할 수 있습니다. **StreamFontSource** 필요한 경우 글꼴 데이터를로드 할 수 있으므로 유용 할 수 있으며 메모리에 저장하지 않습니다. `FontSettings` 일생.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** 관련 상품 [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) 항상 메모리에 스트림을로드하고 그것을 전달하기 때문에 **MemoryFontSource**· 차이점은 **MemoryFontSource** 기억에 저장되어 항상, 그리고 **StreamFontSource** 수요에 적재되고 오른쪽으로 분해됩니다. 그러나 위에 설명 된대로 몇 번로드 될 수 있습니다. 어떤 경우 **MemoryFontSource** 선호하고, 다른 사람에서, **StreamFontSource**·

## 저장하고 글꼴 검색 캐시를로드

처음에 폰트를 검색 할 때, Aspose.Words 사용자에 의해 지정된 글꼴 소스를 통해이 소스에서 데이터를 기반으로 글꼴 검색 캐시를 형성합니다. 따라서, 캐시는 사용할 수있는 글꼴에 대한 정보를 수집합니다: 글꼴 가족, 스타일, 전체 글꼴 이름 및 기타. 다음 호출에서, Aspose.Words 글꼴 검색 캐시의 이름으로 원하는 글꼴에 대한 정보를 검색합니다. 지정된 파일을 복사 한 후 글꼴을 사용합니다.

모든 사용 가능한 글꼴 파일을 파싱하는 절차는 캐시를 초기화하는 것은 꽤 시간이 걸리는 것입니다. Aspose.Words 캐시를 저장하고로드 할 수 있습니다. **FontSettings.SaveSearchCache** 성능 문제를 해결하는 방법. 즉, 사용자는 파일에서 이전에 저장된 캐시를로드하고 모든 사용 가능한 글꼴 파일을 파싱 단계를 건너 뛸 수 있습니다.

{{% alert color="primary" %}}

같은 사용 **SaveSearchCache** 캐시를 업데이트하는 방법.

{{% /alert %}}

{{% alert color="primary" %}}

캐시는 글꼴이 네트워크에로드 될 때 다른 시나리오에 적합합니다. 또는 시나리오에는 어떤 방법이 없을 때 `FontSettings` 로드된 캐시를 가진 인스턴스.

{{% /alert %}}


## 본문 바로가기 {#get-a-list-of-available-fonts}

사용 가능한 글꼴 목록을 얻으려면 예를 들어 PDF 문서를 렌더링하는 데 사용할 수 있습니다. [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) 메소드는 다음과 같은 코드 예에서 표시됩니다. 더 보기 [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) 본문내용 바로가기 주메뉴 바로가기 Aspose.Words 글꼴 엔진:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
