library(shiny)
shinyUI(navbarPage("",
        tabPanel("Enroll Student details",
                sidebarPanel(
                        helpText("Enter Student name, sex and 
                                  select Data Science Specilaization courses completed."),
                        textInput("Name", "Name:", "Student 1"),
                        radioButtons("Sex", "Sex:",
                                      c("Male" = "M",
                                        "Female" = "F",
                                        "Others" = "O")),
                        checkboxGroupInput("Courses", "Courses Completed:",
                                   c("The Data Scientist's Toolbox" = "1",
                                     "R Programming" = "2",
                                     "Getting and Cleaning Data" = "3",
                                     "Exploratory Data Analysis" = "4",
                                     "Reproducible Research" = "5",
                                     "Statistical Inference" = "6",
                                     "Regression Models" = "7",
                                     "Practical Machine Learning" = "8",
                                     "Developing Data Products" = "9",
                                     "Data Science Capstone" = "10"))
                ),
                mainPanel(
                        h4("Enrolled Student Details:"),
                        h5("Name:"),
                        verbatimTextOutput("oName"),
                        h5("Sex:"),
                        verbatimTextOutput("oSex"),
                        h5("Number of Courses Completed:"),
                        verbatimTextOutput("onCoursesCompleted"),
                        h5("Data Science Specialization Completion Percentage:"),
                        verbatimTextOutput("oDSCompletionPercentage")
                )
        ),
        tabPanel("Help",
                 mainPanel(
                         h5("This Application allows students to enroll their
                             details such as name, sex and select the
                             data science specialization courses completed.
                             The application calculates the number of course completed and
                             displays the enrolled student details along with
                             number of courses completed and the completion percentage.")
                 )
        )
   )
)