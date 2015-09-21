library(shiny)
nTotalCourses <- 10
DSCompletion <- function(nCoursesCompleted) (nCoursesCompleted / nTotalCourses) * 100

shinyServer(
        function(input, output) {
                nCoursesCompleted <- reactive({length(as.vector(input$Courses))})
                output$oName <- renderPrint({input$Name})
                output$oSex <- renderPrint({input$Sex})
                output$onCoursesCompleted <-  renderPrint(nCoursesCompleted())
                output$oDSCompletionPercentage <- 
                        renderPrint({paste(DSCompletion(nCoursesCompleted()), '%', sep = "")})
        }
)