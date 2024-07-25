











#Secuencia de mediciones en tiempo

j=1:500

#Todos los armónicos fueron generados con amplitud 1 y fase igual a 45 grados o
# pi/4 radianes 


#Principal Lunar  M2
M2=function(j){
  r=1*cos((((2*pi)/12.42)*j)+(pi/4))
return(r)}


#Luni solar Diurnal  K1
K1=function(j){
  r=1*cos((((2*pi)/23.93)*j)+(pi/4))
return(r)}


#Luni solar Semi Diurnal  K2
K2=function(j){
  r=1*cos((((2*pi)/11.97)*j)+(pi/4))
return(r)}

#Principal lunar diurnal O1
O1=function(j){
  r=1*cos((((2*pi)/25.82)*j)+(pi/4))
return(r)}

#Principal Solar S2
S2=function(j){
  r=1*cos((((2*pi)/12)*j)+(pi/4))
return(r)}



#Se divide la ventana en 8 subdivisions 
par(mfrow=c(4,2))




plot(K1, 0, 300, main = "Luni solar Diurnal  K1",col = "red",xlab="Tiempo (horas)",lwd=2)

plot(M2, 0, 300, main = "Principal Lunar  M2",col = "red",xlab="Tiempo (horas)",lwd=2)

plot(O1, 0, 300, main = "Principal lunar diurnal O1",col = "red",xlab="Tiempo (horas)",lwd=2)

plot(S2, 0, 300, main = "Principal Solar S2",col = "red",xlab="Tiempo (horas)",lwd=2)

#Suma de armónicos K1O1
K1O1=K1(j)+O1(j)
plot(K1O1,xlim = c(0,300),type = "l", main = "K1 + O1",col = "red",xlab="Tiempo (horas)",lwd=2)


#Suma de armónicos M2S2
M2S2=M2(j)+S2(j)
plot(M2S2,xlim = c(0,300),type = "l", main = "M2 + S2",col = "red",xlab="Tiempo (horas)",lwd=2)



#K101 +M2S2
plot(K1O1+M2S2,xlim = c(0,300),type = "l", main = "K1O1 + M2S2",col = "red",xlab="Tiempo (horas)",lwd=2)



M2K1=M2(j)+K1(j)
#M2 +K1
plot(M2K1,xlim = c(0,300),type = "l", main = "M2 + K1",col = "red",xlab="Tiempo (horas)",lwd=2)

########################Otro ejemplo

#Luni solar diurnal  K1

K1=function(j){
  r=0.5*cos((((2*pi)/23.93)*j)+((pi*3)/2))
  return(r)}

#Principal Solar S2
S2=function(j){
  r=1*cos((((2*pi)/12)*j)+(pi/4))
  return(r)}


#Pequeña luna elíptica M1
M1=function(j){
  r=2*cos((((2*pi)/24.84)*j)+(pi/4))
  return(r)}


#Pequeña solar elíptica L2
L2=function(j){
  r=0.2*cos((((2*pi)/12.19)*j)+(pi/4))
  return(r)}




par(mfrow=c(5,1))
#par(mfrow=c(1,1))

plot(K1, 0, 300, main = "Luni solar Diurnal  K1",col = "green",xlab="Tiempo (horas)",lwd=2)

plot(P1, 0, 300, main = "Principal Solar S2",col = "green",xlab="Tiempo (horas)",lwd=2)

plot(M1, 0, 300, main = "Pequeña luna elíptica M1",col = "green",xlab="Tiempo (horas)",lwd=2)
plot(L2, 0, 300, main = "Pequeña solar elíptica L2",col = "green",xlab="Tiempo (horas)",lwd=2)

K1S2M1L2=K1(j)+S2(j)+M1(j)+L2(j)
plot(K1S2M1L2,xlim = c(0,300),type = "l", main = "K1+S2+M1+L2",col = "blue",xlab="Tiempo (horas)",lwd=2)







