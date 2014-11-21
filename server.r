cholestrolRisk <-   function(cholestrol){if(cholestrol <= 180){"Normal"}
                                        
                                        else if(cholestrol > 180 & cholestrol <= 200){"Low Risk"}
                                        else if(cholestrol > 200 & cholestrol <= 250) {"Medium Risk"}
                                        else {"High Risk"}                                        
                                        
                                        
                                        
}

shinyServer(
  
  function(input,output) {
    
    output$inputValue <- renderPrint({input$cholestrol})
    output$prediction <- renderPrint({cholestrolRisk(input$cholestrol)})
    
    
  }
  
  )

