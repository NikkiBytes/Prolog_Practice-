<?xml version = "1.0"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output indent="yes" method="html"/>

  <xsl:template match="/page">

    <html>
      <head>
        <title>
          <xsl:value-of select="title"/>
        </title>
        <link rel="SHORTCUT ICON" href="favicon.ico"/>
        <link rel="stylesheet" href="pdoc/prologdoc.css" type="text/css"/>
        <link rel="stylesheet" href="css/blip.css" type="text/css"/>
        <script type="text/javascript">
          var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
                          document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <script type="text/javascript">
            try {
              var pageTracker = _gat._getTracker("UA-11782828-1");
              pageTracker._trackPageview();
            } catch(err) {}
        </script>      
      </head>
      <body>
        <div id="logo">Blip: Biomedical Logic Programming</div>

        <div class="navbar">

          <p class="title">Documentation</p>
          <p class="side">
            <a href="index.html">Home</a> <br />
            <a href="started.html">Getting started</a> <br />
            <a href="tutorial.html">Tutorial</a> <br />
            <a href="architecture.html">Architecture</a> <br />
            <a href="modules.html">Modules</a> <br />
            <a href="examples.html">Examples</a> <br />
            <a href="applications.html">Applications</a> <br />
            <a href="serval.html">Serval</a> <br />
            <a href="faq.html">FAQ</a> <br />
            <a href="http://berkeleybop.org/blipdoc">pldoc server</a> <br />
          </p>
          
          <p class="title">Download</p>
          <p class="side">
            <a href="download.html">Download Blipkit</a><br />
          </p>
          
          <p class="title">Announcements</p>
          <p class="side">
            <a href="http://blipkit.wordpress.com">Blip Blog</a><br />
          </p>
          
          <p class="title">Open-Bio</p>
          <p class="side">
            <a href="http://www.open-bio.org/">Open Bioinformatics Foundation</a><br />
            <a href="http://www.biojava.org/">BioJava</a><br />
            <a href="http://www.biopython.org/">Biopython</a><br />
            <a href="http://www.bioperl.org/">Bioperl</a><br />
            <a href="http://www.bioruby.org/">Bioruby</a><br />
            <a href="http://obda.open-bio.org/">OBDA</a><br />
            <a href="http://www.biodas.org/">DAS</a><br />
            <a href="http://www.biomoby.org/">MOBY</a><br />
            <a href="http://www.emboss.org/">EMBOSS</a><br />
          </p>
          
          <p class="title">Related Sites</p>
          <p class="side">
            <a href="http://skam.sourceforge.net/">BioMake</a><br />
            <a href="http://www.fruitfly.org/~cjm/obol/">Obol</a><br />
          </p>
        </div>

        <div id="header_menu">
          <xsl:text>[</xsl:text>
          <xsl:for-each select="section">
            <xsl:text> &lt;</xsl:text>
            <a>
              <xsl:attribute name="href">
                <xsl:text>#</xsl:text>
                <xsl:value-of select="@id"/>
              </xsl:attribute>
              <xsl:value-of select="@id"/>
            </a>
            <xsl:text>&gt; </xsl:text>
          </xsl:for-each>
          <xsl:text>]</xsl:text>
        </div>

        <div class="content">
          <xsl:for-each select="section">
            
            <a>
              <xsl:attribute name="name">
                <xsl:value-of select="@id"/>
              </xsl:attribute>
            </a>
            <h3 class="section">
              <xsl:value-of select="@id"/>
            </h3>
            <xsl:apply-templates select="*"/>
          </xsl:for-each>
        </div>

        <div class="footer">
<!--          <xsl:apply-templates select="lastmod"/> -->
        </div>
      </body>
    </html>
  </xsl:template>

  
</xsl:stylesheet>