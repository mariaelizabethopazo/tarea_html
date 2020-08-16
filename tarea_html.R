install.packages("rvest")
library(rvest)


url <- read_html("Tarea_HTML/letteringtarea1.html")
url 

nodesDelHTML <- html_nodes(url,".noticia")
print(url)
html_text(nodesDelHTML)
texto <- html_text(nodesDelHTML)


##Eliminando caracteres y conectores raros 

noticia <- gsub("r\n","",texto)
noticia <- gsub("\\r","",texto)
noticia<- gsub("\\n","",texto)
noticia <- gsub("[,]","",texto)
noticia <- gsub("[.]","",texto)
noticia <- gsub("\r\n","",texto)
noticia <- gsub("ã","",texto)
noticia <- gsub("³","",texto)
noticia <- gsub("\r\n","",texto)
print(noticia)


##Palabras en Minusculas 

noticia <- tolower(noticia)
print(noticia)


##Separador de palabras
palText <- strsplit(noticia," "[[1]])
print(palText)



##Contador de palabras 

unlistNoticia <- unlist(palText)
unlistNoticia
tablaPalabras <- table(unlistNoticia)


##Variable tipo data 

dfPalNot <- as.data.frame(tablaPalabras)
dfPalNot

