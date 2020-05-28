# Aula 26/05/2020

# Dados referentes a aplicantes de MBA

# Objetivo:  1) she wondered about starting salaries, whether gender and/or age made a difference, 
#            and whether students liked this particular program.  
#            2) She also wondered whether her GMAT score made a difference in marks. 
#            Since her native language was not English, Daer had a relatively low GMAT. 

# 1) Carregando os dados

    data <- read.csv(file.choose(""), sep = ';', header = T)
    
    summary(data)
    length(data[,1])
  
# 2) Será que o salário é o mesmo para ambos os sexos?

    head(data)
    str(data)
    
    #Transformando os dados
      data$sex <- as.factor(data$sex)
    
    #Sexo
      table(data$sex) #206 são Masculinos e 68 Femininos
    
    #Salário
      hist(data$salary)
      #Necessário verificar que o conjunto de dados contém muitos 0, dessa forma analisaremos com e sem o 0. Pois pode ser que os que etão
      #com 0 estejam desempregos.
      
      #É preciso retirar também desses dados de salário aqueles que optaram por não colocar essa informação.
      
      #Sem considerar os desempregados
      data.1sem0 <- data[data$salary != 999,]
      data.1sem0 <- data.1sem0[data$salary !=  998,]
      head    
    #É sabido que aqueles que responderam com 998 não participaram da pesquisa, dessa forma, vamos retirar esse dados da análise.
    
    data.analysis <- data[data$satis != 998,]
    data.analysis
    
    data
    #Sexo   - 1 - Male; 2 - Female
    #Idade  - Contínua 
    summary(data)
    boxplot(data$age ~ data$sex, xlab = "Sexo", ylab = "Idade", main = "Boxplot Sexo x Idade")
    
    
    
    