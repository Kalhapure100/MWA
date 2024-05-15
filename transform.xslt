<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <!-- Identity Transform -->
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- Modify specific elements -->
  <xsl:template match="courses">
    <html>
      <head>
        <style>
          /* Course styles */
          .course {
            width: 80%;
            margin: auto;
            text-align: center;
            padding-top: 100px;
          }
          h1 {
            font-size: 36px;
            font-weight: 300;
          }
          p {
            color: #777;
            font-size: 14px;
            font-weight: 300;
            line-height: 22px;
            padding: 10px;
          }
          .row {
            margin-top: 5%;
            display: flex;
            justify-content: space-between;
          }
          .course-col {
            flex-basis: 31%;
            background: #fff3f3;
            border-radius: 10px;
            margin-bottom: 5%;
            padding: 20px 12px;
            box-sizing: border-box;
            transition: 0.5s;
          }
          h3 {
            text-align: center;
            font-weight: 600;
            margin: 10px 0px;
          }
          .course-col:hover {
            box-shadow: 10px 10px 24px 0px rgba(0, 0, 0, 0.4);
          }
        </style>
      </head>
      <body>
       
        <!-- End of Navigation code -->
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="course">
    <div class="course-col">
      <h2><xsl:value-of select="title"/></h2>
      <p><xsl:value-of select="description"/></p>
    </div>
  </xsl:template>
</xsl:stylesheet>
