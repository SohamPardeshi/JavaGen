<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

      <xsl:for-each select="schema/class">
            public class <xsl:value-of select="@className"/>{   
   

 		<xsl:for-each select="field">
		private <xsl:value-of select="@type"/> <xsl:value-of select="@name"/> = <xsl:value-of select="@value"/>;
		</xsl:for-each>

                <xsl:for-each select="constant">
		private final <xsl:value-of select="@type"/> <xsl:value-of select="@name"/> = <xsl:value-of select="@value"/>;
		</xsl:for-each>
                  

                public <xsl:value-of select="../@className"/> ( <xsl:value-of select="@parameter"/> ){
                           
                                    <xsl:for-each select="../field">
                                                this.<xsl:value-of select="@name"/>
                                    </xsl:for-each>
                  }
         
	   }

      </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
