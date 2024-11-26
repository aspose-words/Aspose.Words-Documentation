---
title: MFontC++中的可用性和替换
second_title: Aspose.Words对于C++
articleTitle: 字体可用性和替代性
linktitle: 字体可用性和替代性
description: "当找不到确切的替换字体时，Aspose.Words必须将其替换为类似的字体。 本文介绍了找到最合适字体的过程。"
type: docs
weight: 12
url: /zh/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

文档中的文本可以使用各种字体进行格式化，例如Arial，Times New Roman，Verdana等。 当Aspose.Words呈现文档时，它会尝试选择文档中指定的字体。

但是，在某些情况下，无法找到确切的字体，并且Aspose.Words必须将其替换为类似的字体。 Aspose.Words根据以下过程选择字体:

1. Aspose.Words尝试在具有确切字体名称的可用字体源中查找字体。
1. Aspose.Words尝试在原始文档中嵌入的字体中查找所需的字体。 某些文档格式（如DOCX）可以包含嵌入字体。
1. 如果Aspose.Words无法找到名称完全匹配的所需字体，并且为此字体定义了[AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)属性，则Aspose.Words将从[FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info)类中查找用**AltName**定义的字体，该类指定字体信息。
1. 如果Aspose.Words无法定位定义的字体，并且**AltName**也没有定义，则逐个应用字体替换规则，如下所述（当找到适当的替换时，字体替换过程停止，不执行下一步）:
   1. Aspose.Words将尝试使用`FontConfig`实用程序应用OS字体设置（如果它们可用）。 此非Windows功能必须与FontConfig兼容的OS一起使用。 几乎任何基于Unix的OS已经有一个`FontConfig`库，旨在提供系统范围的字体配置，自定义和访问应用程序。 否则，用户可以轻松安装此库。<br>
      Aspose.Words知道如何查询数据并为自己的目的解释FontConfig结果。 默认情况下，`FontConfig`实用程序处于禁用状态。 您可以按如下方式启用它:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. 下一步是一个简单但非常强大的机制，称为[TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule)。 默认情况下，此功能是活动的，可用于任何OS。 Aspose.Words使用XML表定义不同OS的基本替换规则。 根据表替换规则，将使用替换字体名称列表。<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont-要替换的字体，SubstituteFonts-替换变体列表，用逗号分隔。 第一个可用字体用于替换。<br>
      此规则的主要功能是能够加载您自己的替换表，如下例所示:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      您可以将jar中的现有表作为基础，也可以通过以下方式以编程方式保存:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      尽管此机制具有灵活性，但在某些情况下，禁用它会更好，如下所示:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. 如果表替换规则找不到字体，则将应用**FontInfo**替换规则。 默认情况下启用此机制。 Aspose.Words根据特定文档中包含的字体信息找到最合适的字体。 此信息可以从**FontInfo**类中获取，如下所示:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      用户不能干预此功能的工作流程，除非他们决定在结果不满意的情况下禁用它:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      如果**FontInfo**对于缺失的字体不可用，则该过程停止。
   1. 当`FontInfo`替换也失败时，将应用**DefaultFont**替换规则。 默认情况下也启用此规则。 根据此规则，Aspose.Words将尝试使用[DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/)属性中指定的默认字体。 如果用户没有选择自己的默认字体，那么"Times New Roman"将被用作默认字体。 可以禁用此规则，如下所示:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      要检查当前的默认字体，请使用:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      要设置自己的替换选项，请应用:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. 如果Aspose.Words无法执行字体替换，它会尝试从可用字体源获取第一个可用字体。
1. 最后，如果Aspose.Words在可用字体源中找不到任何字体，它将使用嵌入到Aspose.Words程序集中的免费Fanwood字体呈现文档。

{{% alert color="primary" %}}

如果**FontInfo**可用，则*FontInfo substitution rule*将始终解析字体并复盖默认字体规则。 如果要使用默认字体规则，则应禁用*FontInfo substitution rule*。 请注意，*FontConfig substitution rule*将在大多数情况下解析字体，从而复盖所有其他规则。

{{% /alert %}}


