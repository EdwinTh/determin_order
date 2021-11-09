members <- list("Lisa" = "Lisa",
                "Ana" = "Ana",
                "Jill" = "Jill",
                "Ellen" = "Ellen",
                "Christopher" = "Christopher",
                "John" = "John",
                "James" = "James",
                "Edwin" = "Edwin")

ui <-
  fluidPage(
    checkboxGroupInput("members",
                       label = h3("Select who are present:"),
                       choices = members,
                       select = names(members)),
    hr(),
    actionButton("randomise", "Get order!"),
    hr(),
    fluidRow(column(3, verbatimTextOutput("value")))
  )
