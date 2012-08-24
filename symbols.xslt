<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!--
Name: 			Symbols Utility for Symphony CMS
Release Date:	24 August 2012
Version: 		1.0.0
Developer: 	Will Nielsen
Email: 		will@nielsendigital.com
-->

    <xsl:template name="symbols">
        <xsl:param name="name"/>
        <xsl:variable name="output">
            <xsl:choose>
                <xsl:when test="$name = 'apple-alt'">&#x2325;</xsl:when>
                <xsl:when test="$name = 'apple-command'">&#x2318;</xsl:when>
                <!-- apple-logo not guaranteed to work on non-apple systems -->
                <xsl:when test="$name = 'apple-logo'">&#xF8FF;</xsl:when>
                <xsl:when test="$name = 'apple-option'">&#x2325;</xsl:when>
                <xsl:when test="$name = 'alt'">ALT</xsl:when>
                <xsl:when test="$name = 'alt-key'">ALT</xsl:when>
                <xsl:when test="$name = 'control'">CTRL</xsl:when>
                <xsl:when test="$name = 'control-key'">CTRL</xsl:when>
                <xsl:when test="$name = 'delete'">&#x232B;</xsl:when>
                <xsl:when test="$name = 'delete-key'">&#x232B;</xsl:when>
                <xsl:when test="$name = 'escape'">&#x238B;</xsl:when>
                <xsl:when test="$name = 'escape-key'">&#x238B;</xsl:when>
                <xsl:when test="$name = 'power'">&#x233D;</xsl:when>
                <xsl:when test="$name = 'power-button'">&#x233D;</xsl:when>
                <xsl:when test="$name = 'return'">&#x23CE;</xsl:when>
                <xsl:when test="$name = 'return-key'">&#x23CE;</xsl:when>
                <xsl:when test="$name = 'shift'">&#x21E7;</xsl:when>
                <xsl:when test="$name = 'shift-key'">&#x21E7;</xsl:when>
                <xsl:when test="$name = 'tab'">&#x21E5;</xsl:when>
                <xsl:when test="$name = 'tab-key'">&#x21E5;</xsl:when>
            </xsl:choose>
        </xsl:variable>

        <xsl:if test="$output != ''">
            <kbd>
                <xsl:value-of select="$output"/>
            </kbd>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
