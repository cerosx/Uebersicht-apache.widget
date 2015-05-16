command: "php apache.widget/apache.php"

refreshFrequency: 10000

style: """
  /* Modify Colors and Size Here:*/
  
  size = 200px                //This is just a base for the overall size so everything stays centered

  width: size   
  text-align: left


  height: 60px
  
  /*POSITION*/
  top: 48.5%
  left: 3.5%

  /*COLORS*/
  primaryColor = rgba(255,255,255,0.55)
  secondaryColor = rgba(0, 0, 0, 0.15)
  textColor = rgba(255,255,255,0.85)

  font-family: Helvetica
  font-weight: 300
  font-size: 16px

  #aicon
    float: left
    margin-right: 30px

  #atext
    float: left
 
  #atxt
    color: textColor
    font-size: 12px

  img
    opacity: 0.7

  #aip
    color: primaryColor
    font-size: 14px
    font-weight: 300

  #apachebox
    padding: 15px 0px 15px 0px
    color: primaryColor
    
"""


render: -> """
  <div id="apachebox">
    <div id="aicon"><img src="apache.widget/server.png" width="35" height="33"></div>
    <div id="atext">
        <div id="atxt"><b>APACHE localhost</b></div>
        <div id="aip">Status</div>
    </div>
  </div>
"""


update: (output) ->  
  if output != ""
    $('#apachebox').show()
    $('#aip').text "Status: "+ output
  else
    $('#apachebox').hide()

