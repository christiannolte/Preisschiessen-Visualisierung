# Preisschiessen-Visualisierung
XSLT-Transformation für die Visualisierung von Exporten der DISAG Optic Score Server (c) Software

Damit die Transformation funktioniert muss die Zeile
<xsl:if test="starts-with(@title,'offen aktiv')">
an den Export angepasst werden.

Hierzu einfach in die XML-Exportdatei schauen und nach title suchen.

Es wird weiterhin noch ein XSL-Prozessor benötigt, der aus dem Export und der Transformationsdatei eine HTML Seite generiert.
