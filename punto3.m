load interpolacionLineal2D.m
imagenAMejorarLena = load("Imagen_Lena_LD.mat").XLD;
imagenProvistaLena = load("Imagen_Lena_HD.mat").XHD;

imagenResultadoLena = interpolacionLineal2D(imagenAMejorarLena);

%Calculo el error de Lena TODO: CORREGIR
errorLena = norm(imagenProvistaLena - imagenResultadoLena) / norm(imagenProvistaLena);

disp('El error de la imagen de Lena es: ')
errorLena

imagenAMejorarTexto = load("Imagen_Texto_LD").XLD;
imagenProvistaTexto = load("Imagen_texto_HD").XHD;

imagenResultadoTexto = interpolacionLineal2D(imagenAMejorarTexto);

%Calculo el error TODO: CORREGIR
errorTexto = norm(imagenProvistaTexto - imagenResultadoTexto) / norm(imagenProvistaTexto);

disp('El error de la imagen del texto es: ')
errorTexto



