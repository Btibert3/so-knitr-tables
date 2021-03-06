## build the HTML.
knitr::knit2html('my-report.RMD', stylesheet = 'flat-table.css')

## send the HTML in an email using the gmail server
## assumes you are using GMAIL
library(mailR)
send.mail(from = "youremail@gmail.com",
          to = c("another.email@gmail.com"),
          subject = "The Table report",
          body = "my-report.html",
          smtp = list(host.name = "smtp.gmail.com", 
                      port = 465, 
                      user.name = "username", 
                      passwd = "pwd", 
                      ssl = TRUE),
          html = TRUE,
          authenticate = TRUE,
          send = TRUE)
