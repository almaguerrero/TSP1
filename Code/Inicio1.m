do = true;
c=1
ruta_r  = randperm(18)
gene=[]
for i=1:50 %%generando una poblacion de 100 pobladores con 18 genes
ruta_r  = randperm(18)
gene=[gene;ruta_r]
end
seguridad=gene
%%sumatoria de cuidades
sumas=sumatoria(gene);
bar(sumas)
hold on

while do  
c=c+1 %%contador de generaciones
 if(c==4)
   do=false;
   
%%%%Seleccion
par1=Seleccion(gene)
par2=Iseleccion(gene)
%%%%
b=size(par1)
n=b(1)
hijos=[]
generacionX=[]
 for(i=1:size(par1))
    pareja1=par1(i,:)
    pareja2=par2(i,:)
    hijos=pmx1(pareja1,pareja2)
    generacionX=[generacionX;hijos]
 end
 gene=generacionX
 sumas=sumatoria(gene);
 bar(sumas,0.4,'r')
 end
end
