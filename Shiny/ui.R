library(shiny)
shinyUI(navbarPage("U.S. States Analysis",tabPanel("Interactive States Selection and Analysis",
                                                   sidebarLayout(
                                                       sidebarPanel(
                                                           ## Input Control for dataset
                                                           selectInput("dataset", "Choose type of Analysis for the U.S. States:",choices = c("Education and Related Statistics", "Public-School Expenditures", "Violent Crime Rates"),selected="Violent Crime Rates"),
                                                           tags$hr(),
                                                           
                                                           ## Cascading Input filter for Fill-variable
                                                           uiOutput("control")
                                                       ),
                                                       mainPanel(h3("Documentation :"),
                                                                 h4("1. Use the selective control in the left panel to select the type of Analysis (Dataset) for the U.S. States."),
                                                                 h4("2. Select a Fill Variable from the cascading filter : Radio-Buttons, to analyze the U.S states by that variable. "),
                                                                 h4("3. Select a group of states (more than one) from the below U.S. map interactively, by drawing/brushing a rectangle. Note - All states are selected initially, by default."),
                                                                 h4("4. The Map filled by the selected Variable and the data corresponding to the Selected / Brushed States as a Table Output will be displayed."),
                                                                 h4("5. " , a("ui.R & server.R files are in github12358 Github Repository", href="github.com/github12358/developing-data-products/tree/master/Shiny")),
                                                                 br(),
                                                                 tags$style(type="text/css",
                                                                            ".shiny-output-error { visibility: hidden; }",
                                                                            ".shiny-output-error:before { visibility: hidden; }"
                                                                 ),
                                                                 
                                                                 ## Display Title
                                                                 h3(textOutput("Title")),
                                                                 h3("Selcect States by drawing a Rectangle (Brushing)"),
                                                                 
                                                                 ## Setup the U.S. Map - Fill by selected variable
                                                                 plotOutput("Map",brush=brushOpts(id="brush1")),
                                                                 h4(textOutput("Mean")),
                                                                 br(),
                                                                 h4("You have currently selected the states in the STATES_SELECTED column given below. Note - All states are selected initially, by default."),
                                                                 
                                                                 ## Display Output
                                                                 tableOutput("view")
                                                       )
                                                   )),
                   
                   tabPanel("Documentation and R Code",mainPanel(h3("User Guide for Interactive States Selection and Analysis Tab:"),
                                                                 h4("1. Use the selective control in the left panel to select the type of Analysis (Dataset) for the U.S. States:"),
                                                                 h5("a) Education and Related Statistics - States dataset {car package}"),
                                                                 h5("b) Public-School Expenditures - Anscombe dataset {car package}"),
                                                                 h5("c) Violent Crime Rates by US States - USArrests dataset {datasets package}"),
                                                                 h4("2. Select a Fill Variable from the cascading filter : Radio-Buttons, to analyze the U.S states by that variable. "),
                                                                 h4("3. Select a group of states (more than one) from the U.S. map interactively, by drawing/brushing a rectangle. Note - All states are selected initially, by default."),
                                                                 h4("4. The Map filled by the selected Variable and the data corresponding to the Selected / Brushed States as a Table Output will be displayed."),
                                                                 h4("5. " , a("ui.R & server.R files are in github12358's Github Repository", href="github.com/github12358/developing-data-products/tree/master/Shiny")),
                                                                 h4("6. ui.R & server.R codes can also be found in the below tabs.")
                   )
                   )))
