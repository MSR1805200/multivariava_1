#██████╗ ██╗   ██╗███████╗███████╗████████╗ █████╗  ██████╗      ██╗
#██╔═══██╗██║   ██║██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔═══██╗    ███║
#██║   ██║██║   ██║█████╗  ███████╗   ██║   ███████║██║   ██║    ╚██║
#██║▄▄ ██║██║   ██║██╔══╝  ╚════██║   ██║   ██╔══██║██║   ██║     ██║
#╚██████╔╝╚██████╔╝███████╗███████║   ██║   ██║  ██║╚██████╔╝     ██║
#╚══▀▀═╝  ╚═════╝ ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝      ╚═╝

dados = data.frame(x1 = c(3,4,2,6,8,2,5),
                   x2 = c(5,5.5,4,7,10,5,7.5))

X1_barra = round(c(mean(dados$x1),mean(dados$x2)),4); X1_barra

S11_S22 = round(c(var(dados$x1),var(dados$x2)),4); S11_S22

S_12 = round(cov(dados),4)[1,2] ; S_12

euclid_dist = round(sqrt(  sum(   (dados$x1 - dados$x2)^2  )  ), 4) ; euclid_dist

x1_estrela = dados$x1/ sqrt(S11_S22[1])
x2_estrela = dados$x2/ sqrt(S11_S22[2])

estat_dist = round(sqrt(  sum(   (x1_estrela - x2_estrela)^2  )  ), 4); estat_dist 

#██████╗ ██╗   ██╗███████╗███████╗████████╗ █████╗  ██████╗     ██████╗ 
#██╔═══██╗██║   ██║██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔═══██╗    ╚════██╗
#██║   ██║██║   ██║█████╗  ███████╗   ██║   ███████║██║   ██║     █████╔╝
#██║▄▄ ██║██║   ██║██╔══╝  ╚════██║   ██║   ██╔══██║██║   ██║    ██╔═══╝ 
#╚██████╔╝╚██████╔╝███████╗███████║   ██║   ██║  ██║╚██████╔╝    ███████╗
#╚══▀▀═╝  ╚═════╝ ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝     ╚══════╝

dados_2 = data.frame(x1 = c(1,2,3,3,4,5,6,8,9,11), 
                     x2 = c(18.95,19,17.95,15.54,14,12.95,8.94,7.49,6,3.99)
                     )
plot(dados_2$x1,dados_2$x2,xlab = 'Tempo de fabricação',ylab = 'Preço de vendas')


### negativa

X1_barra_q2 = c(mean(dados_2$x1),mean(dados_2$x2)); X1_barra_q2

S11_S22_q2 =  c(var(dados_2$x1),var(dados_2$x2)); S11_S22_q2

S12 = cov(dados_2)[1,2]; S12

R12 = cor(dados_2)[1,2]; R12

# Observe que tanto a covariância e a correlação deram valores negativos,
# o que implica dizer que quanto maior for o tempo de fabricação, menor
# é o preço de vendas.

