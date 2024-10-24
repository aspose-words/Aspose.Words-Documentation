---
title: 지정 TrueType 글꼴 위치 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 지정 TrueType 글꼴 위치
linktitle: 지정 TrueType 글꼴 위치
description: "다양한 지정 TrueType 글꼴 소스:시스템 폴더,사용자 소스,스트림,파일 시스템 또는 메모리에서 글꼴로드."
type: docs
weight: 30
url: /ko/cpp/specify-truetype-fonts-location/
---

이 항목에서는 기본 동작에 대해 설명합니다 Aspose.Words 그것을 찾을 때 TrueType 운영 체제별 차이점을 포함한 글꼴 및 사용자 글꼴 소스를 지정하는 방법을 보여 줍니다.

그 [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) 클래스는 다양한 글꼴 소스를 지정하는 데 사용됩니다. 여러 가지 구현이 있습니다. **FontSourceBase** 클래스:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

일부 클래스의 구현 세부 사항은 아래에 설명되어 있습니다.

## 시스템에서 글꼴 로드 {#loading-fonts-from-system}

특별한 [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) 기본적으로 항상 사용되는 클래스입니다. 그것은 모든 것을 나타냅니다 TrueType 시스템에 설치된 글꼴. 따라서,소스 목록을 만들 수 있습니다. **SystemFontSource** 및 기타 필수 소스:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

단일 인스턴스 **SystemFontSource** 클래스는 기본적으로 [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). 다른 운영 체제에서 글꼴은 다른 위치에 있을 수 있습니다. 그러나, **FontSettings** 각 문서에 대한 인스턴스는 최적의 솔루션이 아닙니다. 대부분의 경우, [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) 충분해야합니다.

문서별 인스턴스는 다른 문서에 대해 다른 글꼴 소스를 사용해야 하는 경우에만 필요합니다. 여러 사용 **FontSettings** 인스턴스는 캐시를 공유하지 않기 때문에 성능이 저하됩니다.

### 어디 Aspose.Words 를 찾습니다 TrueType 글꼴 켜기 Windows

대부분의 경우, Windows 사용자는 놓친 글꼴 또는 잘못된 레이아웃으로 심각한 문제에 직면하지 않습니다. 일반적으로, Aspose.Words 문서를 통해 가고,이 글꼴의 링크를 발견 할 때,그것은 성공적으로 시스템 폴더에서 글꼴 데이터를 가져옵니다.

시작 Windows, Aspose.Words 먼저 사용 가능한 모든 글꼴을 사용합니다. _%windir%\Fonts 폴더 이 설정은 대부분의 시간 동안 작동합니다. 당신이 필요로하는 경우에 당신은 당신의 자신의 글꼴 폴더를 지정합니다. Aspose.Words 또한 등록 된 추가 글꼴을 찾습니다 HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts 레지스트리 키. 또한, Windows 10 현재 사용자에 대한 글꼴을 설치할 수 있습니다. 글꼴은 %userprofile%\AppData\Local\Microsoft\Windows\Fonts 폴더 및 또한 지정된 HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts 레지스트리,여기서 Aspose.Words 이 글꼴을 찾을 것입니다.

문서에 포함된 글꼴이 포함된 경우, Aspose.Words 문서에서 관련 글꼴 데이터를 읽고 문서의 레이아웃을 만드는 데 사용할 수 있습니다. 문서에는 시스템 폴더에 없는 글꼴에 대한 링크가 포함될 수도 있습니다.:

- 사용자는 다음을 통해 새 글꼴 소스를 설정할 수 있습니다 **FontSettings** 클래스
- Aspose.Words 누락 된 글꼴을 비슷한 글꼴로 대체 할 수 있습니다

{{% alert color="primary" %}}

Aspose.Words 서버에서의 렌더링은 일반적으로 ASP.NET 레지스트리에 대한 액세스를 금지하고 파일 시스템에 대한 액세스를 제한하기 때문에 중간 신뢰 수준에서 실행되도록 구성된 응용 프로그램입니다.

{{% /alert %}}

### 비에 글꼴-Windows 시스템

Aspose.Words 시스템 글꼴 폴더에서 글꼴을 찾습니다. 이 폴더의 목록은 [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/) 방법 지원되는 글꼴이 없는 경우, Aspose.Words 내장 된 기본 글꼴 팬 우드를 사용합니다.-네

의 글꼴 메트릭 이후 Windows 그리고 비-Windows OS 다른, Aspose.Words 가능한 모든 유사한 글꼴을 찾아 원본과 유사한 레이아웃을 구축 않습니다. 그러나 이것이 항상 가능한 것은 아닙니다. 이 경우, **FontSettings** 클래스는 사용자 정의 글꼴 또는 대체 규칙을 추가하는 데 사용해야합니다.

#### 어디 Aspose.Words 를 찾습니다 TrueType 글꼴 켜기 Linux

다른 Linux 배포판은 다른 폴더에 글꼴을 저장할 수 있습니다. Aspose.Words 여러 위치에서 글꼴을 찾습니다. 기본적으로, Aspose.Words 다음 모든 위치에서 글꼴을 찾습니다: `/usr/share/fonts`, `/usr/local/share/fonts`, `/usr/X11R6/lib/X11/fonts`. 이 기본 동작은 대부분의 경우 작동합니다 Linux 이 경우 트루 타입 글꼴의 위치를 명시적으로 지정해야 할 수도 있습니다. 이렇게하려면,당신은 어디에서 알 필요가있다 TrueType 글꼴은 당신의 Linux 배포.

#### 어디 Aspose.Words 를 찾습니다 TrueType 맥 글꼴 OS X

Aspose.Words 에서 글꼴을 찾습니다 `/Library/Fonts` 표준 위치인 폴더 TrueType 맥 글꼴 OS 이 설정은 대부분의 시간 동안 작동하지만 필요할 때 자신의 글꼴 폴더를 지정해야 할 수도 있습니다.

#### TrueType 글꼴 켜기 Android

시작 Android,글꼴 워크플로우는 글꼴 클래스에 캡슐화되어 있습니다.
다섯 가지 유형의 글꼴이 있는데,각 글꼴은 비슷한 글꼴 계열의 그룹을 나타냅니다.:

- DEFAULT
- DEFAULT_BOLD
- MONOSPACE
- SANS_SERIF
- SERIF

예를 들어, Android의 [글꼴2015 년](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) 구성 파일,"시간"은"세리프"가족에 속하므로 NotoSerif-일반."시간"이 요청될 때 사용됩니다:

**글꼴2015 년**

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

유사한 글꼴을 검색하기 위해 앞서 설명한 전략이 사용됩니다.

그 외에도, Aspose.Words 그 자체의 대체 목록이 있습니다. Android 플랫폼

이 문서에 PMingLi우선,, Aspose.Words 시스템 소스 내에서 필요한 글꼴을 찾고 있습니다.

기본 목록 Android 글꼴의 폴더는:

- /시스템/글꼴
- /시스템/글꼴
- /데이터/글꼴

그 Aspose.Words 메서드로 설정된 사용자 정의 소스를 살펴 봅니다:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

명시적인 대체가 지정된 경우, Aspose.Words 누락된 글꼴을 사용자의 제안으로 바꿉니다:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

규칙이 작동하지 않는 경우, Aspose.Words 내부 교체 테이블을 확인하십시오. 테이블에 적합성에 대한 정보가 포함되어 있으면 글꼴이 대체됩니다. 우리의 경우 Aspose.Words 선택할 것이다 `Typeface.SERIF`. 그러나 테이블이 요청 된 글꼴에 대해 아무것도 모르는 경우 Aspose.Words 특수 글꼴을 기반으로 글꼴을 선택합니다 MS 단어 규칙 또는 파노스 공간에서 가장 가까운 거리.

#### TrueType 글꼴 켜기 .NET Core 그리고 Xamarin

에 대한 .NET Core 그리고 Xamarin 같은 규칙이 적용됩니다. Aspose.Words 에 대한 Java 버전 기본적으로 응용 프로그램이 실행되는 플랫폼의 모든 시스템 글꼴을 사용할 수 있습니다.
검색이 수행 될 폴더 목록은 메서드를 호출하여 찾을 수 있습니다:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## 폴더에서 글꼴 로드 {#loading-fonts-from-folder}

처리 중인 문서에 시스템에 없는 글꼴에 대한 링크가 포함되어 있거나 시스템 폴더에 추가하지 않으려는 경우 또는 사용 권한이 없는 경우 가장 좋은 방법은 해당 글꼴을 사용하여 자신의 글꼴로 폴더를 추가하는 것입니다. [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/) 방법 이렇게 하면 시스템 소스를 사용자 소스로 바꿀 수 있습니다. Aspose.Words 더 이상 레지스트리에서 글꼴을 찾거나 Windows\Font 대신 지정된 폴더 내의 글꼴 만 검색합니다. 그 [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) 메서드는 해당 값을 반환합니다.

### 하나 또는 여러 개의 글꼴 폴더 지정

그 [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) 그리고 [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) 메소드는 **SetFontSources** 하나 또는 여러 개의 방법 [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/) 인스턴스. 이 방법들은 Aspose.Words 글꼴을 찾아야합니다. 폴더가 없거나 액세스할 수 없는 경우, Aspose.Words 이 폴더를 무시합니다. 글꼴 대체 소스를 포함한 모든 폴더가 무시된 경우, Aspose.Words 기본값으로 팬 우드 글꼴을 사용합니다.

다음 예제에서는 폴더 또는 원본을 설정하는 방법을 보여 줍니다. Aspose.Words 나중에 찾는 데 사용할 것입니다 TrueType 글꼴을 렌더링하거나 삽입하는 동안 글꼴:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

추가 부울 매개 변수는 글꼴이 모든 폴더를 통해 재귀적으로 스캔되는지 여부를 제어하므로 지정된 폴더의 모든 자식 폴더를 스캔합니다. 다음 예제에서는 설정하는 방법을 보여 줍니다 Aspose.Words 여러 폴더를 검색하려면 TrueType 글꼴을 렌더링하거나 포함 할 때 글꼴:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

우선 순위를 기록하십시오. 다른 글꼴 소스에 동일한 가족 이름과 스타일을 가진 글꼴이 있는 경우 Aspose.Words 우선 순위가 높은 소스에서 글꼴을 선택합니다. 아래의"우선 순위"필드에 대한 설명을 참조하십시오.

시스템 글꼴을 전혀 사용하지 않으려면, Aspose.Words 당신이 그들을 무시하고 자신의 글꼴 만 사용할 수 있습니다:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### 우선 순위 속성

그 [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) 속성은 서로 다른 글꼴 소스에 동일한 패밀리 이름 및 스타일을 가진 글꼴이 있는 경우에 사용됩니다. 이 경우 Aspose.Words 우선 순위가 높은 원본에서 글꼴을 선택합니다. 예를 들어 시스템 폴더에 이전 버전의 글꼴이 있고 고객이 사용자 지정 폴더에 동일한 글꼴의 새 버전을 추가했습니다.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## 스트림에서 글꼴 로드 {#loading-fonts-from-stream}

Aspose.Words 제공 [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource) 스트림에서 글꼴을 로드할 수 있는 클래스입니다. 스트림 글꼴 원본을 사용하려면 사용자가 다음에서 파생 클래스를 만들어야 합니다 **StreamFontSource** 그리고 그 구현을 제공 [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/) 방법 그 **OpenFontDataStream** 방법은 여러 번 호출 할 수 있습니다. 처음으로,그것은 때 호출됩니다 Aspose.Words 제공된 글꼴 소스를 검사하여 사용 가능한 글꼴 목록을 가져옵니다. 나중에 글꼴이 문서에서 글꼴 데이터를 분석하고 글꼴 데이터를 일부 출력 형식에 포함시키는 데 사용되면 호출 될 수 있습니다. **StreamFontSource** 그것은 필요한 경우에만 글꼴 데이터를로드 할 수 있기 때문에 유용 할 수 있으며,메모리에 저장하지 [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/) 평생.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## 글꼴 검색 캐시 저장 및 로드

처음 글꼴을 검색 할 때, Aspose.Words 사용자가 지정한 글꼴 소스를 반복하고 이러한 소스의 데이터를 기반으로 글꼴 검색 캐시를 형성합니다. 따라서 캐시는 글꼴 패밀리,스타일,전체 글꼴 이름 등 사용 가능한 글꼴에 대한 정보를 수집합니다. 후속 통화에, Aspose.Words 글꼴 검색 캐시에서 원하는 글꼴에 대한 정보를 이름으로 검색한 후 글꼴을 사용하도록 지정된 파일을 구문 분석합니다.

사용 가능한 모든 글꼴 파일을 구문 분석하여 캐시를 초기화하는 절차는 시간이 많이 걸립니다. Aspose.Words 를 사용하여 캐시를 저장하고로드 할 수 있습니다 [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) 성능 문제를 해결하는 방법. 즉,사용자는 파일에서 이전에 저장된 캐시를 로드하고 사용 가능한 모든 글꼴 파일을 구문 분석하는 단계를 건너뛸 수 있습니다.

{{% alert color="primary" %}}

같은 사용 **SaveSearchCache** 캐시를 업데이트하는 방법.

{{% /alert %}}

{{% alert color="primary" %}}

이 캐시는 글꼴을 네트워크를 통해 로드할 때 다른 시나리오에도 적합합니다. 또는 시나리오를 저장할 방법이 없을 때 `FontSettings` 로드된 캐시가 있는 인스턴스입니다.

{{% /alert %}}

## 사용 가능한 글꼴 목록 가져오기 {#get-a-list-of-available-fonts}

당신은 예를 들어,렌더링하는 데 사용할 수있는 사용 가능한 글꼴의 목록을 얻으려면 PDF 문서,당신은 사용할 수 있습니다 [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/) 다음 코드 예제와 같이 메서드입니다. 그 [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) 클래스는 사용할 수있는 실제 글꼴에 대한 정보를 지정합니다 Aspose.Words 글꼴 엔진:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
