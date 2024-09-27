<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
                xmlns:db="http://docbook.org/ns/docbook"
                xmlns:ext="http://docbook.org/extensions/xslt"
                xmlns:f="http://docbook.org/ns/docbook/functions"
                xmlns:m="http://docbook.org/ns/docbook/modes"
                xmlns:v="http://docbook.org/ns/docbook/variables"
                xmlns:vp="http://docbook.org/ns/docbook/variables/private"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                default-mode="m:docbook"
                exclude-result-prefixes="#all"
                version="3.0">

<!-- **********************************************************************
     This file is generated automatically from the parameters
     reference in the guide. Do not edit this file by hand.
     ********************************************************************** -->

<!-- Note: Some of these parameters are initialized using content
     instead of a select attribute in order to make the reference page
     in the Guide work better. -->

<!-- Many of these parameters are shadowed by variables (see
     variable.xsl) for use in the stylesheets. Often, they're defined
     as strings here and as more useful data types in the variables. -->
   <xsl:param name="additional-languages" select="()"/>
   <xsl:param name="align-char-default" as="xs:string" select="'.'"/>
   <xsl:param name="align-char-pad" select="' '"/>
   <xsl:param name="align-char-width" select="2"/>
   <xsl:param name="allow-eval" as="xs:string" select="'true'"/>
   <xsl:param name="annotate-toc" select="'true'"/>
   <xsl:param name="annotation-collection" as="xs:string" select="''"/>
   <xsl:param name="annotation-mark">
      <sup>⌖</sup>
   </xsl:param>
   <xsl:param name="annotation-placement" select="'after'"/>
   <xsl:param name="annotation-style" select="'javascript'"/>
   <xsl:param name="annotations-js" select="'js/annotations.js'"/>
   <xsl:param name="auto-toc" as="xs:string" select="'true'"/>
   <xsl:param name="bibliography-collection" as="xs:string" select="''"/>
   <xsl:param name="bibliography-style" as="xs:string" select="'default'"/>
   <xsl:param name="callout-default-column" select="60"/>
   <xsl:param name="callout-unicode-start" select="9311"/>
   <xsl:param name="chunk" as="xs:string?" select="()"/>
   <xsl:param name="chunk-exclude"
              as="xs:string*"
              select="('self::db:partintro',&#xA; 'self::*[ancestor::db:partintro]',&#xA; 'self::db:annotation',&#xA; 'self::db:section[not(preceding-sibling::db:section)]',&#xA; 'self::db:sect1[not(preceding-sibling::db:sect1)]',&#xA; 'self::db:toc')"/>
   <xsl:param name="chunk-include"
              as="xs:string*"
              select="('parent::db:set',&#xA; 'parent::db:book',&#xA; 'parent::db:part',&#xA; 'parent::db:reference',&#xA; 'self::db:refentry',&#xA; 'self::db:section',&#xA; 'self::db:sect1')"/>
   <xsl:param name="chunk-nav" as="xs:string" select="'true'"/>
   <xsl:param name="chunk-nav-js" as="xs:string" select="'js/chunk-nav.js'"/>
   <xsl:param name="chunk-output-base-uri" as="xs:string">
      <xsl:choose>
         <xsl:when test="not($v:chunk)">
    <!-- it doesn't actually matter -->
            <xsl:sequence select="''"/>
         </xsl:when>
         <xsl:when use-when="function-available('ext:cwd')" test="true()">
            <xsl:sequence select="ext:cwd()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:message terminate="yes" select="'You must specify the $chunk-output-base-uri'"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:param>
   <xsl:param name="chunk-renumber-footnotes" select="'true'"/>
   <xsl:param name="chunk-section-depth" select="1"/>
   <xsl:param name="classsynopsis-indent" select="'  '"/>
   <xsl:param name="component-numbers" as="xs:string" select="'true'"/>
   <xsl:param name="component-numbers-inherit" as="xs:string" select="'false'"/>
   <xsl:param name="control-js" as="xs:string" select="'js/controls.js'"/>
   <xsl:param name="copyright-collapse-years" select="true()"/>
   <xsl:param name="copyright-year-range-separator" select="'–'"/>
   <xsl:param name="copyright-year-separator" select="', '"/>
   <xsl:param name="date-date-format" select="'[D01] [MNn,*-3] [Y0001]'"/>
   <xsl:param name="date-dateTime-format"
              select="'[H01]:[m01] [D01] [MNn,*-3] [Y0001]'"/>
   <xsl:param name="dc-metadata" as="xs:string" select="'true'"/>
   <xsl:param name="debug" static="yes" as="xs:string" select="''"/>
   <xsl:param name="default-float-style" select="'left'"/>
   <xsl:param name="default-language" select="'en'"/>
   <xsl:param name="default-length-magnitude" select="25.0"/>
   <xsl:param name="default-length-unit" select="'%'"/>
   <xsl:param name="personal-name-style" select="()"/>
   <xsl:param name="default-theme" as="xs:string" select="''"/>
   <xsl:param name="division-numbers" as="xs:string" select="'true'"/>
   <xsl:param name="division-numbers-inherit" as="xs:string" select="'false'"/>
   <xsl:param name="docbook-transclusion" select="'false'"/>
   <xsl:param name="dynamic-profile-error" select="'ignore'"/>
   <xsl:param name="dynamic-profiles" as="xs:string" select="'false'"/>
   <xsl:param name="experimental-pmuj" select="'false'"/>
   <xsl:param name="footnote-numeration" select="('1')"/>
   <xsl:param name="formal-object-title-placement"
              select="'after table:before formalgroup:before'"/>
   <xsl:param name="mediaobject-details-placement" select="'before'"/>
   <xsl:param name="formalgroup-nested-object-title-placement" select="'after'"/>
   <xsl:param name="funcsynopsis-default-style" select="'kr'"/>
   <xsl:param name="funcsynopsis-table-threshold" select="40"/>
   <xsl:param name="funcsynopsis-trailing-punctuation" select="';'"/>
   <xsl:param name="generate-html-page" as="xs:string" select="'true'"/>
   <xsl:param name="generate-index" select="'true'"/>
   <xsl:param name="generate-nested-toc"
              as="xs:string"
              select="'not(f:section(.))&#xA;or (f:section(.) and f:section-depth(.) le $vp:section-toc-depth)'"/>
   <xsl:param name="generate-toc"
              as="xs:string"
              select="'(empty(parent::*) and self::db:article)&#xA;or self::db:set or self::db:book&#xA;or self::db:part or self::db:reference'"/>
   <xsl:param name="generate-trivial-toc" as="xs:string" select="'false'"/>
   <xsl:param name="generated-id-root" select="'R'"/>
   <xsl:param name="generated-id-sep" select="'_'"/>
   <xsl:param name="generator-metadata" as="xs:string" select="'true'"/>
   <xsl:param name="gentext-language" select="()"/>
   <xsl:param name="glossary-collection" as="xs:string" select="''"/>
   <xsl:param name="glossary-sort-entries" select="'true'"/>
   <xsl:param name="glossary-automatic-divisions" select="'false'"/>
   <xsl:param name="html-extension" select="'.html'"/>
   <xsl:param name="image-ignore-scaling" as="xs:boolean" select="false()"/>
   <xsl:param name="image-nominal-height" select="'4in'"/>
   <xsl:param name="image-nominal-width" select="$nominal-page-width"/>
   <xsl:param name="image-property-warning" select="true()"/>
   <xsl:param name="index-on-type" select="'true'"/>
   <xsl:param name="index-on-role" select="'true'"/>
   <xsl:param name="index-show-entries" select="()"/>
   <xsl:param name="indexed-section-groups" select="'true'"/>
   <xsl:param name="lists-of-equations" as="xs:string" select="'false'"/>
   <xsl:param name="lists-of-examples" as="xs:string" select="'true'"/>
   <xsl:param name="lists-of-figures" as="xs:string" select="'true'"/>
   <xsl:param name="lists-of-procedures" as="xs:string" select="'false'"/>
   <xsl:param name="lists-of-tables" as="xs:string" select="'true'"/>
   <xsl:param name="local-conventions" as="xs:string?" select="()"/>
   <xsl:param name="mathml-js"
              select="'https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=MML_CHTML'"/>
   <xsl:param name="mediaobject-accessibility"
              as="xs:string"
              select="'summary details'"/>
   <xsl:param name="mediaobject-exclude-extensions"
              as="xs:string"
              select="&#34;.eps .ps .pdf&#34;"/>
   <xsl:param name="mediaobject-input-base-uri" as="xs:string?" select="()"/>
   <xsl:param name="mediaobject-grouped-by-type" as="xs:string" select="'false'"/>
   <xsl:param name="mediaobject-output-base-uri" as="xs:string?" select="()"/>
   <xsl:param name="mediaobject-output-paths" as="xs:string" select="'true'"/>
   <xsl:param name="mediaobject-video-element" as="xs:string" select="'video'"/>
   <xsl:param name="nominal-page-width" select="'6in'"/>
   <xsl:param name="number-single-appendix" select="'true'"/>
   <xsl:param name="olink-databases" as="xs:string" select="''"/>
   <xsl:param name="orderedlist-item-numeration" select="'1aiAI'"/>
   <xsl:param name="othername-in-middle" select="'true'"/>
   <xsl:param name="output-media" select="'screen'"/>
   <xsl:param name="oxy-markup" select="'false'"/>
   <xsl:param name="pagetoc-elements" select="''"/>
   <xsl:param name="pagetoc-dynamic" select="'true'"/>
   <xsl:param name="pagetoc-js" select="'js/pagetoc.js'"/>
   <xsl:param name="page-style" as="xs:string" select="'article'"/>
   <xsl:param name="paper-size" as="xs:string?" select="()"/>
   <xsl:param name="persistent-toc" select="'false'"/>
   <xsl:param name="persistent-toc-css" select="'css/docbook-toc.css'"/>
   <xsl:param name="persistent-toc-filename"
              as="xs:string?"
              select="'persistent-toc.html'"/>
   <xsl:param name="persistent-toc-js" select="'js/persistent-toc.js'"/>
   <xsl:param name="persistent-toc-search" select="'true'"/>
   <xsl:param name="pixels-per-inch" select="96.0"/>
   <xsl:param name="procedure-step-numeration" select="'1aiAI'"/>
   <xsl:param name="productionset-lhs-rhs-separator" select="':='"/>
   <xsl:param name="profile-arch" select="''"/>
   <xsl:param name="profile-audience" select="''"/>
   <xsl:param name="profile-condition" select="''"/>
   <xsl:param name="profile-conformance" select="''"/>
   <xsl:param name="profile-lang" select="''"/>
   <xsl:param name="profile-os" select="''"/>
   <xsl:param name="profile-outputformat" select="''"/>
   <xsl:param name="profile-revision" select="''"/>
   <xsl:param name="profile-revisionflag" select="''"/>
   <xsl:param name="profile-role" select="''"/>
   <xsl:param name="profile-security" select="''"/>
   <xsl:param name="profile-separator" select="';'"/>
   <xsl:param name="profile-userlevel" select="''"/>
   <xsl:param name="profile-vendor" select="''"/>
   <xsl:param name="profile-wordsize" select="''"/>
   <xsl:param name="theme-picker" as="xs:string" select="'false'"/>
   <xsl:param name="transclusion-id-fixup" as="xs:string" select="'none'"/>
   <xsl:param name="transclusion-link-scope" as="xs:string" select="'global'"/>
   <xsl:param name="transclusion-prefix-separator" as="xs:string" select="'---'"/>
   <xsl:param name="transclusion-suffix" as="xs:string" select="''"/>
   <xsl:param name="qandadiv-default-toc" select="$qandaset-default-toc"/>
   <xsl:param name="qandaset-default-label" select="'number'"/>
   <xsl:param name="qandaset-default-toc" select="'true'"/>
   <xsl:param name="relax-ng-grammar" as="xs:string?" select="()"/>
   <xsl:param name="refentry-generate-name" select="true()"/>
   <xsl:param name="refentry-generate-title" select="true()"/>
   <xsl:param name="resource-base-uri" select="'./'"/>
   <xsl:param name="revhistory-style" select="'table'"/>
   <xsl:param name="section-numbers" as="xs:string" select="'true'"/>
   <xsl:param name="section-numbers-inherit" select="'true'"/>
   <xsl:param name="section-toc-depth" select="'unbounded'"/>
   <xsl:param name="segmentedlist-style" select="'table'"/>
   <xsl:param name="show-remarks" select="'false'"/>
   <xsl:param name="sidebar-as-aside" select="false()"/>
   <xsl:param name="sort-collation"
              select="'http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive'"/>
   <xsl:param name="table-accessibility"
              as="xs:string"
              select="'summary details'"/>
   <xsl:param name="table-footnote-numeration" select="('a')"/>
   <xsl:param name="use-docbook-css" as="xs:string" select="'true'"/>
   <xsl:param name="use-minified-css" as="xs:string" select="'false'"/>
   <xsl:param name="user-css-links" select="()"/>
   <xsl:param name="variablelist-termlength-threshold" select="20"/>
   <xsl:param name="verbatim-callouts"
              as="xs:string"
              select="'linecolumn lines lineranges-first'"/>
   <xsl:param name="verbatim-line-style"
              select="'programlisting programlistingco&#xA; screen screenco synopsis'"/>
   <xsl:param name="verbatim-number-every-nth" select="5"/>
   <xsl:param name="verbatim-number-first-line" select="'true'"/>
   <xsl:param name="verbatim-number-minlines" select="'5'"/>
   <xsl:param name="verbatim-number-separator" select="'|'"/>
   <xsl:param name="verbatim-numbered-elements"
              select="'programlisting programlistingco'"/>
   <xsl:param name="verbatim-plain-style"
              as="xs:string"
              select="'address literallayout funcsynopsisinfo classsynopsisinfo'"/>
   <xsl:param name="verbatim-space" select="' '"/>
   <xsl:param name="verbatim-style-default" select="'lines'"/>
   <xsl:param name="verbatim-syntax-highlight-css" select="'css/pygments.css'"/>
   <xsl:param name="verbatim-syntax-highlight-languages"
              select="'python perl html xml xslt xquery javascript json css'"/>
   <xsl:param name="verbatim-syntax-highlighter"
              as="xs:string"
              select="'pygments'"/>
   <xsl:param name="verbatim-table-style" select="''"/>
   <xsl:param name="verbatim-trim-leading-blank-lines" select="'false'"/>
   <xsl:param name="verbatim-trim-trailing-blank-lines" select="'true'"/>
   <xsl:param name="xlink-arclist-before" select="' ['"/>
   <xsl:param name="xlink-arclist-after" select="'] '"/>
   <xsl:param name="xlink-arclist-titlesep" select="': '"/>
   <xsl:param name="xlink-arclist-sep" select="', '"/>
   <xsl:param name="xlink-icon-closed" select="()"/>
   <xsl:param name="xlink-icon-open" select="()"/>
   <xsl:param name="xlink-js" select="'js/xlink.js'"/>
   <xsl:param name="xlink-style" select="'document'"/>
   <xsl:param name="xlink-style-default" select="'inline'"/>
   <xsl:param name="xspec" as="xs:string" select="'false'"/>
   <xsl:param name="transform-original" select="()"/>
   <xsl:param name="transform-before" select="()"/>
   <xsl:param name="transform-after" select="()"/>
   <xsl:param name="dynamic-profile-variables"
              as="map(xs:QName, item()*)?"
              select="()"/>
   <xsl:param name="warn-about-missing-localizations"
              as="xs:string"
              select="'true'"/>
   <xsl:param name="sets-number-from" as="xs:string" select="'set'"/>
   <xsl:param name="books-number-from" as="xs:string" select="'set'"/>
   <xsl:param name="divisions-number-from" as="xs:string" select="'book'"/>
   <xsl:param name="components-number-from" as="xs:string" select="'book'"/>
   <xsl:param name="sections-number-from" as="xs:string" select="'component'"/>
   <xsl:param name="formal-objects-number-from"
              as="xs:string"
              select="'component'"/>
   <xsl:param name="sets-inherit-from" as="xs:string" select="''"/>
   <xsl:param name="books-inherit-from" as="xs:string" select="''"/>
   <xsl:param name="divisions-inherit-from" as="xs:string" select="''"/>
   <xsl:param name="components-inherit-from" as="xs:string" select="''"/>
   <xsl:param name="sections-inherit-from" as="xs:string" select="'section'"/>
   <xsl:param name="formal-objects-inherit-from"
              as="xs:string"
              select="'component'"/>
   <xsl:param name="unwrap-paragraphs" as="xs:string" select="'false'"/>
   <xsl:param name="fallback-js" select="'js/fallback.js'"/>
   <xsl:param name="message-level" as="xs:integer" select="1"/>
   <xsl:param name="copy-verbatim-js" select="'js/copy-verbatim.js'"/>
   <xsl:param name="translate-suppress-elements" select="''"/>
   <xsl:param name="varlistentry-separate-terms" select="'false'"/>
   <xsl:param name="presentation-mode" select="'false'"/>
   <xsl:param name="presentation-js" select="'js/presentation.js'"/>
   <xsl:param name="presentation-css" select="'css/presentation.css'"/>
   <xsl:param name="inline-xlink-href" as="xs:string" select="'false'"/>
   <xsl:param name="transformed-docbook-input" as="xs:string?" select="()"/>
   <xsl:param name="transformed-docbook-output" as="xs:string?" select="()"/>
   <xsl:param name="titleabbrev-passthrough" as="xs:string" select="'true'"/>
   <xsl:param name="variablelist-panelset" as="xs:string" select="'true'"/>
   <xsl:variable name="vp:static-parameters" as="map(xs:QName, item()*)">
      <xsl:map>
         <xsl:map-entry key="QName('', 'debug')" select="$debug"/>
      </xsl:map>
   </xsl:variable>
   <xsl:variable name="vp:dynamic-parameters" as="map(xs:QName, item()*)">
      <xsl:map>
         <xsl:map-entry key="QName('', 'additional-languages')" select="$additional-languages"/>
         <xsl:map-entry key="QName('', 'align-char-default')" select="$align-char-default"/>
         <xsl:map-entry key="QName('', 'align-char-pad')" select="$align-char-pad"/>
         <xsl:map-entry key="QName('', 'align-char-width')" select="$align-char-width"/>
         <xsl:map-entry key="QName('', 'allow-eval')" select="$allow-eval"/>
         <xsl:map-entry key="QName('', 'annotate-toc')" select="$annotate-toc"/>
         <xsl:map-entry key="QName('', 'annotation-collection')"
                        select="$annotation-collection"/>
         <xsl:map-entry key="QName('', 'annotation-mark')" select="$annotation-mark"/>
         <xsl:map-entry key="QName('', 'annotation-placement')" select="$annotation-placement"/>
         <xsl:map-entry key="QName('', 'annotation-style')" select="$annotation-style"/>
         <xsl:map-entry key="QName('', 'annotations-js')" select="$annotations-js"/>
         <xsl:map-entry key="QName('', 'auto-toc')" select="$auto-toc"/>
         <xsl:map-entry key="QName('', 'bibliography-collection')"
                        select="$bibliography-collection"/>
         <xsl:map-entry key="QName('', 'bibliography-style')" select="$bibliography-style"/>
         <xsl:map-entry key="QName('', 'callout-default-column')"
                        select="$callout-default-column"/>
         <xsl:map-entry key="QName('', 'callout-unicode-start')"
                        select="$callout-unicode-start"/>
         <xsl:map-entry key="QName('', 'chunk')" select="$chunk"/>
         <xsl:map-entry key="QName('', 'chunk-exclude')" select="$chunk-exclude"/>
         <xsl:map-entry key="QName('', 'chunk-include')" select="$chunk-include"/>
         <xsl:map-entry key="QName('', 'chunk-nav')" select="$chunk-nav"/>
         <xsl:map-entry key="QName('', 'chunk-nav-js')" select="$chunk-nav-js"/>
         <xsl:map-entry key="QName('', 'chunk-output-base-uri')"
                        select="$chunk-output-base-uri"/>
         <xsl:map-entry key="QName('', 'chunk-renumber-footnotes')"
                        select="$chunk-renumber-footnotes"/>
         <xsl:map-entry key="QName('', 'chunk-section-depth')" select="$chunk-section-depth"/>
         <xsl:map-entry key="QName('', 'classsynopsis-indent')" select="$classsynopsis-indent"/>
         <xsl:map-entry key="QName('', 'component-numbers')" select="$component-numbers"/>
         <xsl:map-entry key="QName('', 'component-numbers-inherit')"
                        select="$component-numbers-inherit"/>
         <xsl:map-entry key="QName('', 'control-js')" select="$control-js"/>
         <xsl:map-entry key="QName('', 'copyright-collapse-years')"
                        select="$copyright-collapse-years"/>
         <xsl:map-entry key="QName('', 'copyright-year-range-separator')"
                        select="$copyright-year-range-separator"/>
         <xsl:map-entry key="QName('', 'copyright-year-separator')"
                        select="$copyright-year-separator"/>
         <xsl:map-entry key="QName('', 'date-date-format')" select="$date-date-format"/>
         <xsl:map-entry key="QName('', 'date-dateTime-format')" select="$date-dateTime-format"/>
         <xsl:map-entry key="QName('', 'dc-metadata')" select="$dc-metadata"/>
         <xsl:map-entry key="QName('', 'default-float-style')" select="$default-float-style"/>
         <xsl:map-entry key="QName('', 'default-language')" select="$default-language"/>
         <xsl:map-entry key="QName('', 'default-length-magnitude')"
                        select="$default-length-magnitude"/>
         <xsl:map-entry key="QName('', 'default-length-unit')" select="$default-length-unit"/>
         <xsl:map-entry key="QName('', 'personal-name-style')" select="$personal-name-style"/>
         <xsl:map-entry key="QName('', 'default-theme')" select="$default-theme"/>
         <xsl:map-entry key="QName('', 'division-numbers')" select="$division-numbers"/>
         <xsl:map-entry key="QName('', 'division-numbers-inherit')"
                        select="$division-numbers-inherit"/>
         <xsl:map-entry key="QName('', 'docbook-transclusion')" select="$docbook-transclusion"/>
         <xsl:map-entry key="QName('', 'dynamic-profile-error')"
                        select="$dynamic-profile-error"/>
         <xsl:map-entry key="QName('', 'dynamic-profiles')" select="$dynamic-profiles"/>
         <xsl:map-entry key="QName('', 'experimental-pmuj')" select="$experimental-pmuj"/>
         <xsl:map-entry key="QName('', 'footnote-numeration')" select="$footnote-numeration"/>
         <xsl:map-entry key="QName('', 'formal-object-title-placement')"
                        select="$formal-object-title-placement"/>
         <xsl:map-entry key="QName('', 'mediaobject-details-placement')"
                        select="$mediaobject-details-placement"/>
         <xsl:map-entry key="QName('', 'formalgroup-nested-object-title-placement')"
                        select="$formalgroup-nested-object-title-placement"/>
         <xsl:map-entry key="QName('', 'funcsynopsis-default-style')"
                        select="$funcsynopsis-default-style"/>
         <xsl:map-entry key="QName('', 'funcsynopsis-table-threshold')"
                        select="$funcsynopsis-table-threshold"/>
         <xsl:map-entry key="QName('', 'funcsynopsis-trailing-punctuation')"
                        select="$funcsynopsis-trailing-punctuation"/>
         <xsl:map-entry key="QName('', 'generate-html-page')" select="$generate-html-page"/>
         <xsl:map-entry key="QName('', 'generate-index')" select="$generate-index"/>
         <xsl:map-entry key="QName('', 'generate-nested-toc')" select="$generate-nested-toc"/>
         <xsl:map-entry key="QName('', 'generate-toc')" select="$generate-toc"/>
         <xsl:map-entry key="QName('', 'generate-trivial-toc')" select="$generate-trivial-toc"/>
         <xsl:map-entry key="QName('', 'generated-id-root')" select="$generated-id-root"/>
         <xsl:map-entry key="QName('', 'generated-id-sep')" select="$generated-id-sep"/>
         <xsl:map-entry key="QName('', 'generator-metadata')" select="$generator-metadata"/>
         <xsl:map-entry key="QName('', 'gentext-language')" select="$gentext-language"/>
         <xsl:map-entry key="QName('', 'glossary-collection')" select="$glossary-collection"/>
         <xsl:map-entry key="QName('', 'glossary-sort-entries')"
                        select="$glossary-sort-entries"/>
         <xsl:map-entry key="QName('', 'glossary-automatic-divisions')"
                        select="$glossary-automatic-divisions"/>
         <xsl:map-entry key="QName('', 'html-extension')" select="$html-extension"/>
         <xsl:map-entry key="QName('', 'image-ignore-scaling')" select="$image-ignore-scaling"/>
         <xsl:map-entry key="QName('', 'image-nominal-height')" select="$image-nominal-height"/>
         <xsl:map-entry key="QName('', 'image-nominal-width')" select="$image-nominal-width"/>
         <xsl:map-entry key="QName('', 'image-property-warning')"
                        select="$image-property-warning"/>
         <xsl:map-entry key="QName('', 'index-on-type')" select="$index-on-type"/>
         <xsl:map-entry key="QName('', 'index-on-role')" select="$index-on-role"/>
         <xsl:map-entry key="QName('', 'index-show-entries')" select="$index-show-entries"/>
         <xsl:map-entry key="QName('', 'indexed-section-groups')"
                        select="$indexed-section-groups"/>
         <xsl:map-entry key="QName('', 'lists-of-equations')" select="$lists-of-equations"/>
         <xsl:map-entry key="QName('', 'lists-of-examples')" select="$lists-of-examples"/>
         <xsl:map-entry key="QName('', 'lists-of-figures')" select="$lists-of-figures"/>
         <xsl:map-entry key="QName('', 'lists-of-procedures')" select="$lists-of-procedures"/>
         <xsl:map-entry key="QName('', 'lists-of-tables')" select="$lists-of-tables"/>
         <xsl:map-entry key="QName('', 'local-conventions')" select="$local-conventions"/>
         <xsl:map-entry key="QName('', 'mathml-js')" select="$mathml-js"/>
         <xsl:map-entry key="QName('', 'mediaobject-accessibility')"
                        select="$mediaobject-accessibility"/>
         <xsl:map-entry key="QName('', 'mediaobject-exclude-extensions')"
                        select="$mediaobject-exclude-extensions"/>
         <xsl:map-entry key="QName('', 'mediaobject-input-base-uri')"
                        select="$mediaobject-input-base-uri"/>
         <xsl:map-entry key="QName('', 'mediaobject-grouped-by-type')"
                        select="$mediaobject-grouped-by-type"/>
         <xsl:map-entry key="QName('', 'mediaobject-output-base-uri')"
                        select="$mediaobject-output-base-uri"/>
         <xsl:map-entry key="QName('', 'mediaobject-output-paths')"
                        select="$mediaobject-output-paths"/>
         <xsl:map-entry key="QName('', 'mediaobject-video-element')"
                        select="$mediaobject-video-element"/>
         <xsl:map-entry key="QName('', 'nominal-page-width')" select="$nominal-page-width"/>
         <xsl:map-entry key="QName('', 'number-single-appendix')"
                        select="$number-single-appendix"/>
         <xsl:map-entry key="QName('', 'olink-databases')" select="$olink-databases"/>
         <xsl:map-entry key="QName('', 'orderedlist-item-numeration')"
                        select="$orderedlist-item-numeration"/>
         <xsl:map-entry key="QName('', 'othername-in-middle')" select="$othername-in-middle"/>
         <xsl:map-entry key="QName('', 'output-media')" select="$output-media"/>
         <xsl:map-entry key="QName('', 'oxy-markup')" select="$oxy-markup"/>
         <xsl:map-entry key="QName('', 'pagetoc-elements')" select="$pagetoc-elements"/>
         <xsl:map-entry key="QName('', 'pagetoc-dynamic')" select="$pagetoc-dynamic"/>
         <xsl:map-entry key="QName('', 'pagetoc-js')" select="$pagetoc-js"/>
         <xsl:map-entry key="QName('', 'page-style')" select="$page-style"/>
         <xsl:map-entry key="QName('', 'paper-size')" select="$paper-size"/>
         <xsl:map-entry key="QName('', 'persistent-toc')" select="$persistent-toc"/>
         <xsl:map-entry key="QName('', 'persistent-toc-css')" select="$persistent-toc-css"/>
         <xsl:map-entry key="QName('', 'persistent-toc-filename')"
                        select="$persistent-toc-filename"/>
         <xsl:map-entry key="QName('', 'persistent-toc-js')" select="$persistent-toc-js"/>
         <xsl:map-entry key="QName('', 'persistent-toc-search')"
                        select="$persistent-toc-search"/>
         <xsl:map-entry key="QName('', 'pixels-per-inch')" select="$pixels-per-inch"/>
         <xsl:map-entry key="QName('', 'procedure-step-numeration')"
                        select="$procedure-step-numeration"/>
         <xsl:map-entry key="QName('', 'productionset-lhs-rhs-separator')"
                        select="$productionset-lhs-rhs-separator"/>
         <xsl:map-entry key="QName('', 'profile-arch')" select="$profile-arch"/>
         <xsl:map-entry key="QName('', 'profile-audience')" select="$profile-audience"/>
         <xsl:map-entry key="QName('', 'profile-condition')" select="$profile-condition"/>
         <xsl:map-entry key="QName('', 'profile-conformance')" select="$profile-conformance"/>
         <xsl:map-entry key="QName('', 'profile-lang')" select="$profile-lang"/>
         <xsl:map-entry key="QName('', 'profile-os')" select="$profile-os"/>
         <xsl:map-entry key="QName('', 'profile-outputformat')" select="$profile-outputformat"/>
         <xsl:map-entry key="QName('', 'profile-revision')" select="$profile-revision"/>
         <xsl:map-entry key="QName('', 'profile-revisionflag')" select="$profile-revisionflag"/>
         <xsl:map-entry key="QName('', 'profile-role')" select="$profile-role"/>
         <xsl:map-entry key="QName('', 'profile-security')" select="$profile-security"/>
         <xsl:map-entry key="QName('', 'profile-separator')" select="$profile-separator"/>
         <xsl:map-entry key="QName('', 'profile-userlevel')" select="$profile-userlevel"/>
         <xsl:map-entry key="QName('', 'profile-vendor')" select="$profile-vendor"/>
         <xsl:map-entry key="QName('', 'profile-wordsize')" select="$profile-wordsize"/>
         <xsl:map-entry key="QName('', 'theme-picker')" select="$theme-picker"/>
         <xsl:map-entry key="QName('', 'transclusion-id-fixup')"
                        select="$transclusion-id-fixup"/>
         <xsl:map-entry key="QName('', 'transclusion-link-scope')"
                        select="$transclusion-link-scope"/>
         <xsl:map-entry key="QName('', 'transclusion-prefix-separator')"
                        select="$transclusion-prefix-separator"/>
         <xsl:map-entry key="QName('', 'transclusion-suffix')" select="$transclusion-suffix"/>
         <xsl:map-entry key="QName('', 'qandadiv-default-toc')" select="$qandadiv-default-toc"/>
         <xsl:map-entry key="QName('', 'qandaset-default-label')"
                        select="$qandaset-default-label"/>
         <xsl:map-entry key="QName('', 'qandaset-default-toc')" select="$qandaset-default-toc"/>
         <xsl:map-entry key="QName('', 'relax-ng-grammar')" select="$relax-ng-grammar"/>
         <xsl:map-entry key="QName('', 'refentry-generate-name')"
                        select="$refentry-generate-name"/>
         <xsl:map-entry key="QName('', 'refentry-generate-title')"
                        select="$refentry-generate-title"/>
         <xsl:map-entry key="QName('', 'resource-base-uri')" select="$resource-base-uri"/>
         <xsl:map-entry key="QName('', 'revhistory-style')" select="$revhistory-style"/>
         <xsl:map-entry key="QName('', 'section-numbers')" select="$section-numbers"/>
         <xsl:map-entry key="QName('', 'section-numbers-inherit')"
                        select="$section-numbers-inherit"/>
         <xsl:map-entry key="QName('', 'section-toc-depth')" select="$section-toc-depth"/>
         <xsl:map-entry key="QName('', 'segmentedlist-style')" select="$segmentedlist-style"/>
         <xsl:map-entry key="QName('', 'show-remarks')" select="$show-remarks"/>
         <xsl:map-entry key="QName('', 'sidebar-as-aside')" select="$sidebar-as-aside"/>
         <xsl:map-entry key="QName('', 'sort-collation')" select="$sort-collation"/>
         <xsl:map-entry key="QName('', 'table-accessibility')" select="$table-accessibility"/>
         <xsl:map-entry key="QName('', 'table-footnote-numeration')"
                        select="$table-footnote-numeration"/>
         <xsl:map-entry key="QName('', 'use-docbook-css')" select="$use-docbook-css"/>
         <xsl:map-entry key="QName('', 'use-minified-css')" select="$use-minified-css"/>
         <xsl:map-entry key="QName('', 'user-css-links')" select="$user-css-links"/>
         <xsl:map-entry key="QName('', 'variablelist-termlength-threshold')"
                        select="$variablelist-termlength-threshold"/>
         <xsl:map-entry key="QName('', 'verbatim-callouts')" select="$verbatim-callouts"/>
         <xsl:map-entry key="QName('', 'verbatim-line-style')" select="$verbatim-line-style"/>
         <xsl:map-entry key="QName('', 'verbatim-number-every-nth')"
                        select="$verbatim-number-every-nth"/>
         <xsl:map-entry key="QName('', 'verbatim-number-first-line')"
                        select="$verbatim-number-first-line"/>
         <xsl:map-entry key="QName('', 'verbatim-number-minlines')"
                        select="$verbatim-number-minlines"/>
         <xsl:map-entry key="QName('', 'verbatim-number-separator')"
                        select="$verbatim-number-separator"/>
         <xsl:map-entry key="QName('', 'verbatim-numbered-elements')"
                        select="$verbatim-numbered-elements"/>
         <xsl:map-entry key="QName('', 'verbatim-plain-style')" select="$verbatim-plain-style"/>
         <xsl:map-entry key="QName('', 'verbatim-space')" select="$verbatim-space"/>
         <xsl:map-entry key="QName('', 'verbatim-style-default')"
                        select="$verbatim-style-default"/>
         <xsl:map-entry key="QName('', 'verbatim-syntax-highlight-css')"
                        select="$verbatim-syntax-highlight-css"/>
         <xsl:map-entry key="QName('', 'verbatim-syntax-highlight-languages')"
                        select="$verbatim-syntax-highlight-languages"/>
         <xsl:map-entry key="QName('', 'verbatim-syntax-highlighter')"
                        select="$verbatim-syntax-highlighter"/>
         <xsl:map-entry key="QName('', 'verbatim-table-style')" select="$verbatim-table-style"/>
         <xsl:map-entry key="QName('', 'verbatim-trim-leading-blank-lines')"
                        select="$verbatim-trim-leading-blank-lines"/>
         <xsl:map-entry key="QName('', 'verbatim-trim-trailing-blank-lines')"
                        select="$verbatim-trim-trailing-blank-lines"/>
         <xsl:map-entry key="QName('', 'xlink-arclist-before')" select="$xlink-arclist-before"/>
         <xsl:map-entry key="QName('', 'xlink-arclist-after')" select="$xlink-arclist-after"/>
         <xsl:map-entry key="QName('', 'xlink-arclist-titlesep')"
                        select="$xlink-arclist-titlesep"/>
         <xsl:map-entry key="QName('', 'xlink-arclist-sep')" select="$xlink-arclist-sep"/>
         <xsl:map-entry key="QName('', 'xlink-icon-closed')" select="$xlink-icon-closed"/>
         <xsl:map-entry key="QName('', 'xlink-icon-open')" select="$xlink-icon-open"/>
         <xsl:map-entry key="QName('', 'xlink-js')" select="$xlink-js"/>
         <xsl:map-entry key="QName('', 'xlink-style')" select="$xlink-style"/>
         <xsl:map-entry key="QName('', 'xlink-style-default')" select="$xlink-style-default"/>
         <xsl:map-entry key="QName('', 'xspec')" select="$xspec"/>
         <xsl:map-entry key="QName('', 'transform-original')" select="$transform-original"/>
         <xsl:map-entry key="QName('', 'transform-before')" select="$transform-before"/>
         <xsl:map-entry key="QName('', 'transform-after')" select="$transform-after"/>
         <xsl:map-entry key="QName('', 'dynamic-profile-variables')"
                        select="$dynamic-profile-variables"/>
         <xsl:map-entry key="QName('', 'warn-about-missing-localizations')"
                        select="$warn-about-missing-localizations"/>
         <xsl:map-entry key="QName('', 'sets-number-from')" select="$sets-number-from"/>
         <xsl:map-entry key="QName('', 'books-number-from')" select="$books-number-from"/>
         <xsl:map-entry key="QName('', 'divisions-number-from')"
                        select="$divisions-number-from"/>
         <xsl:map-entry key="QName('', 'components-number-from')"
                        select="$components-number-from"/>
         <xsl:map-entry key="QName('', 'sections-number-from')" select="$sections-number-from"/>
         <xsl:map-entry key="QName('', 'formal-objects-number-from')"
                        select="$formal-objects-number-from"/>
         <xsl:map-entry key="QName('', 'sets-inherit-from')" select="$sets-inherit-from"/>
         <xsl:map-entry key="QName('', 'books-inherit-from')" select="$books-inherit-from"/>
         <xsl:map-entry key="QName('', 'divisions-inherit-from')"
                        select="$divisions-inherit-from"/>
         <xsl:map-entry key="QName('', 'components-inherit-from')"
                        select="$components-inherit-from"/>
         <xsl:map-entry key="QName('', 'sections-inherit-from')"
                        select="$sections-inherit-from"/>
         <xsl:map-entry key="QName('', 'formal-objects-inherit-from')"
                        select="$formal-objects-inherit-from"/>
         <xsl:map-entry key="QName('', 'unwrap-paragraphs')" select="$unwrap-paragraphs"/>
         <xsl:map-entry key="QName('', 'fallback-js')" select="$fallback-js"/>
         <xsl:map-entry key="QName('', 'message-level')" select="$message-level"/>
         <xsl:map-entry key="QName('', 'copy-verbatim-js')" select="$copy-verbatim-js"/>
         <xsl:map-entry key="QName('', 'translate-suppress-elements')"
                        select="$translate-suppress-elements"/>
         <xsl:map-entry key="QName('', 'varlistentry-separate-terms')"
                        select="$varlistentry-separate-terms"/>
         <xsl:map-entry key="QName('', 'presentation-mode')" select="$presentation-mode"/>
         <xsl:map-entry key="QName('', 'presentation-js')" select="$presentation-js"/>
         <xsl:map-entry key="QName('', 'presentation-css')" select="$presentation-css"/>
         <xsl:map-entry key="QName('', 'inline-xlink-href')" select="$inline-xlink-href"/>
         <xsl:map-entry key="QName('', 'transformed-docbook-input')"
                        select="$transformed-docbook-input"/>
         <xsl:map-entry key="QName('', 'transformed-docbook-output')"
                        select="$transformed-docbook-output"/>
         <xsl:map-entry key="QName('', 'titleabbrev-passthrough')"
                        select="$titleabbrev-passthrough"/>
         <xsl:map-entry key="QName('', 'variablelist-panelset')"
                        select="$variablelist-panelset"/>
      </xsl:map>
   </xsl:variable>
</xsl:stylesheet>
