---
title: Conversão para PDF/A e PDF/UA
second_title: Aspose.Words para .NET
articleTitle: Aprenda os recursos de conversão para PDF/A e PDF/UA
linktitle: Aprenda os recursos de conversão para PDF/A e PDF/UA
description: "Converta para PDF/A-1, PDF/A-2, PDF/A-4 e PDF/UA usando C#. Escolha o melhor padrão PDF para converter um documento usando C#."
type: docs
weight: 25
url: /pt/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF é um formato de página fixa muito popular entre os usuários e amplamente suportado por vários aplicativos, já que um documento PDF tem a mesma aparência em qualquer dispositivo. Por esse motivo, a conversão para PDF é um recurso importante do Aspose.Words.

PDF é um formato complexo por si só, pois possui uma estrutura de arquivo específica, modelo gráfico, incorporação de fontes e algumas funcionalidades de saída complexas, como tags de estrutura de documento, criptografia, assinaturas digitais e formulários editáveis. Além disso, a conversão de um documento para PDF requer diversas etapas de cálculo, que são complexas e demoradas.

Nos artigos a seguir, consideraremos os principais problemas que podem surgir ao trabalhar com documentos em diversos padrões PDF e descreveremos opções para resolvê-los.

## Qual PDF padrão Aspose.Words suporta

Aspose.Words agora permite que os usuários trabalhem com os formatos PDF/A-1, PDF/A-2 e PDF/A-4, bem como PDF/UA-1:

* PDF/A-1 tem sérias limitações, como transparência e algumas opções de compactação são proibidas
* PDF/A-2 elimina algumas das limitações do PDF/A-1, como suporte de transparência e efeitos de camada ou incorporação de fontes OpenType
* PDF/A-4 assume níveis de conformidade revisados: a conformidade normal do PDF/A-4 é equivalente à conformidade de nível U das versões anteriores, e a conformidade de nível A é removida
* O conteúdo do PDF/UA-1 deve ser etiquetado e padronizado de acordo com ISO 32000-1: 2008

PDF/A é uma versão de PDF padronizada por ISO destinada ao uso em arquivamento e armazenamento de longo prazo de documentos eletrônicos. Ao mesmo tempo, PDF/UA é outra versão padronizada ISO do PDF projetada para garantir acessibilidade para pessoas com deficiência que usam tecnologia assistiva. Para especificar o nível de conformidade com os padrões PDF, use a propriedade [Compliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/compliance/). Devido às condições de armazenamento, o documento PDF/A deve incorporar todas as fontes e desabilitar a criptografia, enquanto o PDF/UA deve incorporar apenas todas as fontes.

Nesta seção, veremos mais de perto como trabalhar com documentos PDF/A ou PDF/UA-1.

## ISO relevante para padrões PDF

Para saber mais sobre os diferentes padrões de PDF, verifique os seguintes ISOs:

* PDF 1.7 = ISO-32000-1: 2008
* PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
* PDF/A-2 = ISO-19005-2: 2011
* PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1 = ISO-14289: 2014

## Veja também

* [Converter um documento em PDF](/words/pt/net/convert-a-document-to-pdf/)
* [Como editar tags de estrutura de documento em Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Como verificar ou editar o idioma do texto em Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Como alterar o idioma do texto em Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Como adicionar texto alternativo a uma forma, imagem, gráfico, gráfico SmartArt ou outro objeto em Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Como adicionar texto alternativo e informações complementares às tags](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (ou leia as mesmas informações no [Guia do usuário Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Como configurar a entrada ActualText para texto](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), a seção "Adicionar texto real para um termo abreviado, fórmula ou símbolo não Unicode"
* [Mapeamento Unicode para fontes simbólicas Windows comuns](http://www.alanwood.net/demos/webdings.html)
