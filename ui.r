shinyUI(
  pageWithSidebar(
    # Application title
    
    headerPanel("Cholestrol Risk Prediction"),
    
    sidebarPanel(
      
      numericInput('cholestrol','Cholestrol mg/dl',170, min = 130,max=400, step=5),
      submitButton('Submit')
      
      ),
    
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of'),
      verbatimTextOutput("prediction")
      
      )
    
        )
    
  )