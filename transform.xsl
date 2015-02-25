<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet   version="1.0"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="result">
    <html>
        <head>
            <title>Preisschiessen</title>
	    <link rel="stylesheet" type="text/css" href="formate.css"/>
        </head>
	    <body>
              <div align="center">
		<marquee direction="up" scrollamount="1" scrolldelay="1"  height="100%">
        	  <xsl:apply-templates/>
		  <ergebnisdatum>vorläufiger Zwischenstand vom <xsl:value-of select="@date"/></ergebnisdatum>
                </marquee>
              </div>
    	    </body>
    	</html>
</xsl:template>



<xsl:template match="shooters">
<xsl:if test="starts-with(@title,'offen aktiv')">
<table border="1">
<tr>
<th>Platz</th>
<th>Name</th>
<th>Verein</th>
<th>Teiler 1</th>
<th>Teiler 2</th>
<th>Summe</th>
</tr>
<xsl:for-each select="shooter">
<xsl:sort select="@bester_teiler" order="ascending" data-type="number" />
<xsl:sort select="@orig_teiler" order="ascending" data-type="number" />
<xsl:sort select="@bester_teiler_2_orig" order="ascending" data-type="number" />
<tr>
   <td> <xsl:value-of select="position()"/>  </td>  
   <td> <xsl:value-of select="@lastname"/> <xsl:text>, </xsl:text><xsl:value-of select="@firstname"/></td>  
   <td> <xsl:value-of select="@clubsname"/></td>
   <td> <xsl:value-of select="@orig_teiler"/></td>
   <td> <xsl:value-of select="@bester_teiler_2_orig"/></td>
   <td><b> <xsl:value-of select="@bester_teiler"/></b></td>
</tr>    
</xsl:for-each>
</table>
</xsl:if>
</xsl:template>





</xsl:stylesheet>